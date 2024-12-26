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
(declare-fun left () T@Field_16397_16398)
(declare-fun right_1 () T@Field_16397_16398)
(declare-fun succHeap (T@PolymorphicMapType_16324 T@PolymorphicMapType_16324) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_16324 T@PolymorphicMapType_16324) Bool)
(declare-fun state (T@PolymorphicMapType_16324 T@PolymorphicMapType_16345) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_16345) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_16873)
(declare-sort T@ArrayDomainType 0)
(declare-fun array (T@ArrayDomainType) T@Field_19973_19974)
(declare-fun IsPredicateField_8712_8713 (T@Field_19973_19974) Bool)
(declare-fun tree (T@Ref) T@Field_22236_22237)
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
(declare-fun len_1 (T@ArrayDomainType) Int)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun InsidePredicate_19973_16384 (T@Field_19973_19974 T@FrameType T@Field_8705_8760 T@FrameType) Bool)
(declare-fun InsidePredicate_19973_8759 (T@Field_19973_19974 T@FrameType T@Field_22236_22237 T@FrameType) Bool)
(declare-fun InsidePredicate_16384_19973 (T@Field_8705_8760 T@FrameType T@Field_19973_19974 T@FrameType) Bool)
(declare-fun InsidePredicate_16384_8759 (T@Field_8705_8760 T@FrameType T@Field_22236_22237 T@FrameType) Bool)
(declare-fun InsidePredicate_8759_19973 (T@Field_22236_22237 T@FrameType T@Field_19973_19974 T@FrameType) Bool)
(declare-fun InsidePredicate_8759_16384 (T@Field_22236_22237 T@FrameType T@Field_8705_8760 T@FrameType) Bool)
(assert (distinct left right_1)
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
(assert (forall ((a_2 T@ArrayDomainType) ) (! (IsPredicateField_8712_8713 (array a_2))
 :qid |stdinbpl.241:15|
 :skolemid |24|
 :pattern ( (array a_2))
)))
(assert (forall ((root T@Ref) ) (! (IsPredicateField_8759_8760 (tree root))
 :qid |stdinbpl.340:15|
 :skolemid |37|
 :pattern ( (tree root))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_16324) (a_2@@0 T@ArrayDomainType) ) (! (|array#everUsed_8712| (array a_2@@0))
 :qid |stdinbpl.260:15|
 :skolemid |28|
 :pattern ( (|array#trigger_8712| Heap@@0 (array a_2@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_16324) (root@@0 T@Ref) ) (! (|tree#everUsed_8759| (tree root@@0))
 :qid |stdinbpl.359:15|
 :skolemid |41|
 :pattern ( (|tree#trigger_8759| Heap@@1 (tree root@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_16324) (ExhaleHeap T@PolymorphicMapType_16324) (Mask@@0 T@PolymorphicMapType_16345) (pm_f_25 T@Field_19973_19974) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8712_8713 Mask@@0 null pm_f_25) (IsPredicateField_8712_8713 pm_f_25)) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@2) null (PredicateMaskField_8712 pm_f_25)) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap) null (PredicateMaskField_8712 pm_f_25)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_8712_8713 pm_f_25) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap) null (PredicateMaskField_8712 pm_f_25)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_16324) (ExhaleHeap@@0 T@PolymorphicMapType_16324) (Mask@@1 T@PolymorphicMapType_16345) (pm_f_25@@0 T@Field_22236_22237) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8759_8760 Mask@@1 null pm_f_25@@0) (IsPredicateField_8759_8760 pm_f_25@@0)) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@3) null (PredicateMaskField_8759 pm_f_25@@0)) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@0) null (PredicateMaskField_8759 pm_f_25@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_8759_8760 pm_f_25@@0) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@0) null (PredicateMaskField_8759 pm_f_25@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_16324) (ExhaleHeap@@1 T@PolymorphicMapType_16324) (Mask@@2 T@PolymorphicMapType_16345) (pm_f_25@@1 T@Field_8705_8760) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8705_8760 Mask@@2 null pm_f_25@@1) (IsPredicateField_8705_62523 pm_f_25@@1)) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@4) null (PredicateMaskField_8705 pm_f_25@@1)) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@1) null (PredicateMaskField_8705 pm_f_25@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_8705_62523 pm_f_25@@1) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@1) null (PredicateMaskField_8705 pm_f_25@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_16324) (ExhaleHeap@@2 T@PolymorphicMapType_16324) (Mask@@3 T@PolymorphicMapType_16345) (pm_f_25@@2 T@Field_19973_19974) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8712_8713 Mask@@3 null pm_f_25@@2) (IsWandField_8712_68204 pm_f_25@@2)) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@5) null (WandMaskField_8712 pm_f_25@@2)) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@2) null (WandMaskField_8712 pm_f_25@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_8712_68204 pm_f_25@@2) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@2) null (WandMaskField_8712 pm_f_25@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_16324) (ExhaleHeap@@3 T@PolymorphicMapType_16324) (Mask@@4 T@PolymorphicMapType_16345) (pm_f_25@@3 T@Field_22236_22237) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_8759_8760 Mask@@4 null pm_f_25@@3) (IsWandField_8759_67847 pm_f_25@@3)) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@6) null (WandMaskField_8759 pm_f_25@@3)) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@3) null (WandMaskField_8759 pm_f_25@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_8759_67847 pm_f_25@@3) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@3) null (WandMaskField_8759 pm_f_25@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_16324) (ExhaleHeap@@4 T@PolymorphicMapType_16324) (Mask@@5 T@PolymorphicMapType_16345) (pm_f_25@@4 T@Field_8705_8760) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8705_8760 Mask@@5 null pm_f_25@@4) (IsWandField_8705_67490 pm_f_25@@4)) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@7) null (WandMaskField_8705 pm_f_25@@4)) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@4) null (WandMaskField_8705 pm_f_25@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_8705_67490 pm_f_25@@4) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@4) null (WandMaskField_8705 pm_f_25@@4)))
)))
(assert (forall ((a_2@@1 T@ArrayDomainType) (a2 T@ArrayDomainType) ) (!  (=> (= (array a_2@@1) (array a2)) (= a_2@@1 a2))
 :qid |stdinbpl.251:15|
 :skolemid |26|
 :pattern ( (array a_2@@1) (array a2))
)))
(assert (forall ((a_2@@2 T@ArrayDomainType) (a2@@0 T@ArrayDomainType) ) (!  (=> (= (|array#sm| a_2@@2) (|array#sm| a2@@0)) (= a_2@@2 a2@@0))
 :qid |stdinbpl.255:15|
 :skolemid |27|
 :pattern ( (|array#sm| a_2@@2) (|array#sm| a2@@0))
)))
(assert (forall ((root@@1 T@Ref) (root2 T@Ref) ) (!  (=> (= (tree root@@1) (tree root2)) (= root@@1 root2))
 :qid |stdinbpl.350:15|
 :skolemid |39|
 :pattern ( (tree root@@1) (tree root2))
)))
(assert (forall ((root@@2 T@Ref) (root2@@0 T@Ref) ) (!  (=> (= (|tree#sm| root@@2) (|tree#sm| root2@@0)) (= root@@2 root2@@0))
 :qid |stdinbpl.354:15|
 :skolemid |40|
 :pattern ( (|tree#sm| root@@2) (|tree#sm| root2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_16324) (ExhaleHeap@@5 T@PolymorphicMapType_16324) (Mask@@6 T@PolymorphicMapType_16345) (o_50 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@8) o_50 $allocated) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@5) o_50 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@5) o_50 $allocated))
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
(assert  (not (IsPredicateField_8705_8706 left)))
(assert  (not (IsWandField_8705_8706 left)))
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
(assert (forall ((Heap@@10 T@PolymorphicMapType_16324) (ExhaleHeap@@7 T@PolymorphicMapType_16324) (Mask@@38 T@PolymorphicMapType_16345) (o_50@@0 T@Ref) (f_51 T@Field_19986_19991) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_8712_62278 Mask@@38 o_50@@0 f_51) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@10) o_50@@0 f_51) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@7) o_50@@0 f_51))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@7) o_50@@0 f_51))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_16324) (ExhaleHeap@@8 T@PolymorphicMapType_16324) (Mask@@39 T@PolymorphicMapType_16345) (o_50@@1 T@Ref) (f_51@@0 T@Field_8712_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_8712_53 Mask@@39 o_50@@1 f_51@@0) (= (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@11) o_50@@1 f_51@@0) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@8) o_50@@1 f_51@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@8) o_50@@1 f_51@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_16324) (ExhaleHeap@@9 T@PolymorphicMapType_16324) (Mask@@40 T@PolymorphicMapType_16345) (o_50@@2 T@Ref) (f_51@@1 T@Field_19973_19974) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_8712_8713 Mask@@40 o_50@@2 f_51@@1) (= (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@12) o_50@@2 f_51@@1) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@9) o_50@@2 f_51@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@9) o_50@@2 f_51@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_16324) (ExhaleHeap@@10 T@PolymorphicMapType_16324) (Mask@@41 T@PolymorphicMapType_16345) (o_50@@3 T@Ref) (f_51@@2 T@Field_8712_1344) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_8712_1344 Mask@@41 o_50@@3 f_51@@2) (= (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@13) o_50@@3 f_51@@2) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@10) o_50@@3 f_51@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@10) o_50@@3 f_51@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_16324) (ExhaleHeap@@11 T@PolymorphicMapType_16324) (Mask@@42 T@PolymorphicMapType_16345) (o_50@@4 T@Ref) (f_51@@3 T@Field_8712_8706) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_8712_8706 Mask@@42 o_50@@4 f_51@@3) (= (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@14) o_50@@4 f_51@@3) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@11) o_50@@4 f_51@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@11) o_50@@4 f_51@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_16324) (ExhaleHeap@@12 T@PolymorphicMapType_16324) (Mask@@43 T@PolymorphicMapType_16345) (o_50@@5 T@Ref) (f_51@@4 T@Field_22249_22254) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_8759_61180 Mask@@43 o_50@@5 f_51@@4) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@15) o_50@@5 f_51@@4) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@12) o_50@@5 f_51@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@12) o_50@@5 f_51@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_16324) (ExhaleHeap@@13 T@PolymorphicMapType_16324) (Mask@@44 T@PolymorphicMapType_16345) (o_50@@6 T@Ref) (f_51@@5 T@Field_8759_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_8759_53 Mask@@44 o_50@@6 f_51@@5) (= (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@16) o_50@@6 f_51@@5) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@13) o_50@@6 f_51@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@13) o_50@@6 f_51@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_16324) (ExhaleHeap@@14 T@PolymorphicMapType_16324) (Mask@@45 T@PolymorphicMapType_16345) (o_50@@7 T@Ref) (f_51@@6 T@Field_22236_22237) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_8759_8760 Mask@@45 o_50@@7 f_51@@6) (= (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@17) o_50@@7 f_51@@6) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@14) o_50@@7 f_51@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@14) o_50@@7 f_51@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_16324) (ExhaleHeap@@15 T@PolymorphicMapType_16324) (Mask@@46 T@PolymorphicMapType_16345) (o_50@@8 T@Ref) (f_51@@7 T@Field_8759_1344) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_8759_1344 Mask@@46 o_50@@8 f_51@@7) (= (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@18) o_50@@8 f_51@@7) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@15) o_50@@8 f_51@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@15) o_50@@8 f_51@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_16324) (ExhaleHeap@@16 T@PolymorphicMapType_16324) (Mask@@47 T@PolymorphicMapType_16345) (o_50@@9 T@Ref) (f_51@@8 T@Field_8759_8706) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_8759_8706 Mask@@47 o_50@@9 f_51@@8) (= (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@19) o_50@@9 f_51@@8) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@16) o_50@@9 f_51@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@16) o_50@@9 f_51@@8))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_16324) (ExhaleHeap@@17 T@PolymorphicMapType_16324) (Mask@@48 T@PolymorphicMapType_16345) (o_50@@10 T@Ref) (f_51@@9 T@Field_8705_19991) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_8705_60039 Mask@@48 o_50@@10 f_51@@9) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@20) o_50@@10 f_51@@9) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@17) o_50@@10 f_51@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@17) o_50@@10 f_51@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_16324) (ExhaleHeap@@18 T@PolymorphicMapType_16324) (Mask@@49 T@PolymorphicMapType_16345) (o_50@@11 T@Ref) (f_51@@10 T@Field_16384_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_8705_53 Mask@@49 o_50@@11 f_51@@10) (= (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@21) o_50@@11 f_51@@10) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@18) o_50@@11 f_51@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@18) o_50@@11 f_51@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_16324) (ExhaleHeap@@19 T@PolymorphicMapType_16324) (Mask@@50 T@PolymorphicMapType_16345) (o_50@@12 T@Ref) (f_51@@11 T@Field_8705_8760) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_8705_8760 Mask@@50 o_50@@12 f_51@@11) (= (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@22) o_50@@12 f_51@@11) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@19) o_50@@12 f_51@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@19) o_50@@12 f_51@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_16324) (ExhaleHeap@@20 T@PolymorphicMapType_16324) (Mask@@51 T@PolymorphicMapType_16345) (o_50@@13 T@Ref) (f_51@@12 T@Field_19840_1344) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_8703_1344 Mask@@51 o_50@@13 f_51@@12) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@23) o_50@@13 f_51@@12) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@20) o_50@@13 f_51@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@20) o_50@@13 f_51@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_16324) (ExhaleHeap@@21 T@PolymorphicMapType_16324) (Mask@@52 T@PolymorphicMapType_16345) (o_50@@14 T@Ref) (f_51@@13 T@Field_16397_16398) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_8705_8706 Mask@@52 o_50@@14 f_51@@13) (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@24) o_50@@14 f_51@@13) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@21) o_50@@14 f_51@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@21) o_50@@14 f_51@@13))
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
(assert (forall ((Heap@@25 T@PolymorphicMapType_16324) (ExhaleHeap@@22 T@PolymorphicMapType_16324) (Mask@@53 T@PolymorphicMapType_16345) (pm_f_25@@5 T@Field_19973_19974) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_8712_8713 Mask@@53 null pm_f_25@@5) (IsPredicateField_8712_8713 pm_f_25@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_25 T@Ref) (f_51@@14 T@Field_19840_1344) ) (!  (=> (select (|PolymorphicMapType_16873_8703_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_25@@5))) o2_25 f_51@@14) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@25) o2_25 f_51@@14) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25 f_51@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25 f_51@@14))
)) (forall ((o2_25@@0 T@Ref) (f_51@@15 T@Field_16397_16398) ) (!  (=> (select (|PolymorphicMapType_16873_8705_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_25@@5))) o2_25@@0 f_51@@15) (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@25) o2_25@@0 f_51@@15) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@0 f_51@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@0 f_51@@15))
))) (forall ((o2_25@@1 T@Ref) (f_51@@16 T@Field_16384_53) ) (!  (=> (select (|PolymorphicMapType_16873_8703_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_25@@5))) o2_25@@1 f_51@@16) (= (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@25) o2_25@@1 f_51@@16) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@1 f_51@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@1 f_51@@16))
))) (forall ((o2_25@@2 T@Ref) (f_51@@17 T@Field_8705_8760) ) (!  (=> (select (|PolymorphicMapType_16873_8703_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_25@@5))) o2_25@@2 f_51@@17) (= (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@25) o2_25@@2 f_51@@17) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@2 f_51@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@2 f_51@@17))
))) (forall ((o2_25@@3 T@Ref) (f_51@@18 T@Field_8705_19991) ) (!  (=> (select (|PolymorphicMapType_16873_8703_64305#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_25@@5))) o2_25@@3 f_51@@18) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@25) o2_25@@3 f_51@@18) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@3 f_51@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@3 f_51@@18))
))) (forall ((o2_25@@4 T@Ref) (f_51@@19 T@Field_8712_1344) ) (!  (=> (select (|PolymorphicMapType_16873_19973_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_25@@5))) o2_25@@4 f_51@@19) (= (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@25) o2_25@@4 f_51@@19) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@4 f_51@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@4 f_51@@19))
))) (forall ((o2_25@@5 T@Ref) (f_51@@20 T@Field_8712_8706) ) (!  (=> (select (|PolymorphicMapType_16873_19973_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_25@@5))) o2_25@@5 f_51@@20) (= (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@25) o2_25@@5 f_51@@20) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@5 f_51@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@5 f_51@@20))
))) (forall ((o2_25@@6 T@Ref) (f_51@@21 T@Field_8712_53) ) (!  (=> (select (|PolymorphicMapType_16873_19973_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_25@@5))) o2_25@@6 f_51@@21) (= (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@25) o2_25@@6 f_51@@21) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@6 f_51@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@6 f_51@@21))
))) (forall ((o2_25@@7 T@Ref) (f_51@@22 T@Field_19973_19974) ) (!  (=> (select (|PolymorphicMapType_16873_19973_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_25@@5))) o2_25@@7 f_51@@22) (= (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@25) o2_25@@7 f_51@@22) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@7 f_51@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@7 f_51@@22))
))) (forall ((o2_25@@8 T@Ref) (f_51@@23 T@Field_19986_19991) ) (!  (=> (select (|PolymorphicMapType_16873_19973_65353#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_25@@5))) o2_25@@8 f_51@@23) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) o2_25@@8 f_51@@23) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@8 f_51@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@8 f_51@@23))
))) (forall ((o2_25@@9 T@Ref) (f_51@@24 T@Field_8759_1344) ) (!  (=> (select (|PolymorphicMapType_16873_22236_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_25@@5))) o2_25@@9 f_51@@24) (= (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@25) o2_25@@9 f_51@@24) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@9 f_51@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@9 f_51@@24))
))) (forall ((o2_25@@10 T@Ref) (f_51@@25 T@Field_8759_8706) ) (!  (=> (select (|PolymorphicMapType_16873_22236_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_25@@5))) o2_25@@10 f_51@@25) (= (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@25) o2_25@@10 f_51@@25) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@10 f_51@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@10 f_51@@25))
))) (forall ((o2_25@@11 T@Ref) (f_51@@26 T@Field_8759_53) ) (!  (=> (select (|PolymorphicMapType_16873_22236_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_25@@5))) o2_25@@11 f_51@@26) (= (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@25) o2_25@@11 f_51@@26) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@11 f_51@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@11 f_51@@26))
))) (forall ((o2_25@@12 T@Ref) (f_51@@27 T@Field_22236_22237) ) (!  (=> (select (|PolymorphicMapType_16873_22236_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_25@@5))) o2_25@@12 f_51@@27) (= (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@25) o2_25@@12 f_51@@27) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@12 f_51@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@12 f_51@@27))
))) (forall ((o2_25@@13 T@Ref) (f_51@@28 T@Field_22249_22254) ) (!  (=> (select (|PolymorphicMapType_16873_22236_66401#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@25) null (PredicateMaskField_8712 pm_f_25@@5))) o2_25@@13 f_51@@28) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@25) o2_25@@13 f_51@@28) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@13 f_51@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@22) o2_25@@13 f_51@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (IsPredicateField_8712_8713 pm_f_25@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_16324) (ExhaleHeap@@23 T@PolymorphicMapType_16324) (Mask@@54 T@PolymorphicMapType_16345) (pm_f_25@@6 T@Field_22236_22237) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_8759_8760 Mask@@54 null pm_f_25@@6) (IsPredicateField_8759_8760 pm_f_25@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_25@@14 T@Ref) (f_51@@29 T@Field_19840_1344) ) (!  (=> (select (|PolymorphicMapType_16873_8703_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_25@@6))) o2_25@@14 f_51@@29) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@26) o2_25@@14 f_51@@29) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@14 f_51@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@14 f_51@@29))
)) (forall ((o2_25@@15 T@Ref) (f_51@@30 T@Field_16397_16398) ) (!  (=> (select (|PolymorphicMapType_16873_8705_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_25@@6))) o2_25@@15 f_51@@30) (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@26) o2_25@@15 f_51@@30) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@15 f_51@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@15 f_51@@30))
))) (forall ((o2_25@@16 T@Ref) (f_51@@31 T@Field_16384_53) ) (!  (=> (select (|PolymorphicMapType_16873_8703_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_25@@6))) o2_25@@16 f_51@@31) (= (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@26) o2_25@@16 f_51@@31) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@16 f_51@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@16 f_51@@31))
))) (forall ((o2_25@@17 T@Ref) (f_51@@32 T@Field_8705_8760) ) (!  (=> (select (|PolymorphicMapType_16873_8703_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_25@@6))) o2_25@@17 f_51@@32) (= (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@26) o2_25@@17 f_51@@32) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@17 f_51@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@17 f_51@@32))
))) (forall ((o2_25@@18 T@Ref) (f_51@@33 T@Field_8705_19991) ) (!  (=> (select (|PolymorphicMapType_16873_8703_64305#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_25@@6))) o2_25@@18 f_51@@33) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@26) o2_25@@18 f_51@@33) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@18 f_51@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@18 f_51@@33))
))) (forall ((o2_25@@19 T@Ref) (f_51@@34 T@Field_8712_1344) ) (!  (=> (select (|PolymorphicMapType_16873_19973_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_25@@6))) o2_25@@19 f_51@@34) (= (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@26) o2_25@@19 f_51@@34) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@19 f_51@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@19 f_51@@34))
))) (forall ((o2_25@@20 T@Ref) (f_51@@35 T@Field_8712_8706) ) (!  (=> (select (|PolymorphicMapType_16873_19973_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_25@@6))) o2_25@@20 f_51@@35) (= (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@26) o2_25@@20 f_51@@35) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@20 f_51@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@20 f_51@@35))
))) (forall ((o2_25@@21 T@Ref) (f_51@@36 T@Field_8712_53) ) (!  (=> (select (|PolymorphicMapType_16873_19973_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_25@@6))) o2_25@@21 f_51@@36) (= (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@26) o2_25@@21 f_51@@36) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@21 f_51@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@21 f_51@@36))
))) (forall ((o2_25@@22 T@Ref) (f_51@@37 T@Field_19973_19974) ) (!  (=> (select (|PolymorphicMapType_16873_19973_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_25@@6))) o2_25@@22 f_51@@37) (= (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@26) o2_25@@22 f_51@@37) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@22 f_51@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@22 f_51@@37))
))) (forall ((o2_25@@23 T@Ref) (f_51@@38 T@Field_19986_19991) ) (!  (=> (select (|PolymorphicMapType_16873_19973_65353#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_25@@6))) o2_25@@23 f_51@@38) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@26) o2_25@@23 f_51@@38) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@23 f_51@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@23 f_51@@38))
))) (forall ((o2_25@@24 T@Ref) (f_51@@39 T@Field_8759_1344) ) (!  (=> (select (|PolymorphicMapType_16873_22236_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_25@@6))) o2_25@@24 f_51@@39) (= (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@26) o2_25@@24 f_51@@39) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@24 f_51@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@24 f_51@@39))
))) (forall ((o2_25@@25 T@Ref) (f_51@@40 T@Field_8759_8706) ) (!  (=> (select (|PolymorphicMapType_16873_22236_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_25@@6))) o2_25@@25 f_51@@40) (= (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@26) o2_25@@25 f_51@@40) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@25 f_51@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@25 f_51@@40))
))) (forall ((o2_25@@26 T@Ref) (f_51@@41 T@Field_8759_53) ) (!  (=> (select (|PolymorphicMapType_16873_22236_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_25@@6))) o2_25@@26 f_51@@41) (= (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@26) o2_25@@26 f_51@@41) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@26 f_51@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@26 f_51@@41))
))) (forall ((o2_25@@27 T@Ref) (f_51@@42 T@Field_22236_22237) ) (!  (=> (select (|PolymorphicMapType_16873_22236_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_25@@6))) o2_25@@27 f_51@@42) (= (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@26) o2_25@@27 f_51@@42) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@27 f_51@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@27 f_51@@42))
))) (forall ((o2_25@@28 T@Ref) (f_51@@43 T@Field_22249_22254) ) (!  (=> (select (|PolymorphicMapType_16873_22236_66401#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) null (PredicateMaskField_8759 pm_f_25@@6))) o2_25@@28 f_51@@43) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@26) o2_25@@28 f_51@@43) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@28 f_51@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@23) o2_25@@28 f_51@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (IsPredicateField_8759_8760 pm_f_25@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_16324) (ExhaleHeap@@24 T@PolymorphicMapType_16324) (Mask@@55 T@PolymorphicMapType_16345) (pm_f_25@@7 T@Field_8705_8760) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_8705_8760 Mask@@55 null pm_f_25@@7) (IsPredicateField_8705_62523 pm_f_25@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_25@@29 T@Ref) (f_51@@44 T@Field_19840_1344) ) (!  (=> (select (|PolymorphicMapType_16873_8703_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_25@@7))) o2_25@@29 f_51@@44) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@27) o2_25@@29 f_51@@44) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@29 f_51@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@29 f_51@@44))
)) (forall ((o2_25@@30 T@Ref) (f_51@@45 T@Field_16397_16398) ) (!  (=> (select (|PolymorphicMapType_16873_8705_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_25@@7))) o2_25@@30 f_51@@45) (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@27) o2_25@@30 f_51@@45) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@30 f_51@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@30 f_51@@45))
))) (forall ((o2_25@@31 T@Ref) (f_51@@46 T@Field_16384_53) ) (!  (=> (select (|PolymorphicMapType_16873_8703_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_25@@7))) o2_25@@31 f_51@@46) (= (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@27) o2_25@@31 f_51@@46) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@31 f_51@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@31 f_51@@46))
))) (forall ((o2_25@@32 T@Ref) (f_51@@47 T@Field_8705_8760) ) (!  (=> (select (|PolymorphicMapType_16873_8703_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_25@@7))) o2_25@@32 f_51@@47) (= (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@27) o2_25@@32 f_51@@47) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@32 f_51@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@32 f_51@@47))
))) (forall ((o2_25@@33 T@Ref) (f_51@@48 T@Field_8705_19991) ) (!  (=> (select (|PolymorphicMapType_16873_8703_64305#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_25@@7))) o2_25@@33 f_51@@48) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) o2_25@@33 f_51@@48) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@33 f_51@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@33 f_51@@48))
))) (forall ((o2_25@@34 T@Ref) (f_51@@49 T@Field_8712_1344) ) (!  (=> (select (|PolymorphicMapType_16873_19973_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_25@@7))) o2_25@@34 f_51@@49) (= (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@27) o2_25@@34 f_51@@49) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@34 f_51@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@34 f_51@@49))
))) (forall ((o2_25@@35 T@Ref) (f_51@@50 T@Field_8712_8706) ) (!  (=> (select (|PolymorphicMapType_16873_19973_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_25@@7))) o2_25@@35 f_51@@50) (= (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@27) o2_25@@35 f_51@@50) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@35 f_51@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@35 f_51@@50))
))) (forall ((o2_25@@36 T@Ref) (f_51@@51 T@Field_8712_53) ) (!  (=> (select (|PolymorphicMapType_16873_19973_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_25@@7))) o2_25@@36 f_51@@51) (= (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@27) o2_25@@36 f_51@@51) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@36 f_51@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@36 f_51@@51))
))) (forall ((o2_25@@37 T@Ref) (f_51@@52 T@Field_19973_19974) ) (!  (=> (select (|PolymorphicMapType_16873_19973_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_25@@7))) o2_25@@37 f_51@@52) (= (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@27) o2_25@@37 f_51@@52) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@37 f_51@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@37 f_51@@52))
))) (forall ((o2_25@@38 T@Ref) (f_51@@53 T@Field_19986_19991) ) (!  (=> (select (|PolymorphicMapType_16873_19973_65353#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_25@@7))) o2_25@@38 f_51@@53) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@27) o2_25@@38 f_51@@53) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@38 f_51@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@38 f_51@@53))
))) (forall ((o2_25@@39 T@Ref) (f_51@@54 T@Field_8759_1344) ) (!  (=> (select (|PolymorphicMapType_16873_22236_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_25@@7))) o2_25@@39 f_51@@54) (= (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@27) o2_25@@39 f_51@@54) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@39 f_51@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@39 f_51@@54))
))) (forall ((o2_25@@40 T@Ref) (f_51@@55 T@Field_8759_8706) ) (!  (=> (select (|PolymorphicMapType_16873_22236_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_25@@7))) o2_25@@40 f_51@@55) (= (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@27) o2_25@@40 f_51@@55) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@40 f_51@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@40 f_51@@55))
))) (forall ((o2_25@@41 T@Ref) (f_51@@56 T@Field_8759_53) ) (!  (=> (select (|PolymorphicMapType_16873_22236_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_25@@7))) o2_25@@41 f_51@@56) (= (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@27) o2_25@@41 f_51@@56) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@41 f_51@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@41 f_51@@56))
))) (forall ((o2_25@@42 T@Ref) (f_51@@57 T@Field_22236_22237) ) (!  (=> (select (|PolymorphicMapType_16873_22236_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_25@@7))) o2_25@@42 f_51@@57) (= (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@27) o2_25@@42 f_51@@57) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@42 f_51@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@42 f_51@@57))
))) (forall ((o2_25@@43 T@Ref) (f_51@@58 T@Field_22249_22254) ) (!  (=> (select (|PolymorphicMapType_16873_22236_66401#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@27) null (PredicateMaskField_8705 pm_f_25@@7))) o2_25@@43 f_51@@58) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@27) o2_25@@43 f_51@@58) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@43 f_51@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@24) o2_25@@43 f_51@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (IsPredicateField_8705_62523 pm_f_25@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_16324) (ExhaleHeap@@25 T@PolymorphicMapType_16324) (Mask@@56 T@PolymorphicMapType_16345) (pm_f_25@@8 T@Field_19973_19974) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_8712_8713 Mask@@56 null pm_f_25@@8) (IsWandField_8712_68204 pm_f_25@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_25@@44 T@Ref) (f_51@@59 T@Field_19840_1344) ) (!  (=> (select (|PolymorphicMapType_16873_8703_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_25@@8))) o2_25@@44 f_51@@59) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@28) o2_25@@44 f_51@@59) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@44 f_51@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@44 f_51@@59))
)) (forall ((o2_25@@45 T@Ref) (f_51@@60 T@Field_16397_16398) ) (!  (=> (select (|PolymorphicMapType_16873_8705_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_25@@8))) o2_25@@45 f_51@@60) (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@28) o2_25@@45 f_51@@60) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@45 f_51@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@45 f_51@@60))
))) (forall ((o2_25@@46 T@Ref) (f_51@@61 T@Field_16384_53) ) (!  (=> (select (|PolymorphicMapType_16873_8703_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_25@@8))) o2_25@@46 f_51@@61) (= (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@28) o2_25@@46 f_51@@61) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@46 f_51@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@46 f_51@@61))
))) (forall ((o2_25@@47 T@Ref) (f_51@@62 T@Field_8705_8760) ) (!  (=> (select (|PolymorphicMapType_16873_8703_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_25@@8))) o2_25@@47 f_51@@62) (= (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@28) o2_25@@47 f_51@@62) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@47 f_51@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@47 f_51@@62))
))) (forall ((o2_25@@48 T@Ref) (f_51@@63 T@Field_8705_19991) ) (!  (=> (select (|PolymorphicMapType_16873_8703_64305#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_25@@8))) o2_25@@48 f_51@@63) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@28) o2_25@@48 f_51@@63) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@48 f_51@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@48 f_51@@63))
))) (forall ((o2_25@@49 T@Ref) (f_51@@64 T@Field_8712_1344) ) (!  (=> (select (|PolymorphicMapType_16873_19973_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_25@@8))) o2_25@@49 f_51@@64) (= (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@28) o2_25@@49 f_51@@64) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@49 f_51@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@49 f_51@@64))
))) (forall ((o2_25@@50 T@Ref) (f_51@@65 T@Field_8712_8706) ) (!  (=> (select (|PolymorphicMapType_16873_19973_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_25@@8))) o2_25@@50 f_51@@65) (= (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@28) o2_25@@50 f_51@@65) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@50 f_51@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@50 f_51@@65))
))) (forall ((o2_25@@51 T@Ref) (f_51@@66 T@Field_8712_53) ) (!  (=> (select (|PolymorphicMapType_16873_19973_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_25@@8))) o2_25@@51 f_51@@66) (= (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@28) o2_25@@51 f_51@@66) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@51 f_51@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@51 f_51@@66))
))) (forall ((o2_25@@52 T@Ref) (f_51@@67 T@Field_19973_19974) ) (!  (=> (select (|PolymorphicMapType_16873_19973_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_25@@8))) o2_25@@52 f_51@@67) (= (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@28) o2_25@@52 f_51@@67) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@52 f_51@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@52 f_51@@67))
))) (forall ((o2_25@@53 T@Ref) (f_51@@68 T@Field_19986_19991) ) (!  (=> (select (|PolymorphicMapType_16873_19973_65353#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_25@@8))) o2_25@@53 f_51@@68) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) o2_25@@53 f_51@@68) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@53 f_51@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@53 f_51@@68))
))) (forall ((o2_25@@54 T@Ref) (f_51@@69 T@Field_8759_1344) ) (!  (=> (select (|PolymorphicMapType_16873_22236_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_25@@8))) o2_25@@54 f_51@@69) (= (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@28) o2_25@@54 f_51@@69) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@54 f_51@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@54 f_51@@69))
))) (forall ((o2_25@@55 T@Ref) (f_51@@70 T@Field_8759_8706) ) (!  (=> (select (|PolymorphicMapType_16873_22236_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_25@@8))) o2_25@@55 f_51@@70) (= (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@28) o2_25@@55 f_51@@70) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@55 f_51@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@55 f_51@@70))
))) (forall ((o2_25@@56 T@Ref) (f_51@@71 T@Field_8759_53) ) (!  (=> (select (|PolymorphicMapType_16873_22236_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_25@@8))) o2_25@@56 f_51@@71) (= (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@28) o2_25@@56 f_51@@71) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@56 f_51@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@56 f_51@@71))
))) (forall ((o2_25@@57 T@Ref) (f_51@@72 T@Field_22236_22237) ) (!  (=> (select (|PolymorphicMapType_16873_22236_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_25@@8))) o2_25@@57 f_51@@72) (= (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@28) o2_25@@57 f_51@@72) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@57 f_51@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@57 f_51@@72))
))) (forall ((o2_25@@58 T@Ref) (f_51@@73 T@Field_22249_22254) ) (!  (=> (select (|PolymorphicMapType_16873_22236_66401#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@28) null (WandMaskField_8712 pm_f_25@@8))) o2_25@@58 f_51@@73) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@28) o2_25@@58 f_51@@73) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@58 f_51@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@25) o2_25@@58 f_51@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (IsWandField_8712_68204 pm_f_25@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_16324) (ExhaleHeap@@26 T@PolymorphicMapType_16324) (Mask@@57 T@PolymorphicMapType_16345) (pm_f_25@@9 T@Field_22236_22237) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_8759_8760 Mask@@57 null pm_f_25@@9) (IsWandField_8759_67847 pm_f_25@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_25@@59 T@Ref) (f_51@@74 T@Field_19840_1344) ) (!  (=> (select (|PolymorphicMapType_16873_8703_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_25@@9))) o2_25@@59 f_51@@74) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@29) o2_25@@59 f_51@@74) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@59 f_51@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@59 f_51@@74))
)) (forall ((o2_25@@60 T@Ref) (f_51@@75 T@Field_16397_16398) ) (!  (=> (select (|PolymorphicMapType_16873_8705_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_25@@9))) o2_25@@60 f_51@@75) (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@29) o2_25@@60 f_51@@75) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@60 f_51@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@60 f_51@@75))
))) (forall ((o2_25@@61 T@Ref) (f_51@@76 T@Field_16384_53) ) (!  (=> (select (|PolymorphicMapType_16873_8703_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_25@@9))) o2_25@@61 f_51@@76) (= (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@29) o2_25@@61 f_51@@76) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@61 f_51@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@61 f_51@@76))
))) (forall ((o2_25@@62 T@Ref) (f_51@@77 T@Field_8705_8760) ) (!  (=> (select (|PolymorphicMapType_16873_8703_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_25@@9))) o2_25@@62 f_51@@77) (= (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@29) o2_25@@62 f_51@@77) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@62 f_51@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@62 f_51@@77))
))) (forall ((o2_25@@63 T@Ref) (f_51@@78 T@Field_8705_19991) ) (!  (=> (select (|PolymorphicMapType_16873_8703_64305#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_25@@9))) o2_25@@63 f_51@@78) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@29) o2_25@@63 f_51@@78) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@63 f_51@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@63 f_51@@78))
))) (forall ((o2_25@@64 T@Ref) (f_51@@79 T@Field_8712_1344) ) (!  (=> (select (|PolymorphicMapType_16873_19973_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_25@@9))) o2_25@@64 f_51@@79) (= (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@29) o2_25@@64 f_51@@79) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@64 f_51@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@64 f_51@@79))
))) (forall ((o2_25@@65 T@Ref) (f_51@@80 T@Field_8712_8706) ) (!  (=> (select (|PolymorphicMapType_16873_19973_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_25@@9))) o2_25@@65 f_51@@80) (= (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@29) o2_25@@65 f_51@@80) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@65 f_51@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@65 f_51@@80))
))) (forall ((o2_25@@66 T@Ref) (f_51@@81 T@Field_8712_53) ) (!  (=> (select (|PolymorphicMapType_16873_19973_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_25@@9))) o2_25@@66 f_51@@81) (= (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@29) o2_25@@66 f_51@@81) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@66 f_51@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@66 f_51@@81))
))) (forall ((o2_25@@67 T@Ref) (f_51@@82 T@Field_19973_19974) ) (!  (=> (select (|PolymorphicMapType_16873_19973_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_25@@9))) o2_25@@67 f_51@@82) (= (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@29) o2_25@@67 f_51@@82) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@67 f_51@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@67 f_51@@82))
))) (forall ((o2_25@@68 T@Ref) (f_51@@83 T@Field_19986_19991) ) (!  (=> (select (|PolymorphicMapType_16873_19973_65353#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_25@@9))) o2_25@@68 f_51@@83) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@29) o2_25@@68 f_51@@83) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@68 f_51@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@68 f_51@@83))
))) (forall ((o2_25@@69 T@Ref) (f_51@@84 T@Field_8759_1344) ) (!  (=> (select (|PolymorphicMapType_16873_22236_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_25@@9))) o2_25@@69 f_51@@84) (= (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@29) o2_25@@69 f_51@@84) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@69 f_51@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@69 f_51@@84))
))) (forall ((o2_25@@70 T@Ref) (f_51@@85 T@Field_8759_8706) ) (!  (=> (select (|PolymorphicMapType_16873_22236_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_25@@9))) o2_25@@70 f_51@@85) (= (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@29) o2_25@@70 f_51@@85) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@70 f_51@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@70 f_51@@85))
))) (forall ((o2_25@@71 T@Ref) (f_51@@86 T@Field_8759_53) ) (!  (=> (select (|PolymorphicMapType_16873_22236_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_25@@9))) o2_25@@71 f_51@@86) (= (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@29) o2_25@@71 f_51@@86) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@71 f_51@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@71 f_51@@86))
))) (forall ((o2_25@@72 T@Ref) (f_51@@87 T@Field_22236_22237) ) (!  (=> (select (|PolymorphicMapType_16873_22236_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_25@@9))) o2_25@@72 f_51@@87) (= (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@29) o2_25@@72 f_51@@87) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@72 f_51@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@72 f_51@@87))
))) (forall ((o2_25@@73 T@Ref) (f_51@@88 T@Field_22249_22254) ) (!  (=> (select (|PolymorphicMapType_16873_22236_66401#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) null (WandMaskField_8759 pm_f_25@@9))) o2_25@@73 f_51@@88) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@29) o2_25@@73 f_51@@88) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@73 f_51@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@26) o2_25@@73 f_51@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (IsWandField_8759_67847 pm_f_25@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_16324) (ExhaleHeap@@27 T@PolymorphicMapType_16324) (Mask@@58 T@PolymorphicMapType_16345) (pm_f_25@@10 T@Field_8705_8760) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_8705_8760 Mask@@58 null pm_f_25@@10) (IsWandField_8705_67490 pm_f_25@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_25@@74 T@Ref) (f_51@@89 T@Field_19840_1344) ) (!  (=> (select (|PolymorphicMapType_16873_8703_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_25@@10))) o2_25@@74 f_51@@89) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@30) o2_25@@74 f_51@@89) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@74 f_51@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@74 f_51@@89))
)) (forall ((o2_25@@75 T@Ref) (f_51@@90 T@Field_16397_16398) ) (!  (=> (select (|PolymorphicMapType_16873_8705_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_25@@10))) o2_25@@75 f_51@@90) (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@30) o2_25@@75 f_51@@90) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@75 f_51@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@75 f_51@@90))
))) (forall ((o2_25@@76 T@Ref) (f_51@@91 T@Field_16384_53) ) (!  (=> (select (|PolymorphicMapType_16873_8703_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_25@@10))) o2_25@@76 f_51@@91) (= (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@30) o2_25@@76 f_51@@91) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@76 f_51@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@76 f_51@@91))
))) (forall ((o2_25@@77 T@Ref) (f_51@@92 T@Field_8705_8760) ) (!  (=> (select (|PolymorphicMapType_16873_8703_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_25@@10))) o2_25@@77 f_51@@92) (= (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@30) o2_25@@77 f_51@@92) (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@77 f_51@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@77 f_51@@92))
))) (forall ((o2_25@@78 T@Ref) (f_51@@93 T@Field_8705_19991) ) (!  (=> (select (|PolymorphicMapType_16873_8703_64305#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_25@@10))) o2_25@@78 f_51@@93) (= (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) o2_25@@78 f_51@@93) (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@78 f_51@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@78 f_51@@93))
))) (forall ((o2_25@@79 T@Ref) (f_51@@94 T@Field_8712_1344) ) (!  (=> (select (|PolymorphicMapType_16873_19973_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_25@@10))) o2_25@@79 f_51@@94) (= (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@30) o2_25@@79 f_51@@94) (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@79 f_51@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@79 f_51@@94))
))) (forall ((o2_25@@80 T@Ref) (f_51@@95 T@Field_8712_8706) ) (!  (=> (select (|PolymorphicMapType_16873_19973_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_25@@10))) o2_25@@80 f_51@@95) (= (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@30) o2_25@@80 f_51@@95) (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@80 f_51@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@80 f_51@@95))
))) (forall ((o2_25@@81 T@Ref) (f_51@@96 T@Field_8712_53) ) (!  (=> (select (|PolymorphicMapType_16873_19973_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_25@@10))) o2_25@@81 f_51@@96) (= (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@30) o2_25@@81 f_51@@96) (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@81 f_51@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@81 f_51@@96))
))) (forall ((o2_25@@82 T@Ref) (f_51@@97 T@Field_19973_19974) ) (!  (=> (select (|PolymorphicMapType_16873_19973_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_25@@10))) o2_25@@82 f_51@@97) (= (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@30) o2_25@@82 f_51@@97) (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@82 f_51@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@82 f_51@@97))
))) (forall ((o2_25@@83 T@Ref) (f_51@@98 T@Field_19986_19991) ) (!  (=> (select (|PolymorphicMapType_16873_19973_65353#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_25@@10))) o2_25@@83 f_51@@98) (= (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@30) o2_25@@83 f_51@@98) (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@83 f_51@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@83 f_51@@98))
))) (forall ((o2_25@@84 T@Ref) (f_51@@99 T@Field_8759_1344) ) (!  (=> (select (|PolymorphicMapType_16873_22236_1344#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_25@@10))) o2_25@@84 f_51@@99) (= (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@30) o2_25@@84 f_51@@99) (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@84 f_51@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@84 f_51@@99))
))) (forall ((o2_25@@85 T@Ref) (f_51@@100 T@Field_8759_8706) ) (!  (=> (select (|PolymorphicMapType_16873_22236_8706#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_25@@10))) o2_25@@85 f_51@@100) (= (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@30) o2_25@@85 f_51@@100) (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@85 f_51@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@85 f_51@@100))
))) (forall ((o2_25@@86 T@Ref) (f_51@@101 T@Field_8759_53) ) (!  (=> (select (|PolymorphicMapType_16873_22236_53#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_25@@10))) o2_25@@86 f_51@@101) (= (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@30) o2_25@@86 f_51@@101) (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@86 f_51@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@86 f_51@@101))
))) (forall ((o2_25@@87 T@Ref) (f_51@@102 T@Field_22236_22237) ) (!  (=> (select (|PolymorphicMapType_16873_22236_19974#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_25@@10))) o2_25@@87 f_51@@102) (= (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@30) o2_25@@87 f_51@@102) (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@87 f_51@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@87 f_51@@102))
))) (forall ((o2_25@@88 T@Ref) (f_51@@103 T@Field_22249_22254) ) (!  (=> (select (|PolymorphicMapType_16873_22236_66401#PolymorphicMapType_16873| (select (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@30) null (WandMaskField_8705 pm_f_25@@10))) o2_25@@88 f_51@@103) (= (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@30) o2_25@@88 f_51@@103) (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@88 f_51@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| ExhaleHeap@@27) o2_25@@88 f_51@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (IsWandField_8705_67490 pm_f_25@@10))
)))
(assert (forall ((a_2@@3 T@ArrayDomainType) ) (! (= (getPredWandId_8712_8713 (array a_2@@3)) 0)
 :qid |stdinbpl.245:15|
 :skolemid |25|
 :pattern ( (array a_2@@3))
)))
(assert (forall ((root@@3 T@Ref) ) (! (= (getPredWandId_8759_8760 (tree root@@3)) 1)
 :qid |stdinbpl.344:15|
 :skolemid |38|
 :pattern ( (tree root@@3))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_16324) (Heap1Heap T@PolymorphicMapType_16324) (a_2@@4 T@ArrayDomainType) ) (!  (=> (and (=  (and (and (<= 0 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4))) (< (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4)) (len_1 a_2@@4))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4))) (< (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4)) (len_1 a_2@@4))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4))) (< (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4)) (len_1 a_2@@4))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap2Heap) (loc a_2@@4 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4))) val) (select (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap1Heap) (loc a_2@@4 (|sk_array#condqp1| (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4))) val)))) (= (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4)))
 :qid |stdinbpl.271:15|
 :skolemid |29|
 :pattern ( (|array#condqp1| Heap2Heap a_2@@4) (|array#condqp1| Heap1Heap a_2@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_16324) (o_39 T@Ref) (f_18 T@Field_19986_19991) (v T@PolymorphicMapType_16873) ) (! (succHeap Heap@@31 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@31) (store (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@31) o_39 f_18 v) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@31) (store (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@31) o_39 f_18 v) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@31) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_16324) (o_39@@0 T@Ref) (f_18@@0 T@Field_19973_19974) (v@@0 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@32) (store (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@32) o_39@@0 f_18@@0 v@@0) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@32) (store (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@32) o_39@@0 f_18@@0 v@@0) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@32) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_16324) (o_39@@1 T@Ref) (f_18@@1 T@Field_8712_1344) (v@@1 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@33) (store (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@33) o_39@@1 f_18@@1 v@@1) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@33) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@33) (store (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@33) o_39@@1 f_18@@1 v@@1) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_16324) (o_39@@2 T@Ref) (f_18@@2 T@Field_8712_8706) (v@@2 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@34) (store (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@34) o_39@@2 f_18@@2 v@@2) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@34) (store (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@34) o_39@@2 f_18@@2 v@@2) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@34) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_16324) (o_39@@3 T@Ref) (f_18@@3 T@Field_8712_53) (v@@3 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@35) (store (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@35) o_39@@3 f_18@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@35) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@35) (store (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@35) o_39@@3 f_18@@3 v@@3)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_16324) (o_39@@4 T@Ref) (f_18@@4 T@Field_22249_22254) (v@@4 T@PolymorphicMapType_16873) ) (! (succHeap Heap@@36 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@36) (store (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@36) o_39@@4 f_18@@4 v@@4) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@36) (store (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@36) o_39@@4 f_18@@4 v@@4) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@36) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_16324) (o_39@@5 T@Ref) (f_18@@5 T@Field_22236_22237) (v@@5 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@37) (store (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@37) o_39@@5 f_18@@5 v@@5) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@37) (store (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@37) o_39@@5 f_18@@5 v@@5) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@37) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_16324) (o_39@@6 T@Ref) (f_18@@6 T@Field_8759_1344) (v@@6 Int) ) (! (succHeap Heap@@38 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@38) (store (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@38) o_39@@6 f_18@@6 v@@6) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@38) (store (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@38) o_39@@6 f_18@@6 v@@6) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@38) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_16324) (o_39@@7 T@Ref) (f_18@@7 T@Field_8759_8706) (v@@7 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@39) (store (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@39) o_39@@7 f_18@@7 v@@7) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@39) (store (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@39) o_39@@7 f_18@@7 v@@7) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@39) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_16324) (o_39@@8 T@Ref) (f_18@@8 T@Field_8759_53) (v@@8 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@40) (store (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@40) o_39@@8 f_18@@8 v@@8) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@40) (store (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@40) o_39@@8 f_18@@8 v@@8) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@40) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_16324) (o_39@@9 T@Ref) (f_18@@9 T@Field_8705_19991) (v@@9 T@PolymorphicMapType_16873) ) (! (succHeap Heap@@41 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@41) (store (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@41) o_39@@9 f_18@@9 v@@9) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@41) (store (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@41) o_39@@9 f_18@@9 v@@9) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@41) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_16324) (o_39@@10 T@Ref) (f_18@@10 T@Field_8705_8760) (v@@10 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@42) (store (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@42) o_39@@10 f_18@@10 v@@10) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@42) (store (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@42) o_39@@10 f_18@@10 v@@10) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@42) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_16324) (o_39@@11 T@Ref) (f_18@@11 T@Field_19840_1344) (v@@11 Int) ) (! (succHeap Heap@@43 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@43) (store (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@43) o_39@@11 f_18@@11 v@@11) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@43) (store (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@43) o_39@@11 f_18@@11 v@@11) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@43) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_16324) (o_39@@12 T@Ref) (f_18@@12 T@Field_16397_16398) (v@@12 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@44) (store (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@44) o_39@@12 f_18@@12 v@@12) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@44) (store (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@44) o_39@@12 f_18@@12 v@@12) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@44) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_16324) (o_39@@13 T@Ref) (f_18@@13 T@Field_16384_53) (v@@13 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_16324 (store (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@45) o_39@@13 f_18@@13 v@@13) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16324 (store (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@45) o_39@@13 f_18@@13 v@@13) (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8703_1344#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_8760#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8763_30028#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_8713#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8716_39271#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8705_8760#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8705_60081#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_8706#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_1344#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8759_53#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_8706#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_1344#PolymorphicMapType_16324| Heap@@45) (|PolymorphicMapType_16324_8712_53#PolymorphicMapType_16324| Heap@@45)))
)))
(assert (forall ((a_2@@5 T@ArrayDomainType) ) (! (= (PredicateMaskField_8712 (array a_2@@5)) (|array#sm| a_2@@5))
 :qid |stdinbpl.237:15|
 :skolemid |23|
 :pattern ( (PredicateMaskField_8712 (array a_2@@5)))
)))
(assert (forall ((root@@4 T@Ref) ) (! (= (PredicateMaskField_8759 (tree root@@4)) (|tree#sm| root@@4))
 :qid |stdinbpl.336:15|
 :skolemid |36|
 :pattern ( (PredicateMaskField_8759 (tree root@@4)))
)))
(assert (forall ((o_39@@14 T@Ref) (f_45 T@Field_16397_16398) (Heap@@46 T@PolymorphicMapType_16324) ) (!  (=> (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@46) o_39@@14 $allocated) (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@46) (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@46) o_39@@14 f_45) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@46) o_39@@14 f_45))
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
(assert (forall ((a_2@@6 T@ArrayDomainType) (i Int) (j_9 Int) ) (!  (=> (and (>= i 0) (and (>= j_9 0) (and (< i (len_1 a_2@@6)) (and (< j_9 (len_1 a_2@@6)) (not (= i j_9)))))) (not (= (loc a_2@@6 i) (loc a_2@@6 j_9))))
 :qid |stdinbpl.211:15|
 :skolemid |22|
 :pattern ( (loc a_2@@6 i) (loc a_2@@6 j_9))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@47 () T@PolymorphicMapType_16324)
(declare-fun root@@5 () T@Ref)
(declare-fun Mask@6 () T@PolymorphicMapType_16345)
(declare-fun Mask@4 () T@PolymorphicMapType_16345)
(declare-fun Mask@5 () T@PolymorphicMapType_16345)
(declare-fun Mask@3 () T@PolymorphicMapType_16345)
(declare-fun Mask@1 () T@PolymorphicMapType_16345)
(declare-fun Mask@2 () T@PolymorphicMapType_16345)
(declare-fun Mask@0 () T@PolymorphicMapType_16345)
(set-info :boogie-vc-id |tree#definedness|)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon4_correct true))
(let ((anon6_Else_correct  (=> (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@47) root@@5 right_1) null) (=> (and (= Mask@6 Mask@4) (= (ControlFlow 0 4) 1)) anon4_correct))))
(let ((anon6_Then_correct  (=> (not (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@47) root@@5 right_1) null)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_8705_8706 Mask@4 root@@5 right_1)) (=> (HasDirectPerm_8705_8706 Mask@4 root@@5 right_1) (=> (and (and (= Mask@5 (PolymorphicMapType_16345 (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| Mask@4) (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| Mask@4) (store (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| Mask@4) null (tree (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@47) root@@5 right_1)) (+ (select (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| Mask@4) null (tree (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@47) root@@5 right_1))) FullPerm)) (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| Mask@4) (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| Mask@4) (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| Mask@4) (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| Mask@4) (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| Mask@4) (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| Mask@4) (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| Mask@4) (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| Mask@4) (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| Mask@4) (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| Mask@4) (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| Mask@4) (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| Mask@4))) (state Heap@@47 Mask@5)) (and (= Mask@6 Mask@5) (= (ControlFlow 0 2) 1))) anon4_correct))))))
(let ((anon2_correct  (=> (not (= root@@5 null)) (=> (and (= Mask@4 (PolymorphicMapType_16345 (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| Mask@3) (store (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| Mask@3) root@@5 right_1 (+ (select (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| Mask@3) root@@5 right_1) FullPerm)) (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| Mask@3) (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| Mask@3) (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| Mask@3) (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| Mask@3) (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| Mask@3) (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| Mask@3) (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| Mask@3) (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| Mask@3) (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| Mask@3) (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| Mask@3) (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| Mask@3) (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| Mask@3) (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| Mask@3))) (state Heap@@47 Mask@4)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_8705_8706 Mask@4 root@@5 right_1)) (=> (HasDirectPerm_8705_8706 Mask@4 root@@5 right_1) (and (=> (= (ControlFlow 0 5) 2) anon6_Then_correct) (=> (= (ControlFlow 0 5) 4) anon6_Else_correct))))))))
(let ((anon5_Else_correct  (=> (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@47) root@@5 left) null) (=> (and (= Mask@3 Mask@1) (= (ControlFlow 0 9) 5)) anon2_correct))))
(let ((anon5_Then_correct  (=> (not (= (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@47) root@@5 left) null)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_8705_8706 Mask@1 root@@5 left)) (=> (HasDirectPerm_8705_8706 Mask@1 root@@5 left) (=> (and (and (= Mask@2 (PolymorphicMapType_16345 (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| Mask@1) (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| Mask@1) (store (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| Mask@1) null (tree (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@47) root@@5 left)) (+ (select (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| Mask@1) null (tree (select (|PolymorphicMapType_16324_8564_8565#PolymorphicMapType_16324| Heap@@47) root@@5 left))) FullPerm)) (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| Mask@1) (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| Mask@1) (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| Mask@1) (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| Mask@1) (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| Mask@1) (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| Mask@1) (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| Mask@1) (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| Mask@1) (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| Mask@1) (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| Mask@1) (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| Mask@1) (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| Mask@1))) (state Heap@@47 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 7) 5))) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@47 ZeroMask) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_16324_8561_53#PolymorphicMapType_16324| Heap@@47) root@@5 $allocated)) (and (not (= root@@5 null)) (= Mask@0 (PolymorphicMapType_16345 (store (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| ZeroMask) root@@5 val (+ (select (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| ZeroMask) root@@5 val) FullPerm)) (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| ZeroMask) (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| ZeroMask) (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| ZeroMask) (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| ZeroMask) (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| ZeroMask) (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| ZeroMask) (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| ZeroMask) (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| ZeroMask) (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| ZeroMask) (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| ZeroMask) (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| ZeroMask) (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| ZeroMask) (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| ZeroMask) (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| ZeroMask))))) (and (and (state Heap@@47 Mask@0) (not (= root@@5 null))) (and (= Mask@1 (PolymorphicMapType_16345 (|PolymorphicMapType_16345_8703_1344#PolymorphicMapType_16345| Mask@0) (store (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| Mask@0) root@@5 left (+ (select (|PolymorphicMapType_16345_8705_8706#PolymorphicMapType_16345| Mask@0) root@@5 left) FullPerm)) (|PolymorphicMapType_16345_8759_8760#PolymorphicMapType_16345| Mask@0) (|PolymorphicMapType_16345_8712_8713#PolymorphicMapType_16345| Mask@0) (|PolymorphicMapType_16345_8703_8760#PolymorphicMapType_16345| Mask@0) (|PolymorphicMapType_16345_8703_53#PolymorphicMapType_16345| Mask@0) (|PolymorphicMapType_16345_8703_74230#PolymorphicMapType_16345| Mask@0) (|PolymorphicMapType_16345_8759_1344#PolymorphicMapType_16345| Mask@0) (|PolymorphicMapType_16345_8759_8706#PolymorphicMapType_16345| Mask@0) (|PolymorphicMapType_16345_8759_53#PolymorphicMapType_16345| Mask@0) (|PolymorphicMapType_16345_8759_74641#PolymorphicMapType_16345| Mask@0) (|PolymorphicMapType_16345_8712_1344#PolymorphicMapType_16345| Mask@0) (|PolymorphicMapType_16345_8712_8706#PolymorphicMapType_16345| Mask@0) (|PolymorphicMapType_16345_8712_53#PolymorphicMapType_16345| Mask@0) (|PolymorphicMapType_16345_8712_75052#PolymorphicMapType_16345| Mask@0))) (state Heap@@47 Mask@1)))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (HasDirectPerm_8705_8706 Mask@1 root@@5 left)) (=> (HasDirectPerm_8705_8706 Mask@1 root@@5 left) (and (=> (= (ControlFlow 0 10) 7) anon5_Then_correct) (=> (= (ControlFlow 0 10) 9) anon5_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 10) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid