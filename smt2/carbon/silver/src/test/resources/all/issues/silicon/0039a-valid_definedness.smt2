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
(declare-sort T@Field_6244_53 0)
(declare-sort T@Field_6257_6258 0)
(declare-sort T@Field_10001_10002 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12912_12917 0)
(declare-sort T@Field_3301_10002 0)
(declare-sort T@Field_3301_12917 0)
(declare-sort T@Field_10001_3302 0)
(declare-sort T@Field_10001_53 0)
(declare-datatypes ((T@PolymorphicMapType_6205 0)) (((PolymorphicMapType_6205 (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| (Array T@Ref T@Field_10001_10002 Real)) (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| (Array T@Ref T@Field_6257_6258 Real)) (|PolymorphicMapType_6205_3368_3302#PolymorphicMapType_6205| (Array T@Ref T@Field_10001_3302 Real)) (|PolymorphicMapType_6205_3368_53#PolymorphicMapType_6205| (Array T@Ref T@Field_10001_53 Real)) (|PolymorphicMapType_6205_3368_27528#PolymorphicMapType_6205| (Array T@Ref T@Field_12912_12917 Real)) (|PolymorphicMapType_6205_3301_3369#PolymorphicMapType_6205| (Array T@Ref T@Field_3301_10002 Real)) (|PolymorphicMapType_6205_3301_53#PolymorphicMapType_6205| (Array T@Ref T@Field_6244_53 Real)) (|PolymorphicMapType_6205_3301_27859#PolymorphicMapType_6205| (Array T@Ref T@Field_3301_12917 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6733 0)) (((PolymorphicMapType_6733 (|PolymorphicMapType_6733_3301_3302#PolymorphicMapType_6733| (Array T@Ref T@Field_6257_6258 Bool)) (|PolymorphicMapType_6733_3301_53#PolymorphicMapType_6733| (Array T@Ref T@Field_6244_53 Bool)) (|PolymorphicMapType_6733_3301_10002#PolymorphicMapType_6733| (Array T@Ref T@Field_3301_10002 Bool)) (|PolymorphicMapType_6733_3301_21957#PolymorphicMapType_6733| (Array T@Ref T@Field_3301_12917 Bool)) (|PolymorphicMapType_6733_10001_3302#PolymorphicMapType_6733| (Array T@Ref T@Field_10001_3302 Bool)) (|PolymorphicMapType_6733_10001_53#PolymorphicMapType_6733| (Array T@Ref T@Field_10001_53 Bool)) (|PolymorphicMapType_6733_10001_10002#PolymorphicMapType_6733| (Array T@Ref T@Field_10001_10002 Bool)) (|PolymorphicMapType_6733_10001_22807#PolymorphicMapType_6733| (Array T@Ref T@Field_12912_12917 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6184 0)) (((PolymorphicMapType_6184 (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| (Array T@Ref T@Field_6244_53 Bool)) (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| (Array T@Ref T@Field_6257_6258 T@Ref)) (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| (Array T@Ref T@Field_10001_10002 T@FrameType)) (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| (Array T@Ref T@Field_12912_12917 T@PolymorphicMapType_6733)) (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| (Array T@Ref T@Field_3301_10002 T@FrameType)) (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| (Array T@Ref T@Field_3301_12917 T@PolymorphicMapType_6733)) (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| (Array T@Ref T@Field_10001_3302 T@Ref)) (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| (Array T@Ref T@Field_10001_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_6244_53)
(declare-fun next () T@Field_6257_6258)
(declare-fun succHeap (T@PolymorphicMapType_6184 T@PolymorphicMapType_6184) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6184 T@PolymorphicMapType_6184) Bool)
(declare-fun state (T@PolymorphicMapType_6184 T@PolymorphicMapType_6205) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6205) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6184 T@PolymorphicMapType_6184 T@PolymorphicMapType_6205) Bool)
(declare-fun IsPredicateField_3368_3369 (T@Field_10001_10002) Bool)
(declare-fun HasDirectPerm_10001_10002 (T@PolymorphicMapType_6205 T@Ref T@Field_10001_10002) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3368 (T@Field_10001_10002) T@Field_12912_12917)
(declare-fun IsPredicateField_3301_20686 (T@Field_3301_10002) Bool)
(declare-fun HasDirectPerm_3301_10002 (T@PolymorphicMapType_6205 T@Ref T@Field_3301_10002) Bool)
(declare-fun PredicateMaskField_3301 (T@Field_3301_10002) T@Field_3301_12917)
(declare-fun IsWandField_10001_23972 (T@Field_10001_10002) Bool)
(declare-fun WandMaskField_10001 (T@Field_10001_10002) T@Field_12912_12917)
(declare-fun IsWandField_3301_23615 (T@Field_3301_10002) Bool)
(declare-fun WandMaskField_3301 (T@Field_3301_10002) T@Field_3301_12917)
(declare-fun ZeroPMask () T@PolymorphicMapType_6733)
(declare-fun |at'| (T@PolymorphicMapType_6184 T@Ref Int) Int)
(declare-fun dummyFunction_1477 (Int) Bool)
(declare-fun |at#triggerStateless| (T@Ref Int) Int)
(declare-fun valid (T@Ref) T@Field_10001_10002)
(declare-fun |size'| (T@PolymorphicMapType_6184 T@Ref) Int)
(declare-fun |size#triggerStateless| (T@Ref) Int)
(declare-fun |valid#trigger_3368| (T@PolymorphicMapType_6184 T@Field_10001_10002) Bool)
(declare-fun |valid#everUsed_3368| (T@Field_10001_10002) Bool)
(declare-fun size_2 (T@PolymorphicMapType_6184 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |valid#sm| (T@Ref) T@Field_12912_12917)
(declare-fun dummyHeap () T@PolymorphicMapType_6184)
(declare-fun ZeroMask () T@PolymorphicMapType_6205)
(declare-fun InsidePredicate_6244_6244 (T@Field_3301_10002 T@FrameType T@Field_3301_10002 T@FrameType) Bool)
(declare-fun InsidePredicate_3368_3368 (T@Field_10001_10002 T@FrameType T@Field_10001_10002 T@FrameType) Bool)
(declare-fun |size#trigger| (T@FrameType T@Ref) Bool)
(declare-fun IsPredicateField_3301_3302 (T@Field_6257_6258) Bool)
(declare-fun IsWandField_3301_3302 (T@Field_6257_6258) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3301_29683 (T@Field_3301_12917) Bool)
(declare-fun IsWandField_3301_29699 (T@Field_3301_12917) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3301_53 (T@Field_6244_53) Bool)
(declare-fun IsWandField_3301_53 (T@Field_6244_53) Bool)
(declare-fun IsPredicateField_3368_29034 (T@Field_12912_12917) Bool)
(declare-fun IsWandField_3368_29050 (T@Field_12912_12917) Bool)
(declare-fun IsPredicateField_3368_53 (T@Field_10001_53) Bool)
(declare-fun IsWandField_3368_53 (T@Field_10001_53) Bool)
(declare-fun IsPredicateField_3368_3302 (T@Field_10001_3302) Bool)
(declare-fun IsWandField_3368_3302 (T@Field_10001_3302) Bool)
(declare-fun HasDirectPerm_10001_20441 (T@PolymorphicMapType_6205 T@Ref T@Field_12912_12917) Bool)
(declare-fun HasDirectPerm_10001_53 (T@PolymorphicMapType_6205 T@Ref T@Field_10001_53) Bool)
(declare-fun HasDirectPerm_10001_3302 (T@PolymorphicMapType_6205 T@Ref T@Field_10001_3302) Bool)
(declare-fun HasDirectPerm_3301_19501 (T@PolymorphicMapType_6205 T@Ref T@Field_3301_12917) Bool)
(declare-fun HasDirectPerm_3301_53 (T@PolymorphicMapType_6205 T@Ref T@Field_6244_53) Bool)
(declare-fun HasDirectPerm_3301_3302 (T@PolymorphicMapType_6205 T@Ref T@Field_6257_6258) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun at_1 (T@PolymorphicMapType_6184 T@Ref Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_6205 T@PolymorphicMapType_6205 T@PolymorphicMapType_6205) Bool)
(declare-fun |at#frame| (T@FrameType T@Ref Int) Int)
(declare-fun |size#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_3368_3369 (T@Field_10001_10002) Int)
(declare-fun InsidePredicate_6244_3368 (T@Field_3301_10002 T@FrameType T@Field_10001_10002 T@FrameType) Bool)
(declare-fun InsidePredicate_3368_6244 (T@Field_10001_10002 T@FrameType T@Field_3301_10002 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6184) (Heap1 T@PolymorphicMapType_6184) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6184) (Mask T@PolymorphicMapType_6205) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6184) (ExhaleHeap T@PolymorphicMapType_6184) (Mask@@0 T@PolymorphicMapType_6205) (pm_f_13 T@Field_10001_10002) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10001_10002 Mask@@0 null pm_f_13) (IsPredicateField_3368_3369 pm_f_13)) (and (and (and (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_6257_6258) ) (!  (=> (select (|PolymorphicMapType_6733_3301_3302#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@0) null (PredicateMaskField_3368 pm_f_13))) o2_13 f_30) (= (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@0) o2_13 f_30) (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| ExhaleHeap) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| ExhaleHeap) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_6244_53) ) (!  (=> (select (|PolymorphicMapType_6733_3301_53#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@0) null (PredicateMaskField_3368 pm_f_13))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@0) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| ExhaleHeap) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| ExhaleHeap) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_3301_10002) ) (!  (=> (select (|PolymorphicMapType_6733_3301_10002#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@0) null (PredicateMaskField_3368 pm_f_13))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@0) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| ExhaleHeap) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| ExhaleHeap) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_3301_12917) ) (!  (=> (select (|PolymorphicMapType_6733_3301_21957#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@0) null (PredicateMaskField_3368 pm_f_13))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@0) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| ExhaleHeap) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| ExhaleHeap) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_10001_3302) ) (!  (=> (select (|PolymorphicMapType_6733_10001_3302#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@0) null (PredicateMaskField_3368 pm_f_13))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@0) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| ExhaleHeap) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| ExhaleHeap) o2_13@@3 f_30@@3))
))) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_10001_53) ) (!  (=> (select (|PolymorphicMapType_6733_10001_53#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@0) null (PredicateMaskField_3368 pm_f_13))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@0) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| ExhaleHeap) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| ExhaleHeap) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_10001_10002) ) (!  (=> (select (|PolymorphicMapType_6733_10001_10002#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@0) null (PredicateMaskField_3368 pm_f_13))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@0) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| ExhaleHeap) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| ExhaleHeap) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_12912_12917) ) (!  (=> (select (|PolymorphicMapType_6733_10001_22807#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@0) null (PredicateMaskField_3368 pm_f_13))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@0) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| ExhaleHeap) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| ExhaleHeap) o2_13@@6 f_30@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3368_3369 pm_f_13))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6184) (ExhaleHeap@@0 T@PolymorphicMapType_6184) (Mask@@1 T@PolymorphicMapType_6205) (pm_f_13@@0 T@Field_3301_10002) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3301_10002 Mask@@1 null pm_f_13@@0) (IsPredicateField_3301_20686 pm_f_13@@0)) (and (and (and (and (and (and (and (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_6257_6258) ) (!  (=> (select (|PolymorphicMapType_6733_3301_3302#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@1) null (PredicateMaskField_3301 pm_f_13@@0))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@1) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@7 f_30@@7))
)) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_6244_53) ) (!  (=> (select (|PolymorphicMapType_6733_3301_53#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@1) null (PredicateMaskField_3301 pm_f_13@@0))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@1) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@8 f_30@@8))
))) (forall ((o2_13@@9 T@Ref) (f_30@@9 T@Field_3301_10002) ) (!  (=> (select (|PolymorphicMapType_6733_3301_10002#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@1) null (PredicateMaskField_3301 pm_f_13@@0))) o2_13@@9 f_30@@9) (= (select (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@1) o2_13@@9 f_30@@9) (select (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@9 f_30@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@9 f_30@@9))
))) (forall ((o2_13@@10 T@Ref) (f_30@@10 T@Field_3301_12917) ) (!  (=> (select (|PolymorphicMapType_6733_3301_21957#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@1) null (PredicateMaskField_3301 pm_f_13@@0))) o2_13@@10 f_30@@10) (= (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@1) o2_13@@10 f_30@@10) (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@10 f_30@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@10 f_30@@10))
))) (forall ((o2_13@@11 T@Ref) (f_30@@11 T@Field_10001_3302) ) (!  (=> (select (|PolymorphicMapType_6733_10001_3302#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@1) null (PredicateMaskField_3301 pm_f_13@@0))) o2_13@@11 f_30@@11) (= (select (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@1) o2_13@@11 f_30@@11) (select (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@11 f_30@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@11 f_30@@11))
))) (forall ((o2_13@@12 T@Ref) (f_30@@12 T@Field_10001_53) ) (!  (=> (select (|PolymorphicMapType_6733_10001_53#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@1) null (PredicateMaskField_3301 pm_f_13@@0))) o2_13@@12 f_30@@12) (= (select (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@1) o2_13@@12 f_30@@12) (select (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@12 f_30@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@12 f_30@@12))
))) (forall ((o2_13@@13 T@Ref) (f_30@@13 T@Field_10001_10002) ) (!  (=> (select (|PolymorphicMapType_6733_10001_10002#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@1) null (PredicateMaskField_3301 pm_f_13@@0))) o2_13@@13 f_30@@13) (= (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@1) o2_13@@13 f_30@@13) (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@13 f_30@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@13 f_30@@13))
))) (forall ((o2_13@@14 T@Ref) (f_30@@14 T@Field_12912_12917) ) (!  (=> (select (|PolymorphicMapType_6733_10001_22807#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@1) null (PredicateMaskField_3301 pm_f_13@@0))) o2_13@@14 f_30@@14) (= (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@1) o2_13@@14 f_30@@14) (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@14 f_30@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| ExhaleHeap@@0) o2_13@@14 f_30@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3301_20686 pm_f_13@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6184) (ExhaleHeap@@1 T@PolymorphicMapType_6184) (Mask@@2 T@PolymorphicMapType_6205) (pm_f_13@@1 T@Field_10001_10002) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_10001_10002 Mask@@2 null pm_f_13@@1) (IsWandField_10001_23972 pm_f_13@@1)) (and (and (and (and (and (and (and (forall ((o2_13@@15 T@Ref) (f_30@@15 T@Field_6257_6258) ) (!  (=> (select (|PolymorphicMapType_6733_3301_3302#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@2) null (WandMaskField_10001 pm_f_13@@1))) o2_13@@15 f_30@@15) (= (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@2) o2_13@@15 f_30@@15) (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@15 f_30@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@15 f_30@@15))
)) (forall ((o2_13@@16 T@Ref) (f_30@@16 T@Field_6244_53) ) (!  (=> (select (|PolymorphicMapType_6733_3301_53#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@2) null (WandMaskField_10001 pm_f_13@@1))) o2_13@@16 f_30@@16) (= (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@2) o2_13@@16 f_30@@16) (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@16 f_30@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@16 f_30@@16))
))) (forall ((o2_13@@17 T@Ref) (f_30@@17 T@Field_3301_10002) ) (!  (=> (select (|PolymorphicMapType_6733_3301_10002#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@2) null (WandMaskField_10001 pm_f_13@@1))) o2_13@@17 f_30@@17) (= (select (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@2) o2_13@@17 f_30@@17) (select (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@17 f_30@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@17 f_30@@17))
))) (forall ((o2_13@@18 T@Ref) (f_30@@18 T@Field_3301_12917) ) (!  (=> (select (|PolymorphicMapType_6733_3301_21957#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@2) null (WandMaskField_10001 pm_f_13@@1))) o2_13@@18 f_30@@18) (= (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@2) o2_13@@18 f_30@@18) (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@18 f_30@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@18 f_30@@18))
))) (forall ((o2_13@@19 T@Ref) (f_30@@19 T@Field_10001_3302) ) (!  (=> (select (|PolymorphicMapType_6733_10001_3302#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@2) null (WandMaskField_10001 pm_f_13@@1))) o2_13@@19 f_30@@19) (= (select (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@2) o2_13@@19 f_30@@19) (select (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@19 f_30@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@19 f_30@@19))
))) (forall ((o2_13@@20 T@Ref) (f_30@@20 T@Field_10001_53) ) (!  (=> (select (|PolymorphicMapType_6733_10001_53#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@2) null (WandMaskField_10001 pm_f_13@@1))) o2_13@@20 f_30@@20) (= (select (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@2) o2_13@@20 f_30@@20) (select (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@20 f_30@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@20 f_30@@20))
))) (forall ((o2_13@@21 T@Ref) (f_30@@21 T@Field_10001_10002) ) (!  (=> (select (|PolymorphicMapType_6733_10001_10002#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@2) null (WandMaskField_10001 pm_f_13@@1))) o2_13@@21 f_30@@21) (= (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@2) o2_13@@21 f_30@@21) (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@21 f_30@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@21 f_30@@21))
))) (forall ((o2_13@@22 T@Ref) (f_30@@22 T@Field_12912_12917) ) (!  (=> (select (|PolymorphicMapType_6733_10001_22807#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@2) null (WandMaskField_10001 pm_f_13@@1))) o2_13@@22 f_30@@22) (= (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@2) o2_13@@22 f_30@@22) (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@22 f_30@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| ExhaleHeap@@1) o2_13@@22 f_30@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_10001_23972 pm_f_13@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6184) (ExhaleHeap@@2 T@PolymorphicMapType_6184) (Mask@@3 T@PolymorphicMapType_6205) (pm_f_13@@2 T@Field_3301_10002) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3301_10002 Mask@@3 null pm_f_13@@2) (IsWandField_3301_23615 pm_f_13@@2)) (and (and (and (and (and (and (and (forall ((o2_13@@23 T@Ref) (f_30@@23 T@Field_6257_6258) ) (!  (=> (select (|PolymorphicMapType_6733_3301_3302#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@3) null (WandMaskField_3301 pm_f_13@@2))) o2_13@@23 f_30@@23) (= (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@3) o2_13@@23 f_30@@23) (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@23 f_30@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@23 f_30@@23))
)) (forall ((o2_13@@24 T@Ref) (f_30@@24 T@Field_6244_53) ) (!  (=> (select (|PolymorphicMapType_6733_3301_53#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@3) null (WandMaskField_3301 pm_f_13@@2))) o2_13@@24 f_30@@24) (= (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@3) o2_13@@24 f_30@@24) (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@24 f_30@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@24 f_30@@24))
))) (forall ((o2_13@@25 T@Ref) (f_30@@25 T@Field_3301_10002) ) (!  (=> (select (|PolymorphicMapType_6733_3301_10002#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@3) null (WandMaskField_3301 pm_f_13@@2))) o2_13@@25 f_30@@25) (= (select (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@3) o2_13@@25 f_30@@25) (select (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@25 f_30@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@25 f_30@@25))
))) (forall ((o2_13@@26 T@Ref) (f_30@@26 T@Field_3301_12917) ) (!  (=> (select (|PolymorphicMapType_6733_3301_21957#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@3) null (WandMaskField_3301 pm_f_13@@2))) o2_13@@26 f_30@@26) (= (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@3) o2_13@@26 f_30@@26) (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@26 f_30@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@26 f_30@@26))
))) (forall ((o2_13@@27 T@Ref) (f_30@@27 T@Field_10001_3302) ) (!  (=> (select (|PolymorphicMapType_6733_10001_3302#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@3) null (WandMaskField_3301 pm_f_13@@2))) o2_13@@27 f_30@@27) (= (select (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@3) o2_13@@27 f_30@@27) (select (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@27 f_30@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@27 f_30@@27))
))) (forall ((o2_13@@28 T@Ref) (f_30@@28 T@Field_10001_53) ) (!  (=> (select (|PolymorphicMapType_6733_10001_53#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@3) null (WandMaskField_3301 pm_f_13@@2))) o2_13@@28 f_30@@28) (= (select (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@3) o2_13@@28 f_30@@28) (select (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@28 f_30@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@28 f_30@@28))
))) (forall ((o2_13@@29 T@Ref) (f_30@@29 T@Field_10001_10002) ) (!  (=> (select (|PolymorphicMapType_6733_10001_10002#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@3) null (WandMaskField_3301 pm_f_13@@2))) o2_13@@29 f_30@@29) (= (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@3) o2_13@@29 f_30@@29) (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@29 f_30@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@29 f_30@@29))
))) (forall ((o2_13@@30 T@Ref) (f_30@@30 T@Field_12912_12917) ) (!  (=> (select (|PolymorphicMapType_6733_10001_22807#PolymorphicMapType_6733| (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@3) null (WandMaskField_3301 pm_f_13@@2))) o2_13@@30 f_30@@30) (= (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@3) o2_13@@30 f_30@@30) (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@30 f_30@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| ExhaleHeap@@2) o2_13@@30 f_30@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3301_23615 pm_f_13@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6184) (Heap1@@0 T@PolymorphicMapType_6184) (Heap2 T@PolymorphicMapType_6184) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12912_12917) ) (!  (not (select (|PolymorphicMapType_6733_10001_22807#PolymorphicMapType_6733| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6733_10001_22807#PolymorphicMapType_6733| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10001_10002) ) (!  (not (select (|PolymorphicMapType_6733_10001_10002#PolymorphicMapType_6733| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6733_10001_10002#PolymorphicMapType_6733| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10001_53) ) (!  (not (select (|PolymorphicMapType_6733_10001_53#PolymorphicMapType_6733| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6733_10001_53#PolymorphicMapType_6733| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10001_3302) ) (!  (not (select (|PolymorphicMapType_6733_10001_3302#PolymorphicMapType_6733| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6733_10001_3302#PolymorphicMapType_6733| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3301_12917) ) (!  (not (select (|PolymorphicMapType_6733_3301_21957#PolymorphicMapType_6733| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6733_3301_21957#PolymorphicMapType_6733| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3301_10002) ) (!  (not (select (|PolymorphicMapType_6733_3301_10002#PolymorphicMapType_6733| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6733_3301_10002#PolymorphicMapType_6733| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_6244_53) ) (!  (not (select (|PolymorphicMapType_6733_3301_53#PolymorphicMapType_6733| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6733_3301_53#PolymorphicMapType_6733| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_6257_6258) ) (!  (not (select (|PolymorphicMapType_6733_3301_3302#PolymorphicMapType_6733| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6733_3301_3302#PolymorphicMapType_6733| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6184) (this T@Ref) (i Int) ) (! (dummyFunction_1477 (|at#triggerStateless| this i))
 :qid |stdinbpl.199:15|
 :skolemid |23|
 :pattern ( (|at'| Heap@@4 this i))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_3368_3369 (valid this@@0))
 :qid |stdinbpl.495:15|
 :skolemid |34|
 :pattern ( (valid this@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6184) (this@@1 T@Ref) ) (! (dummyFunction_1477 (|size#triggerStateless| this@@1))
 :qid |stdinbpl.353:15|
 :skolemid |28|
 :pattern ( (|size'| Heap@@5 this@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6184) (this@@2 T@Ref) ) (! (|valid#everUsed_3368| (valid this@@2))
 :qid |stdinbpl.514:15|
 :skolemid |38|
 :pattern ( (|valid#trigger_3368| Heap@@6 (valid this@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6184) (this@@3 T@Ref) ) (!  (and (= (size_2 Heap@@7 this@@3) (|size'| Heap@@7 this@@3)) (dummyFunction_1477 (|size#triggerStateless| this@@3)))
 :qid |stdinbpl.349:15|
 :skolemid |27|
 :pattern ( (size_2 Heap@@7 this@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6184) (ExhaleHeap@@3 T@PolymorphicMapType_6184) (Mask@@4 T@PolymorphicMapType_6205) (pm_f_13@@3 T@Field_10001_10002) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_10001_10002 Mask@@4 null pm_f_13@@3) (IsPredicateField_3368_3369 pm_f_13@@3)) (= (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@8) null (PredicateMaskField_3368 pm_f_13@@3)) (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| ExhaleHeap@@3) null (PredicateMaskField_3368 pm_f_13@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3368_3369 pm_f_13@@3) (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| ExhaleHeap@@3) null (PredicateMaskField_3368 pm_f_13@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6184) (ExhaleHeap@@4 T@PolymorphicMapType_6184) (Mask@@5 T@PolymorphicMapType_6205) (pm_f_13@@4 T@Field_3301_10002) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3301_10002 Mask@@5 null pm_f_13@@4) (IsPredicateField_3301_20686 pm_f_13@@4)) (= (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@9) null (PredicateMaskField_3301 pm_f_13@@4)) (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| ExhaleHeap@@4) null (PredicateMaskField_3301 pm_f_13@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3301_20686 pm_f_13@@4) (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| ExhaleHeap@@4) null (PredicateMaskField_3301 pm_f_13@@4)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6184) (ExhaleHeap@@5 T@PolymorphicMapType_6184) (Mask@@6 T@PolymorphicMapType_6205) (pm_f_13@@5 T@Field_10001_10002) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_10001_10002 Mask@@6 null pm_f_13@@5) (IsWandField_10001_23972 pm_f_13@@5)) (= (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@10) null (WandMaskField_10001 pm_f_13@@5)) (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| ExhaleHeap@@5) null (WandMaskField_10001 pm_f_13@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (IsWandField_10001_23972 pm_f_13@@5) (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| ExhaleHeap@@5) null (WandMaskField_10001 pm_f_13@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6184) (ExhaleHeap@@6 T@PolymorphicMapType_6184) (Mask@@7 T@PolymorphicMapType_6205) (pm_f_13@@6 T@Field_3301_10002) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3301_10002 Mask@@7 null pm_f_13@@6) (IsWandField_3301_23615 pm_f_13@@6)) (= (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@11) null (WandMaskField_3301 pm_f_13@@6)) (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| ExhaleHeap@@6) null (WandMaskField_3301 pm_f_13@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (IsWandField_3301_23615 pm_f_13@@6) (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| ExhaleHeap@@6) null (WandMaskField_3301 pm_f_13@@6)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6184) (Mask@@8 T@PolymorphicMapType_6205) (this@@4 T@Ref) ) (!  (=> (and (state Heap@@12 Mask@@8) (< AssumeFunctionsAbove 1)) (=> (not (= this@@4 null)) (= (size_2 Heap@@12 this@@4) (ite (= (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@12) this@@4 next) null) 1 (+ 1 (|size'| Heap@@12 (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@12) this@@4 next)))))))
 :qid |stdinbpl.359:15|
 :skolemid |29|
 :pattern ( (state Heap@@12 Mask@@8) (size_2 Heap@@12 this@@4))
 :pattern ( (state Heap@@12 Mask@@8) (|size#triggerStateless| this@@4) (|valid#trigger_3368| Heap@@12 (valid this@@4)))
)))
(assert (forall ((this@@5 T@Ref) (this2 T@Ref) ) (!  (=> (= (valid this@@5) (valid this2)) (= this@@5 this2))
 :qid |stdinbpl.505:15|
 :skolemid |36|
 :pattern ( (valid this@@5) (valid this2))
)))
(assert (forall ((this@@6 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|valid#sm| this@@6) (|valid#sm| this2@@0)) (= this@@6 this2@@0))
 :qid |stdinbpl.509:15|
 :skolemid |37|
 :pattern ( (|valid#sm| this@@6) (|valid#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6184) (ExhaleHeap@@7 T@PolymorphicMapType_6184) (Mask@@9 T@PolymorphicMapType_6205) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@13) o_22 $allocated) (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| ExhaleHeap@@7) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| ExhaleHeap@@7) o_22 $allocated))
)))
(assert (forall ((p T@Field_3301_10002) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6244_6244 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6244_6244 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_10001_10002) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3368_3368 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3368_3368 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6184) (Mask@@10 T@PolymorphicMapType_6205) (this@@7 T@Ref) ) (!  (=> (and (state Heap@@14 Mask@@10) (or (< AssumeFunctionsAbove 1) (|size#trigger| (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@14) null (valid this@@7)) this@@7))) (=> (not (= this@@7 null)) (>= (|size'| Heap@@14 this@@7) 1)))
 :qid |stdinbpl.372:15|
 :skolemid |31|
 :pattern ( (state Heap@@14 Mask@@10) (|size'| Heap@@14 this@@7))
)))
(assert  (not (IsPredicateField_3301_3302 next)))
(assert  (not (IsWandField_3301_3302 next)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6184) (ExhaleHeap@@8 T@PolymorphicMapType_6184) (Mask@@11 T@PolymorphicMapType_6205) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@15 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6205) (o_2@@7 T@Ref) (f_4@@7 T@Field_3301_12917) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6205_3301_27859#PolymorphicMapType_6205| Mask@@12) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3301_29683 f_4@@7))) (not (IsWandField_3301_29699 f_4@@7))) (<= (select (|PolymorphicMapType_6205_3301_27859#PolymorphicMapType_6205| Mask@@12) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6205_3301_27859#PolymorphicMapType_6205| Mask@@12) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6205) (o_2@@8 T@Ref) (f_4@@8 T@Field_6244_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6205_3301_53#PolymorphicMapType_6205| Mask@@13) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3301_53 f_4@@8))) (not (IsWandField_3301_53 f_4@@8))) (<= (select (|PolymorphicMapType_6205_3301_53#PolymorphicMapType_6205| Mask@@13) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6205_3301_53#PolymorphicMapType_6205| Mask@@13) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6205) (o_2@@9 T@Ref) (f_4@@9 T@Field_6257_6258) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| Mask@@14) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3301_3302 f_4@@9))) (not (IsWandField_3301_3302 f_4@@9))) (<= (select (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| Mask@@14) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| Mask@@14) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6205) (o_2@@10 T@Ref) (f_4@@10 T@Field_3301_10002) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6205_3301_3369#PolymorphicMapType_6205| Mask@@15) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3301_20686 f_4@@10))) (not (IsWandField_3301_23615 f_4@@10))) (<= (select (|PolymorphicMapType_6205_3301_3369#PolymorphicMapType_6205| Mask@@15) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6205_3301_3369#PolymorphicMapType_6205| Mask@@15) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6205) (o_2@@11 T@Ref) (f_4@@11 T@Field_12912_12917) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6205_3368_27528#PolymorphicMapType_6205| Mask@@16) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3368_29034 f_4@@11))) (not (IsWandField_3368_29050 f_4@@11))) (<= (select (|PolymorphicMapType_6205_3368_27528#PolymorphicMapType_6205| Mask@@16) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6205_3368_27528#PolymorphicMapType_6205| Mask@@16) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6205) (o_2@@12 T@Ref) (f_4@@12 T@Field_10001_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6205_3368_53#PolymorphicMapType_6205| Mask@@17) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3368_53 f_4@@12))) (not (IsWandField_3368_53 f_4@@12))) (<= (select (|PolymorphicMapType_6205_3368_53#PolymorphicMapType_6205| Mask@@17) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6205_3368_53#PolymorphicMapType_6205| Mask@@17) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6205) (o_2@@13 T@Ref) (f_4@@13 T@Field_10001_3302) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6205_3368_3302#PolymorphicMapType_6205| Mask@@18) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3368_3302 f_4@@13))) (not (IsWandField_3368_3302 f_4@@13))) (<= (select (|PolymorphicMapType_6205_3368_3302#PolymorphicMapType_6205| Mask@@18) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6205_3368_3302#PolymorphicMapType_6205| Mask@@18) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6205) (o_2@@14 T@Ref) (f_4@@14 T@Field_10001_10002) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| Mask@@19) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3368_3369 f_4@@14))) (not (IsWandField_10001_23972 f_4@@14))) (<= (select (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| Mask@@19) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| Mask@@19) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6205) (o_2@@15 T@Ref) (f_4@@15 T@Field_12912_12917) ) (! (= (HasDirectPerm_10001_20441 Mask@@20 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_6205_3368_27528#PolymorphicMapType_6205| Mask@@20) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10001_20441 Mask@@20 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6205) (o_2@@16 T@Ref) (f_4@@16 T@Field_10001_10002) ) (! (= (HasDirectPerm_10001_10002 Mask@@21 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| Mask@@21) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10001_10002 Mask@@21 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6205) (o_2@@17 T@Ref) (f_4@@17 T@Field_10001_53) ) (! (= (HasDirectPerm_10001_53 Mask@@22 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_6205_3368_53#PolymorphicMapType_6205| Mask@@22) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10001_53 Mask@@22 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6205) (o_2@@18 T@Ref) (f_4@@18 T@Field_10001_3302) ) (! (= (HasDirectPerm_10001_3302 Mask@@23 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_6205_3368_3302#PolymorphicMapType_6205| Mask@@23) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10001_3302 Mask@@23 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6205) (o_2@@19 T@Ref) (f_4@@19 T@Field_3301_12917) ) (! (= (HasDirectPerm_3301_19501 Mask@@24 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_6205_3301_27859#PolymorphicMapType_6205| Mask@@24) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3301_19501 Mask@@24 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6205) (o_2@@20 T@Ref) (f_4@@20 T@Field_3301_10002) ) (! (= (HasDirectPerm_3301_10002 Mask@@25 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_6205_3301_3369#PolymorphicMapType_6205| Mask@@25) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3301_10002 Mask@@25 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6205) (o_2@@21 T@Ref) (f_4@@21 T@Field_6244_53) ) (! (= (HasDirectPerm_3301_53 Mask@@26 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_6205_3301_53#PolymorphicMapType_6205| Mask@@26) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3301_53 Mask@@26 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6205) (o_2@@22 T@Ref) (f_4@@22 T@Field_6257_6258) ) (! (= (HasDirectPerm_3301_3302 Mask@@27 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| Mask@@27) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3301_3302 Mask@@27 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6184) (ExhaleHeap@@9 T@PolymorphicMapType_6184) (Mask@@28 T@PolymorphicMapType_6205) (o_22@@0 T@Ref) (f_30@@31 T@Field_12912_12917) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@28) (=> (HasDirectPerm_10001_20441 Mask@@28 o_22@@0 f_30@@31) (= (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@16) o_22@@0 f_30@@31) (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| ExhaleHeap@@9) o_22@@0 f_30@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@28) (select (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| ExhaleHeap@@9) o_22@@0 f_30@@31))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6184) (ExhaleHeap@@10 T@PolymorphicMapType_6184) (Mask@@29 T@PolymorphicMapType_6205) (o_22@@1 T@Ref) (f_30@@32 T@Field_10001_10002) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@29) (=> (HasDirectPerm_10001_10002 Mask@@29 o_22@@1 f_30@@32) (= (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@17) o_22@@1 f_30@@32) (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| ExhaleHeap@@10) o_22@@1 f_30@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@29) (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| ExhaleHeap@@10) o_22@@1 f_30@@32))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6184) (ExhaleHeap@@11 T@PolymorphicMapType_6184) (Mask@@30 T@PolymorphicMapType_6205) (o_22@@2 T@Ref) (f_30@@33 T@Field_10001_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@30) (=> (HasDirectPerm_10001_53 Mask@@30 o_22@@2 f_30@@33) (= (select (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@18) o_22@@2 f_30@@33) (select (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| ExhaleHeap@@11) o_22@@2 f_30@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@30) (select (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| ExhaleHeap@@11) o_22@@2 f_30@@33))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6184) (ExhaleHeap@@12 T@PolymorphicMapType_6184) (Mask@@31 T@PolymorphicMapType_6205) (o_22@@3 T@Ref) (f_30@@34 T@Field_10001_3302) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@31) (=> (HasDirectPerm_10001_3302 Mask@@31 o_22@@3 f_30@@34) (= (select (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@19) o_22@@3 f_30@@34) (select (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| ExhaleHeap@@12) o_22@@3 f_30@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@31) (select (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| ExhaleHeap@@12) o_22@@3 f_30@@34))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6184) (ExhaleHeap@@13 T@PolymorphicMapType_6184) (Mask@@32 T@PolymorphicMapType_6205) (o_22@@4 T@Ref) (f_30@@35 T@Field_3301_12917) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@32) (=> (HasDirectPerm_3301_19501 Mask@@32 o_22@@4 f_30@@35) (= (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@20) o_22@@4 f_30@@35) (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| ExhaleHeap@@13) o_22@@4 f_30@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@32) (select (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| ExhaleHeap@@13) o_22@@4 f_30@@35))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6184) (ExhaleHeap@@14 T@PolymorphicMapType_6184) (Mask@@33 T@PolymorphicMapType_6205) (o_22@@5 T@Ref) (f_30@@36 T@Field_3301_10002) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@33) (=> (HasDirectPerm_3301_10002 Mask@@33 o_22@@5 f_30@@36) (= (select (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@21) o_22@@5 f_30@@36) (select (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| ExhaleHeap@@14) o_22@@5 f_30@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@33) (select (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| ExhaleHeap@@14) o_22@@5 f_30@@36))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6184) (ExhaleHeap@@15 T@PolymorphicMapType_6184) (Mask@@34 T@PolymorphicMapType_6205) (o_22@@6 T@Ref) (f_30@@37 T@Field_6244_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@34) (=> (HasDirectPerm_3301_53 Mask@@34 o_22@@6 f_30@@37) (= (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@22) o_22@@6 f_30@@37) (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| ExhaleHeap@@15) o_22@@6 f_30@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@34) (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| ExhaleHeap@@15) o_22@@6 f_30@@37))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6184) (ExhaleHeap@@16 T@PolymorphicMapType_6184) (Mask@@35 T@PolymorphicMapType_6205) (o_22@@7 T@Ref) (f_30@@38 T@Field_6257_6258) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@35) (=> (HasDirectPerm_3301_3302 Mask@@35 o_22@@7 f_30@@38) (= (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@23) o_22@@7 f_30@@38) (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| ExhaleHeap@@16) o_22@@7 f_30@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@35) (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| ExhaleHeap@@16) o_22@@7 f_30@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_3301_12917) ) (! (= (select (|PolymorphicMapType_6205_3301_27859#PolymorphicMapType_6205| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6205_3301_27859#PolymorphicMapType_6205| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_6244_53) ) (! (= (select (|PolymorphicMapType_6205_3301_53#PolymorphicMapType_6205| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6205_3301_53#PolymorphicMapType_6205| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_6257_6258) ) (! (= (select (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_3301_10002) ) (! (= (select (|PolymorphicMapType_6205_3301_3369#PolymorphicMapType_6205| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6205_3301_3369#PolymorphicMapType_6205| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_12912_12917) ) (! (= (select (|PolymorphicMapType_6205_3368_27528#PolymorphicMapType_6205| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6205_3368_27528#PolymorphicMapType_6205| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_10001_53) ) (! (= (select (|PolymorphicMapType_6205_3368_53#PolymorphicMapType_6205| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6205_3368_53#PolymorphicMapType_6205| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_10001_3302) ) (! (= (select (|PolymorphicMapType_6205_3368_3302#PolymorphicMapType_6205| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6205_3368_3302#PolymorphicMapType_6205| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_10001_10002) ) (! (= (select (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6184) (this@@8 T@Ref) (i@@0 Int) ) (!  (and (= (at_1 Heap@@24 this@@8 i@@0) (|at'| Heap@@24 this@@8 i@@0)) (dummyFunction_1477 (|at#triggerStateless| this@@8 i@@0)))
 :qid |stdinbpl.195:15|
 :skolemid |22|
 :pattern ( (at_1 Heap@@24 this@@8 i@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6205) (SummandMask1 T@PolymorphicMapType_6205) (SummandMask2 T@PolymorphicMapType_6205) (o_2@@31 T@Ref) (f_4@@31 T@Field_3301_12917) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6205_3301_27859#PolymorphicMapType_6205| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_6205_3301_27859#PolymorphicMapType_6205| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_6205_3301_27859#PolymorphicMapType_6205| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6205_3301_27859#PolymorphicMapType_6205| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6205_3301_27859#PolymorphicMapType_6205| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6205_3301_27859#PolymorphicMapType_6205| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6205) (SummandMask1@@0 T@PolymorphicMapType_6205) (SummandMask2@@0 T@PolymorphicMapType_6205) (o_2@@32 T@Ref) (f_4@@32 T@Field_6244_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6205_3301_53#PolymorphicMapType_6205| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_6205_3301_53#PolymorphicMapType_6205| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_6205_3301_53#PolymorphicMapType_6205| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6205_3301_53#PolymorphicMapType_6205| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6205_3301_53#PolymorphicMapType_6205| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6205_3301_53#PolymorphicMapType_6205| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6205) (SummandMask1@@1 T@PolymorphicMapType_6205) (SummandMask2@@1 T@PolymorphicMapType_6205) (o_2@@33 T@Ref) (f_4@@33 T@Field_6257_6258) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6205) (SummandMask1@@2 T@PolymorphicMapType_6205) (SummandMask2@@2 T@PolymorphicMapType_6205) (o_2@@34 T@Ref) (f_4@@34 T@Field_3301_10002) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6205_3301_3369#PolymorphicMapType_6205| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_6205_3301_3369#PolymorphicMapType_6205| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_6205_3301_3369#PolymorphicMapType_6205| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6205_3301_3369#PolymorphicMapType_6205| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6205_3301_3369#PolymorphicMapType_6205| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6205_3301_3369#PolymorphicMapType_6205| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6205) (SummandMask1@@3 T@PolymorphicMapType_6205) (SummandMask2@@3 T@PolymorphicMapType_6205) (o_2@@35 T@Ref) (f_4@@35 T@Field_12912_12917) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6205_3368_27528#PolymorphicMapType_6205| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_6205_3368_27528#PolymorphicMapType_6205| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_6205_3368_27528#PolymorphicMapType_6205| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6205_3368_27528#PolymorphicMapType_6205| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6205_3368_27528#PolymorphicMapType_6205| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6205_3368_27528#PolymorphicMapType_6205| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6205) (SummandMask1@@4 T@PolymorphicMapType_6205) (SummandMask2@@4 T@PolymorphicMapType_6205) (o_2@@36 T@Ref) (f_4@@36 T@Field_10001_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6205_3368_53#PolymorphicMapType_6205| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_6205_3368_53#PolymorphicMapType_6205| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_6205_3368_53#PolymorphicMapType_6205| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6205_3368_53#PolymorphicMapType_6205| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6205_3368_53#PolymorphicMapType_6205| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6205_3368_53#PolymorphicMapType_6205| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6205) (SummandMask1@@5 T@PolymorphicMapType_6205) (SummandMask2@@5 T@PolymorphicMapType_6205) (o_2@@37 T@Ref) (f_4@@37 T@Field_10001_3302) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6205_3368_3302#PolymorphicMapType_6205| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_6205_3368_3302#PolymorphicMapType_6205| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_6205_3368_3302#PolymorphicMapType_6205| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6205_3368_3302#PolymorphicMapType_6205| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6205_3368_3302#PolymorphicMapType_6205| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6205_3368_3302#PolymorphicMapType_6205| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6205) (SummandMask1@@6 T@PolymorphicMapType_6205) (SummandMask2@@6 T@PolymorphicMapType_6205) (o_2@@38 T@Ref) (f_4@@38 T@Field_10001_10002) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6184) (Mask@@36 T@PolymorphicMapType_6205) (this@@9 T@Ref) (i@@1 Int) ) (!  (=> (state Heap@@25 Mask@@36) (= (|at'| Heap@@25 this@@9 i@@1) (|at#frame| (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@25) null (valid this@@9)) this@@9 i@@1)))
 :qid |stdinbpl.212:15|
 :skolemid |25|
 :pattern ( (state Heap@@25 Mask@@36) (|at'| Heap@@25 this@@9 i@@1))
 :pattern ( (state Heap@@25 Mask@@36) (|at#triggerStateless| this@@9 i@@1) (|valid#trigger_3368| Heap@@25 (valid this@@9)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6184) (Mask@@37 T@PolymorphicMapType_6205) (this@@10 T@Ref) ) (!  (=> (state Heap@@26 Mask@@37) (= (|size'| Heap@@26 this@@10) (|size#frame| (select (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@26) null (valid this@@10)) this@@10)))
 :qid |stdinbpl.366:15|
 :skolemid |30|
 :pattern ( (state Heap@@26 Mask@@37) (|size'| Heap@@26 this@@10))
 :pattern ( (state Heap@@26 Mask@@37) (|size#triggerStateless| this@@10) (|valid#trigger_3368| Heap@@26 (valid this@@10)))
)))
(assert (forall ((this@@11 T@Ref) ) (! (= (getPredWandId_3368_3369 (valid this@@11)) 0)
 :qid |stdinbpl.499:15|
 :skolemid |35|
 :pattern ( (valid this@@11))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6184) (o_35 T@Ref) (f_11 T@Field_12912_12917) (v T@PolymorphicMapType_6733) ) (! (succHeap Heap@@27 (PolymorphicMapType_6184 (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@27) (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@27) (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@27) (store (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@27) o_35 f_11 v) (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@27) (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@27) (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@27) (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6184 (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@27) (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@27) (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@27) (store (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@27) o_35 f_11 v) (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@27) (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@27) (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@27) (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6184) (o_35@@0 T@Ref) (f_11@@0 T@Field_10001_10002) (v@@0 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_6184 (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@28) (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@28) (store (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@28) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@28) (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@28) (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@28) (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@28) (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6184 (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@28) (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@28) (store (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@28) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@28) (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@28) (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@28) (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@28) (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6184) (o_35@@1 T@Ref) (f_11@@1 T@Field_10001_3302) (v@@1 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_6184 (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@29) (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@29) (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@29) (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@29) (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@29) (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@29) (store (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@29) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6184 (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@29) (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@29) (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@29) (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@29) (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@29) (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@29) (store (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@29) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6184) (o_35@@2 T@Ref) (f_11@@2 T@Field_10001_53) (v@@2 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_6184 (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@30) (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@30) (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@30) (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@30) (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@30) (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@30) (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@30) (store (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@30) o_35@@2 f_11@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6184 (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@30) (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@30) (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@30) (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@30) (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@30) (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@30) (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@30) (store (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@30) o_35@@2 f_11@@2 v@@2)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6184) (o_35@@3 T@Ref) (f_11@@3 T@Field_3301_12917) (v@@3 T@PolymorphicMapType_6733) ) (! (succHeap Heap@@31 (PolymorphicMapType_6184 (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@31) (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@31) (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@31) (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@31) (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@31) (store (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@31) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@31) (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6184 (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@31) (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@31) (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@31) (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@31) (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@31) (store (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@31) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@31) (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6184) (o_35@@4 T@Ref) (f_11@@4 T@Field_3301_10002) (v@@4 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_6184 (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@32) (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@32) (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@32) (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@32) (store (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@32) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@32) (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@32) (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6184 (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@32) (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@32) (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@32) (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@32) (store (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@32) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@32) (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@32) (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6184) (o_35@@5 T@Ref) (f_11@@5 T@Field_6257_6258) (v@@5 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_6184 (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@33) (store (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@33) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@33) (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@33) (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@33) (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@33) (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@33) (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6184 (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@33) (store (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@33) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@33) (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@33) (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@33) (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@33) (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@33) (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6184) (o_35@@6 T@Ref) (f_11@@6 T@Field_6244_53) (v@@6 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_6184 (store (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@34) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@34) (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@34) (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@34) (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@34) (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@34) (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@34) (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6184 (store (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@34) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@34) (|PolymorphicMapType_6184_3368_3369#PolymorphicMapType_6184| Heap@@34) (|PolymorphicMapType_6184_3372_13004#PolymorphicMapType_6184| Heap@@34) (|PolymorphicMapType_6184_3301_10002#PolymorphicMapType_6184| Heap@@34) (|PolymorphicMapType_6184_3301_19543#PolymorphicMapType_6184| Heap@@34) (|PolymorphicMapType_6184_10001_3302#PolymorphicMapType_6184| Heap@@34) (|PolymorphicMapType_6184_10001_53#PolymorphicMapType_6184| Heap@@34)))
)))
(assert (forall ((this@@12 T@Ref) ) (! (= (PredicateMaskField_3368 (valid this@@12)) (|valid#sm| this@@12))
 :qid |stdinbpl.491:15|
 :skolemid |33|
 :pattern ( (PredicateMaskField_3368 (valid this@@12)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6184) (Mask@@38 T@PolymorphicMapType_6205) (this@@13 T@Ref) (i@@2 Int) ) (!  (=> (and (state Heap@@35 Mask@@38) (< AssumeFunctionsAbove 0)) (=> (and (not (= this@@13 null)) (and (<= 0 i@@2) (< i@@2 (size_2 Heap@@35 this@@13)))) (= (at_1 Heap@@35 this@@13 i@@2) (ite (= i@@2 0) 0 (|at'| Heap@@35 (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@35) this@@13 next) (- i@@2 1))))))
 :qid |stdinbpl.205:15|
 :skolemid |24|
 :pattern ( (state Heap@@35 Mask@@38) (at_1 Heap@@35 this@@13 i@@2))
 :pattern ( (state Heap@@35 Mask@@38) (|at#triggerStateless| this@@13 i@@2) (|valid#trigger_3368| Heap@@35 (valid this@@13)))
)))
(assert (forall ((o_35@@7 T@Ref) (f_31 T@Field_6257_6258) (Heap@@36 T@PolymorphicMapType_6184) ) (!  (=> (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@36) o_35@@7 $allocated) (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@36) (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@36) o_35@@7 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@36) o_35@@7 f_31))
)))
(assert (forall ((p@@2 T@Field_3301_10002) (v_1@@1 T@FrameType) (q T@Field_3301_10002) (w@@1 T@FrameType) (r T@Field_3301_10002) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6244_6244 p@@2 v_1@@1 q w@@1) (InsidePredicate_6244_6244 q w@@1 r u)) (InsidePredicate_6244_6244 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6244_6244 p@@2 v_1@@1 q w@@1) (InsidePredicate_6244_6244 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_3301_10002) (v_1@@2 T@FrameType) (q@@0 T@Field_3301_10002) (w@@2 T@FrameType) (r@@0 T@Field_10001_10002) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_6244_6244 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6244_3368 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_6244_3368 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6244_6244 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6244_3368 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_3301_10002) (v_1@@3 T@FrameType) (q@@1 T@Field_10001_10002) (w@@3 T@FrameType) (r@@1 T@Field_3301_10002) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_6244_3368 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3368_6244 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_6244_6244 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6244_3368 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3368_6244 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_3301_10002) (v_1@@4 T@FrameType) (q@@2 T@Field_10001_10002) (w@@4 T@FrameType) (r@@2 T@Field_10001_10002) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_6244_3368 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3368_3368 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_6244_3368 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6244_3368 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3368_3368 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_10001_10002) (v_1@@5 T@FrameType) (q@@3 T@Field_3301_10002) (w@@5 T@FrameType) (r@@3 T@Field_3301_10002) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_3368_6244 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6244_6244 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_3368_6244 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3368_6244 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6244_6244 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_10001_10002) (v_1@@6 T@FrameType) (q@@4 T@Field_3301_10002) (w@@6 T@FrameType) (r@@4 T@Field_10001_10002) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_3368_6244 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6244_3368 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_3368_3368 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3368_6244 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6244_3368 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_10001_10002) (v_1@@7 T@FrameType) (q@@5 T@Field_10001_10002) (w@@7 T@FrameType) (r@@5 T@Field_3301_10002) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_3368_3368 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3368_6244 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_3368_6244 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3368_3368 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3368_6244 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_10001_10002) (v_1@@8 T@FrameType) (q@@6 T@Field_10001_10002) (w@@8 T@FrameType) (r@@6 T@Field_10001_10002) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_3368_3368 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3368_3368 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_3368_3368 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3368_3368 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3368_3368 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@37 () T@PolymorphicMapType_6184)
(declare-fun this@@14 () T@Ref)
(declare-fun Mask@2 () T@PolymorphicMapType_6205)
(declare-fun Mask@0 () T@PolymorphicMapType_6205)
(declare-fun Mask@1 () T@PolymorphicMapType_6205)
(set-info :boogie-vc-id |valid#definedness|)
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
(let ((anon3_Else_correct  (=> (= (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@37) this@@14 next) null) (=> (and (= Mask@2 Mask@0) (= (ControlFlow 0 4) 1)) anon2_correct))))
(let ((anon3_Then_correct  (=> (not (= (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@37) this@@14 next) null)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_3301_3302 Mask@0 this@@14 next)) (=> (HasDirectPerm_3301_3302 Mask@0 this@@14 next) (=> (and (and (= Mask@1 (PolymorphicMapType_6205 (store (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| Mask@0) null (valid (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@37) this@@14 next)) (+ (select (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| Mask@0) null (valid (select (|PolymorphicMapType_6184_3176_3177#PolymorphicMapType_6184| Heap@@37) this@@14 next))) FullPerm)) (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| Mask@0) (|PolymorphicMapType_6205_3368_3302#PolymorphicMapType_6205| Mask@0) (|PolymorphicMapType_6205_3368_53#PolymorphicMapType_6205| Mask@0) (|PolymorphicMapType_6205_3368_27528#PolymorphicMapType_6205| Mask@0) (|PolymorphicMapType_6205_3301_3369#PolymorphicMapType_6205| Mask@0) (|PolymorphicMapType_6205_3301_53#PolymorphicMapType_6205| Mask@0) (|PolymorphicMapType_6205_3301_27859#PolymorphicMapType_6205| Mask@0))) (state Heap@@37 Mask@1)) (and (= Mask@2 Mask@1) (= (ControlFlow 0 2) 1))) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@37 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_6184_3173_53#PolymorphicMapType_6184| Heap@@37) this@@14 $allocated) (not (= this@@14 null))) (and (= Mask@0 (PolymorphicMapType_6205 (|PolymorphicMapType_6205_3368_3369#PolymorphicMapType_6205| ZeroMask) (store (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| ZeroMask) this@@14 next (+ (select (|PolymorphicMapType_6205_3301_3302#PolymorphicMapType_6205| ZeroMask) this@@14 next) FullPerm)) (|PolymorphicMapType_6205_3368_3302#PolymorphicMapType_6205| ZeroMask) (|PolymorphicMapType_6205_3368_53#PolymorphicMapType_6205| ZeroMask) (|PolymorphicMapType_6205_3368_27528#PolymorphicMapType_6205| ZeroMask) (|PolymorphicMapType_6205_3301_3369#PolymorphicMapType_6205| ZeroMask) (|PolymorphicMapType_6205_3301_53#PolymorphicMapType_6205| ZeroMask) (|PolymorphicMapType_6205_3301_27859#PolymorphicMapType_6205| ZeroMask))) (state Heap@@37 Mask@0))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_3301_3302 Mask@0 this@@14 next)) (=> (HasDirectPerm_3301_3302 Mask@0 this@@14 next) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
