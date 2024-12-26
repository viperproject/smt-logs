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
(declare-sort T@Field_6271_53 0)
(declare-sort T@Field_6284_6285 0)
(declare-sort T@Field_11177_2058 0)
(declare-sort T@Field_10404_10409 0)
(declare-sort T@Field_9614_9619 0)
(declare-sort T@Field_3894_9619 0)
(declare-sort T@Field_3894_9632 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_9600_1211 0)
(declare-sort T@Field_9600_53 0)
(declare-sort T@Field_9600_6285 0)
(declare-sort T@Field_9631_9632 0)
(declare-sort T@Field_10390_1647 0)
(declare-sort T@Field_10390_53 0)
(declare-sort T@Field_10390_6285 0)
(declare-sort T@Field_10421_10422 0)
(declare-datatypes ((T@PolymorphicMapType_6232 0)) (((PolymorphicMapType_6232 (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| (Array T@Ref T@Field_11177_2058 Real)) (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| (Array T@Ref T@Field_10390_1647 Real)) (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| (Array T@Ref T@Field_9600_1211 Real)) (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| (Array T@Ref T@Field_6271_53 Real)) (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| (Array T@Ref T@Field_6284_6285 Real)) (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| (Array T@Ref T@Field_3894_9619 Real)) (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| (Array T@Ref T@Field_3894_9632 Real)) (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| (Array T@Ref T@Field_10390_53 Real)) (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| (Array T@Ref T@Field_10390_6285 Real)) (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| (Array T@Ref T@Field_10404_10409 Real)) (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| (Array T@Ref T@Field_10421_10422 Real)) (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| (Array T@Ref T@Field_9600_53 Real)) (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| (Array T@Ref T@Field_9600_6285 Real)) (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| (Array T@Ref T@Field_9614_9619 Real)) (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| (Array T@Ref T@Field_9631_9632 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6760 0)) (((PolymorphicMapType_6760 (|PolymorphicMapType_6760_3894_2058#PolymorphicMapType_6760| (Array T@Ref T@Field_11177_2058 Bool)) (|PolymorphicMapType_6760_3894_53#PolymorphicMapType_6760| (Array T@Ref T@Field_6271_53 Bool)) (|PolymorphicMapType_6760_3894_6285#PolymorphicMapType_6760| (Array T@Ref T@Field_6284_6285 Bool)) (|PolymorphicMapType_6760_3894_22640#PolymorphicMapType_6760| (Array T@Ref T@Field_3894_9619 Bool)) (|PolymorphicMapType_6760_3894_9632#PolymorphicMapType_6760| (Array T@Ref T@Field_3894_9632 Bool)) (|PolymorphicMapType_6760_9600_2058#PolymorphicMapType_6760| (Array T@Ref T@Field_9600_1211 Bool)) (|PolymorphicMapType_6760_9600_53#PolymorphicMapType_6760| (Array T@Ref T@Field_9600_53 Bool)) (|PolymorphicMapType_6760_9600_6285#PolymorphicMapType_6760| (Array T@Ref T@Field_9600_6285 Bool)) (|PolymorphicMapType_6760_9600_23688#PolymorphicMapType_6760| (Array T@Ref T@Field_9614_9619 Bool)) (|PolymorphicMapType_6760_9600_9632#PolymorphicMapType_6760| (Array T@Ref T@Field_9631_9632 Bool)) (|PolymorphicMapType_6760_10390_2058#PolymorphicMapType_6760| (Array T@Ref T@Field_10390_1647 Bool)) (|PolymorphicMapType_6760_10390_53#PolymorphicMapType_6760| (Array T@Ref T@Field_10390_53 Bool)) (|PolymorphicMapType_6760_10390_6285#PolymorphicMapType_6760| (Array T@Ref T@Field_10390_6285 Bool)) (|PolymorphicMapType_6760_10390_24736#PolymorphicMapType_6760| (Array T@Ref T@Field_10404_10409 Bool)) (|PolymorphicMapType_6760_10390_9632#PolymorphicMapType_6760| (Array T@Ref T@Field_10421_10422 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6211 0)) (((PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| (Array T@Ref T@Field_6271_53 Bool)) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| (Array T@Ref T@Field_6284_6285 T@Ref)) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| (Array T@Ref T@Field_11177_2058 Int)) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| (Array T@Ref T@Field_10404_10409 T@PolymorphicMapType_6760)) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| (Array T@Ref T@Field_9614_9619 T@PolymorphicMapType_6760)) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| (Array T@Ref T@Field_3894_9619 T@PolymorphicMapType_6760)) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| (Array T@Ref T@Field_3894_9632 T@FrameType)) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| (Array T@Ref T@Field_9600_1211 Int)) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| (Array T@Ref T@Field_9600_53 Bool)) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| (Array T@Ref T@Field_9600_6285 T@Ref)) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| (Array T@Ref T@Field_9631_9632 T@FrameType)) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| (Array T@Ref T@Field_10390_1647 Int)) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| (Array T@Ref T@Field_10390_53 Bool)) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| (Array T@Ref T@Field_10390_6285 T@Ref)) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| (Array T@Ref T@Field_10421_10422 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6271_53)
(declare-fun f_7 () T@Field_11177_2058)
(declare-fun next () T@Field_6284_6285)
(declare-fun succHeap (T@PolymorphicMapType_6211 T@PolymorphicMapType_6211) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6211 T@PolymorphicMapType_6211) Bool)
(declare-fun state (T@PolymorphicMapType_6211 T@PolymorphicMapType_6232) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6232) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6760)
(declare-fun WandMaskField_3788 (T@Field_9631_9632) T@Field_9614_9619)
(declare-fun |wand#ft| (T@Ref Real T@Ref Real T@Ref Int) T@Field_9631_9632)
(declare-fun |wand#sm| (T@Ref Real T@Ref Real T@Ref Int) T@Field_9614_9619)
(declare-fun WandMaskField_3851 (T@Field_10421_10422) T@Field_10404_10409)
(declare-fun |wand_1#ft| (T@Ref Real T@Ref Int T@Ref Real) T@Field_10421_10422)
(declare-fun |wand_1#sm| (T@Ref Real T@Ref Int T@Ref Real) T@Field_10404_10409)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6211 T@PolymorphicMapType_6211 T@PolymorphicMapType_6232) Bool)
(declare-fun IsPredicateField_3851_3852 (T@Field_10421_10422) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_10390 (T@Field_10421_10422) T@Field_10404_10409)
(declare-fun HasDirectPerm_10390_9632 (T@PolymorphicMapType_6232 T@Ref T@Field_10421_10422) Bool)
(declare-fun IsPredicateField_3788_3789 (T@Field_9631_9632) Bool)
(declare-fun PredicateMaskField_9600 (T@Field_9631_9632) T@Field_9614_9619)
(declare-fun HasDirectPerm_9600_9632 (T@PolymorphicMapType_6232 T@Ref T@Field_9631_9632) Bool)
(declare-fun IsPredicateField_3894_20997 (T@Field_3894_9632) Bool)
(declare-fun PredicateMaskField_3894 (T@Field_3894_9632) T@Field_3894_9619)
(declare-fun HasDirectPerm_3894_9632 (T@PolymorphicMapType_6232 T@Ref T@Field_3894_9632) Bool)
(declare-fun IsWandField_3851_3852 (T@Field_10421_10422) Bool)
(declare-fun IsWandField_3788_3789 (T@Field_9631_9632) Bool)
(declare-fun IsWandField_3894_26029 (T@Field_3894_9632) Bool)
(declare-fun WandMaskField_3894 (T@Field_3894_9632) T@Field_3894_9619)
(declare-fun dummyHeap () T@PolymorphicMapType_6211)
(declare-fun ZeroMask () T@PolymorphicMapType_6232)
(declare-fun InsidePredicate_10390_10390 (T@Field_10421_10422 T@FrameType T@Field_10421_10422 T@FrameType) Bool)
(declare-fun InsidePredicate_9600_9600 (T@Field_9631_9632 T@FrameType T@Field_9631_9632 T@FrameType) Bool)
(declare-fun InsidePredicate_6271_6271 (T@Field_3894_9632 T@FrameType T@Field_3894_9632 T@FrameType) Bool)
(declare-fun IsPredicateField_3894_2058 (T@Field_11177_2058) Bool)
(declare-fun IsWandField_3894_2058 (T@Field_11177_2058) Bool)
(declare-fun IsPredicateField_3896_3897 (T@Field_6284_6285) Bool)
(declare-fun IsWandField_3896_3897 (T@Field_6284_6285) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3773_36807 (T@Field_9614_9619) Bool)
(declare-fun IsWandField_3773_36823 (T@Field_9614_9619) Bool)
(declare-fun IsPredicateField_3773_6285 (T@Field_9600_6285) Bool)
(declare-fun IsWandField_3773_6285 (T@Field_9600_6285) Bool)
(declare-fun IsPredicateField_3773_53 (T@Field_9600_53) Bool)
(declare-fun IsWandField_3773_53 (T@Field_9600_53) Bool)
(declare-fun IsPredicateField_3773_1211 (T@Field_9600_1211) Bool)
(declare-fun IsWandField_3773_1211 (T@Field_9600_1211) Bool)
(declare-fun IsPredicateField_3836_35990 (T@Field_10404_10409) Bool)
(declare-fun IsWandField_3836_36006 (T@Field_10404_10409) Bool)
(declare-fun IsPredicateField_3836_6285 (T@Field_10390_6285) Bool)
(declare-fun IsWandField_3836_6285 (T@Field_10390_6285) Bool)
(declare-fun IsPredicateField_3836_53 (T@Field_10390_53) Bool)
(declare-fun IsWandField_3836_53 (T@Field_10390_53) Bool)
(declare-fun IsPredicateField_3836_1647 (T@Field_10390_1647) Bool)
(declare-fun IsWandField_3836_1647 (T@Field_10390_1647) Bool)
(declare-fun IsPredicateField_3894_35173 (T@Field_3894_9619) Bool)
(declare-fun IsWandField_3894_35189 (T@Field_3894_9619) Bool)
(declare-fun IsPredicateField_3894_53 (T@Field_6271_53) Bool)
(declare-fun IsWandField_3894_53 (T@Field_6271_53) Bool)
(declare-fun HasDirectPerm_10390_20524 (T@PolymorphicMapType_6232 T@Ref T@Field_10404_10409) Bool)
(declare-fun HasDirectPerm_10390_6285 (T@PolymorphicMapType_6232 T@Ref T@Field_10390_6285) Bool)
(declare-fun HasDirectPerm_10390_53 (T@PolymorphicMapType_6232 T@Ref T@Field_10390_53) Bool)
(declare-fun HasDirectPerm_10390_2058 (T@PolymorphicMapType_6232 T@Ref T@Field_10390_1647) Bool)
(declare-fun HasDirectPerm_9600_19390 (T@PolymorphicMapType_6232 T@Ref T@Field_9614_9619) Bool)
(declare-fun HasDirectPerm_9600_6285 (T@PolymorphicMapType_6232 T@Ref T@Field_9600_6285) Bool)
(declare-fun HasDirectPerm_9600_53 (T@PolymorphicMapType_6232 T@Ref T@Field_9600_53) Bool)
(declare-fun HasDirectPerm_9600_2058 (T@PolymorphicMapType_6232 T@Ref T@Field_9600_1211) Bool)
(declare-fun HasDirectPerm_3894_18212 (T@PolymorphicMapType_6232 T@Ref T@Field_3894_9619) Bool)
(declare-fun HasDirectPerm_3894_6285 (T@PolymorphicMapType_6232 T@Ref T@Field_6284_6285) Bool)
(declare-fun HasDirectPerm_3894_53 (T@PolymorphicMapType_6232 T@Ref T@Field_6271_53) Bool)
(declare-fun HasDirectPerm_3894_2058 (T@PolymorphicMapType_6232 T@Ref T@Field_11177_2058) Bool)
(declare-fun wand (T@Ref Real T@Ref Real T@Ref Int) T@Field_9600_1211)
(declare-fun wand_1 (T@Ref Real T@Ref Int T@Ref Real) T@Field_10390_1647)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun getPredWandId_3773_1211 (T@Field_9600_1211) Int)
(declare-fun getPredWandId_3836_1647 (T@Field_10390_1647) Int)
(declare-fun sumMask (T@PolymorphicMapType_6232 T@PolymorphicMapType_6232 T@PolymorphicMapType_6232) Bool)
(declare-fun InsidePredicate_10390_9600 (T@Field_10421_10422 T@FrameType T@Field_9631_9632 T@FrameType) Bool)
(declare-fun InsidePredicate_10390_6271 (T@Field_10421_10422 T@FrameType T@Field_3894_9632 T@FrameType) Bool)
(declare-fun InsidePredicate_9600_10390 (T@Field_9631_9632 T@FrameType T@Field_10421_10422 T@FrameType) Bool)
(declare-fun InsidePredicate_9600_6271 (T@Field_9631_9632 T@FrameType T@Field_3894_9632 T@FrameType) Bool)
(declare-fun InsidePredicate_6271_10390 (T@Field_3894_9632 T@FrameType T@Field_10421_10422 T@FrameType) Bool)
(declare-fun InsidePredicate_6271_9600 (T@Field_3894_9632 T@FrameType T@Field_9631_9632 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6211) (Heap1 T@PolymorphicMapType_6211) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6211) (Mask T@PolymorphicMapType_6232) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6211) (Heap1@@0 T@PolymorphicMapType_6211) (Heap2 T@PolymorphicMapType_6211) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10421_10422) ) (!  (not (select (|PolymorphicMapType_6760_10390_9632#PolymorphicMapType_6760| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6760_10390_9632#PolymorphicMapType_6760| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10404_10409) ) (!  (not (select (|PolymorphicMapType_6760_10390_24736#PolymorphicMapType_6760| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6760_10390_24736#PolymorphicMapType_6760| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10390_6285) ) (!  (not (select (|PolymorphicMapType_6760_10390_6285#PolymorphicMapType_6760| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6760_10390_6285#PolymorphicMapType_6760| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10390_53) ) (!  (not (select (|PolymorphicMapType_6760_10390_53#PolymorphicMapType_6760| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6760_10390_53#PolymorphicMapType_6760| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10390_1647) ) (!  (not (select (|PolymorphicMapType_6760_10390_2058#PolymorphicMapType_6760| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6760_10390_2058#PolymorphicMapType_6760| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_9631_9632) ) (!  (not (select (|PolymorphicMapType_6760_9600_9632#PolymorphicMapType_6760| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6760_9600_9632#PolymorphicMapType_6760| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_9614_9619) ) (!  (not (select (|PolymorphicMapType_6760_9600_23688#PolymorphicMapType_6760| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6760_9600_23688#PolymorphicMapType_6760| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9600_6285) ) (!  (not (select (|PolymorphicMapType_6760_9600_6285#PolymorphicMapType_6760| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6760_9600_6285#PolymorphicMapType_6760| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_9600_53) ) (!  (not (select (|PolymorphicMapType_6760_9600_53#PolymorphicMapType_6760| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6760_9600_53#PolymorphicMapType_6760| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9600_1211) ) (!  (not (select (|PolymorphicMapType_6760_9600_2058#PolymorphicMapType_6760| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6760_9600_2058#PolymorphicMapType_6760| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_3894_9632) ) (!  (not (select (|PolymorphicMapType_6760_3894_9632#PolymorphicMapType_6760| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6760_3894_9632#PolymorphicMapType_6760| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_3894_9619) ) (!  (not (select (|PolymorphicMapType_6760_3894_22640#PolymorphicMapType_6760| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6760_3894_22640#PolymorphicMapType_6760| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6284_6285) ) (!  (not (select (|PolymorphicMapType_6760_3894_6285#PolymorphicMapType_6760| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6760_3894_6285#PolymorphicMapType_6760| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6271_53) ) (!  (not (select (|PolymorphicMapType_6760_3894_53#PolymorphicMapType_6760| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6760_3894_53#PolymorphicMapType_6760| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_11177_2058) ) (!  (not (select (|PolymorphicMapType_6760_3894_2058#PolymorphicMapType_6760| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6760_3894_2058#PolymorphicMapType_6760| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Real) (arg5 T@Ref) (arg6 Int) ) (! (= (|wand#sm| arg1 arg2 arg3 arg4 arg5 arg6) (WandMaskField_3788 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_3788 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6)))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 Int) (arg5@@0 T@Ref) (arg6@@0 Real) ) (! (= (|wand_1#sm| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0) (WandMaskField_3851 (|wand_1#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_3851 (|wand_1#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6211) (ExhaleHeap T@PolymorphicMapType_6211) (Mask@@0 T@PolymorphicMapType_6232) (pm_f T@Field_10421_10422) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10390_9632 Mask@@0 null pm_f) (IsPredicateField_3851_3852 pm_f)) (= (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@0) null (PredicateMaskField_10390 pm_f)) (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap) null (PredicateMaskField_10390 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3851_3852 pm_f) (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap) null (PredicateMaskField_10390 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6211) (ExhaleHeap@@0 T@PolymorphicMapType_6211) (Mask@@1 T@PolymorphicMapType_6232) (pm_f@@0 T@Field_9631_9632) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_9600_9632 Mask@@1 null pm_f@@0) (IsPredicateField_3788_3789 pm_f@@0)) (= (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@1) null (PredicateMaskField_9600 pm_f@@0)) (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@0) null (PredicateMaskField_9600 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3788_3789 pm_f@@0) (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@0) null (PredicateMaskField_9600 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6211) (ExhaleHeap@@1 T@PolymorphicMapType_6211) (Mask@@2 T@PolymorphicMapType_6232) (pm_f@@1 T@Field_3894_9632) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3894_9632 Mask@@2 null pm_f@@1) (IsPredicateField_3894_20997 pm_f@@1)) (= (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@2) null (PredicateMaskField_3894 pm_f@@1)) (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@1) null (PredicateMaskField_3894 pm_f@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3894_20997 pm_f@@1) (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@1) null (PredicateMaskField_3894 pm_f@@1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6211) (ExhaleHeap@@2 T@PolymorphicMapType_6211) (Mask@@3 T@PolymorphicMapType_6232) (pm_f@@2 T@Field_10421_10422) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_10390_9632 Mask@@3 null pm_f@@2) (IsWandField_3851_3852 pm_f@@2)) (= (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@3) null (WandMaskField_3851 pm_f@@2)) (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@2) null (WandMaskField_3851 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3851_3852 pm_f@@2) (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@2) null (WandMaskField_3851 pm_f@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6211) (ExhaleHeap@@3 T@PolymorphicMapType_6211) (Mask@@4 T@PolymorphicMapType_6232) (pm_f@@3 T@Field_9631_9632) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9600_9632 Mask@@4 null pm_f@@3) (IsWandField_3788_3789 pm_f@@3)) (= (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@4) null (WandMaskField_3788 pm_f@@3)) (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@3) null (WandMaskField_3788 pm_f@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (IsWandField_3788_3789 pm_f@@3) (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@3) null (WandMaskField_3788 pm_f@@3)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6211) (ExhaleHeap@@4 T@PolymorphicMapType_6211) (Mask@@5 T@PolymorphicMapType_6232) (pm_f@@4 T@Field_3894_9632) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3894_9632 Mask@@5 null pm_f@@4) (IsWandField_3894_26029 pm_f@@4)) (= (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@5) null (WandMaskField_3894 pm_f@@4)) (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@4) null (WandMaskField_3894 pm_f@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (IsWandField_3894_26029 pm_f@@4) (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@4) null (WandMaskField_3894 pm_f@@4)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6211) (ExhaleHeap@@5 T@PolymorphicMapType_6211) (Mask@@6 T@PolymorphicMapType_6232) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@6) o_1 $allocated) (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@5) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@5) o_1 $allocated))
)))
(assert (forall ((p T@Field_10421_10422) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10390_10390 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10390_10390 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9631_9632) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9600_9600 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9600_9600 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_3894_9632) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_6271_6271 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6271_6271 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_3894_2058 f_7)))
(assert  (not (IsWandField_3894_2058 f_7)))
(assert  (not (IsPredicateField_3896_3897 next)))
(assert  (not (IsWandField_3896_3897 next)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6211) (ExhaleHeap@@6 T@PolymorphicMapType_6211) (Mask@@7 T@PolymorphicMapType_6232) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@7 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6232) (o_2@@14 T@Ref) (f_4@@14 T@Field_9631_9632) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3788_3789 f_4@@14))) (not (IsWandField_3788_3789 f_4@@14))) (<= (select (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6232) (o_2@@15 T@Ref) (f_4@@15 T@Field_9614_9619) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3773_36807 f_4@@15))) (not (IsWandField_3773_36823 f_4@@15))) (<= (select (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6232) (o_2@@16 T@Ref) (f_4@@16 T@Field_9600_6285) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3773_6285 f_4@@16))) (not (IsWandField_3773_6285 f_4@@16))) (<= (select (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6232) (o_2@@17 T@Ref) (f_4@@17 T@Field_9600_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3773_53 f_4@@17))) (not (IsWandField_3773_53 f_4@@17))) (<= (select (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6232) (o_2@@18 T@Ref) (f_4@@18 T@Field_9600_1211) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3773_1211 f_4@@18))) (not (IsWandField_3773_1211 f_4@@18))) (<= (select (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6232) (o_2@@19 T@Ref) (f_4@@19 T@Field_10421_10422) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3851_3852 f_4@@19))) (not (IsWandField_3851_3852 f_4@@19))) (<= (select (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6232) (o_2@@20 T@Ref) (f_4@@20 T@Field_10404_10409) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3836_35990 f_4@@20))) (not (IsWandField_3836_36006 f_4@@20))) (<= (select (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6232) (o_2@@21 T@Ref) (f_4@@21 T@Field_10390_6285) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3836_6285 f_4@@21))) (not (IsWandField_3836_6285 f_4@@21))) (<= (select (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6232) (o_2@@22 T@Ref) (f_4@@22 T@Field_10390_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3836_53 f_4@@22))) (not (IsWandField_3836_53 f_4@@22))) (<= (select (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6232) (o_2@@23 T@Ref) (f_4@@23 T@Field_10390_1647) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3836_1647 f_4@@23))) (not (IsWandField_3836_1647 f_4@@23))) (<= (select (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6232) (o_2@@24 T@Ref) (f_4@@24 T@Field_3894_9632) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3894_20997 f_4@@24))) (not (IsWandField_3894_26029 f_4@@24))) (<= (select (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6232) (o_2@@25 T@Ref) (f_4@@25 T@Field_3894_9619) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3894_35173 f_4@@25))) (not (IsWandField_3894_35189 f_4@@25))) (<= (select (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6232) (o_2@@26 T@Ref) (f_4@@26 T@Field_6284_6285) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3896_3897 f_4@@26))) (not (IsWandField_3896_3897 f_4@@26))) (<= (select (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6232) (o_2@@27 T@Ref) (f_4@@27 T@Field_6271_53) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_3894_53 f_4@@27))) (not (IsWandField_3894_53 f_4@@27))) (<= (select (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6232) (o_2@@28 T@Ref) (f_4@@28 T@Field_11177_2058) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_3894_2058 f_4@@28))) (not (IsWandField_3894_2058 f_4@@28))) (<= (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6232) (o_2@@29 T@Ref) (f_4@@29 T@Field_10421_10422) ) (! (= (HasDirectPerm_10390_9632 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10390_9632 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6232) (o_2@@30 T@Ref) (f_4@@30 T@Field_10404_10409) ) (! (= (HasDirectPerm_10390_20524 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10390_20524 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6232) (o_2@@31 T@Ref) (f_4@@31 T@Field_10390_6285) ) (! (= (HasDirectPerm_10390_6285 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10390_6285 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6232) (o_2@@32 T@Ref) (f_4@@32 T@Field_10390_53) ) (! (= (HasDirectPerm_10390_53 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10390_53 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6232) (o_2@@33 T@Ref) (f_4@@33 T@Field_10390_1647) ) (! (= (HasDirectPerm_10390_2058 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10390_2058 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_6232) (o_2@@34 T@Ref) (f_4@@34 T@Field_9631_9632) ) (! (= (HasDirectPerm_9600_9632 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9600_9632 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_6232) (o_2@@35 T@Ref) (f_4@@35 T@Field_9614_9619) ) (! (= (HasDirectPerm_9600_19390 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9600_19390 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_6232) (o_2@@36 T@Ref) (f_4@@36 T@Field_9600_6285) ) (! (= (HasDirectPerm_9600_6285 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9600_6285 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_6232) (o_2@@37 T@Ref) (f_4@@37 T@Field_9600_53) ) (! (= (HasDirectPerm_9600_53 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9600_53 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_6232) (o_2@@38 T@Ref) (f_4@@38 T@Field_9600_1211) ) (! (= (HasDirectPerm_9600_2058 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9600_2058 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_6232) (o_2@@39 T@Ref) (f_4@@39 T@Field_3894_9632) ) (! (= (HasDirectPerm_3894_9632 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3894_9632 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_6232) (o_2@@40 T@Ref) (f_4@@40 T@Field_3894_9619) ) (! (= (HasDirectPerm_3894_18212 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3894_18212 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_6232) (o_2@@41 T@Ref) (f_4@@41 T@Field_6284_6285) ) (! (= (HasDirectPerm_3894_6285 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3894_6285 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_6232) (o_2@@42 T@Ref) (f_4@@42 T@Field_6271_53) ) (! (= (HasDirectPerm_3894_53 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3894_53 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_6232) (o_2@@43 T@Ref) (f_4@@43 T@Field_11177_2058) ) (! (= (HasDirectPerm_3894_2058 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3894_2058 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 Real) (arg5@@1 T@Ref) (arg6@@1 Int) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 Real) (arg5_2 T@Ref) (arg6_2 Int) ) (!  (=> (= (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2)) (and (= arg1@@1 arg1_2) (and (= arg2@@1 arg2_2) (and (= arg3@@1 arg3_2) (and (= arg4@@1 arg4_2) (and (= arg5@@1 arg5_2) (= arg6@@1 arg6_2)))))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 Int) (arg5@@2 T@Ref) (arg6@@2 Real) (arg1_2@@0 T@Ref) (arg2_2@@0 Real) (arg3_2@@0 T@Ref) (arg4_2@@0 Int) (arg5_2@@0 T@Ref) (arg6_2@@0 Real) ) (!  (=> (= (wand_1 arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0 arg5_2@@0 arg6_2@@0)) (and (= arg1@@2 arg1_2@@0) (and (= arg2@@2 arg2_2@@0) (and (= arg3@@2 arg3_2@@0) (and (= arg4@@2 arg4_2@@0) (and (= arg5@@2 arg5_2@@0) (= arg6@@2 arg6_2@@0)))))))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2) (wand_1 arg1_2@@0 arg2_2@@0 arg3_2@@0 arg4_2@@0 arg5_2@@0 arg6_2@@0))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6211) (ExhaleHeap@@7 T@PolymorphicMapType_6211) (Mask@@38 T@PolymorphicMapType_6232) (o_1@@0 T@Ref) (f_2 T@Field_10421_10422) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_10390_9632 Mask@@38 o_1@@0 f_2) (= (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@8) o_1@@0 f_2) (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| ExhaleHeap@@7) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| ExhaleHeap@@7) o_1@@0 f_2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6211) (ExhaleHeap@@8 T@PolymorphicMapType_6211) (Mask@@39 T@PolymorphicMapType_6232) (o_1@@1 T@Ref) (f_2@@0 T@Field_10404_10409) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_10390_20524 Mask@@39 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@9) o_1@@1 f_2@@0) (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@8) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@8) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6211) (ExhaleHeap@@9 T@PolymorphicMapType_6211) (Mask@@40 T@PolymorphicMapType_6232) (o_1@@2 T@Ref) (f_2@@1 T@Field_10390_6285) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_10390_6285 Mask@@40 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@10) o_1@@2 f_2@@1) (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| ExhaleHeap@@9) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| ExhaleHeap@@9) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6211) (ExhaleHeap@@10 T@PolymorphicMapType_6211) (Mask@@41 T@PolymorphicMapType_6232) (o_1@@3 T@Ref) (f_2@@2 T@Field_10390_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_10390_53 Mask@@41 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@11) o_1@@3 f_2@@2) (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| ExhaleHeap@@10) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| ExhaleHeap@@10) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6211) (ExhaleHeap@@11 T@PolymorphicMapType_6211) (Mask@@42 T@PolymorphicMapType_6232) (o_1@@4 T@Ref) (f_2@@3 T@Field_10390_1647) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_10390_2058 Mask@@42 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@12) o_1@@4 f_2@@3) (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| ExhaleHeap@@11) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| ExhaleHeap@@11) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6211) (ExhaleHeap@@12 T@PolymorphicMapType_6211) (Mask@@43 T@PolymorphicMapType_6232) (o_1@@5 T@Ref) (f_2@@4 T@Field_9631_9632) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_9600_9632 Mask@@43 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@13) o_1@@5 f_2@@4) (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| ExhaleHeap@@12) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| ExhaleHeap@@12) o_1@@5 f_2@@4))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6211) (ExhaleHeap@@13 T@PolymorphicMapType_6211) (Mask@@44 T@PolymorphicMapType_6232) (o_1@@6 T@Ref) (f_2@@5 T@Field_9614_9619) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_9600_19390 Mask@@44 o_1@@6 f_2@@5) (= (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@14) o_1@@6 f_2@@5) (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@13) o_1@@6 f_2@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@13) o_1@@6 f_2@@5))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6211) (ExhaleHeap@@14 T@PolymorphicMapType_6211) (Mask@@45 T@PolymorphicMapType_6232) (o_1@@7 T@Ref) (f_2@@6 T@Field_9600_6285) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_9600_6285 Mask@@45 o_1@@7 f_2@@6) (= (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@15) o_1@@7 f_2@@6) (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| ExhaleHeap@@14) o_1@@7 f_2@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| ExhaleHeap@@14) o_1@@7 f_2@@6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6211) (ExhaleHeap@@15 T@PolymorphicMapType_6211) (Mask@@46 T@PolymorphicMapType_6232) (o_1@@8 T@Ref) (f_2@@7 T@Field_9600_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_9600_53 Mask@@46 o_1@@8 f_2@@7) (= (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@16) o_1@@8 f_2@@7) (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| ExhaleHeap@@15) o_1@@8 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| ExhaleHeap@@15) o_1@@8 f_2@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6211) (ExhaleHeap@@16 T@PolymorphicMapType_6211) (Mask@@47 T@PolymorphicMapType_6232) (o_1@@9 T@Ref) (f_2@@8 T@Field_9600_1211) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_9600_2058 Mask@@47 o_1@@9 f_2@@8) (= (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@17) o_1@@9 f_2@@8) (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| ExhaleHeap@@16) o_1@@9 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| ExhaleHeap@@16) o_1@@9 f_2@@8))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6211) (ExhaleHeap@@17 T@PolymorphicMapType_6211) (Mask@@48 T@PolymorphicMapType_6232) (o_1@@10 T@Ref) (f_2@@9 T@Field_3894_9632) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_3894_9632 Mask@@48 o_1@@10 f_2@@9) (= (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@18) o_1@@10 f_2@@9) (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| ExhaleHeap@@17) o_1@@10 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| ExhaleHeap@@17) o_1@@10 f_2@@9))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6211) (ExhaleHeap@@18 T@PolymorphicMapType_6211) (Mask@@49 T@PolymorphicMapType_6232) (o_1@@11 T@Ref) (f_2@@10 T@Field_3894_9619) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_3894_18212 Mask@@49 o_1@@11 f_2@@10) (= (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@19) o_1@@11 f_2@@10) (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@18) o_1@@11 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@18) o_1@@11 f_2@@10))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6211) (ExhaleHeap@@19 T@PolymorphicMapType_6211) (Mask@@50 T@PolymorphicMapType_6232) (o_1@@12 T@Ref) (f_2@@11 T@Field_6284_6285) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_3894_6285 Mask@@50 o_1@@12 f_2@@11) (= (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@20) o_1@@12 f_2@@11) (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| ExhaleHeap@@19) o_1@@12 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| ExhaleHeap@@19) o_1@@12 f_2@@11))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6211) (ExhaleHeap@@20 T@PolymorphicMapType_6211) (Mask@@51 T@PolymorphicMapType_6232) (o_1@@13 T@Ref) (f_2@@12 T@Field_6271_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_3894_53 Mask@@51 o_1@@13 f_2@@12) (= (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@21) o_1@@13 f_2@@12) (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@20) o_1@@13 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@20) o_1@@13 f_2@@12))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6211) (ExhaleHeap@@21 T@PolymorphicMapType_6211) (Mask@@52 T@PolymorphicMapType_6232) (o_1@@14 T@Ref) (f_2@@13 T@Field_11177_2058) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_3894_2058 Mask@@52 o_1@@14 f_2@@13) (= (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@22) o_1@@14 f_2@@13) (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| ExhaleHeap@@21) o_1@@14 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| ExhaleHeap@@21) o_1@@14 f_2@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_9631_9632) ) (! (= (select (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_9614_9619) ) (! (= (select (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_9600_6285) ) (! (= (select (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_9600_53) ) (! (= (select (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_9600_1211) ) (! (= (select (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_10421_10422) ) (! (= (select (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_10404_10409) ) (! (= (select (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_10390_6285) ) (! (= (select (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_10390_53) ) (! (= (select (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_10390_1647) ) (! (= (select (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_3894_9632) ) (! (= (select (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_3894_9619) ) (! (= (select (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_6284_6285) ) (! (= (select (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_6271_53) ) (! (= (select (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_11177_2058) ) (! (= (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 T@Ref) (arg4@@3 Real) (arg5@@3 T@Ref) (arg6@@3 Int) ) (! (= (getPredWandId_3773_1211 (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3)) 0)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 T@Ref) (arg4@@4 Int) (arg5@@4 T@Ref) (arg6@@4 Real) ) (! (= (getPredWandId_3836_1647 (wand_1 arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4)) 1)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6232) (SummandMask1 T@PolymorphicMapType_6232) (SummandMask2 T@PolymorphicMapType_6232) (o_2@@59 T@Ref) (f_4@@59 T@Field_9631_9632) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6232) (SummandMask1@@0 T@PolymorphicMapType_6232) (SummandMask2@@0 T@PolymorphicMapType_6232) (o_2@@60 T@Ref) (f_4@@60 T@Field_9614_9619) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6232) (SummandMask1@@1 T@PolymorphicMapType_6232) (SummandMask2@@1 T@PolymorphicMapType_6232) (o_2@@61 T@Ref) (f_4@@61 T@Field_9600_6285) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6232) (SummandMask1@@2 T@PolymorphicMapType_6232) (SummandMask2@@2 T@PolymorphicMapType_6232) (o_2@@62 T@Ref) (f_4@@62 T@Field_9600_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6232) (SummandMask1@@3 T@PolymorphicMapType_6232) (SummandMask2@@3 T@PolymorphicMapType_6232) (o_2@@63 T@Ref) (f_4@@63 T@Field_9600_1211) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6232) (SummandMask1@@4 T@PolymorphicMapType_6232) (SummandMask2@@4 T@PolymorphicMapType_6232) (o_2@@64 T@Ref) (f_4@@64 T@Field_10421_10422) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6232) (SummandMask1@@5 T@PolymorphicMapType_6232) (SummandMask2@@5 T@PolymorphicMapType_6232) (o_2@@65 T@Ref) (f_4@@65 T@Field_10404_10409) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6232) (SummandMask1@@6 T@PolymorphicMapType_6232) (SummandMask2@@6 T@PolymorphicMapType_6232) (o_2@@66 T@Ref) (f_4@@66 T@Field_10390_6285) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_6232) (SummandMask1@@7 T@PolymorphicMapType_6232) (SummandMask2@@7 T@PolymorphicMapType_6232) (o_2@@67 T@Ref) (f_4@@67 T@Field_10390_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_6232) (SummandMask1@@8 T@PolymorphicMapType_6232) (SummandMask2@@8 T@PolymorphicMapType_6232) (o_2@@68 T@Ref) (f_4@@68 T@Field_10390_1647) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_6232) (SummandMask1@@9 T@PolymorphicMapType_6232) (SummandMask2@@9 T@PolymorphicMapType_6232) (o_2@@69 T@Ref) (f_4@@69 T@Field_3894_9632) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_6232) (SummandMask1@@10 T@PolymorphicMapType_6232) (SummandMask2@@10 T@PolymorphicMapType_6232) (o_2@@70 T@Ref) (f_4@@70 T@Field_3894_9619) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_6232) (SummandMask1@@11 T@PolymorphicMapType_6232) (SummandMask2@@11 T@PolymorphicMapType_6232) (o_2@@71 T@Ref) (f_4@@71 T@Field_6284_6285) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_6232) (SummandMask1@@12 T@PolymorphicMapType_6232) (SummandMask2@@12 T@PolymorphicMapType_6232) (o_2@@72 T@Ref) (f_4@@72 T@Field_6271_53) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_6232) (SummandMask1@@13 T@PolymorphicMapType_6232) (SummandMask2@@13 T@PolymorphicMapType_6232) (o_2@@73 T@Ref) (f_4@@73 T@Field_11177_2058) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6211) (ExhaleHeap@@22 T@PolymorphicMapType_6211) (Mask@@53 T@PolymorphicMapType_6232) (pm_f@@5 T@Field_10421_10422) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_10390_9632 Mask@@53 null pm_f@@5) (IsPredicateField_3851_3852 pm_f@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@14 T@Field_11177_2058) ) (!  (=> (select (|PolymorphicMapType_6760_3894_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) null (PredicateMaskField_10390 pm_f@@5))) o2 f_2@@14) (= (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@23) o2 f_2@@14) (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| ExhaleHeap@@22) o2 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| ExhaleHeap@@22) o2 f_2@@14))
)) (forall ((o2@@0 T@Ref) (f_2@@15 T@Field_6271_53) ) (!  (=> (select (|PolymorphicMapType_6760_3894_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) null (PredicateMaskField_10390 pm_f@@5))) o2@@0 f_2@@15) (= (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@23) o2@@0 f_2@@15) (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@0 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@0 f_2@@15))
))) (forall ((o2@@1 T@Ref) (f_2@@16 T@Field_6284_6285) ) (!  (=> (select (|PolymorphicMapType_6760_3894_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) null (PredicateMaskField_10390 pm_f@@5))) o2@@1 f_2@@16) (= (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@23) o2@@1 f_2@@16) (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@1 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@1 f_2@@16))
))) (forall ((o2@@2 T@Ref) (f_2@@17 T@Field_3894_9619) ) (!  (=> (select (|PolymorphicMapType_6760_3894_22640#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) null (PredicateMaskField_10390 pm_f@@5))) o2@@2 f_2@@17) (= (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@23) o2@@2 f_2@@17) (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@2 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@2 f_2@@17))
))) (forall ((o2@@3 T@Ref) (f_2@@18 T@Field_3894_9632) ) (!  (=> (select (|PolymorphicMapType_6760_3894_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) null (PredicateMaskField_10390 pm_f@@5))) o2@@3 f_2@@18) (= (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@23) o2@@3 f_2@@18) (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@3 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@3 f_2@@18))
))) (forall ((o2@@4 T@Ref) (f_2@@19 T@Field_9600_1211) ) (!  (=> (select (|PolymorphicMapType_6760_9600_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) null (PredicateMaskField_10390 pm_f@@5))) o2@@4 f_2@@19) (= (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@23) o2@@4 f_2@@19) (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@4 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@4 f_2@@19))
))) (forall ((o2@@5 T@Ref) (f_2@@20 T@Field_9600_53) ) (!  (=> (select (|PolymorphicMapType_6760_9600_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) null (PredicateMaskField_10390 pm_f@@5))) o2@@5 f_2@@20) (= (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@23) o2@@5 f_2@@20) (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@5 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@5 f_2@@20))
))) (forall ((o2@@6 T@Ref) (f_2@@21 T@Field_9600_6285) ) (!  (=> (select (|PolymorphicMapType_6760_9600_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) null (PredicateMaskField_10390 pm_f@@5))) o2@@6 f_2@@21) (= (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@23) o2@@6 f_2@@21) (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@6 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@6 f_2@@21))
))) (forall ((o2@@7 T@Ref) (f_2@@22 T@Field_9614_9619) ) (!  (=> (select (|PolymorphicMapType_6760_9600_23688#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) null (PredicateMaskField_10390 pm_f@@5))) o2@@7 f_2@@22) (= (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@23) o2@@7 f_2@@22) (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@7 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@7 f_2@@22))
))) (forall ((o2@@8 T@Ref) (f_2@@23 T@Field_9631_9632) ) (!  (=> (select (|PolymorphicMapType_6760_9600_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) null (PredicateMaskField_10390 pm_f@@5))) o2@@8 f_2@@23) (= (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@23) o2@@8 f_2@@23) (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@8 f_2@@23)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@8 f_2@@23))
))) (forall ((o2@@9 T@Ref) (f_2@@24 T@Field_10390_1647) ) (!  (=> (select (|PolymorphicMapType_6760_10390_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) null (PredicateMaskField_10390 pm_f@@5))) o2@@9 f_2@@24) (= (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@23) o2@@9 f_2@@24) (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@9 f_2@@24)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@9 f_2@@24))
))) (forall ((o2@@10 T@Ref) (f_2@@25 T@Field_10390_53) ) (!  (=> (select (|PolymorphicMapType_6760_10390_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) null (PredicateMaskField_10390 pm_f@@5))) o2@@10 f_2@@25) (= (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@23) o2@@10 f_2@@25) (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@10 f_2@@25)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@10 f_2@@25))
))) (forall ((o2@@11 T@Ref) (f_2@@26 T@Field_10390_6285) ) (!  (=> (select (|PolymorphicMapType_6760_10390_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) null (PredicateMaskField_10390 pm_f@@5))) o2@@11 f_2@@26) (= (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@23) o2@@11 f_2@@26) (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@11 f_2@@26)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@11 f_2@@26))
))) (forall ((o2@@12 T@Ref) (f_2@@27 T@Field_10404_10409) ) (!  (=> (select (|PolymorphicMapType_6760_10390_24736#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) null (PredicateMaskField_10390 pm_f@@5))) o2@@12 f_2@@27) (= (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) o2@@12 f_2@@27) (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@12 f_2@@27)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@12 f_2@@27))
))) (forall ((o2@@13 T@Ref) (f_2@@28 T@Field_10421_10422) ) (!  (=> (select (|PolymorphicMapType_6760_10390_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@23) null (PredicateMaskField_10390 pm_f@@5))) o2@@13 f_2@@28) (= (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@23) o2@@13 f_2@@28) (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@13 f_2@@28)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| ExhaleHeap@@22) o2@@13 f_2@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@22 Mask@@53) (IsPredicateField_3851_3852 pm_f@@5))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6211) (ExhaleHeap@@23 T@PolymorphicMapType_6211) (Mask@@54 T@PolymorphicMapType_6232) (pm_f@@6 T@Field_9631_9632) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_9600_9632 Mask@@54 null pm_f@@6) (IsPredicateField_3788_3789 pm_f@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@14 T@Ref) (f_2@@29 T@Field_11177_2058) ) (!  (=> (select (|PolymorphicMapType_6760_3894_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) null (PredicateMaskField_9600 pm_f@@6))) o2@@14 f_2@@29) (= (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@24) o2@@14 f_2@@29) (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@14 f_2@@29)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@14 f_2@@29))
)) (forall ((o2@@15 T@Ref) (f_2@@30 T@Field_6271_53) ) (!  (=> (select (|PolymorphicMapType_6760_3894_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) null (PredicateMaskField_9600 pm_f@@6))) o2@@15 f_2@@30) (= (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@24) o2@@15 f_2@@30) (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@15 f_2@@30)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@15 f_2@@30))
))) (forall ((o2@@16 T@Ref) (f_2@@31 T@Field_6284_6285) ) (!  (=> (select (|PolymorphicMapType_6760_3894_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) null (PredicateMaskField_9600 pm_f@@6))) o2@@16 f_2@@31) (= (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@24) o2@@16 f_2@@31) (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@16 f_2@@31)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@16 f_2@@31))
))) (forall ((o2@@17 T@Ref) (f_2@@32 T@Field_3894_9619) ) (!  (=> (select (|PolymorphicMapType_6760_3894_22640#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) null (PredicateMaskField_9600 pm_f@@6))) o2@@17 f_2@@32) (= (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@24) o2@@17 f_2@@32) (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@17 f_2@@32)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@17 f_2@@32))
))) (forall ((o2@@18 T@Ref) (f_2@@33 T@Field_3894_9632) ) (!  (=> (select (|PolymorphicMapType_6760_3894_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) null (PredicateMaskField_9600 pm_f@@6))) o2@@18 f_2@@33) (= (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@24) o2@@18 f_2@@33) (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@18 f_2@@33)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@18 f_2@@33))
))) (forall ((o2@@19 T@Ref) (f_2@@34 T@Field_9600_1211) ) (!  (=> (select (|PolymorphicMapType_6760_9600_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) null (PredicateMaskField_9600 pm_f@@6))) o2@@19 f_2@@34) (= (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@24) o2@@19 f_2@@34) (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@19 f_2@@34)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@19 f_2@@34))
))) (forall ((o2@@20 T@Ref) (f_2@@35 T@Field_9600_53) ) (!  (=> (select (|PolymorphicMapType_6760_9600_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) null (PredicateMaskField_9600 pm_f@@6))) o2@@20 f_2@@35) (= (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@24) o2@@20 f_2@@35) (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@20 f_2@@35)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@20 f_2@@35))
))) (forall ((o2@@21 T@Ref) (f_2@@36 T@Field_9600_6285) ) (!  (=> (select (|PolymorphicMapType_6760_9600_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) null (PredicateMaskField_9600 pm_f@@6))) o2@@21 f_2@@36) (= (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@24) o2@@21 f_2@@36) (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@21 f_2@@36)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@21 f_2@@36))
))) (forall ((o2@@22 T@Ref) (f_2@@37 T@Field_9614_9619) ) (!  (=> (select (|PolymorphicMapType_6760_9600_23688#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) null (PredicateMaskField_9600 pm_f@@6))) o2@@22 f_2@@37) (= (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) o2@@22 f_2@@37) (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@22 f_2@@37)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@22 f_2@@37))
))) (forall ((o2@@23 T@Ref) (f_2@@38 T@Field_9631_9632) ) (!  (=> (select (|PolymorphicMapType_6760_9600_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) null (PredicateMaskField_9600 pm_f@@6))) o2@@23 f_2@@38) (= (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@24) o2@@23 f_2@@38) (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@23 f_2@@38)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@23 f_2@@38))
))) (forall ((o2@@24 T@Ref) (f_2@@39 T@Field_10390_1647) ) (!  (=> (select (|PolymorphicMapType_6760_10390_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) null (PredicateMaskField_9600 pm_f@@6))) o2@@24 f_2@@39) (= (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@24) o2@@24 f_2@@39) (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@24 f_2@@39)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@24 f_2@@39))
))) (forall ((o2@@25 T@Ref) (f_2@@40 T@Field_10390_53) ) (!  (=> (select (|PolymorphicMapType_6760_10390_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) null (PredicateMaskField_9600 pm_f@@6))) o2@@25 f_2@@40) (= (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@24) o2@@25 f_2@@40) (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@25 f_2@@40)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@25 f_2@@40))
))) (forall ((o2@@26 T@Ref) (f_2@@41 T@Field_10390_6285) ) (!  (=> (select (|PolymorphicMapType_6760_10390_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) null (PredicateMaskField_9600 pm_f@@6))) o2@@26 f_2@@41) (= (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@24) o2@@26 f_2@@41) (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@26 f_2@@41)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@26 f_2@@41))
))) (forall ((o2@@27 T@Ref) (f_2@@42 T@Field_10404_10409) ) (!  (=> (select (|PolymorphicMapType_6760_10390_24736#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) null (PredicateMaskField_9600 pm_f@@6))) o2@@27 f_2@@42) (= (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@24) o2@@27 f_2@@42) (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@27 f_2@@42)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@27 f_2@@42))
))) (forall ((o2@@28 T@Ref) (f_2@@43 T@Field_10421_10422) ) (!  (=> (select (|PolymorphicMapType_6760_10390_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@24) null (PredicateMaskField_9600 pm_f@@6))) o2@@28 f_2@@43) (= (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@24) o2@@28 f_2@@43) (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@28 f_2@@43)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| ExhaleHeap@@23) o2@@28 f_2@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@23 Mask@@54) (IsPredicateField_3788_3789 pm_f@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6211) (ExhaleHeap@@24 T@PolymorphicMapType_6211) (Mask@@55 T@PolymorphicMapType_6232) (pm_f@@7 T@Field_3894_9632) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_3894_9632 Mask@@55 null pm_f@@7) (IsPredicateField_3894_20997 pm_f@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@44 T@Field_11177_2058) ) (!  (=> (select (|PolymorphicMapType_6760_3894_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) null (PredicateMaskField_3894 pm_f@@7))) o2@@29 f_2@@44) (= (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@25) o2@@29 f_2@@44) (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@29 f_2@@44)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@29 f_2@@44))
)) (forall ((o2@@30 T@Ref) (f_2@@45 T@Field_6271_53) ) (!  (=> (select (|PolymorphicMapType_6760_3894_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) null (PredicateMaskField_3894 pm_f@@7))) o2@@30 f_2@@45) (= (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@25) o2@@30 f_2@@45) (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@30 f_2@@45)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@30 f_2@@45))
))) (forall ((o2@@31 T@Ref) (f_2@@46 T@Field_6284_6285) ) (!  (=> (select (|PolymorphicMapType_6760_3894_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) null (PredicateMaskField_3894 pm_f@@7))) o2@@31 f_2@@46) (= (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@25) o2@@31 f_2@@46) (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@31 f_2@@46)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@31 f_2@@46))
))) (forall ((o2@@32 T@Ref) (f_2@@47 T@Field_3894_9619) ) (!  (=> (select (|PolymorphicMapType_6760_3894_22640#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) null (PredicateMaskField_3894 pm_f@@7))) o2@@32 f_2@@47) (= (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) o2@@32 f_2@@47) (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@32 f_2@@47)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@32 f_2@@47))
))) (forall ((o2@@33 T@Ref) (f_2@@48 T@Field_3894_9632) ) (!  (=> (select (|PolymorphicMapType_6760_3894_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) null (PredicateMaskField_3894 pm_f@@7))) o2@@33 f_2@@48) (= (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@25) o2@@33 f_2@@48) (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@33 f_2@@48)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@33 f_2@@48))
))) (forall ((o2@@34 T@Ref) (f_2@@49 T@Field_9600_1211) ) (!  (=> (select (|PolymorphicMapType_6760_9600_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) null (PredicateMaskField_3894 pm_f@@7))) o2@@34 f_2@@49) (= (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@25) o2@@34 f_2@@49) (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@34 f_2@@49)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@34 f_2@@49))
))) (forall ((o2@@35 T@Ref) (f_2@@50 T@Field_9600_53) ) (!  (=> (select (|PolymorphicMapType_6760_9600_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) null (PredicateMaskField_3894 pm_f@@7))) o2@@35 f_2@@50) (= (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@25) o2@@35 f_2@@50) (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@35 f_2@@50)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@35 f_2@@50))
))) (forall ((o2@@36 T@Ref) (f_2@@51 T@Field_9600_6285) ) (!  (=> (select (|PolymorphicMapType_6760_9600_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) null (PredicateMaskField_3894 pm_f@@7))) o2@@36 f_2@@51) (= (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@25) o2@@36 f_2@@51) (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@36 f_2@@51)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@36 f_2@@51))
))) (forall ((o2@@37 T@Ref) (f_2@@52 T@Field_9614_9619) ) (!  (=> (select (|PolymorphicMapType_6760_9600_23688#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) null (PredicateMaskField_3894 pm_f@@7))) o2@@37 f_2@@52) (= (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@25) o2@@37 f_2@@52) (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@37 f_2@@52)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@37 f_2@@52))
))) (forall ((o2@@38 T@Ref) (f_2@@53 T@Field_9631_9632) ) (!  (=> (select (|PolymorphicMapType_6760_9600_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) null (PredicateMaskField_3894 pm_f@@7))) o2@@38 f_2@@53) (= (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@25) o2@@38 f_2@@53) (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@38 f_2@@53)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@38 f_2@@53))
))) (forall ((o2@@39 T@Ref) (f_2@@54 T@Field_10390_1647) ) (!  (=> (select (|PolymorphicMapType_6760_10390_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) null (PredicateMaskField_3894 pm_f@@7))) o2@@39 f_2@@54) (= (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@25) o2@@39 f_2@@54) (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@39 f_2@@54)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@39 f_2@@54))
))) (forall ((o2@@40 T@Ref) (f_2@@55 T@Field_10390_53) ) (!  (=> (select (|PolymorphicMapType_6760_10390_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) null (PredicateMaskField_3894 pm_f@@7))) o2@@40 f_2@@55) (= (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@25) o2@@40 f_2@@55) (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@40 f_2@@55)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@40 f_2@@55))
))) (forall ((o2@@41 T@Ref) (f_2@@56 T@Field_10390_6285) ) (!  (=> (select (|PolymorphicMapType_6760_10390_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) null (PredicateMaskField_3894 pm_f@@7))) o2@@41 f_2@@56) (= (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@25) o2@@41 f_2@@56) (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@41 f_2@@56)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@41 f_2@@56))
))) (forall ((o2@@42 T@Ref) (f_2@@57 T@Field_10404_10409) ) (!  (=> (select (|PolymorphicMapType_6760_10390_24736#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) null (PredicateMaskField_3894 pm_f@@7))) o2@@42 f_2@@57) (= (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@25) o2@@42 f_2@@57) (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@42 f_2@@57)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@42 f_2@@57))
))) (forall ((o2@@43 T@Ref) (f_2@@58 T@Field_10421_10422) ) (!  (=> (select (|PolymorphicMapType_6760_10390_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@25) null (PredicateMaskField_3894 pm_f@@7))) o2@@43 f_2@@58) (= (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@25) o2@@43 f_2@@58) (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@43 f_2@@58)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| ExhaleHeap@@24) o2@@43 f_2@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@24 Mask@@55) (IsPredicateField_3894_20997 pm_f@@7))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6211) (ExhaleHeap@@25 T@PolymorphicMapType_6211) (Mask@@56 T@PolymorphicMapType_6232) (pm_f@@8 T@Field_10421_10422) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_10390_9632 Mask@@56 null pm_f@@8) (IsWandField_3851_3852 pm_f@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@44 T@Ref) (f_2@@59 T@Field_11177_2058) ) (!  (=> (select (|PolymorphicMapType_6760_3894_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) null (WandMaskField_3851 pm_f@@8))) o2@@44 f_2@@59) (= (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@26) o2@@44 f_2@@59) (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@44 f_2@@59)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@44 f_2@@59))
)) (forall ((o2@@45 T@Ref) (f_2@@60 T@Field_6271_53) ) (!  (=> (select (|PolymorphicMapType_6760_3894_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) null (WandMaskField_3851 pm_f@@8))) o2@@45 f_2@@60) (= (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@26) o2@@45 f_2@@60) (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@45 f_2@@60)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@45 f_2@@60))
))) (forall ((o2@@46 T@Ref) (f_2@@61 T@Field_6284_6285) ) (!  (=> (select (|PolymorphicMapType_6760_3894_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) null (WandMaskField_3851 pm_f@@8))) o2@@46 f_2@@61) (= (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@26) o2@@46 f_2@@61) (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@46 f_2@@61)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@46 f_2@@61))
))) (forall ((o2@@47 T@Ref) (f_2@@62 T@Field_3894_9619) ) (!  (=> (select (|PolymorphicMapType_6760_3894_22640#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) null (WandMaskField_3851 pm_f@@8))) o2@@47 f_2@@62) (= (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@26) o2@@47 f_2@@62) (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@47 f_2@@62)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@47 f_2@@62))
))) (forall ((o2@@48 T@Ref) (f_2@@63 T@Field_3894_9632) ) (!  (=> (select (|PolymorphicMapType_6760_3894_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) null (WandMaskField_3851 pm_f@@8))) o2@@48 f_2@@63) (= (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@26) o2@@48 f_2@@63) (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@48 f_2@@63)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@48 f_2@@63))
))) (forall ((o2@@49 T@Ref) (f_2@@64 T@Field_9600_1211) ) (!  (=> (select (|PolymorphicMapType_6760_9600_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) null (WandMaskField_3851 pm_f@@8))) o2@@49 f_2@@64) (= (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@26) o2@@49 f_2@@64) (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@49 f_2@@64)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@49 f_2@@64))
))) (forall ((o2@@50 T@Ref) (f_2@@65 T@Field_9600_53) ) (!  (=> (select (|PolymorphicMapType_6760_9600_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) null (WandMaskField_3851 pm_f@@8))) o2@@50 f_2@@65) (= (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@26) o2@@50 f_2@@65) (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@50 f_2@@65)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@50 f_2@@65))
))) (forall ((o2@@51 T@Ref) (f_2@@66 T@Field_9600_6285) ) (!  (=> (select (|PolymorphicMapType_6760_9600_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) null (WandMaskField_3851 pm_f@@8))) o2@@51 f_2@@66) (= (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@26) o2@@51 f_2@@66) (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@51 f_2@@66)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@51 f_2@@66))
))) (forall ((o2@@52 T@Ref) (f_2@@67 T@Field_9614_9619) ) (!  (=> (select (|PolymorphicMapType_6760_9600_23688#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) null (WandMaskField_3851 pm_f@@8))) o2@@52 f_2@@67) (= (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@26) o2@@52 f_2@@67) (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@52 f_2@@67)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@52 f_2@@67))
))) (forall ((o2@@53 T@Ref) (f_2@@68 T@Field_9631_9632) ) (!  (=> (select (|PolymorphicMapType_6760_9600_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) null (WandMaskField_3851 pm_f@@8))) o2@@53 f_2@@68) (= (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@26) o2@@53 f_2@@68) (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@53 f_2@@68)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@53 f_2@@68))
))) (forall ((o2@@54 T@Ref) (f_2@@69 T@Field_10390_1647) ) (!  (=> (select (|PolymorphicMapType_6760_10390_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) null (WandMaskField_3851 pm_f@@8))) o2@@54 f_2@@69) (= (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@26) o2@@54 f_2@@69) (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@54 f_2@@69)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@54 f_2@@69))
))) (forall ((o2@@55 T@Ref) (f_2@@70 T@Field_10390_53) ) (!  (=> (select (|PolymorphicMapType_6760_10390_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) null (WandMaskField_3851 pm_f@@8))) o2@@55 f_2@@70) (= (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@26) o2@@55 f_2@@70) (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@55 f_2@@70)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@55 f_2@@70))
))) (forall ((o2@@56 T@Ref) (f_2@@71 T@Field_10390_6285) ) (!  (=> (select (|PolymorphicMapType_6760_10390_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) null (WandMaskField_3851 pm_f@@8))) o2@@56 f_2@@71) (= (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@26) o2@@56 f_2@@71) (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@56 f_2@@71)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@56 f_2@@71))
))) (forall ((o2@@57 T@Ref) (f_2@@72 T@Field_10404_10409) ) (!  (=> (select (|PolymorphicMapType_6760_10390_24736#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) null (WandMaskField_3851 pm_f@@8))) o2@@57 f_2@@72) (= (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) o2@@57 f_2@@72) (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@57 f_2@@72)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@57 f_2@@72))
))) (forall ((o2@@58 T@Ref) (f_2@@73 T@Field_10421_10422) ) (!  (=> (select (|PolymorphicMapType_6760_10390_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@26) null (WandMaskField_3851 pm_f@@8))) o2@@58 f_2@@73) (= (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@26) o2@@58 f_2@@73) (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@58 f_2@@73)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| ExhaleHeap@@25) o2@@58 f_2@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@25 Mask@@56) (IsWandField_3851_3852 pm_f@@8))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6211) (ExhaleHeap@@26 T@PolymorphicMapType_6211) (Mask@@57 T@PolymorphicMapType_6232) (pm_f@@9 T@Field_9631_9632) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_9600_9632 Mask@@57 null pm_f@@9) (IsWandField_3788_3789 pm_f@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@59 T@Ref) (f_2@@74 T@Field_11177_2058) ) (!  (=> (select (|PolymorphicMapType_6760_3894_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) null (WandMaskField_3788 pm_f@@9))) o2@@59 f_2@@74) (= (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@27) o2@@59 f_2@@74) (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@59 f_2@@74)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@59 f_2@@74))
)) (forall ((o2@@60 T@Ref) (f_2@@75 T@Field_6271_53) ) (!  (=> (select (|PolymorphicMapType_6760_3894_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) null (WandMaskField_3788 pm_f@@9))) o2@@60 f_2@@75) (= (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@27) o2@@60 f_2@@75) (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@60 f_2@@75)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@60 f_2@@75))
))) (forall ((o2@@61 T@Ref) (f_2@@76 T@Field_6284_6285) ) (!  (=> (select (|PolymorphicMapType_6760_3894_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) null (WandMaskField_3788 pm_f@@9))) o2@@61 f_2@@76) (= (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@27) o2@@61 f_2@@76) (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@61 f_2@@76)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@61 f_2@@76))
))) (forall ((o2@@62 T@Ref) (f_2@@77 T@Field_3894_9619) ) (!  (=> (select (|PolymorphicMapType_6760_3894_22640#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) null (WandMaskField_3788 pm_f@@9))) o2@@62 f_2@@77) (= (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@27) o2@@62 f_2@@77) (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@62 f_2@@77)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@62 f_2@@77))
))) (forall ((o2@@63 T@Ref) (f_2@@78 T@Field_3894_9632) ) (!  (=> (select (|PolymorphicMapType_6760_3894_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) null (WandMaskField_3788 pm_f@@9))) o2@@63 f_2@@78) (= (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@27) o2@@63 f_2@@78) (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@63 f_2@@78)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@63 f_2@@78))
))) (forall ((o2@@64 T@Ref) (f_2@@79 T@Field_9600_1211) ) (!  (=> (select (|PolymorphicMapType_6760_9600_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) null (WandMaskField_3788 pm_f@@9))) o2@@64 f_2@@79) (= (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@27) o2@@64 f_2@@79) (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@64 f_2@@79)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@64 f_2@@79))
))) (forall ((o2@@65 T@Ref) (f_2@@80 T@Field_9600_53) ) (!  (=> (select (|PolymorphicMapType_6760_9600_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) null (WandMaskField_3788 pm_f@@9))) o2@@65 f_2@@80) (= (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@27) o2@@65 f_2@@80) (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@65 f_2@@80)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@65 f_2@@80))
))) (forall ((o2@@66 T@Ref) (f_2@@81 T@Field_9600_6285) ) (!  (=> (select (|PolymorphicMapType_6760_9600_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) null (WandMaskField_3788 pm_f@@9))) o2@@66 f_2@@81) (= (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@27) o2@@66 f_2@@81) (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@66 f_2@@81)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@66 f_2@@81))
))) (forall ((o2@@67 T@Ref) (f_2@@82 T@Field_9614_9619) ) (!  (=> (select (|PolymorphicMapType_6760_9600_23688#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) null (WandMaskField_3788 pm_f@@9))) o2@@67 f_2@@82) (= (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) o2@@67 f_2@@82) (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@67 f_2@@82)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@67 f_2@@82))
))) (forall ((o2@@68 T@Ref) (f_2@@83 T@Field_9631_9632) ) (!  (=> (select (|PolymorphicMapType_6760_9600_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) null (WandMaskField_3788 pm_f@@9))) o2@@68 f_2@@83) (= (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@27) o2@@68 f_2@@83) (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@68 f_2@@83)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@68 f_2@@83))
))) (forall ((o2@@69 T@Ref) (f_2@@84 T@Field_10390_1647) ) (!  (=> (select (|PolymorphicMapType_6760_10390_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) null (WandMaskField_3788 pm_f@@9))) o2@@69 f_2@@84) (= (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@27) o2@@69 f_2@@84) (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@69 f_2@@84)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@69 f_2@@84))
))) (forall ((o2@@70 T@Ref) (f_2@@85 T@Field_10390_53) ) (!  (=> (select (|PolymorphicMapType_6760_10390_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) null (WandMaskField_3788 pm_f@@9))) o2@@70 f_2@@85) (= (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@27) o2@@70 f_2@@85) (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@70 f_2@@85)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@70 f_2@@85))
))) (forall ((o2@@71 T@Ref) (f_2@@86 T@Field_10390_6285) ) (!  (=> (select (|PolymorphicMapType_6760_10390_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) null (WandMaskField_3788 pm_f@@9))) o2@@71 f_2@@86) (= (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@27) o2@@71 f_2@@86) (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@71 f_2@@86)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@71 f_2@@86))
))) (forall ((o2@@72 T@Ref) (f_2@@87 T@Field_10404_10409) ) (!  (=> (select (|PolymorphicMapType_6760_10390_24736#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) null (WandMaskField_3788 pm_f@@9))) o2@@72 f_2@@87) (= (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@27) o2@@72 f_2@@87) (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@72 f_2@@87)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@72 f_2@@87))
))) (forall ((o2@@73 T@Ref) (f_2@@88 T@Field_10421_10422) ) (!  (=> (select (|PolymorphicMapType_6760_10390_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@27) null (WandMaskField_3788 pm_f@@9))) o2@@73 f_2@@88) (= (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@27) o2@@73 f_2@@88) (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@73 f_2@@88)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| ExhaleHeap@@26) o2@@73 f_2@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@26 Mask@@57) (IsWandField_3788_3789 pm_f@@9))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6211) (ExhaleHeap@@27 T@PolymorphicMapType_6211) (Mask@@58 T@PolymorphicMapType_6232) (pm_f@@10 T@Field_3894_9632) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_3894_9632 Mask@@58 null pm_f@@10) (IsWandField_3894_26029 pm_f@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@74 T@Ref) (f_2@@89 T@Field_11177_2058) ) (!  (=> (select (|PolymorphicMapType_6760_3894_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) null (WandMaskField_3894 pm_f@@10))) o2@@74 f_2@@89) (= (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@28) o2@@74 f_2@@89) (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@74 f_2@@89)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@74 f_2@@89))
)) (forall ((o2@@75 T@Ref) (f_2@@90 T@Field_6271_53) ) (!  (=> (select (|PolymorphicMapType_6760_3894_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) null (WandMaskField_3894 pm_f@@10))) o2@@75 f_2@@90) (= (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@28) o2@@75 f_2@@90) (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@75 f_2@@90)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@75 f_2@@90))
))) (forall ((o2@@76 T@Ref) (f_2@@91 T@Field_6284_6285) ) (!  (=> (select (|PolymorphicMapType_6760_3894_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) null (WandMaskField_3894 pm_f@@10))) o2@@76 f_2@@91) (= (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@28) o2@@76 f_2@@91) (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@76 f_2@@91)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@76 f_2@@91))
))) (forall ((o2@@77 T@Ref) (f_2@@92 T@Field_3894_9619) ) (!  (=> (select (|PolymorphicMapType_6760_3894_22640#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) null (WandMaskField_3894 pm_f@@10))) o2@@77 f_2@@92) (= (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) o2@@77 f_2@@92) (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@77 f_2@@92)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@77 f_2@@92))
))) (forall ((o2@@78 T@Ref) (f_2@@93 T@Field_3894_9632) ) (!  (=> (select (|PolymorphicMapType_6760_3894_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) null (WandMaskField_3894 pm_f@@10))) o2@@78 f_2@@93) (= (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@28) o2@@78 f_2@@93) (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@78 f_2@@93)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@78 f_2@@93))
))) (forall ((o2@@79 T@Ref) (f_2@@94 T@Field_9600_1211) ) (!  (=> (select (|PolymorphicMapType_6760_9600_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) null (WandMaskField_3894 pm_f@@10))) o2@@79 f_2@@94) (= (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@28) o2@@79 f_2@@94) (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@79 f_2@@94)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@79 f_2@@94))
))) (forall ((o2@@80 T@Ref) (f_2@@95 T@Field_9600_53) ) (!  (=> (select (|PolymorphicMapType_6760_9600_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) null (WandMaskField_3894 pm_f@@10))) o2@@80 f_2@@95) (= (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@28) o2@@80 f_2@@95) (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@80 f_2@@95)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@80 f_2@@95))
))) (forall ((o2@@81 T@Ref) (f_2@@96 T@Field_9600_6285) ) (!  (=> (select (|PolymorphicMapType_6760_9600_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) null (WandMaskField_3894 pm_f@@10))) o2@@81 f_2@@96) (= (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@28) o2@@81 f_2@@96) (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@81 f_2@@96)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@81 f_2@@96))
))) (forall ((o2@@82 T@Ref) (f_2@@97 T@Field_9614_9619) ) (!  (=> (select (|PolymorphicMapType_6760_9600_23688#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) null (WandMaskField_3894 pm_f@@10))) o2@@82 f_2@@97) (= (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@28) o2@@82 f_2@@97) (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@82 f_2@@97)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@82 f_2@@97))
))) (forall ((o2@@83 T@Ref) (f_2@@98 T@Field_9631_9632) ) (!  (=> (select (|PolymorphicMapType_6760_9600_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) null (WandMaskField_3894 pm_f@@10))) o2@@83 f_2@@98) (= (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@28) o2@@83 f_2@@98) (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@83 f_2@@98)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@83 f_2@@98))
))) (forall ((o2@@84 T@Ref) (f_2@@99 T@Field_10390_1647) ) (!  (=> (select (|PolymorphicMapType_6760_10390_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) null (WandMaskField_3894 pm_f@@10))) o2@@84 f_2@@99) (= (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@28) o2@@84 f_2@@99) (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@84 f_2@@99)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@84 f_2@@99))
))) (forall ((o2@@85 T@Ref) (f_2@@100 T@Field_10390_53) ) (!  (=> (select (|PolymorphicMapType_6760_10390_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) null (WandMaskField_3894 pm_f@@10))) o2@@85 f_2@@100) (= (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@28) o2@@85 f_2@@100) (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@85 f_2@@100)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@85 f_2@@100))
))) (forall ((o2@@86 T@Ref) (f_2@@101 T@Field_10390_6285) ) (!  (=> (select (|PolymorphicMapType_6760_10390_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) null (WandMaskField_3894 pm_f@@10))) o2@@86 f_2@@101) (= (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@28) o2@@86 f_2@@101) (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@86 f_2@@101)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@86 f_2@@101))
))) (forall ((o2@@87 T@Ref) (f_2@@102 T@Field_10404_10409) ) (!  (=> (select (|PolymorphicMapType_6760_10390_24736#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) null (WandMaskField_3894 pm_f@@10))) o2@@87 f_2@@102) (= (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@28) o2@@87 f_2@@102) (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@87 f_2@@102)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@87 f_2@@102))
))) (forall ((o2@@88 T@Ref) (f_2@@103 T@Field_10421_10422) ) (!  (=> (select (|PolymorphicMapType_6760_10390_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@28) null (WandMaskField_3894 pm_f@@10))) o2@@88 f_2@@103) (= (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@28) o2@@88 f_2@@103) (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@88 f_2@@103)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| ExhaleHeap@@27) o2@@88 f_2@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@27 Mask@@58) (IsWandField_3894_26029 pm_f@@10))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 T@Ref) (arg4@@5 Real) (arg5@@5 T@Ref) (arg6@@5 Int) ) (! (IsWandField_3773_1211 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 Real) (arg3@@6 T@Ref) (arg4@@6 Real) (arg5@@6 T@Ref) (arg6@@6 Int) ) (! (IsWandField_3788_3789 (|wand#ft| arg1@@6 arg2@@6 arg3@@6 arg4@@6 arg5@@6 arg6@@6))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@6 arg2@@6 arg3@@6 arg4@@6 arg5@@6 arg6@@6))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 Real) (arg3@@7 T@Ref) (arg4@@7 Int) (arg5@@7 T@Ref) (arg6@@7 Real) ) (! (IsWandField_3836_1647 (wand_1 arg1@@7 arg2@@7 arg3@@7 arg4@@7 arg5@@7 arg6@@7))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@7 arg2@@7 arg3@@7 arg4@@7 arg5@@7 arg6@@7))
)))
(assert (forall ((arg1@@8 T@Ref) (arg2@@8 Real) (arg3@@8 T@Ref) (arg4@@8 Int) (arg5@@8 T@Ref) (arg6@@8 Real) ) (! (IsWandField_3851_3852 (|wand_1#ft| arg1@@8 arg2@@8 arg3@@8 arg4@@8 arg5@@8 arg6@@8))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@8 arg2@@8 arg3@@8 arg4@@8 arg5@@8 arg6@@8))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 Real) (arg3@@9 T@Ref) (arg4@@9 Real) (arg5@@9 T@Ref) (arg6@@9 Int) ) (!  (not (IsPredicateField_3773_1211 (wand arg1@@9 arg2@@9 arg3@@9 arg4@@9 arg5@@9 arg6@@9)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@9 arg2@@9 arg3@@9 arg4@@9 arg5@@9 arg6@@9))
)))
(assert (forall ((arg1@@10 T@Ref) (arg2@@10 Real) (arg3@@10 T@Ref) (arg4@@10 Real) (arg5@@10 T@Ref) (arg6@@10 Int) ) (!  (not (IsPredicateField_3788_3789 (|wand#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@10 arg5@@10 arg6@@10)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@10 arg2@@10 arg3@@10 arg4@@10 arg5@@10 arg6@@10))
)))
(assert (forall ((arg1@@11 T@Ref) (arg2@@11 Real) (arg3@@11 T@Ref) (arg4@@11 Int) (arg5@@11 T@Ref) (arg6@@11 Real) ) (!  (not (IsPredicateField_3836_1647 (wand_1 arg1@@11 arg2@@11 arg3@@11 arg4@@11 arg5@@11 arg6@@11)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@11 arg2@@11 arg3@@11 arg4@@11 arg5@@11 arg6@@11))
)))
(assert (forall ((arg1@@12 T@Ref) (arg2@@12 Real) (arg3@@12 T@Ref) (arg4@@12 Int) (arg5@@12 T@Ref) (arg6@@12 Real) ) (!  (not (IsPredicateField_3851_3852 (|wand_1#ft| arg1@@12 arg2@@12 arg3@@12 arg4@@12 arg5@@12 arg6@@12)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@12 arg2@@12 arg3@@12 arg4@@12 arg5@@12 arg6@@12))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6211) (o T@Ref) (f_3 T@Field_9631_9632) (v T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@29) (store (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@29) o f_3 v) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@29) (store (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@29) o f_3 v) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@29) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6211) (o@@0 T@Ref) (f_3@@0 T@Field_9614_9619) (v@@0 T@PolymorphicMapType_6760) ) (! (succHeap Heap@@30 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@30) (store (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@30) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@30) (store (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@30) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@30) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6211) (o@@1 T@Ref) (f_3@@1 T@Field_9600_1211) (v@@1 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@31) (store (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@31) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@31) (store (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@31) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@31) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6211) (o@@2 T@Ref) (f_3@@2 T@Field_9600_6285) (v@@2 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@32) (store (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@32) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@32) (store (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@32) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@32) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6211) (o@@3 T@Ref) (f_3@@3 T@Field_9600_53) (v@@3 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@33) (store (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@33) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@33) (store (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@33) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@33) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6211) (o@@4 T@Ref) (f_3@@4 T@Field_10421_10422) (v@@4 T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@34) (store (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@34) o@@4 f_3@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@34) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@34) (store (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@34) o@@4 f_3@@4 v@@4)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6211) (o@@5 T@Ref) (f_3@@5 T@Field_10404_10409) (v@@5 T@PolymorphicMapType_6760) ) (! (succHeap Heap@@35 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@35) (store (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@35) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@35) (store (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@35) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@35) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_6211) (o@@6 T@Ref) (f_3@@6 T@Field_10390_1647) (v@@6 Int) ) (! (succHeap Heap@@36 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@36) (store (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@36) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@36) (store (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@36) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@36) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_6211) (o@@7 T@Ref) (f_3@@7 T@Field_10390_6285) (v@@7 T@Ref) ) (! (succHeap Heap@@37 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@37) (store (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@37) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@37) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@37) (store (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@37) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_6211) (o@@8 T@Ref) (f_3@@8 T@Field_10390_53) (v@@8 Bool) ) (! (succHeap Heap@@38 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@38) (store (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@38) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@38) (store (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@38) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@38) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_6211) (o@@9 T@Ref) (f_3@@9 T@Field_3894_9632) (v@@9 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@39) (store (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@39) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@39) (store (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@39) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@39) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_6211) (o@@10 T@Ref) (f_3@@10 T@Field_3894_9619) (v@@10 T@PolymorphicMapType_6760) ) (! (succHeap Heap@@40 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@40) (store (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@40) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@40) (store (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@40) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@40) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_6211) (o@@11 T@Ref) (f_3@@11 T@Field_11177_2058) (v@@11 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@41) (store (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@41) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@41) (store (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@41) o@@11 f_3@@11 v@@11) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@41) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_6211) (o@@12 T@Ref) (f_3@@12 T@Field_6284_6285) (v@@12 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@42) (store (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@42) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@42) (store (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@42) o@@12 f_3@@12 v@@12) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@42) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_6211) (o@@13 T@Ref) (f_3@@13 T@Field_6271_53) (v@@13 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_6211 (store (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@43) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6211 (store (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@43) o@@13 f_3@@13 v@@13) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@43) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@43)))
)))
(assert (forall ((o@@14 T@Ref) (f T@Field_6284_6285) (Heap@@44 T@PolymorphicMapType_6211) ) (!  (=> (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@44) o@@14 $allocated) (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@44) (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@44) o@@14 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@44) o@@14 f))
)))
(assert (forall ((p@@3 T@Field_10421_10422) (v_1@@2 T@FrameType) (q T@Field_10421_10422) (w@@2 T@FrameType) (r T@Field_10421_10422) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10390_10390 p@@3 v_1@@2 q w@@2) (InsidePredicate_10390_10390 q w@@2 r u)) (InsidePredicate_10390_10390 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10390_10390 p@@3 v_1@@2 q w@@2) (InsidePredicate_10390_10390 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_10421_10422) (v_1@@3 T@FrameType) (q@@0 T@Field_10421_10422) (w@@3 T@FrameType) (r@@0 T@Field_9631_9632) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_10390_10390 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_10390_9600 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_10390_9600 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10390_10390 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_10390_9600 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_10421_10422) (v_1@@4 T@FrameType) (q@@1 T@Field_10421_10422) (w@@4 T@FrameType) (r@@1 T@Field_3894_9632) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_10390_10390 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_10390_6271 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_10390_6271 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10390_10390 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_10390_6271 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_10421_10422) (v_1@@5 T@FrameType) (q@@2 T@Field_9631_9632) (w@@5 T@FrameType) (r@@2 T@Field_10421_10422) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_10390_9600 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_9600_10390 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_10390_10390 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10390_9600 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_9600_10390 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_10421_10422) (v_1@@6 T@FrameType) (q@@3 T@Field_9631_9632) (w@@6 T@FrameType) (r@@3 T@Field_9631_9632) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_10390_9600 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_9600_9600 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_10390_9600 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10390_9600 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_9600_9600 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_10421_10422) (v_1@@7 T@FrameType) (q@@4 T@Field_9631_9632) (w@@7 T@FrameType) (r@@4 T@Field_3894_9632) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_10390_9600 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_9600_6271 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_10390_6271 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10390_9600 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_9600_6271 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_10421_10422) (v_1@@8 T@FrameType) (q@@5 T@Field_3894_9632) (w@@8 T@FrameType) (r@@5 T@Field_10421_10422) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_10390_6271 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_6271_10390 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_10390_10390 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10390_6271 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_6271_10390 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_10421_10422) (v_1@@9 T@FrameType) (q@@6 T@Field_3894_9632) (w@@9 T@FrameType) (r@@6 T@Field_9631_9632) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_10390_6271 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_6271_9600 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_10390_9600 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10390_6271 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_6271_9600 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_10421_10422) (v_1@@10 T@FrameType) (q@@7 T@Field_3894_9632) (w@@10 T@FrameType) (r@@7 T@Field_3894_9632) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_10390_6271 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_6271_6271 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_10390_6271 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10390_6271 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_6271_6271 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_9631_9632) (v_1@@11 T@FrameType) (q@@8 T@Field_10421_10422) (w@@11 T@FrameType) (r@@8 T@Field_10421_10422) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_9600_10390 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_10390_10390 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_9600_10390 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9600_10390 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_10390_10390 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_9631_9632) (v_1@@12 T@FrameType) (q@@9 T@Field_10421_10422) (w@@12 T@FrameType) (r@@9 T@Field_9631_9632) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_9600_10390 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_10390_9600 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_9600_9600 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9600_10390 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_10390_9600 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_9631_9632) (v_1@@13 T@FrameType) (q@@10 T@Field_10421_10422) (w@@13 T@FrameType) (r@@10 T@Field_3894_9632) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_9600_10390 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_10390_6271 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_9600_6271 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9600_10390 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_10390_6271 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_9631_9632) (v_1@@14 T@FrameType) (q@@11 T@Field_9631_9632) (w@@14 T@FrameType) (r@@11 T@Field_10421_10422) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_9600_9600 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_9600_10390 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_9600_10390 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9600_9600 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_9600_10390 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_9631_9632) (v_1@@15 T@FrameType) (q@@12 T@Field_9631_9632) (w@@15 T@FrameType) (r@@12 T@Field_9631_9632) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_9600_9600 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_9600_9600 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_9600_9600 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9600_9600 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_9600_9600 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_9631_9632) (v_1@@16 T@FrameType) (q@@13 T@Field_9631_9632) (w@@16 T@FrameType) (r@@13 T@Field_3894_9632) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_9600_9600 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_9600_6271 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_9600_6271 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9600_9600 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_9600_6271 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_9631_9632) (v_1@@17 T@FrameType) (q@@14 T@Field_3894_9632) (w@@17 T@FrameType) (r@@14 T@Field_10421_10422) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_9600_6271 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_6271_10390 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_9600_10390 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9600_6271 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_6271_10390 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_9631_9632) (v_1@@18 T@FrameType) (q@@15 T@Field_3894_9632) (w@@18 T@FrameType) (r@@15 T@Field_9631_9632) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_9600_6271 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_6271_9600 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_9600_9600 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9600_6271 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_6271_9600 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_9631_9632) (v_1@@19 T@FrameType) (q@@16 T@Field_3894_9632) (w@@19 T@FrameType) (r@@16 T@Field_3894_9632) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_9600_6271 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_6271_6271 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_9600_6271 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9600_6271 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_6271_6271 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_3894_9632) (v_1@@20 T@FrameType) (q@@17 T@Field_10421_10422) (w@@20 T@FrameType) (r@@17 T@Field_10421_10422) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_6271_10390 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_10390_10390 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_6271_10390 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6271_10390 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_10390_10390 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_3894_9632) (v_1@@21 T@FrameType) (q@@18 T@Field_10421_10422) (w@@21 T@FrameType) (r@@18 T@Field_9631_9632) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_6271_10390 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_10390_9600 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_6271_9600 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6271_10390 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_10390_9600 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_3894_9632) (v_1@@22 T@FrameType) (q@@19 T@Field_10421_10422) (w@@22 T@FrameType) (r@@19 T@Field_3894_9632) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_6271_10390 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_10390_6271 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_6271_6271 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6271_10390 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_10390_6271 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_3894_9632) (v_1@@23 T@FrameType) (q@@20 T@Field_9631_9632) (w@@23 T@FrameType) (r@@20 T@Field_10421_10422) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_6271_9600 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_9600_10390 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_6271_10390 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6271_9600 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_9600_10390 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_3894_9632) (v_1@@24 T@FrameType) (q@@21 T@Field_9631_9632) (w@@24 T@FrameType) (r@@21 T@Field_9631_9632) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_6271_9600 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_9600_9600 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_6271_9600 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6271_9600 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_9600_9600 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_3894_9632) (v_1@@25 T@FrameType) (q@@22 T@Field_9631_9632) (w@@25 T@FrameType) (r@@22 T@Field_3894_9632) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_6271_9600 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_9600_6271 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_6271_6271 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6271_9600 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_9600_6271 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_3894_9632) (v_1@@26 T@FrameType) (q@@23 T@Field_3894_9632) (w@@26 T@FrameType) (r@@23 T@Field_10421_10422) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_6271_6271 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_6271_10390 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_6271_10390 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6271_6271 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_6271_10390 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_3894_9632) (v_1@@27 T@FrameType) (q@@24 T@Field_3894_9632) (w@@27 T@FrameType) (r@@24 T@Field_9631_9632) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_6271_6271 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_6271_9600 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_6271_9600 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6271_6271 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_6271_9600 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_3894_9632) (v_1@@28 T@FrameType) (q@@25 T@Field_3894_9632) (w@@28 T@FrameType) (r@@25 T@Field_3894_9632) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_6271_6271 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_6271_6271 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_6271_6271 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6271_6271 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_6271_6271 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b_1_1@10 () Bool)
(declare-fun b_6@6 () Bool)
(declare-fun Result_1Heap () T@PolymorphicMapType_6211)
(declare-fun ys () T@Ref)
(declare-fun Result_1Mask () T@PolymorphicMapType_6232)
(declare-fun b_1_1@9 () Bool)
(declare-fun neededTransfer@10 () Real)
(declare-fun Used_3Mask@3 () T@PolymorphicMapType_6232)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun b_7@0 () Bool)
(declare-fun b_7@1 () Bool)
(declare-fun b_7@2 () Bool)
(declare-fun Ops_1Mask@7 () T@PolymorphicMapType_6232)
(declare-fun b_7@3 () Bool)
(declare-fun Ops_1Heap@3 () T@PolymorphicMapType_6211)
(declare-fun Used_3Heap@0 () T@PolymorphicMapType_6211)
(declare-fun b_7@4 () Bool)
(declare-fun takeTransfer@4 () Real)
(declare-fun neededTransfer@8 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_6232)
(declare-fun Mask@2 () T@PolymorphicMapType_6232)
(declare-fun Heap@4 () T@PolymorphicMapType_6211)
(declare-fun Heap@2 () T@PolymorphicMapType_6211)
(declare-fun b_6@3 () Bool)
(declare-fun Used_3Mask@1 () T@PolymorphicMapType_6232)
(declare-fun neededTransfer@9 () Real)
(declare-fun Used_3Mask@2 () T@PolymorphicMapType_6232)
(declare-fun b_6@4 () Bool)
(declare-fun b_6@5 () Bool)
(declare-fun Mask@3 () T@PolymorphicMapType_6232)
(declare-fun Heap@3 () T@PolymorphicMapType_6211)
(declare-fun maskTransfer@4 () Real)
(declare-fun takeTransfer@3 () Real)
(declare-fun Ops_1Mask@5 () T@PolymorphicMapType_6232)
(declare-fun b_6@0 () Bool)
(declare-fun neededTransfer@6 () Real)
(declare-fun neededTransfer@7 () Real)
(declare-fun Used_3Mask@0 () T@PolymorphicMapType_6232)
(declare-fun b_6@1 () Bool)
(declare-fun b_6@2 () Bool)
(declare-fun Ops_1Mask@6 () T@PolymorphicMapType_6232)
(declare-fun maskTransfer@3 () Real)
(declare-fun b_6 () Bool)
(declare-fun b_3@7 () Bool)
(declare-fun b_1_1@5 () Bool)
(declare-fun b_4@9 () Bool)
(declare-fun neededTransfer@5 () Real)
(declare-fun Used_2Mask@5 () T@PolymorphicMapType_6232)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_5@0 () Bool)
(declare-fun b_5@1 () Bool)
(declare-fun ResultHeap () T@PolymorphicMapType_6211)
(declare-fun ResultMask@@14 () T@PolymorphicMapType_6232)
(declare-fun b_5@2 () Bool)
(declare-fun Ops_3Mask () T@PolymorphicMapType_6232)
(declare-fun b_5@3 () Bool)
(declare-fun Ops_3Heap@0 () T@PolymorphicMapType_6211)
(declare-fun Used_2Heap@0 () T@PolymorphicMapType_6211)
(declare-fun b_5@4 () Bool)
(declare-fun b_3@8 () Bool)
(declare-fun Ops_1Mask@4 () T@PolymorphicMapType_6232)
(declare-fun Ops_1Mask@3 () T@PolymorphicMapType_6232)
(declare-fun b_1_1@6 () Bool)
(declare-fun Ops_1Heap@2 () T@PolymorphicMapType_6211)
(declare-fun b_1_1@7 () Bool)
(declare-fun b_1_1@8 () Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_6232)
(declare-fun Heap@1 () T@PolymorphicMapType_6211)
(declare-fun takeTransfer@2 () Real)
(declare-fun Used_2Mask@3 () T@PolymorphicMapType_6232)
(declare-fun b_4@6 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun Heap@@45 () T@PolymorphicMapType_6211)
(declare-fun neededTransfer@4 () Real)
(declare-fun Used_2Mask@4 () T@PolymorphicMapType_6232)
(declare-fun b_4@7 () Bool)
(declare-fun b_4@8 () Bool)
(declare-fun Mask@0 () T@PolymorphicMapType_6232)
(declare-fun Heap@0 () T@PolymorphicMapType_6211)
(declare-fun maskTransfer@2 () Real)
(declare-fun takeTransfer@1 () Real)
(declare-fun Ops_1Heap@0 () T@PolymorphicMapType_6211)
(declare-fun Ops_1Mask@1 () T@PolymorphicMapType_6232)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_4@3 () Bool)
(declare-fun Used_2Mask@1 () T@PolymorphicMapType_6232)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_2Mask@2 () T@PolymorphicMapType_6232)
(declare-fun b_4@4 () Bool)
(declare-fun b_4@5 () Bool)
(declare-fun Ops_1Mask@2 () T@PolymorphicMapType_6232)
(declare-fun Ops_1Heap@1 () T@PolymorphicMapType_6211)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun b_4@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_2Mask@0 () T@PolymorphicMapType_6232)
(declare-fun b_4@1 () Bool)
(declare-fun b_4@2 () Bool)
(declare-fun Ops_3Mask@3 () T@PolymorphicMapType_6232)
(declare-fun Ops_3Mask@2 () T@PolymorphicMapType_6232)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_3@6 () Bool)
(declare-fun b_3@5 () Bool)
(declare-fun b_4 () Bool)
(declare-fun b_3@4 () Bool)
(declare-fun b_3@3 () Bool)
(declare-fun Ops_3Mask@1 () T@PolymorphicMapType_6232)
(declare-fun b_3@0 () Bool)
(declare-fun perm@0 () Real)
(declare-fun b_3@1 () Bool)
(declare-fun Ops_3Mask@0 () T@PolymorphicMapType_6232)
(declare-fun b_3@2 () Bool)
(declare-fun b_3 () Bool)
(declare-fun b_2_1@0 () Bool)
(declare-fun b_2_1 () Bool)
(declare-fun Used_1Heap@0 () T@PolymorphicMapType_6211)
(declare-fun b_1_1@4 () Bool)
(declare-fun b_1_1@3 () Bool)
(declare-fun b_1_1@0 () Bool)
(declare-fun b_1_1@1 () Bool)
(declare-fun Ops_1Mask@0 () T@PolymorphicMapType_6232)
(declare-fun b_1_1@2 () Bool)
(declare-fun b_1_1 () Bool)
(declare-fun b_2@0 () Bool)
(declare-fun b_2 () Bool)
(declare-fun UsedHeap@0 () T@PolymorphicMapType_6211)
(set-info :boogie-vc-id t01)
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
 (=> (= (ControlFlow 0 0) 63) (let ((anon44_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (and (and b_1_1@10 b_1_1@10) b_6@6) (= (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Result_1Heap) ys f_7) 2)))))
(let ((anon67_Else_correct  (=> (and (not b_1_1@10) (= (ControlFlow 0 6) 2)) anon44_correct)))
(let ((anon67_Then_correct  (=> b_1_1@10 (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_3894_2058 Result_1Mask ys f_7)) (=> (HasDirectPerm_3894_2058 Result_1Mask ys f_7) (=> (= (ControlFlow 0 4) 2) anon44_correct))))))
(let ((anon66_Then_correct  (=> (and (and b_1_1@10 b_1_1@10) b_6@6) (and (=> (= (ControlFlow 0 7) 4) anon67_Then_correct) (=> (= (ControlFlow 0 7) 6) anon67_Else_correct)))))
(let ((anon66_Else_correct  (=> (and (not (and (and b_1_1@10 b_1_1@10) b_6@6)) (= (ControlFlow 0 3) 2)) anon44_correct)))
(let ((anon41_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (=> (and (and b_1_1@9 b_1_1@9) b_6@6) (and (= neededTransfer@10 0.0) (= (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Used_3Mask@3) ys f_7) initNeededTransfer@1)))) (=> (=> (and (and b_1_1@9 b_1_1@9) b_6@6) (and (= neededTransfer@10 0.0) (= (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Used_3Mask@3) ys f_7) initNeededTransfer@1))) (=> (and (= b_7@0  (and b_1_1@9 b_6@6)) (= b_7@1  (and b_7@0 (state Result_1Heap Result_1Mask)))) (=> (and (and (= b_7@2  (and b_7@1 (sumMask Result_1Mask Ops_1Mask@7 Used_3Mask@3))) (= b_7@3  (and (and b_7@2 (IdenticalOnKnownLocations Ops_1Heap@3 Result_1Heap Ops_1Mask@7)) (IdenticalOnKnownLocations Used_3Heap@0 Result_1Heap Used_3Mask@3)))) (and (= b_7@4  (and b_7@3 (state Result_1Heap Result_1Mask))) (= b_1_1@10  (and b_1_1@9 b_7@4)))) (and (=> (= (ControlFlow 0 8) 7) anon66_Then_correct) (=> (= (ControlFlow 0 8) 3) anon66_Else_correct))))))))
(let ((anon65_Else_correct  (=> (>= 0.0 takeTransfer@4) (=> (and (= neededTransfer@10 neededTransfer@8) (= Mask@4 Mask@2)) (=> (and (and (= Heap@4 Heap@2) (= b_6@6 b_6@3)) (and (= Used_3Mask@3 Used_3Mask@1) (= (ControlFlow 0 12) 8))) anon41_correct)))))
(let ((anon65_Then_correct  (=> (> takeTransfer@4 0.0) (=> (and (and (= neededTransfer@9 (- neededTransfer@8 takeTransfer@4)) (= Used_3Mask@2 (PolymorphicMapType_6232 (store (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Used_3Mask@1) ys f_7 (+ (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Used_3Mask@1) ys f_7) takeTransfer@4)) (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| Used_3Mask@1) (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| Used_3Mask@1) (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| Used_3Mask@1) (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| Used_3Mask@1) (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| Used_3Mask@1) (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| Used_3Mask@1) (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| Used_3Mask@1) (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| Used_3Mask@1) (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| Used_3Mask@1) (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| Used_3Mask@1) (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| Used_3Mask@1) (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| Used_3Mask@1) (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| Used_3Mask@1) (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| Used_3Mask@1)))) (and (= b_6@4  (and b_6@3 (state Used_3Heap@0 Used_3Mask@2))) (= b_6@5  (and b_6@4 (= (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@2) ys f_7) (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Used_3Heap@0) ys f_7)))))) (=> (and (and (and (= Mask@3 (PolymorphicMapType_6232 (store (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Mask@2) ys f_7 (- (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Mask@2) ys f_7) takeTransfer@4)) (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| Mask@2) (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| Mask@2) (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| Mask@2) (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| Mask@2) (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| Mask@2) (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| Mask@2) (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| Mask@2) (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| Mask@2) (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| Mask@2) (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| Mask@2) (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| Mask@2) (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| Mask@2) (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| Mask@2) (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| Mask@2))) (= Heap@3 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@2) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@2) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@2) (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@2) (store (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2) (PolymorphicMapType_6760 (store (|PolymorphicMapType_6760_3894_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2))) ys f_7 true) (|PolymorphicMapType_6760_3894_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2))) (|PolymorphicMapType_6760_3894_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2))) (|PolymorphicMapType_6760_3894_22640#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2))) (|PolymorphicMapType_6760_3894_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2))) (|PolymorphicMapType_6760_9600_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2))) (|PolymorphicMapType_6760_9600_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2))) (|PolymorphicMapType_6760_9600_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2))) (|PolymorphicMapType_6760_9600_23688#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2))) (|PolymorphicMapType_6760_9600_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2))) (|PolymorphicMapType_6760_10390_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2))) (|PolymorphicMapType_6760_10390_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2))) (|PolymorphicMapType_6760_10390_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2))) (|PolymorphicMapType_6760_10390_24736#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2))) (|PolymorphicMapType_6760_10390_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@2) null (|wand#sm| ys FullPerm ys (/ (to_real 1) (to_real 2)) ys 2))))) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@2) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@2) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@2) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@2) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@2) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@2) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@2) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@2) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@2) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@2)))) (and (= neededTransfer@10 neededTransfer@9) (= Mask@4 Mask@3))) (and (and (= Heap@4 Heap@3) (= b_6@6 b_6@5)) (and (= Used_3Mask@3 Used_3Mask@2) (= (ControlFlow 0 11) 8)))) anon41_correct)))))
(let ((anon64_Else_correct  (=> (and (< maskTransfer@4 neededTransfer@8) (= takeTransfer@4 maskTransfer@4)) (and (=> (= (ControlFlow 0 14) 11) anon65_Then_correct) (=> (= (ControlFlow 0 14) 12) anon65_Else_correct)))))
(let ((anon64_Then_correct  (=> (and (<= neededTransfer@8 maskTransfer@4) (= takeTransfer@4 neededTransfer@8)) (and (=> (= (ControlFlow 0 13) 11) anon65_Then_correct) (=> (= (ControlFlow 0 13) 12) anon65_Else_correct)))))
(let ((anon63_Then_correct  (=> (and (and (and (and (and b_1_1@9 b_1_1@9) b_6@3) true) (> neededTransfer@8 0.0)) (= maskTransfer@4 (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Mask@2) ys f_7))) (and (=> (= (ControlFlow 0 15) 13) anon64_Then_correct) (=> (= (ControlFlow 0 15) 14) anon64_Else_correct)))))
(let ((anon63_Else_correct  (=> (not (and (and (and (and b_1_1@9 b_1_1@9) b_6@3) true) (> neededTransfer@8 0.0))) (=> (and (= neededTransfer@10 neededTransfer@8) (= Mask@4 Mask@2)) (=> (and (and (= Heap@4 Heap@2) (= b_6@6 b_6@3)) (and (= Used_3Mask@3 Used_3Mask@1) (= (ControlFlow 0 10) 8))) anon41_correct)))))
(let ((anon62_Else_correct  (=> (>= 0.0 takeTransfer@3) (=> (and (and (= Ops_1Mask@7 Ops_1Mask@5) (= Used_3Mask@1 ZeroMask)) (and (= b_6@3 b_6@0) (= neededTransfer@8 neededTransfer@6))) (and (=> (= (ControlFlow 0 18) 15) anon63_Then_correct) (=> (= (ControlFlow 0 18) 10) anon63_Else_correct))))))
(let ((anon62_Then_correct  (=> (and (> takeTransfer@3 0.0) (= neededTransfer@7 (- neededTransfer@6 takeTransfer@3))) (=> (and (and (and (= Used_3Mask@0 (PolymorphicMapType_6232 (store (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ZeroMask) ys f_7 (+ (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ZeroMask) ys f_7) takeTransfer@3)) (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| ZeroMask))) (= b_6@1  (and b_6@0 (state Used_3Heap@0 Used_3Mask@0)))) (and (= b_6@2  (and b_6@1 (= (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Ops_1Heap@3) ys f_7) (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Used_3Heap@0) ys f_7)))) (= Ops_1Mask@6 (PolymorphicMapType_6232 (store (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Ops_1Mask@5) ys f_7 (- (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Ops_1Mask@5) ys f_7) takeTransfer@3)) (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| Ops_1Mask@5) (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| Ops_1Mask@5) (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| Ops_1Mask@5) (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| Ops_1Mask@5) (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| Ops_1Mask@5) (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| Ops_1Mask@5) (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| Ops_1Mask@5) (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| Ops_1Mask@5) (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| Ops_1Mask@5) (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| Ops_1Mask@5) (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| Ops_1Mask@5) (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| Ops_1Mask@5) (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| Ops_1Mask@5) (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| Ops_1Mask@5))))) (and (and (= Ops_1Mask@7 Ops_1Mask@6) (= Used_3Mask@1 Used_3Mask@0)) (and (= b_6@3 b_6@2) (= neededTransfer@8 neededTransfer@7)))) (and (=> (= (ControlFlow 0 17) 15) anon63_Then_correct) (=> (= (ControlFlow 0 17) 10) anon63_Else_correct))))))
(let ((anon61_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@6) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 20) 17) anon62_Then_correct) (=> (= (ControlFlow 0 20) 18) anon62_Else_correct)))))
(let ((anon61_Then_correct  (=> (and (<= neededTransfer@6 maskTransfer@3) (= takeTransfer@3 neededTransfer@6)) (and (=> (= (ControlFlow 0 19) 17) anon62_Then_correct) (=> (= (ControlFlow 0 19) 18) anon62_Else_correct)))))
(let ((anon60_Then_correct  (=> (and (and (and (and (and b_1_1@9 b_1_1@9) b_6@0) true) (> neededTransfer@6 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Ops_1Mask@5) ys f_7))) (and (=> (= (ControlFlow 0 21) 19) anon61_Then_correct) (=> (= (ControlFlow 0 21) 20) anon61_Else_correct)))))
(let ((anon60_Else_correct  (=> (not (and (and (and (and b_1_1@9 b_1_1@9) b_6@0) true) (> neededTransfer@6 0.0))) (=> (and (and (= Ops_1Mask@7 Ops_1Mask@5) (= Used_3Mask@1 ZeroMask)) (and (= b_6@3 b_6@0) (= neededTransfer@8 neededTransfer@6))) (and (=> (= (ControlFlow 0 16) 15) anon63_Then_correct) (=> (= (ControlFlow 0 16) 10) anon63_Else_correct))))))
(let ((anon29_correct  (=> (= b_6@0  (and b_6 (state Used_3Heap@0 ZeroMask))) (=> (and (= neededTransfer@6 (/ (to_real 1) (to_real 2))) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ZeroMask) ys f_7) neededTransfer@6))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (>= neededTransfer@6 0.0)) (=> (>= neededTransfer@6 0.0) (and (=> (= (ControlFlow 0 22) 21) anon60_Then_correct) (=> (= (ControlFlow 0 22) 16) anon60_Else_correct))))))))
(let ((anon28_correct  (and (=> (= (ControlFlow 0 25) (- 0 26)) (=> (and (and b_3@7 (and b_3@7 b_1_1@5)) b_4@9) (and (= neededTransfer@5 0.0) (= (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Used_2Mask@5) ys f_7) initNeededTransfer@0)))) (=> (=> (and (and b_3@7 (and b_3@7 b_1_1@5)) b_4@9) (and (= neededTransfer@5 0.0) (= (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Used_2Mask@5) ys f_7) initNeededTransfer@0))) (=> (and (and (and (and (= b_5@0  (and b_3@7 b_4@9)) (= b_5@1  (and b_5@0 (state ResultHeap ResultMask@@14)))) (and (= b_5@2  (and b_5@1 (sumMask ResultMask@@14 Ops_3Mask Used_2Mask@5))) (= b_5@3  (and (and b_5@2 (IdenticalOnKnownLocations Ops_3Heap@0 ResultHeap Ops_3Mask)) (IdenticalOnKnownLocations Used_2Heap@0 ResultHeap Used_2Mask@5))))) (and (and (= b_5@4  (and b_5@3 (state ResultHeap ResultMask@@14))) (= b_3@8  (and b_3@7 b_5@4))) (and (= Ops_1Mask@4 (PolymorphicMapType_6232 (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Ops_1Mask@3) (store (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| Ops_1Mask@3) null (wand_1 ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm) (+ (select (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| Ops_1Mask@3) null (wand_1 ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm)) FullPerm)) (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| Ops_1Mask@3) (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| Ops_1Mask@3) (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| Ops_1Mask@3) (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| Ops_1Mask@3) (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| Ops_1Mask@3) (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| Ops_1Mask@3) (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| Ops_1Mask@3) (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| Ops_1Mask@3) (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| Ops_1Mask@3) (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| Ops_1Mask@3) (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| Ops_1Mask@3) (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| Ops_1Mask@3) (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| Ops_1Mask@3))) (= b_1_1@6  (and b_1_1@5 (state Ops_1Heap@2 Ops_1Mask@4)))))) (and (and (and (= b_1_1@7  (and b_1_1@6 (state Ops_1Heap@2 Ops_1Mask@4))) (= b_1_1@8  (and b_1_1@7 (state Ops_1Heap@2 Ops_1Mask@4)))) (and (= b_1_1@9 b_1_1@8) (= Mask@2 Mask@1))) (and (and (= Ops_1Mask@5 Ops_1Mask@4) (= Ops_1Heap@3 Ops_1Heap@2)) (and (= Heap@2 Heap@1) (= (ControlFlow 0 25) 22))))) anon29_correct)))))
(let ((anon59_Else_correct  (=> (>= 0.0 takeTransfer@2) (=> (and (= Mask@1 ZeroMask) (= Used_2Mask@5 Used_2Mask@3)) (=> (and (and (= b_4@9 b_4@6) (= neededTransfer@5 neededTransfer@3)) (and (= Heap@1 Heap@@45) (= (ControlFlow 0 29) 25))) anon28_correct)))))
(let ((anon59_Then_correct  (=> (> takeTransfer@2 0.0) (=> (and (and (= neededTransfer@4 (- neededTransfer@3 takeTransfer@2)) (= Used_2Mask@4 (PolymorphicMapType_6232 (store (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Used_2Mask@3) ys f_7 (+ (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Used_2Mask@3) ys f_7) takeTransfer@2)) (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| Used_2Mask@3) (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| Used_2Mask@3) (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| Used_2Mask@3) (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| Used_2Mask@3) (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| Used_2Mask@3) (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| Used_2Mask@3) (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| Used_2Mask@3) (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| Used_2Mask@3) (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| Used_2Mask@3) (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| Used_2Mask@3) (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| Used_2Mask@3) (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| Used_2Mask@3) (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| Used_2Mask@3) (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| Used_2Mask@3)))) (and (= b_4@7  (and b_4@6 (state Used_2Heap@0 Used_2Mask@4))) (= b_4@8  (and b_4@7 (= (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@45) ys f_7) (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Used_2Heap@0) ys f_7)))))) (=> (and (and (and (= Mask@0 (PolymorphicMapType_6232 (store (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ZeroMask) ys f_7 (- (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ZeroMask) ys f_7) takeTransfer@2)) (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| ZeroMask))) (= Heap@0 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@45) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Heap@@45) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Heap@@45) (store (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm) (PolymorphicMapType_6760 (store (|PolymorphicMapType_6760_3894_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) ys f_7 true) (|PolymorphicMapType_6760_3894_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_3894_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_3894_22640#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_3894_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_9600_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_9600_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_9600_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_9600_23688#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_9600_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_10390_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_10390_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_10390_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_10390_24736#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_10390_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Heap@@45) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))))) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Heap@@45) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Heap@@45) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Heap@@45) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Heap@@45) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Heap@@45) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Heap@@45) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Heap@@45) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Heap@@45) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Heap@@45) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Heap@@45) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Heap@@45)))) (and (= Mask@1 Mask@0) (= Used_2Mask@5 Used_2Mask@4))) (and (and (= b_4@9 b_4@8) (= neededTransfer@5 neededTransfer@4)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 28) 25)))) anon28_correct)))))
(let ((anon58_Else_correct  (=> (and (< maskTransfer@2 neededTransfer@3) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 31) 28) anon59_Then_correct) (=> (= (ControlFlow 0 31) 29) anon59_Else_correct)))))
(let ((anon58_Then_correct  (=> (and (<= neededTransfer@3 maskTransfer@2) (= takeTransfer@2 neededTransfer@3)) (and (=> (= (ControlFlow 0 30) 28) anon59_Then_correct) (=> (= (ControlFlow 0 30) 29) anon59_Else_correct)))))
(let ((anon57_Then_correct  (=> (and (and (and (and (and b_3@7 (and b_3@7 b_1_1@5)) b_4@6) true) (> neededTransfer@3 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ZeroMask) ys f_7))) (and (=> (= (ControlFlow 0 32) 30) anon58_Then_correct) (=> (= (ControlFlow 0 32) 31) anon58_Else_correct)))))
(let ((anon57_Else_correct  (=> (not (and (and (and (and b_3@7 (and b_3@7 b_1_1@5)) b_4@6) true) (> neededTransfer@3 0.0))) (=> (and (= Mask@1 ZeroMask) (= Used_2Mask@5 Used_2Mask@3)) (=> (and (and (= b_4@9 b_4@6) (= neededTransfer@5 neededTransfer@3)) (and (= Heap@1 Heap@@45) (= (ControlFlow 0 27) 25))) anon28_correct)))))
(let ((anon56_Else_correct  (=> (and (>= 0.0 takeTransfer@1) (= Ops_1Heap@2 Ops_1Heap@0)) (=> (and (and (= Ops_1Mask@3 Ops_1Mask@1) (= neededTransfer@3 neededTransfer@1)) (and (= b_4@6 b_4@3) (= Used_2Mask@3 Used_2Mask@1))) (and (=> (= (ControlFlow 0 35) 32) anon57_Then_correct) (=> (= (ControlFlow 0 35) 27) anon57_Else_correct))))))
(let ((anon56_Then_correct  (=> (and (and (> takeTransfer@1 0.0) (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1))) (and (= Used_2Mask@2 (PolymorphicMapType_6232 (store (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Used_2Mask@1) ys f_7 (+ (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Used_2Mask@1) ys f_7) takeTransfer@1)) (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| Used_2Mask@1) (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| Used_2Mask@1) (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| Used_2Mask@1) (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| Used_2Mask@1) (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| Used_2Mask@1) (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| Used_2Mask@1) (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| Used_2Mask@1) (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| Used_2Mask@1) (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| Used_2Mask@1) (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| Used_2Mask@1) (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| Used_2Mask@1) (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| Used_2Mask@1) (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| Used_2Mask@1) (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| Used_2Mask@1))) (= b_4@4  (and b_4@3 (state Used_2Heap@0 Used_2Mask@2))))) (=> (and (and (and (= b_4@5  (and b_4@4 (= (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Ops_1Heap@0) ys f_7) (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Used_2Heap@0) ys f_7)))) (= Ops_1Mask@2 (PolymorphicMapType_6232 (store (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Ops_1Mask@1) ys f_7 (- (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Ops_1Mask@1) ys f_7) takeTransfer@1)) (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| Ops_1Mask@1) (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| Ops_1Mask@1) (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| Ops_1Mask@1) (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| Ops_1Mask@1) (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| Ops_1Mask@1) (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| Ops_1Mask@1) (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| Ops_1Mask@1) (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| Ops_1Mask@1) (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| Ops_1Mask@1) (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| Ops_1Mask@1) (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| Ops_1Mask@1) (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| Ops_1Mask@1) (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| Ops_1Mask@1) (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| Ops_1Mask@1)))) (and (= Ops_1Heap@1 (PolymorphicMapType_6211 (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Ops_1Heap@0) (|PolymorphicMapType_6211_3643_3644#PolymorphicMapType_6211| Ops_1Heap@0) (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Ops_1Heap@0) (store (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm) (PolymorphicMapType_6760 (store (|PolymorphicMapType_6760_3894_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) ys f_7 true) (|PolymorphicMapType_6760_3894_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_3894_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_3894_22640#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_3894_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_9600_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_9600_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_9600_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_9600_23688#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_9600_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_10390_2058#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_10390_53#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_10390_6285#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_10390_24736#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))) (|PolymorphicMapType_6760_10390_9632#PolymorphicMapType_6760| (select (|PolymorphicMapType_6211_3843_13954#PolymorphicMapType_6211| Ops_1Heap@0) null (|wand_1#sm| ys (/ (to_real 1) (to_real 2)) ys 2 ys FullPerm))))) (|PolymorphicMapType_6211_3780_16609#PolymorphicMapType_6211| Ops_1Heap@0) (|PolymorphicMapType_6211_3894_18254#PolymorphicMapType_6211| Ops_1Heap@0) (|PolymorphicMapType_6211_3894_9632#PolymorphicMapType_6211| Ops_1Heap@0) (|PolymorphicMapType_6211_9600_2058#PolymorphicMapType_6211| Ops_1Heap@0) (|PolymorphicMapType_6211_9600_53#PolymorphicMapType_6211| Ops_1Heap@0) (|PolymorphicMapType_6211_9600_6285#PolymorphicMapType_6211| Ops_1Heap@0) (|PolymorphicMapType_6211_9600_9632#PolymorphicMapType_6211| Ops_1Heap@0) (|PolymorphicMapType_6211_10390_2058#PolymorphicMapType_6211| Ops_1Heap@0) (|PolymorphicMapType_6211_10390_53#PolymorphicMapType_6211| Ops_1Heap@0) (|PolymorphicMapType_6211_10390_6285#PolymorphicMapType_6211| Ops_1Heap@0) (|PolymorphicMapType_6211_10390_9632#PolymorphicMapType_6211| Ops_1Heap@0))) (= Ops_1Heap@2 Ops_1Heap@1))) (and (and (= Ops_1Mask@3 Ops_1Mask@2) (= neededTransfer@3 neededTransfer@2)) (and (= b_4@6 b_4@5) (= Used_2Mask@3 Used_2Mask@2)))) (and (=> (= (ControlFlow 0 34) 32) anon57_Then_correct) (=> (= (ControlFlow 0 34) 27) anon57_Else_correct))))))
(let ((anon55_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 37) 34) anon56_Then_correct) (=> (= (ControlFlow 0 37) 35) anon56_Else_correct)))))
(let ((anon55_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 36) 34) anon56_Then_correct) (=> (= (ControlFlow 0 36) 35) anon56_Else_correct)))))
(let ((anon54_Then_correct  (=> (and (and (and (and (and b_3@7 (and b_3@7 b_1_1@5)) b_4@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Ops_1Mask@1) ys f_7))) (and (=> (= (ControlFlow 0 38) 36) anon55_Then_correct) (=> (= (ControlFlow 0 38) 37) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (and (not (and (and (and (and b_3@7 (and b_3@7 b_1_1@5)) b_4@3) true) (> neededTransfer@1 0.0))) (= Ops_1Heap@2 Ops_1Heap@0)) (=> (and (and (= Ops_1Mask@3 Ops_1Mask@1) (= neededTransfer@3 neededTransfer@1)) (and (= b_4@6 b_4@3) (= Used_2Mask@3 Used_2Mask@1))) (and (=> (= (ControlFlow 0 33) 32) anon57_Then_correct) (=> (= (ControlFlow 0 33) 27) anon57_Else_correct))))))
(let ((anon53_Else_correct  (=> (and (and (>= 0.0 takeTransfer@0) (= Used_2Mask@1 ZeroMask)) (and (= b_4@3 b_4@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 41) 38) anon54_Then_correct) (=> (= (ControlFlow 0 41) 33) anon54_Else_correct)))))
(let ((anon53_Then_correct  (=> (> takeTransfer@0 0.0) (=> (and (and (and (= neededTransfer@0 (- FullPerm takeTransfer@0)) (= Used_2Mask@0 (PolymorphicMapType_6232 (store (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ZeroMask) ys f_7 (+ (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ZeroMask) ys f_7) takeTransfer@0)) (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| ZeroMask)))) (and (= b_4@1  (and b_4@0 (state Used_2Heap@0 Used_2Mask@0))) (= b_4@2  (and b_4@1 (= (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Ops_3Heap@0) ys f_7) (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Used_2Heap@0) ys f_7)))))) (and (and (= Ops_3Mask@3 (PolymorphicMapType_6232 (store (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Ops_3Mask@2) ys f_7 (- (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Ops_3Mask@2) ys f_7) takeTransfer@0)) (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| Ops_3Mask@2) (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| Ops_3Mask@2) (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| Ops_3Mask@2) (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| Ops_3Mask@2) (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| Ops_3Mask@2) (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| Ops_3Mask@2) (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| Ops_3Mask@2) (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| Ops_3Mask@2) (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| Ops_3Mask@2) (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| Ops_3Mask@2) (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| Ops_3Mask@2) (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| Ops_3Mask@2) (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| Ops_3Mask@2) (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| Ops_3Mask@2))) (= Used_2Mask@1 Used_2Mask@0)) (and (= b_4@3 b_4@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 40) 38) anon54_Then_correct) (=> (= (ControlFlow 0 40) 33) anon54_Else_correct))))))
(let ((anon52_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 43) 40) anon53_Then_correct) (=> (= (ControlFlow 0 43) 41) anon53_Else_correct)))))
(let ((anon52_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 42) 40) anon53_Then_correct) (=> (= (ControlFlow 0 42) 41) anon53_Else_correct)))))
(let ((anon51_Then_correct  (=> (and (and (and (and (and b_3@7 (and b_3@7 b_1_1@5)) b_4@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| Ops_3Mask@2) ys f_7))) (and (=> (= (ControlFlow 0 44) 42) anon52_Then_correct) (=> (= (ControlFlow 0 44) 43) anon52_Else_correct)))))
(let ((anon51_Else_correct  (=> (and (and (not (and (and (and (and b_3@7 (and b_3@7 b_1_1@5)) b_4@0) true) (> FullPerm 0.0))) (= Used_2Mask@1 ZeroMask)) (and (= b_4@3 b_4@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 39) 38) anon54_Then_correct) (=> (= (ControlFlow 0 39) 33) anon54_Else_correct)))))
(let ((anon10_correct  (=> (and (and (= b_3@6  (and b_3@5 (state Ops_3Heap@0 Ops_3Mask@2))) (= b_3@7  (and b_3@6 (state Ops_3Heap@0 Ops_3Mask@2)))) (and (= b_4@0  (and b_4 (state Used_2Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ZeroMask) ys f_7) FullPerm)))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 45) 44) anon51_Then_correct) (=> (= (ControlFlow 0 45) 39) anon51_Else_correct)))))))
(let ((anon9_correct  (=> (and (and (= b_3@4  (and b_3@3 (= (select (|PolymorphicMapType_6211_3894_2058#PolymorphicMapType_6211| Ops_3Heap@0) ys f_7) 2))) (= b_3@5 b_3@4)) (and (= Ops_3Mask@2 Ops_3Mask@1) (= (ControlFlow 0 49) 45))) anon10_correct)))
(let ((anon50_Else_correct  (=> (and (not b_3@3) (= (ControlFlow 0 52) 49)) anon9_correct)))
(let ((anon50_Then_correct  (=> b_3@3 (and (=> (= (ControlFlow 0 50) (- 0 51)) (HasDirectPerm_3894_2058 Ops_3Mask@1 ys f_7)) (=> (HasDirectPerm_3894_2058 Ops_3Mask@1 ys f_7) (=> (= (ControlFlow 0 50) 49) anon9_correct))))))
(let ((anon49_Then_correct  (=> b_3@3 (and (=> (= (ControlFlow 0 53) 50) anon50_Then_correct) (=> (= (ControlFlow 0 53) 52) anon50_Else_correct)))))
(let ((anon49_Else_correct  (=> (and (and (not b_3@3) (= b_3@5 b_3@3)) (and (= Ops_3Mask@2 Ops_3Mask@1) (= (ControlFlow 0 48) 45))) anon10_correct)))
(let ((anon48_Else_correct  (=> (not b_3@0) (=> (and (= Ops_3Mask@1 ZeroMask) (= b_3@3 b_3@0)) (and (=> (= (ControlFlow 0 56) 53) anon49_Then_correct) (=> (= (ControlFlow 0 56) 48) anon49_Else_correct))))))
(let ((anon48_Then_correct  (=> (and b_3@0 (= perm@0 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 54) (- 0 55)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (= b_3@1  (and b_3@0 (=> (> perm@0 NoPerm) (not (= ys null))))) (=> (and (and (= Ops_3Mask@0 (PolymorphicMapType_6232 (store (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ZeroMask) ys f_7 (+ (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ZeroMask) ys f_7) perm@0)) (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| ZeroMask))) (= b_3@2  (and b_3@1 (state Ops_3Heap@0 Ops_3Mask@0)))) (and (= Ops_3Mask@1 Ops_3Mask@0) (= b_3@3 b_3@2))) (and (=> (= (ControlFlow 0 54) 53) anon49_Then_correct) (=> (= (ControlFlow 0 54) 48) anon49_Else_correct)))))))))
(let ((anon47_Then_correct  (=> b_3@0 (and (=> (= (ControlFlow 0 57) 54) anon48_Then_correct) (=> (= (ControlFlow 0 57) 56) anon48_Else_correct)))))
(let ((anon47_Else_correct  (=> (and (and (not b_3@0) (= b_3@5 b_3@0)) (and (= Ops_3Mask@2 ZeroMask) (= (ControlFlow 0 47) 45))) anon10_correct)))
(let ((anon46_Then_correct  (=> b_1_1@5 (=> (and (= b_3@0  (and b_3 (state Ops_3Heap@0 ZeroMask))) (= b_2_1@0  (and b_2_1 (state Used_1Heap@0 ZeroMask)))) (and (=> (= (ControlFlow 0 58) 57) anon47_Then_correct) (=> (= (ControlFlow 0 58) 47) anon47_Else_correct))))))
(let ((anon46_Else_correct  (=> (not b_1_1@5) (=> (and (= b_1_1@9 b_1_1@5) (= Mask@2 ZeroMask)) (=> (and (and (= Ops_1Mask@5 Ops_1Mask@1) (= Ops_1Heap@3 Ops_1Heap@0)) (and (= Heap@2 Heap@@45) (= (ControlFlow 0 24) 22))) anon29_correct)))))
(let ((anon2_correct  (=> (and (= b_1_1@4  (and b_1_1@3 (state Ops_1Heap@0 Ops_1Mask@1))) (= b_1_1@5  (and b_1_1@4 (state Ops_1Heap@0 Ops_1Mask@1)))) (and (=> (= (ControlFlow 0 59) 58) anon46_Then_correct) (=> (= (ControlFlow 0 59) 24) anon46_Else_correct)))))
(let ((anon45_Else_correct  (=> (and (and (not b_1_1@0) (= Ops_1Mask@1 ZeroMask)) (and (= b_1_1@3 b_1_1@0) (= (ControlFlow 0 61) 59))) anon2_correct)))
(let ((anon45_Then_correct  (=> b_1_1@0 (=> (and (= b_1_1@1  (and b_1_1@0 (not (= ys null)))) (= Ops_1Mask@0 (PolymorphicMapType_6232 (store (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ZeroMask) ys f_7 (+ (select (|PolymorphicMapType_6232_3894_2058#PolymorphicMapType_6232| ZeroMask) ys f_7) FullPerm)) (|PolymorphicMapType_6232_3836_1647#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_1211#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_53#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_6285#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_32637#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3894_9632#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_53#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_6285#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_33051#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3836_9632#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_53#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_6285#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_33465#PolymorphicMapType_6232| ZeroMask) (|PolymorphicMapType_6232_3773_9632#PolymorphicMapType_6232| ZeroMask)))) (=> (and (and (= b_1_1@2  (and b_1_1@1 (state Ops_1Heap@0 Ops_1Mask@0))) (= Ops_1Mask@1 Ops_1Mask@0)) (and (= b_1_1@3 b_1_1@2) (= (ControlFlow 0 60) 59))) anon2_correct)))))
(let ((anon0_correct  (=> (state Heap@@45 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_6211_3640_53#PolymorphicMapType_6211| Heap@@45) ys $allocated)) (and (= b_1_1@0  (and b_1_1 (state Ops_1Heap@0 ZeroMask))) (= b_2@0  (and b_2 (state UsedHeap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 62) 60) anon45_Then_correct) (=> (= (ControlFlow 0 62) 61) anon45_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 63) 62) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
