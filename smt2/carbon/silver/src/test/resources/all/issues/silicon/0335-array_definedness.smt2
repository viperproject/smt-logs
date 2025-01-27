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
(declare-sort T@Field_16384_53 0)
(declare-sort T@Field_16397_16398 0)
(declare-sort T@Field_19840_1344 0)
(declare-sort T@Field_22236_22237 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_22249_22254 0)
(declare-sort T@Field_19973_19974 0)
(declare-sort T@Field_19986_19991 0)
(declare-sort T@Field_8705_8760 0)
(declare-sort T@Field_8705_19991 0)
(declare-sort T@Field_8759_8706 0)
(declare-sort T@Field_8759_1344 0)
(declare-sort T@Field_8759_53 0)
(declare-sort T@Field_8712_8706 0)
(declare-sort T@Field_8712_1344 0)
(declare-sort T@Field_8712_53 0)
(declare-datatypes ((T@PolymorphicMapType_16345 0)) (((PolymorphicMapType_16345 (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| (Array T@Ref T@Field_19840_1344 Real)) (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| (Array T@Ref T@Field_16397_16398 Real)) (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| (Array T@Ref T@Field_22236_22237 Real)) (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| (Array T@Ref T@Field_19973_19974 Real)) (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| (Array T@Ref T@Field_8705_8760 Real)) (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| (Array T@Ref T@Field_16384_53 Real)) (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| (Array T@Ref T@Field_8705_19991 Real)) (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| (Array T@Ref T@Field_8759_1344 Real)) (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| (Array T@Ref T@Field_8759_8706 Real)) (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| (Array T@Ref T@Field_8759_53 Real)) (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| (Array T@Ref T@Field_22249_22254 Real)) (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| (Array T@Ref T@Field_8712_1344 Real)) (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| (Array T@Ref T@Field_8712_8706 Real)) (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| (Array T@Ref T@Field_8712_53 Real)) (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| (Array T@Ref T@Field_19986_19991 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16873 0)) (((PolymorphicMapType_16873 (|PolymorphicMapType_16873_8703_1344#PolymorphicMapType_16873| (Array T@Ref T@Field_19840_1344 Bool)) (|PolymorphicMapType_16873_8705_8706#PolymorphicMapType_16873| (Array T@Ref T@Field_16397_16398 Bool)) (|PolymorphicMapType_16873_8703_53#PolymorphicMapType_16873| (Array T@Ref T@Field_16384_53 Bool)) (|PolymorphicMapType_16873_8703_19974#PolymorphicMapType_16873| (Array T@Ref T@Field_8705_8760 Bool)) (|PolymorphicMapType_16873_8703_64305#PolymorphicMapType_16873| (Array T@Ref T@Field_8705_19991 Bool)) (|PolymorphicMapType_16873_19973_1344#PolymorphicMapType_16873| (Array T@Ref T@Field_8712_1344 Bool)) (|PolymorphicMapType_16873_19973_8706#PolymorphicMapType_16873| (Array T@Ref T@Field_8712_8706 Bool)) (|PolymorphicMapType_16873_19973_53#PolymorphicMapType_16873| (Array T@Ref T@Field_8712_53 Bool)) (|PolymorphicMapType_16873_19973_19974#PolymorphicMapType_16873| (Array T@Ref T@Field_19973_19974 Bool)) (|PolymorphicMapType_16873_19973_65353#PolymorphicMapType_16873| (Array T@Ref T@Field_19986_19991 Bool)) (|PolymorphicMapType_16873_22236_1344#PolymorphicMapType_16873| (Array T@Ref T@Field_8759_1344 Bool)) (|PolymorphicMapType_16873_22236_8706#PolymorphicMapType_16873| (Array T@Ref T@Field_8759_8706 Bool)) (|PolymorphicMapType_16873_22236_53#PolymorphicMapType_16873| (Array T@Ref T@Field_8759_53 Bool)) (|PolymorphicMapType_16873_22236_19974#PolymorphicMapType_16873| (Array T@Ref T@Field_22236_22237 Bool)) (|PolymorphicMapType_16873_22236_66401#PolymorphicMapType_16873| (Array T@Ref T@Field_22249_22254 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16324 0)) (((PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| (Array T@Ref T@Field_16384_53 Bool)) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| (Array T@Ref T@Field_16397_16398 T@Ref)) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| (Array T@Ref T@Field_19840_1344 Int)) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| (Array T@Ref T@Field_22236_22237 T@FrameType)) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| (Array T@Ref T@Field_22249_22254 T@PolymorphicMapType_16873)) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| (Array T@Ref T@Field_19973_19974 T@FrameType)) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| (Array T@Ref T@Field_19986_19991 T@PolymorphicMapType_16873)) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| (Array T@Ref T@Field_8705_8760 T@FrameType)) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| (Array T@Ref T@Field_8705_19991 T@PolymorphicMapType_16873)) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| (Array T@Ref T@Field_8759_8706 T@Ref)) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| (Array T@Ref T@Field_8759_1344 Int)) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| (Array T@Ref T@Field_8759_53 Bool)) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| (Array T@Ref T@Field_8712_8706 T@Ref)) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| (Array T@Ref T@Field_8712_1344 Int)) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| (Array T@Ref T@Field_8712_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_16384_53)
(declare-fun val () T@Field_19840_1344)
(declare-fun left_2 () T@Field_16397_16398)
(declare-fun right_1 () T@Field_16397_16398)
(declare-fun succHeap (T@PolymorphicMapType_16324 T@PolymorphicMapType_16324) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_16324 T@PolymorphicMapType_16324) Bool)
(declare-fun state (T@PolymorphicMapType_16324 T@PolymorphicMapType_16345) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_16345) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_16873)
(declare-sort T@ArrayDomainType 0)
(declare-fun array_1 (T@ArrayDomainType) T@Field_19973_19974)
(declare-fun IsPredicateField_8712_8713 (T@Field_19973_19974) Bool)
(declare-fun tree_1 (T@Ref) T@Field_22236_22237)
(declare-fun IsPredicateField_8759_8760 (T@Field_22236_22237) Bool)
(declare-fun |array#trigger_8712| (T@PolymorphicMapType_16324 T@Field_19973_19974) Bool)
(declare-fun |array#everUsed_8712| (T@Field_19973_19974) Bool)
(declare-fun |tree#trigger_8759| (T@PolymorphicMapType_16324 T@Field_22236_22237) Bool)
(declare-fun |tree#everUsed_8759| (T@Field_22236_22237) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_16324 T@PolymorphicMapType_16324 T@PolymorphicMapType_16345) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8712 (T@Field_19973_19974) T@Field_19986_19991)
(declare-fun HasDirectPerm_8712_8713 (T@PolymorphicMapType_16345 T@Ref T@Field_19973_19974) Bool)
(declare-fun PredicateMaskField_8759 (T@Field_22236_22237) T@Field_22249_22254)
(declare-fun HasDirectPerm_8759_8760 (T@PolymorphicMapType_16345 T@Ref T@Field_22236_22237) Bool)
(declare-fun IsPredicateField_8705_62523 (T@Field_8705_8760) Bool)
(declare-fun PredicateMaskField_8705 (T@Field_8705_8760) T@Field_8705_19991)
(declare-fun HasDirectPerm_8705_8760 (T@PolymorphicMapType_16345 T@Ref T@Field_8705_8760) Bool)
(declare-fun IsWandField_8712_68204 (T@Field_19973_19974) Bool)
(declare-fun WandMaskField_8712 (T@Field_19973_19974) T@Field_19986_19991)
(declare-fun IsWandField_8759_67847 (T@Field_22236_22237) Bool)
(declare-fun WandMaskField_8759 (T@Field_22236_22237) T@Field_22249_22254)
(declare-fun IsWandField_8705_67490 (T@Field_8705_8760) Bool)
(declare-fun WandMaskField_8705 (T@Field_8705_8760) T@Field_8705_19991)
(declare-fun |array#sm| (T@ArrayDomainType) T@Field_19986_19991)
(declare-fun |tree#sm| (T@Ref) T@Field_22249_22254)
(declare-fun dummyHeap () T@PolymorphicMapType_16324)
(declare-fun ZeroMask () T@PolymorphicMapType_16345)
(declare-fun InsidePredicate_19973_19973 (T@Field_19973_19974 T@FrameType T@Field_19973_19974 T@FrameType) Bool)
(declare-fun InsidePredicate_16384_16384 (T@Field_8705_8760 T@FrameType T@Field_8705_8760 T@FrameType) Bool)
(declare-fun InsidePredicate_8759_8759 (T@Field_22236_22237 T@FrameType T@Field_22236_22237 T@FrameType) Bool)
(declare-fun IsPredicateField_8703_1344 (T@Field_19840_1344) Bool)
(declare-fun IsWandField_8703_1344 (T@Field_19840_1344) Bool)
(declare-fun IsPredicateField_8705_8706 (T@Field_16397_16398) Bool)
(declare-fun IsWandField_8705_8706 (T@Field_16397_16398) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8712_78493 (T@Field_19986_19991) Bool)
(declare-fun IsWandField_8712_78509 (T@Field_19986_19991) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8712_53 (T@Field_8712_53) Bool)
(declare-fun IsWandField_8712_53 (T@Field_8712_53) Bool)
(declare-fun IsPredicateField_8712_8706 (T@Field_8712_8706) Bool)
(declare-fun IsWandField_8712_8706 (T@Field_8712_8706) Bool)
(declare-fun IsPredicateField_8712_1344 (T@Field_8712_1344) Bool)
(declare-fun IsWandField_8712_1344 (T@Field_8712_1344) Bool)
(declare-fun IsPredicateField_8759_77662 (T@Field_22249_22254) Bool)
(declare-fun IsWandField_8759_77678 (T@Field_22249_22254) Bool)
(declare-fun IsPredicateField_8759_53 (T@Field_8759_53) Bool)
(declare-fun IsWandField_8759_53 (T@Field_8759_53) Bool)
(declare-fun IsPredicateField_8759_8706 (T@Field_8759_8706) Bool)
(declare-fun IsWandField_8759_8706 (T@Field_8759_8706) Bool)
(declare-fun IsPredicateField_8759_1344 (T@Field_8759_1344) Bool)
(declare-fun IsWandField_8759_1344 (T@Field_8759_1344) Bool)
(declare-fun IsPredicateField_8703_76831 (T@Field_8705_19991) Bool)
(declare-fun IsWandField_8703_76847 (T@Field_8705_19991) Bool)
(declare-fun IsPredicateField_8703_53 (T@Field_16384_53) Bool)
(declare-fun IsWandField_8703_53 (T@Field_16384_53) Bool)
(declare-fun HasDirectPerm_8712_62278 (T@PolymorphicMapType_16345 T@Ref T@Field_19986_19991) Bool)
(declare-fun HasDirectPerm_8712_53 (T@PolymorphicMapType_16345 T@Ref T@Field_8712_53) Bool)
(declare-fun HasDirectPerm_8712_1344 (T@PolymorphicMapType_16345 T@Ref T@Field_8712_1344) Bool)
(declare-fun HasDirectPerm_8712_8706 (T@PolymorphicMapType_16345 T@Ref T@Field_8712_8706) Bool)
(declare-fun HasDirectPerm_8759_61180 (T@PolymorphicMapType_16345 T@Ref T@Field_22249_22254) Bool)
(declare-fun HasDirectPerm_8759_53 (T@PolymorphicMapType_16345 T@Ref T@Field_8759_53) Bool)
(declare-fun HasDirectPerm_8759_1344 (T@PolymorphicMapType_16345 T@Ref T@Field_8759_1344) Bool)
(declare-fun HasDirectPerm_8759_8706 (T@PolymorphicMapType_16345 T@Ref T@Field_8759_8706) Bool)
(declare-fun HasDirectPerm_8705_60039 (T@PolymorphicMapType_16345 T@Ref T@Field_8705_19991) Bool)
(declare-fun HasDirectPerm_8705_53 (T@PolymorphicMapType_16345 T@Ref T@Field_16384_53) Bool)
(declare-fun HasDirectPerm_8703_1344 (T@PolymorphicMapType_16345 T@Ref T@Field_19840_1344) Bool)
(declare-fun HasDirectPerm_8705_8706 (T@PolymorphicMapType_16345 T@Ref T@Field_16397_16398) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_16345 T@PolymorphicMapType_16345 T@PolymorphicMapType_16345) Bool)
(declare-fun getPredWandId_8712_8713 (T@Field_19973_19974) Int)
(declare-fun getPredWandId_8759_8760 (T@Field_22236_22237) Int)
(declare-fun |array#condqp1| (T@PolymorphicMapType_16324 T@ArrayDomainType) Int)
(declare-fun |sk_array#condqp1| (Int Int) Int)
(declare-fun len (T@ArrayDomainType) Int)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun InsidePredicate_19973_16384 (T@Field_19973_19974 T@FrameType T@Field_8705_8760 T@FrameType) Bool)
(declare-fun InsidePredicate_19973_8759 (T@Field_19973_19974 T@FrameType T@Field_22236_22237 T@FrameType) Bool)
(declare-fun InsidePredicate_16384_19973 (T@Field_8705_8760 T@FrameType T@Field_19973_19974 T@FrameType) Bool)
(declare-fun InsidePredicate_16384_8759 (T@Field_8705_8760 T@FrameType T@Field_22236_22237 T@FrameType) Bool)
(declare-fun InsidePredicate_8759_19973 (T@Field_22236_22237 T@FrameType T@Field_19973_19974 T@FrameType) Bool)
(declare-fun InsidePredicate_8759_16384 (T@Field_22236_22237 T@FrameType T@Field_8705_8760 T@FrameType) Bool)
(assert (distinct left_2 right_1)
)
(assert (forall ((Heap0 T@PolymorphicMapType_16324) (Heap1 T@PolymorphicMapType_16324) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_16324) (Mask T@PolymorphicMapType_16345) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_16324) (Heap1@@0 T@PolymorphicMapType_16324) (Heap2 T@PolymorphicMapType_16324) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_22249_22254) ) (!  (not (select (|PolymorphicMapType_16873_22236_66401#PolymorphicMapType_16873| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16873_22236_66401#PolymorphicMapType_16873| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_22236_22237) ) (!  (not (select (|PolymorphicMapType_16873_22236_19974#PolymorphicMapType_16873| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16873_22236_19974#PolymorphicMapType_16873| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8759_53) ) (!  (not (select (|PolymorphicMapType_16873_22236_53#PolymorphicMapType_16873| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16873_22236_53#PolymorphicMapType_16873| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8759_8706) ) (!  (not (select (|PolymorphicMapType_16873_22236_8706#PolymorphicMapType_16873| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16873_22236_8706#PolymorphicMapType_16873| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8759_1344) ) (!  (not (select (|PolymorphicMapType_16873_22236_1344#PolymorphicMapType_16873| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16873_22236_1344#PolymorphicMapType_16873| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_19986_19991) ) (!  (not (select (|PolymorphicMapType_16873_19973_65353#PolymorphicMapType_16873| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16873_19973_65353#PolymorphicMapType_16873| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_19973_19974) ) (!  (not (select (|PolymorphicMapType_16873_19973_19974#PolymorphicMapType_16873| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16873_19973_19974#PolymorphicMapType_16873| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8712_53) ) (!  (not (select (|PolymorphicMapType_16873_19973_53#PolymorphicMapType_16873| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16873_19973_53#PolymorphicMapType_16873| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8712_8706) ) (!  (not (select (|PolymorphicMapType_16873_19973_8706#PolymorphicMapType_16873| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16873_19973_8706#PolymorphicMapType_16873| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_8712_1344) ) (!  (not (select (|PolymorphicMapType_16873_19973_1344#PolymorphicMapType_16873| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16873_19973_1344#PolymorphicMapType_16873| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_8705_19991) ) (!  (not (select (|PolymorphicMapType_16873_8703_64305#PolymorphicMapType_16873| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16873_8703_64305#PolymorphicMapType_16873| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_8705_8760) ) (!  (not (select (|PolymorphicMapType_16873_8703_19974#PolymorphicMapType_16873| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16873_8703_19974#PolymorphicMapType_16873| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_16384_53) ) (!  (not (select (|PolymorphicMapType_16873_8703_53#PolymorphicMapType_16873| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16873_8703_53#PolymorphicMapType_16873| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_16397_16398) ) (!  (not (select (|PolymorphicMapType_16873_8705_8706#PolymorphicMapType_16873| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16873_8705_8706#PolymorphicMapType_16873| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_19840_1344) ) (!  (not (select (|PolymorphicMapType_16873_8703_1344#PolymorphicMapType_16873| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16873_8703_1344#PolymorphicMapType_16873| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((a_2 T@ArrayDomainType) ) (! (IsPredicateField_8712_8713 (array_1 a_2))
 :qid |stdinbpl.241:15|
 :skolemid |24|
 :pattern ( (array_1 a_2))
)))
(assert (forall ((root T@Ref) ) (! (IsPredicateField_8759_8760 (tree_1 root))
 :qid |stdinbpl.340:15|
 :skolemid |37|
 :pattern ( (tree_1 root))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_16324) (a_2@@0 T@ArrayDomainType) ) (! (|array#everUsed_8712| (array_1 a_2@@0))
 :qid |stdinbpl.260:15|
 :skolemid |28|
 :pattern ( (|array#trigger_8712| Heap@@0 (array_1 a_2@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_16324) (root@@0 T@Ref) ) (! (|tree#everUsed_8759| (tree_1 root@@0))
 :qid |stdinbpl.359:15|
 :skolemid |41|
 :pattern ( (|tree#trigger_8759| Heap@@1 (tree_1 root@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_16324) (ExhaleHeap T@PolymorphicMapType_16324) (Mask@@0 T@PolymorphicMapType_16345) (pm_f_17 T@Field_19973_19974) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8712_8713 Mask@@0 null pm_f_17) (IsPredicateField_8712_8713 pm_f_17)) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@2) null (PredicateMaskField_8712 pm_f_17)) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap) null (PredicateMaskField_8712 pm_f_17)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_8712_8713 pm_f_17) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap) null (PredicateMaskField_8712 pm_f_17)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_16324) (ExhaleHeap@@0 T@PolymorphicMapType_16324) (Mask@@1 T@PolymorphicMapType_16345) (pm_f_17@@0 T@Field_22236_22237) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8759_8760 Mask@@1 null pm_f_17@@0) (IsPredicateField_8759_8760 pm_f_17@@0)) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@3) null (PredicateMaskField_8759 pm_f_17@@0)) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@0) null (PredicateMaskField_8759 pm_f_17@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_8759_8760 pm_f_17@@0) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@0) null (PredicateMaskField_8759 pm_f_17@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_16324) (ExhaleHeap@@1 T@PolymorphicMapType_16324) (Mask@@2 T@PolymorphicMapType_16345) (pm_f_17@@1 T@Field_8705_8760) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8705_8760 Mask@@2 null pm_f_17@@1) (IsPredicateField_8705_62523 pm_f_17@@1)) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@4) null (PredicateMaskField_8705 pm_f_17@@1)) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@1) null (PredicateMaskField_8705 pm_f_17@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_8705_62523 pm_f_17@@1) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@1) null (PredicateMaskField_8705 pm_f_17@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_16324) (ExhaleHeap@@2 T@PolymorphicMapType_16324) (Mask@@3 T@PolymorphicMapType_16345) (pm_f_17@@2 T@Field_19973_19974) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8712_8713 Mask@@3 null pm_f_17@@2) (IsWandField_8712_68204 pm_f_17@@2)) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@5) null (WandMaskField_8712 pm_f_17@@2)) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@2) null (WandMaskField_8712 pm_f_17@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_8712_68204 pm_f_17@@2) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@2) null (WandMaskField_8712 pm_f_17@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_16324) (ExhaleHeap@@3 T@PolymorphicMapType_16324) (Mask@@4 T@PolymorphicMapType_16345) (pm_f_17@@3 T@Field_22236_22237) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_8759_8760 Mask@@4 null pm_f_17@@3) (IsWandField_8759_67847 pm_f_17@@3)) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@6) null (WandMaskField_8759 pm_f_17@@3)) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@3) null (WandMaskField_8759 pm_f_17@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_8759_67847 pm_f_17@@3) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@3) null (WandMaskField_8759 pm_f_17@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_16324) (ExhaleHeap@@4 T@PolymorphicMapType_16324) (Mask@@5 T@PolymorphicMapType_16345) (pm_f_17@@4 T@Field_8705_8760) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8705_8760 Mask@@5 null pm_f_17@@4) (IsWandField_8705_67490 pm_f_17@@4)) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@7) null (WandMaskField_8705 pm_f_17@@4)) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@4) null (WandMaskField_8705 pm_f_17@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_8705_67490 pm_f_17@@4) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@4) null (WandMaskField_8705 pm_f_17@@4)))
)))
(assert (forall ((a_2@@1 T@ArrayDomainType) (a2 T@ArrayDomainType) ) (!  (=> (= (array_1 a_2@@1) (array_1 a2)) (= a_2@@1 a2))
 :qid |stdinbpl.251:15|
 :skolemid |26|
 :pattern ( (array_1 a_2@@1) (array_1 a2))
)))
(assert (forall ((a_2@@2 T@ArrayDomainType) (a2@@0 T@ArrayDomainType) ) (!  (=> (= (|array#sm| a_2@@2) (|array#sm| a2@@0)) (= a_2@@2 a2@@0))
 :qid |stdinbpl.255:15|
 :skolemid |27|
 :pattern ( (|array#sm| a_2@@2) (|array#sm| a2@@0))
)))
(assert (forall ((root@@1 T@Ref) (root2 T@Ref) ) (!  (=> (= (tree_1 root@@1) (tree_1 root2)) (= root@@1 root2))
 :qid |stdinbpl.350:15|
 :skolemid |39|
 :pattern ( (tree_1 root@@1) (tree_1 root2))
)))
(assert (forall ((root@@2 T@Ref) (root2@@0 T@Ref) ) (!  (=> (= (|tree#sm| root@@2) (|tree#sm| root2@@0)) (= root@@2 root2@@0))
 :qid |stdinbpl.354:15|
 :skolemid |40|
 :pattern ( (|tree#sm| root@@2) (|tree#sm| root2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_16324) (ExhaleHeap@@5 T@PolymorphicMapType_16324) (Mask@@6 T@PolymorphicMapType_16345) (o_37 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@8) o_37 $allocated) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@5) o_37 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@5) o_37 $allocated))
)))
(assert (forall ((p T@Field_19973_19974) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_19973_19973 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19973_19973 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8705_8760) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_16384_16384 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16384_16384 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_22236_22237) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_8759_8759 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8759_8759 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_8703_1344 val)))
(assert  (not (IsWandField_8703_1344 val)))
(assert  (not (IsPredicateField_8705_8706 left_2)))
(assert  (not (IsWandField_8705_8706 left_2)))
(assert  (not (IsPredicateField_8705_8706 right_1)))
(assert  (not (IsWandField_8705_8706 right_1)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_16324) (ExhaleHeap@@6 T@PolymorphicMapType_16324) (Mask@@7 T@PolymorphicMapType_16345) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@9 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_16345) (o_2@@14 T@Ref) (f_4@@14 T@Field_19986_19991) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8712_78493 f_4@@14))) (not (IsWandField_8712_78509 f_4@@14))) (<= (select (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_16345) (o_2@@15 T@Ref) (f_4@@15 T@Field_8712_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8712_53 f_4@@15))) (not (IsWandField_8712_53 f_4@@15))) (<= (select (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_16345) (o_2@@16 T@Ref) (f_4@@16 T@Field_19973_19974) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_8712_8713 f_4@@16))) (not (IsWandField_8712_68204 f_4@@16))) (<= (select (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_16345) (o_2@@17 T@Ref) (f_4@@17 T@Field_8712_8706) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_8712_8706 f_4@@17))) (not (IsWandField_8712_8706 f_4@@17))) (<= (select (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_16345) (o_2@@18 T@Ref) (f_4@@18 T@Field_8712_1344) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8712_1344 f_4@@18))) (not (IsWandField_8712_1344 f_4@@18))) (<= (select (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_16345) (o_2@@19 T@Ref) (f_4@@19 T@Field_22249_22254) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8759_77662 f_4@@19))) (not (IsWandField_8759_77678 f_4@@19))) (<= (select (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_16345) (o_2@@20 T@Ref) (f_4@@20 T@Field_8759_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8759_53 f_4@@20))) (not (IsWandField_8759_53 f_4@@20))) (<= (select (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_16345) (o_2@@21 T@Ref) (f_4@@21 T@Field_22236_22237) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8759_8760 f_4@@21))) (not (IsWandField_8759_67847 f_4@@21))) (<= (select (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_16345) (o_2@@22 T@Ref) (f_4@@22 T@Field_8759_8706) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8759_8706 f_4@@22))) (not (IsWandField_8759_8706 f_4@@22))) (<= (select (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_16345) (o_2@@23 T@Ref) (f_4@@23 T@Field_8759_1344) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8759_1344 f_4@@23))) (not (IsWandField_8759_1344 f_4@@23))) (<= (select (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_16345) (o_2@@24 T@Ref) (f_4@@24 T@Field_8705_19991) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8703_76831 f_4@@24))) (not (IsWandField_8703_76847 f_4@@24))) (<= (select (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_16345) (o_2@@25 T@Ref) (f_4@@25 T@Field_16384_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8703_53 f_4@@25))) (not (IsWandField_8703_53 f_4@@25))) (<= (select (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_16345) (o_2@@26 T@Ref) (f_4@@26 T@Field_8705_8760) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_8705_62523 f_4@@26))) (not (IsWandField_8705_67490 f_4@@26))) (<= (select (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_16345) (o_2@@27 T@Ref) (f_4@@27 T@Field_16397_16398) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8705_8706 f_4@@27))) (not (IsWandField_8705_8706 f_4@@27))) (<= (select (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_16345) (o_2@@28 T@Ref) (f_4@@28 T@Field_19840_1344) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_8703_1344 f_4@@28))) (not (IsWandField_8703_1344 f_4@@28))) (<= (select (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_16345) (o_2@@29 T@Ref) (f_4@@29 T@Field_19986_19991) ) (! (= (HasDirectPerm_8712_62278 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8712_62278 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_16345) (o_2@@30 T@Ref) (f_4@@30 T@Field_8712_53) ) (! (= (HasDirectPerm_8712_53 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8712_53 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_16345) (o_2@@31 T@Ref) (f_4@@31 T@Field_19973_19974) ) (! (= (HasDirectPerm_8712_8713 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8712_8713 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_16345) (o_2@@32 T@Ref) (f_4@@32 T@Field_8712_1344) ) (! (= (HasDirectPerm_8712_1344 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8712_1344 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_16345) (o_2@@33 T@Ref) (f_4@@33 T@Field_8712_8706) ) (! (= (HasDirectPerm_8712_8706 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8712_8706 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_16345) (o_2@@34 T@Ref) (f_4@@34 T@Field_22249_22254) ) (! (= (HasDirectPerm_8759_61180 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8759_61180 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_16345) (o_2@@35 T@Ref) (f_4@@35 T@Field_8759_53) ) (! (= (HasDirectPerm_8759_53 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8759_53 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_16345) (o_2@@36 T@Ref) (f_4@@36 T@Field_22236_22237) ) (! (= (HasDirectPerm_8759_8760 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8759_8760 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_16345) (o_2@@37 T@Ref) (f_4@@37 T@Field_8759_1344) ) (! (= (HasDirectPerm_8759_1344 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8759_1344 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_16345) (o_2@@38 T@Ref) (f_4@@38 T@Field_8759_8706) ) (! (= (HasDirectPerm_8759_8706 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8759_8706 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_16345) (o_2@@39 T@Ref) (f_4@@39 T@Field_8705_19991) ) (! (= (HasDirectPerm_8705_60039 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8705_60039 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_16345) (o_2@@40 T@Ref) (f_4@@40 T@Field_16384_53) ) (! (= (HasDirectPerm_8705_53 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8705_53 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_16345) (o_2@@41 T@Ref) (f_4@@41 T@Field_8705_8760) ) (! (= (HasDirectPerm_8705_8760 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8705_8760 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_16345) (o_2@@42 T@Ref) (f_4@@42 T@Field_19840_1344) ) (! (= (HasDirectPerm_8703_1344 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8703_1344 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_16345) (o_2@@43 T@Ref) (f_4@@43 T@Field_16397_16398) ) (! (= (HasDirectPerm_8705_8706 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8705_8706 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_16324) (ExhaleHeap@@7 T@PolymorphicMapType_16324) (Mask@@38 T@PolymorphicMapType_16345) (o_37@@0 T@Ref) (f_18 T@Field_19986_19991) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_8712_62278 Mask@@38 o_37@@0 f_18) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@10) o_37@@0 f_18) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@7) o_37@@0 f_18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@7) o_37@@0 f_18))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_16324) (ExhaleHeap@@8 T@PolymorphicMapType_16324) (Mask@@39 T@PolymorphicMapType_16345) (o_37@@1 T@Ref) (f_18@@0 T@Field_8712_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_8712_53 Mask@@39 o_37@@1 f_18@@0) (= (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@11) o_37@@1 f_18@@0) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@8) o_37@@1 f_18@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@8) o_37@@1 f_18@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_16324) (ExhaleHeap@@9 T@PolymorphicMapType_16324) (Mask@@40 T@PolymorphicMapType_16345) (o_37@@2 T@Ref) (f_18@@1 T@Field_19973_19974) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_8712_8713 Mask@@40 o_37@@2 f_18@@1) (= (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@12) o_37@@2 f_18@@1) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@9) o_37@@2 f_18@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@9) o_37@@2 f_18@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_16324) (ExhaleHeap@@10 T@PolymorphicMapType_16324) (Mask@@41 T@PolymorphicMapType_16345) (o_37@@3 T@Ref) (f_18@@2 T@Field_8712_1344) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_8712_1344 Mask@@41 o_37@@3 f_18@@2) (= (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@13) o_37@@3 f_18@@2) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@10) o_37@@3 f_18@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@10) o_37@@3 f_18@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_16324) (ExhaleHeap@@11 T@PolymorphicMapType_16324) (Mask@@42 T@PolymorphicMapType_16345) (o_37@@4 T@Ref) (f_18@@3 T@Field_8712_8706) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_8712_8706 Mask@@42 o_37@@4 f_18@@3) (= (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@14) o_37@@4 f_18@@3) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@11) o_37@@4 f_18@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@11) o_37@@4 f_18@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_16324) (ExhaleHeap@@12 T@PolymorphicMapType_16324) (Mask@@43 T@PolymorphicMapType_16345) (o_37@@5 T@Ref) (f_18@@4 T@Field_22249_22254) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_8759_61180 Mask@@43 o_37@@5 f_18@@4) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@15) o_37@@5 f_18@@4) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@12) o_37@@5 f_18@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@12) o_37@@5 f_18@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_16324) (ExhaleHeap@@13 T@PolymorphicMapType_16324) (Mask@@44 T@PolymorphicMapType_16345) (o_37@@6 T@Ref) (f_18@@5 T@Field_8759_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_8759_53 Mask@@44 o_37@@6 f_18@@5) (= (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@16) o_37@@6 f_18@@5) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@13) o_37@@6 f_18@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@13) o_37@@6 f_18@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_16324) (ExhaleHeap@@14 T@PolymorphicMapType_16324) (Mask@@45 T@PolymorphicMapType_16345) (o_37@@7 T@Ref) (f_18@@6 T@Field_22236_22237) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_8759_8760 Mask@@45 o_37@@7 f_18@@6) (= (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@17) o_37@@7 f_18@@6) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@14) o_37@@7 f_18@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@14) o_37@@7 f_18@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_16324) (ExhaleHeap@@15 T@PolymorphicMapType_16324) (Mask@@46 T@PolymorphicMapType_16345) (o_37@@8 T@Ref) (f_18@@7 T@Field_8759_1344) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_8759_1344 Mask@@46 o_37@@8 f_18@@7) (= (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@18) o_37@@8 f_18@@7) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@15) o_37@@8 f_18@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@15) o_37@@8 f_18@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_16324) (ExhaleHeap@@16 T@PolymorphicMapType_16324) (Mask@@47 T@PolymorphicMapType_16345) (o_37@@9 T@Ref) (f_18@@8 T@Field_8759_8706) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_8759_8706 Mask@@47 o_37@@9 f_18@@8) (= (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@19) o_37@@9 f_18@@8) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@16) o_37@@9 f_18@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@16) o_37@@9 f_18@@8))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_16324) (ExhaleHeap@@17 T@PolymorphicMapType_16324) (Mask@@48 T@PolymorphicMapType_16345) (o_37@@10 T@Ref) (f_18@@9 T@Field_8705_19991) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_8705_60039 Mask@@48 o_37@@10 f_18@@9) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@20) o_37@@10 f_18@@9) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@17) o_37@@10 f_18@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@17) o_37@@10 f_18@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_16324) (ExhaleHeap@@18 T@PolymorphicMapType_16324) (Mask@@49 T@PolymorphicMapType_16345) (o_37@@11 T@Ref) (f_18@@10 T@Field_16384_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_8705_53 Mask@@49 o_37@@11 f_18@@10) (= (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@21) o_37@@11 f_18@@10) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@18) o_37@@11 f_18@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@18) o_37@@11 f_18@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_16324) (ExhaleHeap@@19 T@PolymorphicMapType_16324) (Mask@@50 T@PolymorphicMapType_16345) (o_37@@12 T@Ref) (f_18@@11 T@Field_8705_8760) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_8705_8760 Mask@@50 o_37@@12 f_18@@11) (= (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@22) o_37@@12 f_18@@11) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@19) o_37@@12 f_18@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@19) o_37@@12 f_18@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_16324) (ExhaleHeap@@20 T@PolymorphicMapType_16324) (Mask@@51 T@PolymorphicMapType_16345) (o_37@@13 T@Ref) (f_18@@12 T@Field_19840_1344) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_8703_1344 Mask@@51 o_37@@13 f_18@@12) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@23) o_37@@13 f_18@@12) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@20) o_37@@13 f_18@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@20) o_37@@13 f_18@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_16324) (ExhaleHeap@@21 T@PolymorphicMapType_16324) (Mask@@52 T@PolymorphicMapType_16345) (o_37@@14 T@Ref) (f_18@@13 T@Field_16397_16398) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_8705_8706 Mask@@52 o_37@@14 f_18@@13) (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@24) o_37@@14 f_18@@13) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@21) o_37@@14 f_18@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@21) o_37@@14 f_18@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_19986_19991) ) (! (= (select (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_8712_53) ) (! (= (select (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_19973_19974) ) (! (= (select (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_8712_8706) ) (! (= (select (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_8712_1344) ) (! (= (select (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_22249_22254) ) (! (= (select (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_8759_53) ) (! (= (select (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_22236_22237) ) (! (= (select (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_8759_8706) ) (! (= (select (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_8759_1344) ) (! (= (select (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_8705_19991) ) (! (= (select (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_16384_53) ) (! (= (select (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_8705_8760) ) (! (= (select (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_16397_16398) ) (! (= (select (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_19840_1344) ) (! (= (select (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_16345) (SummandMask1 T@PolymorphicMapType_16345) (SummandMask2 T@PolymorphicMapType_16345) (o_2@@59 T@Ref) (f_4@@59 T@Field_19986_19991) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_16345) (SummandMask1@@0 T@PolymorphicMapType_16345) (SummandMask2@@0 T@PolymorphicMapType_16345) (o_2@@60 T@Ref) (f_4@@60 T@Field_8712_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_16345) (SummandMask1@@1 T@PolymorphicMapType_16345) (SummandMask2@@1 T@PolymorphicMapType_16345) (o_2@@61 T@Ref) (f_4@@61 T@Field_19973_19974) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_16345) (SummandMask1@@2 T@PolymorphicMapType_16345) (SummandMask2@@2 T@PolymorphicMapType_16345) (o_2@@62 T@Ref) (f_4@@62 T@Field_8712_8706) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_16345) (SummandMask1@@3 T@PolymorphicMapType_16345) (SummandMask2@@3 T@PolymorphicMapType_16345) (o_2@@63 T@Ref) (f_4@@63 T@Field_8712_1344) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_16345) (SummandMask1@@4 T@PolymorphicMapType_16345) (SummandMask2@@4 T@PolymorphicMapType_16345) (o_2@@64 T@Ref) (f_4@@64 T@Field_22249_22254) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_16345) (SummandMask1@@5 T@PolymorphicMapType_16345) (SummandMask2@@5 T@PolymorphicMapType_16345) (o_2@@65 T@Ref) (f_4@@65 T@Field_8759_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_16345) (SummandMask1@@6 T@PolymorphicMapType_16345) (SummandMask2@@6 T@PolymorphicMapType_16345) (o_2@@66 T@Ref) (f_4@@66 T@Field_22236_22237) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_16345) (SummandMask1@@7 T@PolymorphicMapType_16345) (SummandMask2@@7 T@PolymorphicMapType_16345) (o_2@@67 T@Ref) (f_4@@67 T@Field_8759_8706) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_16345) (SummandMask1@@8 T@PolymorphicMapType_16345) (SummandMask2@@8 T@PolymorphicMapType_16345) (o_2@@68 T@Ref) (f_4@@68 T@Field_8759_1344) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_16345) (SummandMask1@@9 T@PolymorphicMapType_16345) (SummandMask2@@9 T@PolymorphicMapType_16345) (o_2@@69 T@Ref) (f_4@@69 T@Field_8705_19991) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_16345) (SummandMask1@@10 T@PolymorphicMapType_16345) (SummandMask2@@10 T@PolymorphicMapType_16345) (o_2@@70 T@Ref) (f_4@@70 T@Field_16384_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_16345) (SummandMask1@@11 T@PolymorphicMapType_16345) (SummandMask2@@11 T@PolymorphicMapType_16345) (o_2@@71 T@Ref) (f_4@@71 T@Field_8705_8760) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_16345) (SummandMask1@@12 T@PolymorphicMapType_16345) (SummandMask2@@12 T@PolymorphicMapType_16345) (o_2@@72 T@Ref) (f_4@@72 T@Field_16397_16398) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_16345) (SummandMask1@@13 T@PolymorphicMapType_16345) (SummandMask2@@13 T@PolymorphicMapType_16345) (o_2@@73 T@Ref) (f_4@@73 T@Field_19840_1344) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_16324) (ExhaleHeap@@22 T@PolymorphicMapType_16324) (Mask@@53 T@PolymorphicMapType_16345) (pm_f_17@@5 T@Field_19973_19974) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_8712_8713 Mask@@53 null pm_f_17@@5) (IsPredicateField_8712_8713 pm_f_17@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_17 T@Ref) (f_18@@14 T@Field_19840_1344) ) (!  (=> (select (|PolymorphicMapType_16873_8703_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_17@@5))) o2_17 f_18@@14) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@25) o2_17 f_18@@14) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17 f_18@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17 f_18@@14))
)) (forall ((o2_17@@0 T@Ref) (f_18@@15 T@Field_16397_16398) ) (!  (=> (select (|PolymorphicMapType_16873_8705_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_17@@5))) o2_17@@0 f_18@@15) (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@25) o2_17@@0 f_18@@15) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@0 f_18@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@0 f_18@@15))
))) (forall ((o2_17@@1 T@Ref) (f_18@@16 T@Field_16384_53) ) (!  (=> (select (|PolymorphicMapType_16873_8703_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_17@@5))) o2_17@@1 f_18@@16) (= (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@25) o2_17@@1 f_18@@16) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@1 f_18@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@1 f_18@@16))
))) (forall ((o2_17@@2 T@Ref) (f_18@@17 T@Field_8705_8760) ) (!  (=> (select (|PolymorphicMapType_16873_8703_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_17@@5))) o2_17@@2 f_18@@17) (= (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@25) o2_17@@2 f_18@@17) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@2 f_18@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@2 f_18@@17))
))) (forall ((o2_17@@3 T@Ref) (f_18@@18 T@Field_8705_19991) ) (!  (=> (select (|PolymorphicMapType_16873_8703_64305#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_17@@5))) o2_17@@3 f_18@@18) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@25) o2_17@@3 f_18@@18) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@3 f_18@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@3 f_18@@18))
))) (forall ((o2_17@@4 T@Ref) (f_18@@19 T@Field_8712_1344) ) (!  (=> (select (|PolymorphicMapType_16873_19973_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_17@@5))) o2_17@@4 f_18@@19) (= (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@25) o2_17@@4 f_18@@19) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@4 f_18@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@4 f_18@@19))
))) (forall ((o2_17@@5 T@Ref) (f_18@@20 T@Field_8712_8706) ) (!  (=> (select (|PolymorphicMapType_16873_19973_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_17@@5))) o2_17@@5 f_18@@20) (= (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@25) o2_17@@5 f_18@@20) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@5 f_18@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@5 f_18@@20))
))) (forall ((o2_17@@6 T@Ref) (f_18@@21 T@Field_8712_53) ) (!  (=> (select (|PolymorphicMapType_16873_19973_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_17@@5))) o2_17@@6 f_18@@21) (= (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@25) o2_17@@6 f_18@@21) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@6 f_18@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@6 f_18@@21))
))) (forall ((o2_17@@7 T@Ref) (f_18@@22 T@Field_19973_19974) ) (!  (=> (select (|PolymorphicMapType_16873_19973_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_17@@5))) o2_17@@7 f_18@@22) (= (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@25) o2_17@@7 f_18@@22) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@7 f_18@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@7 f_18@@22))
))) (forall ((o2_17@@8 T@Ref) (f_18@@23 T@Field_19986_19991) ) (!  (=> (select (|PolymorphicMapType_16873_19973_65353#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_17@@5))) o2_17@@8 f_18@@23) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) o2_17@@8 f_18@@23) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@8 f_18@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@8 f_18@@23))
))) (forall ((o2_17@@9 T@Ref) (f_18@@24 T@Field_8759_1344) ) (!  (=> (select (|PolymorphicMapType_16873_22236_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_17@@5))) o2_17@@9 f_18@@24) (= (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@25) o2_17@@9 f_18@@24) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@9 f_18@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@9 f_18@@24))
))) (forall ((o2_17@@10 T@Ref) (f_18@@25 T@Field_8759_8706) ) (!  (=> (select (|PolymorphicMapType_16873_22236_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_17@@5))) o2_17@@10 f_18@@25) (= (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@25) o2_17@@10 f_18@@25) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@10 f_18@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@10 f_18@@25))
))) (forall ((o2_17@@11 T@Ref) (f_18@@26 T@Field_8759_53) ) (!  (=> (select (|PolymorphicMapType_16873_22236_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_17@@5))) o2_17@@11 f_18@@26) (= (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@25) o2_17@@11 f_18@@26) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@11 f_18@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@11 f_18@@26))
))) (forall ((o2_17@@12 T@Ref) (f_18@@27 T@Field_22236_22237) ) (!  (=> (select (|PolymorphicMapType_16873_22236_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_17@@5))) o2_17@@12 f_18@@27) (= (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@25) o2_17@@12 f_18@@27) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@12 f_18@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@12 f_18@@27))
))) (forall ((o2_17@@13 T@Ref) (f_18@@28 T@Field_22249_22254) ) (!  (=> (select (|PolymorphicMapType_16873_22236_66401#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_17@@5))) o2_17@@13 f_18@@28) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@25) o2_17@@13 f_18@@28) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@13 f_18@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@22) o2_17@@13 f_18@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (IsPredicateField_8712_8713 pm_f_17@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_16324) (ExhaleHeap@@23 T@PolymorphicMapType_16324) (Mask@@54 T@PolymorphicMapType_16345) (pm_f_17@@6 T@Field_22236_22237) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_8759_8760 Mask@@54 null pm_f_17@@6) (IsPredicateField_8759_8760 pm_f_17@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_17@@14 T@Ref) (f_18@@29 T@Field_19840_1344) ) (!  (=> (select (|PolymorphicMapType_16873_8703_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_17@@6))) o2_17@@14 f_18@@29) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@26) o2_17@@14 f_18@@29) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@14 f_18@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@14 f_18@@29))
)) (forall ((o2_17@@15 T@Ref) (f_18@@30 T@Field_16397_16398) ) (!  (=> (select (|PolymorphicMapType_16873_8705_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_17@@6))) o2_17@@15 f_18@@30) (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@26) o2_17@@15 f_18@@30) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@15 f_18@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@15 f_18@@30))
))) (forall ((o2_17@@16 T@Ref) (f_18@@31 T@Field_16384_53) ) (!  (=> (select (|PolymorphicMapType_16873_8703_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_17@@6))) o2_17@@16 f_18@@31) (= (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@26) o2_17@@16 f_18@@31) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@16 f_18@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@16 f_18@@31))
))) (forall ((o2_17@@17 T@Ref) (f_18@@32 T@Field_8705_8760) ) (!  (=> (select (|PolymorphicMapType_16873_8703_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_17@@6))) o2_17@@17 f_18@@32) (= (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@26) o2_17@@17 f_18@@32) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@17 f_18@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@17 f_18@@32))
))) (forall ((o2_17@@18 T@Ref) (f_18@@33 T@Field_8705_19991) ) (!  (=> (select (|PolymorphicMapType_16873_8703_64305#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_17@@6))) o2_17@@18 f_18@@33) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@26) o2_17@@18 f_18@@33) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@18 f_18@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@18 f_18@@33))
))) (forall ((o2_17@@19 T@Ref) (f_18@@34 T@Field_8712_1344) ) (!  (=> (select (|PolymorphicMapType_16873_19973_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_17@@6))) o2_17@@19 f_18@@34) (= (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@26) o2_17@@19 f_18@@34) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@19 f_18@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@19 f_18@@34))
))) (forall ((o2_17@@20 T@Ref) (f_18@@35 T@Field_8712_8706) ) (!  (=> (select (|PolymorphicMapType_16873_19973_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_17@@6))) o2_17@@20 f_18@@35) (= (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@26) o2_17@@20 f_18@@35) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@20 f_18@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@20 f_18@@35))
))) (forall ((o2_17@@21 T@Ref) (f_18@@36 T@Field_8712_53) ) (!  (=> (select (|PolymorphicMapType_16873_19973_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_17@@6))) o2_17@@21 f_18@@36) (= (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@26) o2_17@@21 f_18@@36) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@21 f_18@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@21 f_18@@36))
))) (forall ((o2_17@@22 T@Ref) (f_18@@37 T@Field_19973_19974) ) (!  (=> (select (|PolymorphicMapType_16873_19973_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_17@@6))) o2_17@@22 f_18@@37) (= (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@26) o2_17@@22 f_18@@37) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@22 f_18@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@22 f_18@@37))
))) (forall ((o2_17@@23 T@Ref) (f_18@@38 T@Field_19986_19991) ) (!  (=> (select (|PolymorphicMapType_16873_19973_65353#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_17@@6))) o2_17@@23 f_18@@38) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@26) o2_17@@23 f_18@@38) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@23 f_18@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@23 f_18@@38))
))) (forall ((o2_17@@24 T@Ref) (f_18@@39 T@Field_8759_1344) ) (!  (=> (select (|PolymorphicMapType_16873_22236_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_17@@6))) o2_17@@24 f_18@@39) (= (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@26) o2_17@@24 f_18@@39) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@24 f_18@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@24 f_18@@39))
))) (forall ((o2_17@@25 T@Ref) (f_18@@40 T@Field_8759_8706) ) (!  (=> (select (|PolymorphicMapType_16873_22236_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_17@@6))) o2_17@@25 f_18@@40) (= (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@26) o2_17@@25 f_18@@40) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@25 f_18@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@25 f_18@@40))
))) (forall ((o2_17@@26 T@Ref) (f_18@@41 T@Field_8759_53) ) (!  (=> (select (|PolymorphicMapType_16873_22236_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_17@@6))) o2_17@@26 f_18@@41) (= (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@26) o2_17@@26 f_18@@41) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@26 f_18@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@26 f_18@@41))
))) (forall ((o2_17@@27 T@Ref) (f_18@@42 T@Field_22236_22237) ) (!  (=> (select (|PolymorphicMapType_16873_22236_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_17@@6))) o2_17@@27 f_18@@42) (= (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@26) o2_17@@27 f_18@@42) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@27 f_18@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@27 f_18@@42))
))) (forall ((o2_17@@28 T@Ref) (f_18@@43 T@Field_22249_22254) ) (!  (=> (select (|PolymorphicMapType_16873_22236_66401#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_17@@6))) o2_17@@28 f_18@@43) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) o2_17@@28 f_18@@43) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@28 f_18@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@23) o2_17@@28 f_18@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (IsPredicateField_8759_8760 pm_f_17@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_16324) (ExhaleHeap@@24 T@PolymorphicMapType_16324) (Mask@@55 T@PolymorphicMapType_16345) (pm_f_17@@7 T@Field_8705_8760) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_8705_8760 Mask@@55 null pm_f_17@@7) (IsPredicateField_8705_62523 pm_f_17@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_17@@29 T@Ref) (f_18@@44 T@Field_19840_1344) ) (!  (=> (select (|PolymorphicMapType_16873_8703_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_17@@7))) o2_17@@29 f_18@@44) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@27) o2_17@@29 f_18@@44) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@29 f_18@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@29 f_18@@44))
)) (forall ((o2_17@@30 T@Ref) (f_18@@45 T@Field_16397_16398) ) (!  (=> (select (|PolymorphicMapType_16873_8705_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_17@@7))) o2_17@@30 f_18@@45) (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@27) o2_17@@30 f_18@@45) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@30 f_18@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@30 f_18@@45))
))) (forall ((o2_17@@31 T@Ref) (f_18@@46 T@Field_16384_53) ) (!  (=> (select (|PolymorphicMapType_16873_8703_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_17@@7))) o2_17@@31 f_18@@46) (= (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@27) o2_17@@31 f_18@@46) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@31 f_18@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@31 f_18@@46))
))) (forall ((o2_17@@32 T@Ref) (f_18@@47 T@Field_8705_8760) ) (!  (=> (select (|PolymorphicMapType_16873_8703_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_17@@7))) o2_17@@32 f_18@@47) (= (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@27) o2_17@@32 f_18@@47) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@32 f_18@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@32 f_18@@47))
))) (forall ((o2_17@@33 T@Ref) (f_18@@48 T@Field_8705_19991) ) (!  (=> (select (|PolymorphicMapType_16873_8703_64305#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_17@@7))) o2_17@@33 f_18@@48) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) o2_17@@33 f_18@@48) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@33 f_18@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@33 f_18@@48))
))) (forall ((o2_17@@34 T@Ref) (f_18@@49 T@Field_8712_1344) ) (!  (=> (select (|PolymorphicMapType_16873_19973_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_17@@7))) o2_17@@34 f_18@@49) (= (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@27) o2_17@@34 f_18@@49) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@34 f_18@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@34 f_18@@49))
))) (forall ((o2_17@@35 T@Ref) (f_18@@50 T@Field_8712_8706) ) (!  (=> (select (|PolymorphicMapType_16873_19973_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_17@@7))) o2_17@@35 f_18@@50) (= (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@27) o2_17@@35 f_18@@50) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@35 f_18@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@35 f_18@@50))
))) (forall ((o2_17@@36 T@Ref) (f_18@@51 T@Field_8712_53) ) (!  (=> (select (|PolymorphicMapType_16873_19973_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_17@@7))) o2_17@@36 f_18@@51) (= (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@27) o2_17@@36 f_18@@51) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@36 f_18@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@36 f_18@@51))
))) (forall ((o2_17@@37 T@Ref) (f_18@@52 T@Field_19973_19974) ) (!  (=> (select (|PolymorphicMapType_16873_19973_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_17@@7))) o2_17@@37 f_18@@52) (= (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@27) o2_17@@37 f_18@@52) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@37 f_18@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@37 f_18@@52))
))) (forall ((o2_17@@38 T@Ref) (f_18@@53 T@Field_19986_19991) ) (!  (=> (select (|PolymorphicMapType_16873_19973_65353#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_17@@7))) o2_17@@38 f_18@@53) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@27) o2_17@@38 f_18@@53) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@38 f_18@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@38 f_18@@53))
))) (forall ((o2_17@@39 T@Ref) (f_18@@54 T@Field_8759_1344) ) (!  (=> (select (|PolymorphicMapType_16873_22236_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_17@@7))) o2_17@@39 f_18@@54) (= (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@27) o2_17@@39 f_18@@54) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@39 f_18@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@39 f_18@@54))
))) (forall ((o2_17@@40 T@Ref) (f_18@@55 T@Field_8759_8706) ) (!  (=> (select (|PolymorphicMapType_16873_22236_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_17@@7))) o2_17@@40 f_18@@55) (= (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@27) o2_17@@40 f_18@@55) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@40 f_18@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@40 f_18@@55))
))) (forall ((o2_17@@41 T@Ref) (f_18@@56 T@Field_8759_53) ) (!  (=> (select (|PolymorphicMapType_16873_22236_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_17@@7))) o2_17@@41 f_18@@56) (= (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@27) o2_17@@41 f_18@@56) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@41 f_18@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@41 f_18@@56))
))) (forall ((o2_17@@42 T@Ref) (f_18@@57 T@Field_22236_22237) ) (!  (=> (select (|PolymorphicMapType_16873_22236_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_17@@7))) o2_17@@42 f_18@@57) (= (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@27) o2_17@@42 f_18@@57) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@42 f_18@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@42 f_18@@57))
))) (forall ((o2_17@@43 T@Ref) (f_18@@58 T@Field_22249_22254) ) (!  (=> (select (|PolymorphicMapType_16873_22236_66401#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_17@@7))) o2_17@@43 f_18@@58) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@27) o2_17@@43 f_18@@58) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@43 f_18@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@24) o2_17@@43 f_18@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (IsPredicateField_8705_62523 pm_f_17@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_16324) (ExhaleHeap@@25 T@PolymorphicMapType_16324) (Mask@@56 T@PolymorphicMapType_16345) (pm_f_17@@8 T@Field_19973_19974) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_8712_8713 Mask@@56 null pm_f_17@@8) (IsWandField_8712_68204 pm_f_17@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_17@@44 T@Ref) (f_18@@59 T@Field_19840_1344) ) (!  (=> (select (|PolymorphicMapType_16873_8703_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_17@@8))) o2_17@@44 f_18@@59) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@28) o2_17@@44 f_18@@59) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@44 f_18@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@44 f_18@@59))
)) (forall ((o2_17@@45 T@Ref) (f_18@@60 T@Field_16397_16398) ) (!  (=> (select (|PolymorphicMapType_16873_8705_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_17@@8))) o2_17@@45 f_18@@60) (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@28) o2_17@@45 f_18@@60) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@45 f_18@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@45 f_18@@60))
))) (forall ((o2_17@@46 T@Ref) (f_18@@61 T@Field_16384_53) ) (!  (=> (select (|PolymorphicMapType_16873_8703_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_17@@8))) o2_17@@46 f_18@@61) (= (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@28) o2_17@@46 f_18@@61) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@46 f_18@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@46 f_18@@61))
))) (forall ((o2_17@@47 T@Ref) (f_18@@62 T@Field_8705_8760) ) (!  (=> (select (|PolymorphicMapType_16873_8703_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_17@@8))) o2_17@@47 f_18@@62) (= (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@28) o2_17@@47 f_18@@62) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@47 f_18@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@47 f_18@@62))
))) (forall ((o2_17@@48 T@Ref) (f_18@@63 T@Field_8705_19991) ) (!  (=> (select (|PolymorphicMapType_16873_8703_64305#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_17@@8))) o2_17@@48 f_18@@63) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@28) o2_17@@48 f_18@@63) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@48 f_18@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@48 f_18@@63))
))) (forall ((o2_17@@49 T@Ref) (f_18@@64 T@Field_8712_1344) ) (!  (=> (select (|PolymorphicMapType_16873_19973_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_17@@8))) o2_17@@49 f_18@@64) (= (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@28) o2_17@@49 f_18@@64) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@49 f_18@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@49 f_18@@64))
))) (forall ((o2_17@@50 T@Ref) (f_18@@65 T@Field_8712_8706) ) (!  (=> (select (|PolymorphicMapType_16873_19973_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_17@@8))) o2_17@@50 f_18@@65) (= (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@28) o2_17@@50 f_18@@65) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@50 f_18@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@50 f_18@@65))
))) (forall ((o2_17@@51 T@Ref) (f_18@@66 T@Field_8712_53) ) (!  (=> (select (|PolymorphicMapType_16873_19973_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_17@@8))) o2_17@@51 f_18@@66) (= (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@28) o2_17@@51 f_18@@66) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@51 f_18@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@51 f_18@@66))
))) (forall ((o2_17@@52 T@Ref) (f_18@@67 T@Field_19973_19974) ) (!  (=> (select (|PolymorphicMapType_16873_19973_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_17@@8))) o2_17@@52 f_18@@67) (= (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@28) o2_17@@52 f_18@@67) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@52 f_18@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@52 f_18@@67))
))) (forall ((o2_17@@53 T@Ref) (f_18@@68 T@Field_19986_19991) ) (!  (=> (select (|PolymorphicMapType_16873_19973_65353#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_17@@8))) o2_17@@53 f_18@@68) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) o2_17@@53 f_18@@68) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@53 f_18@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@53 f_18@@68))
))) (forall ((o2_17@@54 T@Ref) (f_18@@69 T@Field_8759_1344) ) (!  (=> (select (|PolymorphicMapType_16873_22236_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_17@@8))) o2_17@@54 f_18@@69) (= (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@28) o2_17@@54 f_18@@69) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@54 f_18@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@54 f_18@@69))
))) (forall ((o2_17@@55 T@Ref) (f_18@@70 T@Field_8759_8706) ) (!  (=> (select (|PolymorphicMapType_16873_22236_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_17@@8))) o2_17@@55 f_18@@70) (= (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@28) o2_17@@55 f_18@@70) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@55 f_18@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@55 f_18@@70))
))) (forall ((o2_17@@56 T@Ref) (f_18@@71 T@Field_8759_53) ) (!  (=> (select (|PolymorphicMapType_16873_22236_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_17@@8))) o2_17@@56 f_18@@71) (= (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@28) o2_17@@56 f_18@@71) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@56 f_18@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@56 f_18@@71))
))) (forall ((o2_17@@57 T@Ref) (f_18@@72 T@Field_22236_22237) ) (!  (=> (select (|PolymorphicMapType_16873_22236_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_17@@8))) o2_17@@57 f_18@@72) (= (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@28) o2_17@@57 f_18@@72) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@57 f_18@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@57 f_18@@72))
))) (forall ((o2_17@@58 T@Ref) (f_18@@73 T@Field_22249_22254) ) (!  (=> (select (|PolymorphicMapType_16873_22236_66401#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_17@@8))) o2_17@@58 f_18@@73) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@28) o2_17@@58 f_18@@73) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@58 f_18@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@25) o2_17@@58 f_18@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (IsWandField_8712_68204 pm_f_17@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_16324) (ExhaleHeap@@26 T@PolymorphicMapType_16324) (Mask@@57 T@PolymorphicMapType_16345) (pm_f_17@@9 T@Field_22236_22237) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_8759_8760 Mask@@57 null pm_f_17@@9) (IsWandField_8759_67847 pm_f_17@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_17@@59 T@Ref) (f_18@@74 T@Field_19840_1344) ) (!  (=> (select (|PolymorphicMapType_16873_8703_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_17@@9))) o2_17@@59 f_18@@74) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@29) o2_17@@59 f_18@@74) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@59 f_18@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@59 f_18@@74))
)) (forall ((o2_17@@60 T@Ref) (f_18@@75 T@Field_16397_16398) ) (!  (=> (select (|PolymorphicMapType_16873_8705_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_17@@9))) o2_17@@60 f_18@@75) (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@29) o2_17@@60 f_18@@75) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@60 f_18@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@60 f_18@@75))
))) (forall ((o2_17@@61 T@Ref) (f_18@@76 T@Field_16384_53) ) (!  (=> (select (|PolymorphicMapType_16873_8703_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_17@@9))) o2_17@@61 f_18@@76) (= (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@29) o2_17@@61 f_18@@76) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@61 f_18@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@61 f_18@@76))
))) (forall ((o2_17@@62 T@Ref) (f_18@@77 T@Field_8705_8760) ) (!  (=> (select (|PolymorphicMapType_16873_8703_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_17@@9))) o2_17@@62 f_18@@77) (= (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@29) o2_17@@62 f_18@@77) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@62 f_18@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@62 f_18@@77))
))) (forall ((o2_17@@63 T@Ref) (f_18@@78 T@Field_8705_19991) ) (!  (=> (select (|PolymorphicMapType_16873_8703_64305#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_17@@9))) o2_17@@63 f_18@@78) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@29) o2_17@@63 f_18@@78) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@63 f_18@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@63 f_18@@78))
))) (forall ((o2_17@@64 T@Ref) (f_18@@79 T@Field_8712_1344) ) (!  (=> (select (|PolymorphicMapType_16873_19973_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_17@@9))) o2_17@@64 f_18@@79) (= (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@29) o2_17@@64 f_18@@79) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@64 f_18@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@64 f_18@@79))
))) (forall ((o2_17@@65 T@Ref) (f_18@@80 T@Field_8712_8706) ) (!  (=> (select (|PolymorphicMapType_16873_19973_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_17@@9))) o2_17@@65 f_18@@80) (= (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@29) o2_17@@65 f_18@@80) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@65 f_18@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@65 f_18@@80))
))) (forall ((o2_17@@66 T@Ref) (f_18@@81 T@Field_8712_53) ) (!  (=> (select (|PolymorphicMapType_16873_19973_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_17@@9))) o2_17@@66 f_18@@81) (= (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@29) o2_17@@66 f_18@@81) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@66 f_18@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@66 f_18@@81))
))) (forall ((o2_17@@67 T@Ref) (f_18@@82 T@Field_19973_19974) ) (!  (=> (select (|PolymorphicMapType_16873_19973_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_17@@9))) o2_17@@67 f_18@@82) (= (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@29) o2_17@@67 f_18@@82) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@67 f_18@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@67 f_18@@82))
))) (forall ((o2_17@@68 T@Ref) (f_18@@83 T@Field_19986_19991) ) (!  (=> (select (|PolymorphicMapType_16873_19973_65353#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_17@@9))) o2_17@@68 f_18@@83) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@29) o2_17@@68 f_18@@83) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@68 f_18@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@68 f_18@@83))
))) (forall ((o2_17@@69 T@Ref) (f_18@@84 T@Field_8759_1344) ) (!  (=> (select (|PolymorphicMapType_16873_22236_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_17@@9))) o2_17@@69 f_18@@84) (= (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@29) o2_17@@69 f_18@@84) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@69 f_18@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@69 f_18@@84))
))) (forall ((o2_17@@70 T@Ref) (f_18@@85 T@Field_8759_8706) ) (!  (=> (select (|PolymorphicMapType_16873_22236_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_17@@9))) o2_17@@70 f_18@@85) (= (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@29) o2_17@@70 f_18@@85) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@70 f_18@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@70 f_18@@85))
))) (forall ((o2_17@@71 T@Ref) (f_18@@86 T@Field_8759_53) ) (!  (=> (select (|PolymorphicMapType_16873_22236_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_17@@9))) o2_17@@71 f_18@@86) (= (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@29) o2_17@@71 f_18@@86) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@71 f_18@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@71 f_18@@86))
))) (forall ((o2_17@@72 T@Ref) (f_18@@87 T@Field_22236_22237) ) (!  (=> (select (|PolymorphicMapType_16873_22236_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_17@@9))) o2_17@@72 f_18@@87) (= (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@29) o2_17@@72 f_18@@87) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@72 f_18@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@72 f_18@@87))
))) (forall ((o2_17@@73 T@Ref) (f_18@@88 T@Field_22249_22254) ) (!  (=> (select (|PolymorphicMapType_16873_22236_66401#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_17@@9))) o2_17@@73 f_18@@88) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) o2_17@@73 f_18@@88) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@73 f_18@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@26) o2_17@@73 f_18@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (IsWandField_8759_67847 pm_f_17@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_16324) (ExhaleHeap@@27 T@PolymorphicMapType_16324) (Mask@@58 T@PolymorphicMapType_16345) (pm_f_17@@10 T@Field_8705_8760) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_8705_8760 Mask@@58 null pm_f_17@@10) (IsWandField_8705_67490 pm_f_17@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_17@@74 T@Ref) (f_18@@89 T@Field_19840_1344) ) (!  (=> (select (|PolymorphicMapType_16873_8703_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_17@@10))) o2_17@@74 f_18@@89) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@30) o2_17@@74 f_18@@89) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@74 f_18@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@74 f_18@@89))
)) (forall ((o2_17@@75 T@Ref) (f_18@@90 T@Field_16397_16398) ) (!  (=> (select (|PolymorphicMapType_16873_8705_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_17@@10))) o2_17@@75 f_18@@90) (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@30) o2_17@@75 f_18@@90) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@75 f_18@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@75 f_18@@90))
))) (forall ((o2_17@@76 T@Ref) (f_18@@91 T@Field_16384_53) ) (!  (=> (select (|PolymorphicMapType_16873_8703_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_17@@10))) o2_17@@76 f_18@@91) (= (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@30) o2_17@@76 f_18@@91) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@76 f_18@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@76 f_18@@91))
))) (forall ((o2_17@@77 T@Ref) (f_18@@92 T@Field_8705_8760) ) (!  (=> (select (|PolymorphicMapType_16873_8703_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_17@@10))) o2_17@@77 f_18@@92) (= (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@30) o2_17@@77 f_18@@92) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@77 f_18@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@77 f_18@@92))
))) (forall ((o2_17@@78 T@Ref) (f_18@@93 T@Field_8705_19991) ) (!  (=> (select (|PolymorphicMapType_16873_8703_64305#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_17@@10))) o2_17@@78 f_18@@93) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) o2_17@@78 f_18@@93) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@78 f_18@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@78 f_18@@93))
))) (forall ((o2_17@@79 T@Ref) (f_18@@94 T@Field_8712_1344) ) (!  (=> (select (|PolymorphicMapType_16873_19973_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_17@@10))) o2_17@@79 f_18@@94) (= (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@30) o2_17@@79 f_18@@94) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@79 f_18@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@79 f_18@@94))
))) (forall ((o2_17@@80 T@Ref) (f_18@@95 T@Field_8712_8706) ) (!  (=> (select (|PolymorphicMapType_16873_19973_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_17@@10))) o2_17@@80 f_18@@95) (= (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@30) o2_17@@80 f_18@@95) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@80 f_18@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@80 f_18@@95))
))) (forall ((o2_17@@81 T@Ref) (f_18@@96 T@Field_8712_53) ) (!  (=> (select (|PolymorphicMapType_16873_19973_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_17@@10))) o2_17@@81 f_18@@96) (= (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@30) o2_17@@81 f_18@@96) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@81 f_18@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@81 f_18@@96))
))) (forall ((o2_17@@82 T@Ref) (f_18@@97 T@Field_19973_19974) ) (!  (=> (select (|PolymorphicMapType_16873_19973_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_17@@10))) o2_17@@82 f_18@@97) (= (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@30) o2_17@@82 f_18@@97) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@82 f_18@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@82 f_18@@97))
))) (forall ((o2_17@@83 T@Ref) (f_18@@98 T@Field_19986_19991) ) (!  (=> (select (|PolymorphicMapType_16873_19973_65353#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_17@@10))) o2_17@@83 f_18@@98) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@30) o2_17@@83 f_18@@98) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@83 f_18@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@83 f_18@@98))
))) (forall ((o2_17@@84 T@Ref) (f_18@@99 T@Field_8759_1344) ) (!  (=> (select (|PolymorphicMapType_16873_22236_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_17@@10))) o2_17@@84 f_18@@99) (= (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@30) o2_17@@84 f_18@@99) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@84 f_18@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@84 f_18@@99))
))) (forall ((o2_17@@85 T@Ref) (f_18@@100 T@Field_8759_8706) ) (!  (=> (select (|PolymorphicMapType_16873_22236_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_17@@10))) o2_17@@85 f_18@@100) (= (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@30) o2_17@@85 f_18@@100) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@85 f_18@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@85 f_18@@100))
))) (forall ((o2_17@@86 T@Ref) (f_18@@101 T@Field_8759_53) ) (!  (=> (select (|PolymorphicMapType_16873_22236_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_17@@10))) o2_17@@86 f_18@@101) (= (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@30) o2_17@@86 f_18@@101) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@86 f_18@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@86 f_18@@101))
))) (forall ((o2_17@@87 T@Ref) (f_18@@102 T@Field_22236_22237) ) (!  (=> (select (|PolymorphicMapType_16873_22236_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_17@@10))) o2_17@@87 f_18@@102) (= (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@30) o2_17@@87 f_18@@102) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@87 f_18@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@87 f_18@@102))
))) (forall ((o2_17@@88 T@Ref) (f_18@@103 T@Field_22249_22254) ) (!  (=> (select (|PolymorphicMapType_16873_22236_66401#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_17@@10))) o2_17@@88 f_18@@103) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@30) o2_17@@88 f_18@@103) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@88 f_18@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@27) o2_17@@88 f_18@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (IsWandField_8705_67490 pm_f_17@@10))
)))
(assert (forall ((a_2@@3 T@ArrayDomainType) ) (! (= (getPredWandId_8712_8713 (array_1 a_2@@3)) 0)
 :qid |stdinbpl.245:15|
 :skolemid |25|
 :pattern ( (array_1 a_2@@3))
)))
(assert (forall ((root@@3 T@Ref) ) (! (= (getPredWandId_8759_8760 (tree_1 root@@3)) 1)
 :qid |stdinbpl.344:15|
 :skolemid |38|
 :pattern ( (tree_1 root@@3))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_16324) (Heap1Heap T@PolymorphicMapType_16324) (a_2@@4 T@ArrayDomainType) ) (!  (=> (and (=  (and (and (<= 0 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4))) (< (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4)) (len a_2@@4))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4))) (< (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4)) (len a_2@@4))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4))) (< (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4)) (len a_2@@4))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap2Heap) (loc a_2@@4 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4))) val) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap1Heap) (loc a_2@@4 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4))) val)))) (= (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4)))
 :qid |stdinbpl.271:15|
 :skolemid |29|
 :pattern ( (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_16324) (o_36 T@Ref) (f_29 T@Field_19986_19991) (v T@PolymorphicMapType_16873) ) (! (succHeap Heap@@31 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@31) (store (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@31) o_36 f_29 v) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@31) (store (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@31) o_36 f_29 v) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_16324) (o_36@@0 T@Ref) (f_29@@0 T@Field_19973_19974) (v@@0 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@32) (store (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@32) o_36@@0 f_29@@0 v@@0) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@32) (store (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@32) o_36@@0 f_29@@0 v@@0) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_16324) (o_36@@1 T@Ref) (f_29@@1 T@Field_8712_1344) (v@@1 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@33) (store (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@33) o_36@@1 f_29@@1 v@@1) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@33) (store (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@33) o_36@@1 f_29@@1 v@@1) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_16324) (o_36@@2 T@Ref) (f_29@@2 T@Field_8712_8706) (v@@2 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@34) (store (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@34) o_36@@2 f_29@@2 v@@2) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@34) (store (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@34) o_36@@2 f_29@@2 v@@2) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_16324) (o_36@@3 T@Ref) (f_29@@3 T@Field_8712_53) (v@@3 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@35) (store (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@35) o_36@@3 f_29@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@35) (store (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@35) o_36@@3 f_29@@3 v@@3)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_16324) (o_36@@4 T@Ref) (f_29@@4 T@Field_22249_22254) (v@@4 T@PolymorphicMapType_16873) ) (! (succHeap Heap@@36 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@36) (store (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@36) o_36@@4 f_29@@4 v@@4) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@36) (store (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@36) o_36@@4 f_29@@4 v@@4) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_16324) (o_36@@5 T@Ref) (f_29@@5 T@Field_22236_22237) (v@@5 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@37) (store (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@37) o_36@@5 f_29@@5 v@@5) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@37) (store (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@37) o_36@@5 f_29@@5 v@@5) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_16324) (o_36@@6 T@Ref) (f_29@@6 T@Field_8759_1344) (v@@6 Int) ) (! (succHeap Heap@@38 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@38) (store (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@38) o_36@@6 f_29@@6 v@@6) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@38) (store (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@38) o_36@@6 f_29@@6 v@@6) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_16324) (o_36@@7 T@Ref) (f_29@@7 T@Field_8759_8706) (v@@7 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@39) (store (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@39) o_36@@7 f_29@@7 v@@7) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@39) (store (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@39) o_36@@7 f_29@@7 v@@7) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_16324) (o_36@@8 T@Ref) (f_29@@8 T@Field_8759_53) (v@@8 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@40) (store (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@40) o_36@@8 f_29@@8 v@@8) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@40) (store (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@40) o_36@@8 f_29@@8 v@@8) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_16324) (o_36@@9 T@Ref) (f_29@@9 T@Field_8705_19991) (v@@9 T@PolymorphicMapType_16873) ) (! (succHeap Heap@@41 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@41) (store (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@41) o_36@@9 f_29@@9 v@@9) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@41) (store (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@41) o_36@@9 f_29@@9 v@@9) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_16324) (o_36@@10 T@Ref) (f_29@@10 T@Field_8705_8760) (v@@10 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@42) (store (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@42) o_36@@10 f_29@@10 v@@10) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@42) (store (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@42) o_36@@10 f_29@@10 v@@10) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_16324) (o_36@@11 T@Ref) (f_29@@11 T@Field_19840_1344) (v@@11 Int) ) (! (succHeap Heap@@43 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@43) (store (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@43) o_36@@11 f_29@@11 v@@11) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@43) (store (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@43) o_36@@11 f_29@@11 v@@11) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_16324) (o_36@@12 T@Ref) (f_29@@12 T@Field_16397_16398) (v@@12 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@44) (store (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@44) o_36@@12 f_29@@12 v@@12) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@44) (store (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@44) o_36@@12 f_29@@12 v@@12) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_16324) (o_36@@13 T@Ref) (f_29@@13 T@Field_16384_53) (v@@13 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_16324 (store (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@45) o_36@@13 f_29@@13 v@@13) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (store (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@45) o_36@@13 f_29@@13 v@@13) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@45)))
)))
(assert (forall ((a_2@@5 T@ArrayDomainType) ) (! (= (PredicateMaskField_8712 (array_1 a_2@@5)) (|array#sm| a_2@@5))
 :qid |stdinbpl.237:15|
 :skolemid |23|
 :pattern ( (PredicateMaskField_8712 (array_1 a_2@@5)))
)))
(assert (forall ((root@@4 T@Ref) ) (! (= (PredicateMaskField_8759 (tree_1 root@@4)) (|tree#sm| root@@4))
 :qid |stdinbpl.336:15|
 :skolemid |36|
 :pattern ( (PredicateMaskField_8759 (tree_1 root@@4)))
)))
(assert (forall ((o_36@@14 T@Ref) (f_50 T@Field_16397_16398) (Heap@@46 T@PolymorphicMapType_16324) ) (!  (=> (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@46) o_36@@14 $allocated) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@46) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@46) o_36@@14 f_50) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@46) o_36@@14 f_50))
)))
(assert (forall ((p@@3 T@Field_19973_19974) (v_1@@2 T@FrameType) (q T@Field_19973_19974) (w@@2 T@FrameType) (r T@Field_19973_19974) (u T@FrameType) ) (!  (=> (and (InsidePredicate_19973_19973 p@@3 v_1@@2 q w@@2) (InsidePredicate_19973_19973 q w@@2 r u)) (InsidePredicate_19973_19973 p@@3 v_1@@2 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19973_19973 p@@3 v_1@@2 q w@@2) (InsidePredicate_19973_19973 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_19973_19974) (v_1@@3 T@FrameType) (q@@0 T@Field_19973_19974) (w@@3 T@FrameType) (r@@0 T@Field_8705_8760) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_19973_19973 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_19973_16384 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_19973_16384 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19973_19973 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_19973_16384 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_19973_19974) (v_1@@4 T@FrameType) (q@@1 T@Field_19973_19974) (w@@4 T@FrameType) (r@@1 T@Field_22236_22237) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_19973_19973 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_19973_8759 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_19973_8759 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19973_19973 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_19973_8759 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_19973_19974) (v_1@@5 T@FrameType) (q@@2 T@Field_8705_8760) (w@@5 T@FrameType) (r@@2 T@Field_19973_19974) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_19973_16384 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16384_19973 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_19973_19973 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19973_16384 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_16384_19973 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_19973_19974) (v_1@@6 T@FrameType) (q@@3 T@Field_8705_8760) (w@@6 T@FrameType) (r@@3 T@Field_8705_8760) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_19973_16384 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16384_16384 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_19973_16384 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19973_16384 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_16384_16384 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_19973_19974) (v_1@@7 T@FrameType) (q@@4 T@Field_8705_8760) (w@@7 T@FrameType) (r@@4 T@Field_22236_22237) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_19973_16384 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16384_8759 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_19973_8759 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19973_16384 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_16384_8759 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_19973_19974) (v_1@@8 T@FrameType) (q@@5 T@Field_22236_22237) (w@@8 T@FrameType) (r@@5 T@Field_19973_19974) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_19973_8759 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_8759_19973 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_19973_19973 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19973_8759 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_8759_19973 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_19973_19974) (v_1@@9 T@FrameType) (q@@6 T@Field_22236_22237) (w@@9 T@FrameType) (r@@6 T@Field_8705_8760) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_19973_8759 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_8759_16384 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_19973_16384 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19973_8759 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_8759_16384 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_19973_19974) (v_1@@10 T@FrameType) (q@@7 T@Field_22236_22237) (w@@10 T@FrameType) (r@@7 T@Field_22236_22237) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_19973_8759 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_8759_8759 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_19973_8759 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19973_8759 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_8759_8759 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_8705_8760) (v_1@@11 T@FrameType) (q@@8 T@Field_19973_19974) (w@@11 T@FrameType) (r@@8 T@Field_19973_19974) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_16384_19973 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_19973_19973 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_16384_19973 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16384_19973 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_19973_19973 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_8705_8760) (v_1@@12 T@FrameType) (q@@9 T@Field_19973_19974) (w@@12 T@FrameType) (r@@9 T@Field_8705_8760) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_16384_19973 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_19973_16384 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_16384_16384 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16384_19973 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_19973_16384 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_8705_8760) (v_1@@13 T@FrameType) (q@@10 T@Field_19973_19974) (w@@13 T@FrameType) (r@@10 T@Field_22236_22237) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_16384_19973 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_19973_8759 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_16384_8759 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16384_19973 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_19973_8759 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_8705_8760) (v_1@@14 T@FrameType) (q@@11 T@Field_8705_8760) (w@@14 T@FrameType) (r@@11 T@Field_19973_19974) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_16384_16384 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16384_19973 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_16384_19973 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16384_16384 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_16384_19973 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_8705_8760) (v_1@@15 T@FrameType) (q@@12 T@Field_8705_8760) (w@@15 T@FrameType) (r@@12 T@Field_8705_8760) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_16384_16384 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16384_16384 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_16384_16384 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16384_16384 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_16384_16384 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_8705_8760) (v_1@@16 T@FrameType) (q@@13 T@Field_8705_8760) (w@@16 T@FrameType) (r@@13 T@Field_22236_22237) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_16384_16384 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16384_8759 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_16384_8759 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16384_16384 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_16384_8759 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_8705_8760) (v_1@@17 T@FrameType) (q@@14 T@Field_22236_22237) (w@@17 T@FrameType) (r@@14 T@Field_19973_19974) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_16384_8759 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_8759_19973 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_16384_19973 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16384_8759 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_8759_19973 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_8705_8760) (v_1@@18 T@FrameType) (q@@15 T@Field_22236_22237) (w@@18 T@FrameType) (r@@15 T@Field_8705_8760) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_16384_8759 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_8759_16384 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_16384_16384 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16384_8759 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_8759_16384 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_8705_8760) (v_1@@19 T@FrameType) (q@@16 T@Field_22236_22237) (w@@19 T@FrameType) (r@@16 T@Field_22236_22237) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_16384_8759 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_8759_8759 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_16384_8759 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16384_8759 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_8759_8759 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_22236_22237) (v_1@@20 T@FrameType) (q@@17 T@Field_19973_19974) (w@@20 T@FrameType) (r@@17 T@Field_19973_19974) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_8759_19973 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_19973_19973 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_8759_19973 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8759_19973 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_19973_19973 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_22236_22237) (v_1@@21 T@FrameType) (q@@18 T@Field_19973_19974) (w@@21 T@FrameType) (r@@18 T@Field_8705_8760) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_8759_19973 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_19973_16384 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_8759_16384 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8759_19973 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_19973_16384 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_22236_22237) (v_1@@22 T@FrameType) (q@@19 T@Field_19973_19974) (w@@22 T@FrameType) (r@@19 T@Field_22236_22237) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_8759_19973 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_19973_8759 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_8759_8759 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8759_19973 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_19973_8759 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_22236_22237) (v_1@@23 T@FrameType) (q@@20 T@Field_8705_8760) (w@@23 T@FrameType) (r@@20 T@Field_19973_19974) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_8759_16384 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16384_19973 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_8759_19973 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8759_16384 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_16384_19973 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_22236_22237) (v_1@@24 T@FrameType) (q@@21 T@Field_8705_8760) (w@@24 T@FrameType) (r@@21 T@Field_8705_8760) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_8759_16384 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16384_16384 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_8759_16384 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8759_16384 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_16384_16384 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_22236_22237) (v_1@@25 T@FrameType) (q@@22 T@Field_8705_8760) (w@@25 T@FrameType) (r@@22 T@Field_22236_22237) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_8759_16384 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16384_8759 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_8759_8759 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8759_16384 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_16384_8759 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_22236_22237) (v_1@@26 T@FrameType) (q@@23 T@Field_22236_22237) (w@@26 T@FrameType) (r@@23 T@Field_19973_19974) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_8759_8759 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_8759_19973 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_8759_19973 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8759_8759 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_8759_19973 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_22236_22237) (v_1@@27 T@FrameType) (q@@24 T@Field_22236_22237) (w@@27 T@FrameType) (r@@24 T@Field_8705_8760) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_8759_8759 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_8759_16384 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_8759_16384 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8759_8759 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_8759_16384 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_22236_22237) (v_1@@28 T@FrameType) (q@@25 T@Field_22236_22237) (w@@28 T@FrameType) (r@@25 T@Field_22236_22237) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_8759_8759 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_8759_8759 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_8759_8759 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8759_8759 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_8759_8759 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((a_2@@6 T@ArrayDomainType) (i Int) (j Int) ) (!  (=> (and (>= i 0) (and (>= j 0) (and (< i (len a_2@@6)) (and (< j (len a_2@@6)) (not (= i j)))))) (not (= (loc a_2@@6 i) (loc a_2@@6 j))))
 :qid |stdinbpl.211:15|
 :skolemid |22|
 :pattern ( (loc a_2@@6 i) (loc a_2@@6 j))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a_2@@7 () T@ArrayDomainType)
(declare-fun Heap@@47 () T@PolymorphicMapType_16324)
(set-info :boogie-vc-id |array#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((i_2 Int) (i_2_2 Int) ) (!  (=> (and (and (and (and (not (= i_2 i_2_2)) (and (<= 0 i_2) (< i_2 (len a_2@@7)))) (and (<= 0 i_2_2) (< i_2_2 (len a_2@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@7 i_2) (loc a_2@@7 i_2_2))))
 :qid |stdinbpl.294:15|
 :skolemid |30|
)))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@47 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 4) 1) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
