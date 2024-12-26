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
(declare-sort T@Field_7373_53 0)
(declare-sort T@Field_7386_7387 0)
(declare-sort T@Field_12980_12981 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_3486_53 0)
(declare-sort T@Field_3486_7387 0)
(declare-sort T@Field_12993_12998 0)
(declare-sort T@Field_7373_3487 0)
(declare-sort T@Field_7373_12998 0)
(declare-datatypes ((T@PolymorphicMapType_7334 0)) (((PolymorphicMapType_7334 (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| (Array T@Ref T@Field_12980_12981 Real)) (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| (Array T@Ref T@Field_3486_53 Real)) (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| (Array T@Ref T@Field_3486_7387 Real)) (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| (Array T@Ref T@Field_12993_12998 Real)) (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| (Array T@Ref T@Field_7373_3487 Real)) (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| (Array T@Ref T@Field_7373_53 Real)) (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| (Array T@Ref T@Field_7386_7387 Real)) (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| (Array T@Ref T@Field_7373_12998 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7878 0)) (((PolymorphicMapType_7878 (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (Array T@Ref T@Field_7373_53 Bool)) (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (Array T@Ref T@Field_7386_7387 Bool)) (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (Array T@Ref T@Field_7373_3487 Bool)) (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (Array T@Ref T@Field_7373_12998 Bool)) (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (Array T@Ref T@Field_3486_53 Bool)) (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (Array T@Ref T@Field_3486_7387 Bool)) (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (Array T@Ref T@Field_12980_12981 Bool)) (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (Array T@Ref T@Field_12993_12998 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7313 0)) (((PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| (Array T@Ref T@Field_7373_53 Bool)) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| (Array T@Ref T@Field_7386_7387 T@Ref)) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| (Array T@Ref T@Field_12980_12981 T@FrameType)) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| (Array T@Ref T@Field_3486_53 Bool)) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| (Array T@Ref T@Field_3486_7387 T@Ref)) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| (Array T@Ref T@Field_12993_12998 T@PolymorphicMapType_7878)) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| (Array T@Ref T@Field_7373_3487 T@FrameType)) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| (Array T@Ref T@Field_7373_12998 T@PolymorphicMapType_7878)) ) ) ))
(declare-fun $allocated () T@Field_7373_53)
(declare-fun next () T@Field_7386_7387)
(declare-fun succHeap (T@PolymorphicMapType_7313 T@PolymorphicMapType_7313) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7313 T@PolymorphicMapType_7313) Bool)
(declare-fun state (T@PolymorphicMapType_7313 T@PolymorphicMapType_7334) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7334) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7313 T@PolymorphicMapType_7313 T@PolymorphicMapType_7334) Bool)
(declare-fun IsPredicateField_7373_23680 (T@Field_7373_3487) Bool)
(declare-fun HasDirectPerm_7373_3487 (T@PolymorphicMapType_7334 T@Ref T@Field_7373_3487) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7373 (T@Field_7373_3487) T@Field_7373_12998)
(declare-fun IsPredicateField_3486_3487 (T@Field_12980_12981) Bool)
(declare-fun HasDirectPerm_3486_3487 (T@PolymorphicMapType_7334 T@Ref T@Field_12980_12981) Bool)
(declare-fun PredicateMaskField_3486 (T@Field_12980_12981) T@Field_12993_12998)
(declare-fun IsWandField_7373_26656 (T@Field_7373_3487) Bool)
(declare-fun WandMaskField_7373 (T@Field_7373_3487) T@Field_7373_12998)
(declare-fun IsWandField_3486_26299 (T@Field_12980_12981) Bool)
(declare-fun WandMaskField_3486 (T@Field_12980_12981) T@Field_12993_12998)
(declare-fun IdenticalOnKnownLocationsLiberal (T@PolymorphicMapType_7313 T@PolymorphicMapType_7313 T@PolymorphicMapType_7334) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7878)
(declare-fun List (T@Ref) T@Field_12980_12981)
(declare-fun |List#trigger_3486| (T@PolymorphicMapType_7313 T@Field_12980_12981) Bool)
(declare-fun |List#everUsed_3486| (T@Field_12980_12981) Bool)
(declare-fun |List#sm| (T@Ref) T@Field_12993_12998)
(declare-fun dummyHeap () T@PolymorphicMapType_7313)
(declare-fun ZeroMask () T@PolymorphicMapType_7334)
(declare-fun InsidePredicate_12980_12980 (T@Field_12980_12981 T@FrameType T@Field_12980_12981 T@FrameType) Bool)
(declare-fun InsidePredicate_7373_7373 (T@Field_7373_3487 T@FrameType T@Field_7373_3487 T@FrameType) Bool)
(declare-fun IsPredicateField_3482_3483 (T@Field_7386_7387) Bool)
(declare-fun IsWandField_3482_3483 (T@Field_7386_7387) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7373_44434 (T@Field_7373_12998) Bool)
(declare-fun IsWandField_7373_44450 (T@Field_7373_12998) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7373_53 (T@Field_7373_53) Bool)
(declare-fun IsWandField_7373_53 (T@Field_7373_53) Bool)
(declare-fun IsPredicateField_3486_43785 (T@Field_12993_12998) Bool)
(declare-fun IsWandField_3486_43801 (T@Field_12993_12998) Bool)
(declare-fun IsPredicateField_3486_7387 (T@Field_3486_7387) Bool)
(declare-fun IsWandField_3486_7387 (T@Field_3486_7387) Bool)
(declare-fun IsPredicateField_3486_53 (T@Field_3486_53) Bool)
(declare-fun IsWandField_3486_53 (T@Field_3486_53) Bool)
(declare-fun HasDirectPerm_7373_23067 (T@PolymorphicMapType_7334 T@Ref T@Field_7373_12998) Bool)
(declare-fun HasDirectPerm_7373_7387 (T@PolymorphicMapType_7334 T@Ref T@Field_7386_7387) Bool)
(declare-fun HasDirectPerm_7373_53 (T@PolymorphicMapType_7334 T@Ref T@Field_7373_53) Bool)
(declare-fun HasDirectPerm_3486_22139 (T@PolymorphicMapType_7334 T@Ref T@Field_12993_12998) Bool)
(declare-fun HasDirectPerm_3486_7387 (T@PolymorphicMapType_7334 T@Ref T@Field_3486_7387) Bool)
(declare-fun HasDirectPerm_3486_53 (T@PolymorphicMapType_7334 T@Ref T@Field_3486_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7334 T@PolymorphicMapType_7334 T@PolymorphicMapType_7334) Bool)
(declare-fun SumHeap (T@PolymorphicMapType_7313 T@PolymorphicMapType_7313 T@PolymorphicMapType_7334 T@PolymorphicMapType_7313 T@PolymorphicMapType_7334) Bool)
(declare-fun getPredWandId_3486_3487 (T@Field_12980_12981) Int)
(declare-fun InsidePredicate_12980_7373 (T@Field_12980_12981 T@FrameType T@Field_7373_3487 T@FrameType) Bool)
(declare-fun InsidePredicate_7373_12980 (T@Field_7373_3487 T@FrameType T@Field_12980_12981 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7313) (Heap1 T@PolymorphicMapType_7313) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.95:15|
 :skolemid |12|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7313) (Mask T@PolymorphicMapType_7334) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.182:15|
 :skolemid |27|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7313) (ExhaleHeap T@PolymorphicMapType_7313) (Mask@@0 T@PolymorphicMapType_7334) (pm_f_13 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7373_3487 Mask@@0 null pm_f_13) (IsPredicateField_7373_23680 pm_f_13)) (and (and (and (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13 f_30) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@0) o2_13 f_30) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap) o2_13 f_30)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@0) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@0) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@0) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap) o2_13@@3 f_30@@3))
))) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@0) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@0) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@0) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap) o2_13@@6 f_30@@6))
)))))
 :qid |stdinbpl.54:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7373_23680 pm_f_13))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7313) (ExhaleHeap@@0 T@PolymorphicMapType_7313) (Mask@@1 T@PolymorphicMapType_7334) (pm_f_13@@0 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3486_3487 Mask@@1 null pm_f_13@@0) (IsPredicateField_3486_3487 pm_f_13@@0)) (and (and (and (and (and (and (and (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@1) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@7 f_30@@7))
)) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@1) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@8 f_30@@8))
))) (forall ((o2_13@@9 T@Ref) (f_30@@9 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@9 f_30@@9) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@1) o2_13@@9 f_30@@9) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@9 f_30@@9)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@9 f_30@@9))
))) (forall ((o2_13@@10 T@Ref) (f_30@@10 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@10 f_30@@10) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@1) o2_13@@10 f_30@@10) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@10 f_30@@10)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@10 f_30@@10))
))) (forall ((o2_13@@11 T@Ref) (f_30@@11 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@11 f_30@@11) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@1) o2_13@@11 f_30@@11) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@11 f_30@@11)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@11 f_30@@11))
))) (forall ((o2_13@@12 T@Ref) (f_30@@12 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@12 f_30@@12) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@1) o2_13@@12 f_30@@12) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@12 f_30@@12)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@12 f_30@@12))
))) (forall ((o2_13@@13 T@Ref) (f_30@@13 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@13 f_30@@13) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@1) o2_13@@13 f_30@@13) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@13 f_30@@13)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@13 f_30@@13))
))) (forall ((o2_13@@14 T@Ref) (f_30@@14 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@14 f_30@@14) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) o2_13@@14 f_30@@14) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@14 f_30@@14)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@14 f_30@@14))
)))))
 :qid |stdinbpl.54:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3486_3487 pm_f_13@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7313) (ExhaleHeap@@1 T@PolymorphicMapType_7313) (Mask@@2 T@PolymorphicMapType_7334) (pm_f_13@@1 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_7373_3487 Mask@@2 null pm_f_13@@1) (IsWandField_7373_26656 pm_f_13@@1)) (and (and (and (and (and (and (and (forall ((o2_13@@15 T@Ref) (f_30@@15 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@15 f_30@@15) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@2) o2_13@@15 f_30@@15) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@15 f_30@@15)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@15 f_30@@15))
)) (forall ((o2_13@@16 T@Ref) (f_30@@16 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@16 f_30@@16) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@2) o2_13@@16 f_30@@16) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@16 f_30@@16)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@16 f_30@@16))
))) (forall ((o2_13@@17 T@Ref) (f_30@@17 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@17 f_30@@17) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@2) o2_13@@17 f_30@@17) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@17 f_30@@17)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@17 f_30@@17))
))) (forall ((o2_13@@18 T@Ref) (f_30@@18 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@18 f_30@@18) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) o2_13@@18 f_30@@18) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@18 f_30@@18)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@18 f_30@@18))
))) (forall ((o2_13@@19 T@Ref) (f_30@@19 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@19 f_30@@19) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@2) o2_13@@19 f_30@@19) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@19 f_30@@19)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@19 f_30@@19))
))) (forall ((o2_13@@20 T@Ref) (f_30@@20 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@20 f_30@@20) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@2) o2_13@@20 f_30@@20) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@20 f_30@@20)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@20 f_30@@20))
))) (forall ((o2_13@@21 T@Ref) (f_30@@21 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@21 f_30@@21) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@2) o2_13@@21 f_30@@21) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@21 f_30@@21)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@21 f_30@@21))
))) (forall ((o2_13@@22 T@Ref) (f_30@@22 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@22 f_30@@22) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@2) o2_13@@22 f_30@@22) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@22 f_30@@22)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@22 f_30@@22))
)))))
 :qid |stdinbpl.67:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_7373_26656 pm_f_13@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7313) (ExhaleHeap@@2 T@PolymorphicMapType_7313) (Mask@@3 T@PolymorphicMapType_7334) (pm_f_13@@2 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3486_3487 Mask@@3 null pm_f_13@@2) (IsWandField_3486_26299 pm_f_13@@2)) (and (and (and (and (and (and (and (forall ((o2_13@@23 T@Ref) (f_30@@23 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@23 f_30@@23) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@3) o2_13@@23 f_30@@23) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@23 f_30@@23)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@23 f_30@@23))
)) (forall ((o2_13@@24 T@Ref) (f_30@@24 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@24 f_30@@24) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@3) o2_13@@24 f_30@@24) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@24 f_30@@24)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@24 f_30@@24))
))) (forall ((o2_13@@25 T@Ref) (f_30@@25 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@25 f_30@@25) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@3) o2_13@@25 f_30@@25) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@25 f_30@@25)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@25 f_30@@25))
))) (forall ((o2_13@@26 T@Ref) (f_30@@26 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@26 f_30@@26) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@3) o2_13@@26 f_30@@26) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@26 f_30@@26)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@26 f_30@@26))
))) (forall ((o2_13@@27 T@Ref) (f_30@@27 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@27 f_30@@27) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@3) o2_13@@27 f_30@@27) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@27 f_30@@27)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@27 f_30@@27))
))) (forall ((o2_13@@28 T@Ref) (f_30@@28 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@28 f_30@@28) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@3) o2_13@@28 f_30@@28) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@28 f_30@@28)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@28 f_30@@28))
))) (forall ((o2_13@@29 T@Ref) (f_30@@29 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@29 f_30@@29) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@3) o2_13@@29 f_30@@29) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@29 f_30@@29)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@29 f_30@@29))
))) (forall ((o2_13@@30 T@Ref) (f_30@@30 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@30 f_30@@30) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) o2_13@@30 f_30@@30) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@30 f_30@@30)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@30 f_30@@30))
)))))
 :qid |stdinbpl.67:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3486_26299 pm_f_13@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7313) (ExhaleHeap@@3 T@PolymorphicMapType_7313) (Mask@@4 T@PolymorphicMapType_7334) (pm_f_22 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_7373_3487 Mask@@4 null pm_f_22) (IsPredicateField_7373_23680 pm_f_22)) (and (and (and (and (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22 f_37) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@4) o2_22 f_37) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22 f_37)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22@@0 f_37@@0) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@4) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@0 f_37@@0)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22@@1 f_37@@1) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@4) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@1 f_37@@1)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22@@2 f_37@@2) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@2 f_37@@2)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@2 f_37@@2))
))) (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22@@3 f_37@@3) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@4) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@3 f_37@@3)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@3 f_37@@3))
))) (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22@@4 f_37@@4) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@4) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@4 f_37@@4)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@4 f_37@@4))
))) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22@@5 f_37@@5) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@4) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@5 f_37@@5)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22@@6 f_37@@6) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@4) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@6 f_37@@6)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@6 f_37@@6))
)))))
 :qid |stdinbpl.118:19|
 :skolemid |18|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@4 ExhaleHeap@@3 Mask@@4) (IsPredicateField_7373_23680 pm_f_22))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7313) (ExhaleHeap@@4 T@PolymorphicMapType_7313) (Mask@@5 T@PolymorphicMapType_7334) (pm_f_22@@0 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3486_3487 Mask@@5 null pm_f_22@@0) (IsPredicateField_3486_3487 pm_f_22@@0)) (and (and (and (and (and (and (and (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@7 f_37@@7) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@5) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@7 f_37@@7)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@7 f_37@@7))
)) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@8 f_37@@8) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@5) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@8 f_37@@8)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@8 f_37@@8))
))) (forall ((o2_22@@9 T@Ref) (f_37@@9 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@9 f_37@@9) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@5) o2_22@@9 f_37@@9) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@9 f_37@@9)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@9 f_37@@9))
))) (forall ((o2_22@@10 T@Ref) (f_37@@10 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@10 f_37@@10) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@5) o2_22@@10 f_37@@10) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@10 f_37@@10)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@10 f_37@@10))
))) (forall ((o2_22@@11 T@Ref) (f_37@@11 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@11 f_37@@11) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@5) o2_22@@11 f_37@@11) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@11 f_37@@11)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@11 f_37@@11))
))) (forall ((o2_22@@12 T@Ref) (f_37@@12 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@12 f_37@@12) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@5) o2_22@@12 f_37@@12) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@12 f_37@@12)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@12 f_37@@12))
))) (forall ((o2_22@@13 T@Ref) (f_37@@13 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@13 f_37@@13) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@5) o2_22@@13 f_37@@13) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@13 f_37@@13)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@13 f_37@@13))
))) (forall ((o2_22@@14 T@Ref) (f_37@@14 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@14 f_37@@14) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) o2_22@@14 f_37@@14) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@14 f_37@@14)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@14 f_37@@14))
)))))
 :qid |stdinbpl.118:19|
 :skolemid |18|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3486_3487 pm_f_22@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7313) (ExhaleHeap@@5 T@PolymorphicMapType_7313) (Mask@@6 T@PolymorphicMapType_7334) (pm_f_22@@1 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_7373_3487 Mask@@6 null pm_f_22@@1) (IsWandField_7373_26656 pm_f_22@@1)) (and (and (and (and (and (and (and (forall ((o2_22@@15 T@Ref) (f_37@@15 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@15 f_37@@15) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@6) o2_22@@15 f_37@@15) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@15 f_37@@15)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@15 f_37@@15))
)) (forall ((o2_22@@16 T@Ref) (f_37@@16 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@16 f_37@@16) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@6) o2_22@@16 f_37@@16) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@16 f_37@@16)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@16 f_37@@16))
))) (forall ((o2_22@@17 T@Ref) (f_37@@17 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@17 f_37@@17) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@6) o2_22@@17 f_37@@17) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@17 f_37@@17)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@17 f_37@@17))
))) (forall ((o2_22@@18 T@Ref) (f_37@@18 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@18 f_37@@18) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) o2_22@@18 f_37@@18) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@18 f_37@@18)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@18 f_37@@18))
))) (forall ((o2_22@@19 T@Ref) (f_37@@19 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@19 f_37@@19) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@6) o2_22@@19 f_37@@19) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@19 f_37@@19)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@19 f_37@@19))
))) (forall ((o2_22@@20 T@Ref) (f_37@@20 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@20 f_37@@20) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@6) o2_22@@20 f_37@@20) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@20 f_37@@20)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@20 f_37@@20))
))) (forall ((o2_22@@21 T@Ref) (f_37@@21 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@21 f_37@@21) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@6) o2_22@@21 f_37@@21) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@21 f_37@@21)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@21 f_37@@21))
))) (forall ((o2_22@@22 T@Ref) (f_37@@22 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@22 f_37@@22) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@6) o2_22@@22 f_37@@22) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@22 f_37@@22)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@22 f_37@@22))
)))))
 :qid |stdinbpl.134:19|
 :skolemid |22|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@6 ExhaleHeap@@5 Mask@@6) (IsWandField_7373_26656 pm_f_22@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7313) (ExhaleHeap@@6 T@PolymorphicMapType_7313) (Mask@@7 T@PolymorphicMapType_7334) (pm_f_22@@2 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3486_3487 Mask@@7 null pm_f_22@@2) (IsWandField_3486_26299 pm_f_22@@2)) (and (and (and (and (and (and (and (forall ((o2_22@@23 T@Ref) (f_37@@23 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@23 f_37@@23) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@7) o2_22@@23 f_37@@23) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@23 f_37@@23)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@23 f_37@@23))
)) (forall ((o2_22@@24 T@Ref) (f_37@@24 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@24 f_37@@24) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@7) o2_22@@24 f_37@@24) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@24 f_37@@24)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@24 f_37@@24))
))) (forall ((o2_22@@25 T@Ref) (f_37@@25 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@25 f_37@@25) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@7) o2_22@@25 f_37@@25) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@25 f_37@@25)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@25 f_37@@25))
))) (forall ((o2_22@@26 T@Ref) (f_37@@26 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@26 f_37@@26) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@7) o2_22@@26 f_37@@26) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@26 f_37@@26)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@26 f_37@@26))
))) (forall ((o2_22@@27 T@Ref) (f_37@@27 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@27 f_37@@27) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@7) o2_22@@27 f_37@@27) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@27 f_37@@27)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@27 f_37@@27))
))) (forall ((o2_22@@28 T@Ref) (f_37@@28 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@28 f_37@@28) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@7) o2_22@@28 f_37@@28) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@28 f_37@@28)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@28 f_37@@28))
))) (forall ((o2_22@@29 T@Ref) (f_37@@29 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@29 f_37@@29) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@7) o2_22@@29 f_37@@29) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@29 f_37@@29)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@29 f_37@@29))
))) (forall ((o2_22@@30 T@Ref) (f_37@@30 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@30 f_37@@30) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) o2_22@@30 f_37@@30) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@30 f_37@@30)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@30 f_37@@30))
)))))
 :qid |stdinbpl.134:19|
 :skolemid |22|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7) (IsWandField_3486_26299 pm_f_22@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7313) (Heap1@@0 T@PolymorphicMapType_7313) (Heap2 T@PolymorphicMapType_7313) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.100:15|
 :skolemid |13|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12993_12998) ) (!  (not (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12980_12981) ) (!  (not (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3486_7387) ) (!  (not (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3486_53) ) (!  (not (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7373_12998) ) (!  (not (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7373_3487) ) (!  (not (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_7386_7387) ) (!  (not (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7373_53) ) (!  (not (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_3486_3487 (List x))
 :qid |stdinbpl.252:15|
 :skolemid |35|
 :pattern ( (List x))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7313) (x@@0 T@Ref) ) (! (|List#everUsed_3486| (List x@@0))
 :qid |stdinbpl.271:15|
 :skolemid |39|
 :pattern ( (|List#trigger_3486| Heap@@8 (List x@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7313) (ExhaleHeap@@7 T@PolymorphicMapType_7313) (Mask@@8 T@PolymorphicMapType_7334) (pm_f_13@@3 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_7373_3487 Mask@@8 null pm_f_13@@3) (IsPredicateField_7373_23680 pm_f_13@@3)) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@9) null (PredicateMaskField_7373 pm_f_13@@3)) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@7) null (PredicateMaskField_7373 pm_f_13@@3)))))
 :qid |stdinbpl.49:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (IsPredicateField_7373_23680 pm_f_13@@3) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@7) null (PredicateMaskField_7373 pm_f_13@@3)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7313) (ExhaleHeap@@8 T@PolymorphicMapType_7313) (Mask@@9 T@PolymorphicMapType_7334) (pm_f_13@@4 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_3486_3487 Mask@@9 null pm_f_13@@4) (IsPredicateField_3486_3487 pm_f_13@@4)) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@10) null (PredicateMaskField_3486 pm_f_13@@4)) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@8) null (PredicateMaskField_3486 pm_f_13@@4)))))
 :qid |stdinbpl.49:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (IsPredicateField_3486_3487 pm_f_13@@4) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@8) null (PredicateMaskField_3486 pm_f_13@@4)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7313) (ExhaleHeap@@9 T@PolymorphicMapType_7313) (Mask@@10 T@PolymorphicMapType_7334) (pm_f_13@@5 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_7373_3487 Mask@@10 null pm_f_13@@5) (IsWandField_7373_26656 pm_f_13@@5)) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@11) null (WandMaskField_7373 pm_f_13@@5)) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@9) null (WandMaskField_7373 pm_f_13@@5)))))
 :qid |stdinbpl.62:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (IsWandField_7373_26656 pm_f_13@@5) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@9) null (WandMaskField_7373 pm_f_13@@5)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7313) (ExhaleHeap@@10 T@PolymorphicMapType_7313) (Mask@@11 T@PolymorphicMapType_7334) (pm_f_13@@6 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_3486_3487 Mask@@11 null pm_f_13@@6) (IsWandField_3486_26299 pm_f_13@@6)) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@12) null (WandMaskField_3486 pm_f_13@@6)) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@10) null (WandMaskField_3486 pm_f_13@@6)))))
 :qid |stdinbpl.62:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11) (IsWandField_3486_26299 pm_f_13@@6) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@10) null (WandMaskField_3486 pm_f_13@@6)))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (List x@@1) (List x2)) (= x@@1 x2))
 :qid |stdinbpl.262:15|
 :skolemid |37|
 :pattern ( (List x@@1) (List x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|List#sm| x@@2) (|List#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.266:15|
 :skolemid |38|
 :pattern ( (|List#sm| x@@2) (|List#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7313) (ExhaleHeap@@11 T@PolymorphicMapType_7313) (Mask@@12 T@PolymorphicMapType_7334) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@13) o_22 $allocated) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@11) o_22 $allocated)))
 :qid |stdinbpl.75:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@11) o_22 $allocated))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7313) (ExhaleHeap@@12 T@PolymorphicMapType_7313) (Mask@@13 T@PolymorphicMapType_7334) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@14 ExhaleHeap@@12 Mask@@13) (=> (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@14) o_46 $allocated) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@12) o_46 $allocated)))
 :qid |stdinbpl.142:15|
 :skolemid |23|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@14 ExhaleHeap@@12 Mask@@13) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@12) o_46 $allocated))
)))
(assert (forall ((p T@Field_12980_12981) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12980_12980 p v_1 p w))
 :qid |stdinbpl.228:19|
 :skolemid |33|
 :pattern ( (InsidePredicate_12980_12980 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_7373_3487) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7373_7373 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.228:19|
 :skolemid |33|
 :pattern ( (InsidePredicate_7373_7373 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3482_3483 next)))
(assert  (not (IsWandField_3482_3483 next)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7313) (ExhaleHeap@@13 T@PolymorphicMapType_7313) (Mask@@14 T@PolymorphicMapType_7334) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@14) (succHeap Heap@@15 ExhaleHeap@@13))
 :qid |stdinbpl.85:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@14))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7313) (ExhaleHeap@@14 T@PolymorphicMapType_7313) (Mask@@15 T@PolymorphicMapType_7334) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@16 ExhaleHeap@@14 Mask@@15) (succHeap Heap@@16 ExhaleHeap@@14))
 :qid |stdinbpl.90:15|
 :skolemid |11|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@16 ExhaleHeap@@14 Mask@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7334) (o_2@@7 T@Ref) (f_4@@7 T@Field_7373_12998) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| Mask@@16) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_7373_44434 f_4@@7))) (not (IsWandField_7373_44450 f_4@@7))) (<= (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| Mask@@16) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| Mask@@16) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7334) (o_2@@8 T@Ref) (f_4@@8 T@Field_7386_7387) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| Mask@@17) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3482_3483 f_4@@8))) (not (IsWandField_3482_3483 f_4@@8))) (<= (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| Mask@@17) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| Mask@@17) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7334) (o_2@@9 T@Ref) (f_4@@9 T@Field_7373_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| Mask@@18) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_7373_53 f_4@@9))) (not (IsWandField_7373_53 f_4@@9))) (<= (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| Mask@@18) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| Mask@@18) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7334) (o_2@@10 T@Ref) (f_4@@10 T@Field_7373_3487) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| Mask@@19) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_7373_23680 f_4@@10))) (not (IsWandField_7373_26656 f_4@@10))) (<= (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| Mask@@19) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| Mask@@19) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7334) (o_2@@11 T@Ref) (f_4@@11 T@Field_12993_12998) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| Mask@@20) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3486_43785 f_4@@11))) (not (IsWandField_3486_43801 f_4@@11))) (<= (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| Mask@@20) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| Mask@@20) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7334) (o_2@@12 T@Ref) (f_4@@12 T@Field_3486_7387) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| Mask@@21) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_3486_7387 f_4@@12))) (not (IsWandField_3486_7387 f_4@@12))) (<= (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| Mask@@21) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| Mask@@21) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7334) (o_2@@13 T@Ref) (f_4@@13 T@Field_3486_53) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| Mask@@22) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_3486_53 f_4@@13))) (not (IsWandField_3486_53 f_4@@13))) (<= (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| Mask@@22) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| Mask@@22) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7334) (o_2@@14 T@Ref) (f_4@@14 T@Field_12980_12981) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| Mask@@23) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_3486_3487 f_4@@14))) (not (IsWandField_3486_26299 f_4@@14))) (<= (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| Mask@@23) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| Mask@@23) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7334) (o_2@@15 T@Ref) (f_4@@15 T@Field_7373_12998) ) (! (= (HasDirectPerm_7373_23067 Mask@@24 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| Mask@@24) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_7373_23067 Mask@@24 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7334) (o_2@@16 T@Ref) (f_4@@16 T@Field_7386_7387) ) (! (= (HasDirectPerm_7373_7387 Mask@@25 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| Mask@@25) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_7373_7387 Mask@@25 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_7334) (o_2@@17 T@Ref) (f_4@@17 T@Field_7373_53) ) (! (= (HasDirectPerm_7373_53 Mask@@26 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| Mask@@26) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_7373_53 Mask@@26 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_7334) (o_2@@18 T@Ref) (f_4@@18 T@Field_7373_3487) ) (! (= (HasDirectPerm_7373_3487 Mask@@27 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| Mask@@27) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_7373_3487 Mask@@27 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_7334) (o_2@@19 T@Ref) (f_4@@19 T@Field_12993_12998) ) (! (= (HasDirectPerm_3486_22139 Mask@@28 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| Mask@@28) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_3486_22139 Mask@@28 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_7334) (o_2@@20 T@Ref) (f_4@@20 T@Field_3486_7387) ) (! (= (HasDirectPerm_3486_7387 Mask@@29 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| Mask@@29) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_3486_7387 Mask@@29 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_7334) (o_2@@21 T@Ref) (f_4@@21 T@Field_3486_53) ) (! (= (HasDirectPerm_3486_53 Mask@@30 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| Mask@@30) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_3486_53 Mask@@30 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_7334) (o_2@@22 T@Ref) (f_4@@22 T@Field_12980_12981) ) (! (= (HasDirectPerm_3486_3487 Mask@@31 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| Mask@@31) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_3486_3487 Mask@@31 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.216:15|
 :skolemid |31|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7313) (ExhaleHeap@@15 T@PolymorphicMapType_7313) (Mask@@32 T@PolymorphicMapType_7334) (o_22@@0 T@Ref) (f_30@@31 T@Field_7373_12998) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_7373_23067 Mask@@32 o_22@@0 f_30@@31) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@17) o_22@@0 f_30@@31) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@15) o_22@@0 f_30@@31))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@15) o_22@@0 f_30@@31))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7313) (ExhaleHeap@@16 T@PolymorphicMapType_7313) (Mask@@33 T@PolymorphicMapType_7334) (o_22@@1 T@Ref) (f_30@@32 T@Field_7386_7387) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_7373_7387 Mask@@33 o_22@@1 f_30@@32) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@18) o_22@@1 f_30@@32) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@16) o_22@@1 f_30@@32))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@16) o_22@@1 f_30@@32))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7313) (ExhaleHeap@@17 T@PolymorphicMapType_7313) (Mask@@34 T@PolymorphicMapType_7334) (o_22@@2 T@Ref) (f_30@@33 T@Field_7373_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@34) (=> (HasDirectPerm_7373_53 Mask@@34 o_22@@2 f_30@@33) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@19) o_22@@2 f_30@@33) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@17) o_22@@2 f_30@@33))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@34) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@17) o_22@@2 f_30@@33))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7313) (ExhaleHeap@@18 T@PolymorphicMapType_7313) (Mask@@35 T@PolymorphicMapType_7334) (o_22@@3 T@Ref) (f_30@@34 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@35) (=> (HasDirectPerm_7373_3487 Mask@@35 o_22@@3 f_30@@34) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@20) o_22@@3 f_30@@34) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@18) o_22@@3 f_30@@34))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@35) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@18) o_22@@3 f_30@@34))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7313) (ExhaleHeap@@19 T@PolymorphicMapType_7313) (Mask@@36 T@PolymorphicMapType_7334) (o_22@@4 T@Ref) (f_30@@35 T@Field_12993_12998) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@36) (=> (HasDirectPerm_3486_22139 Mask@@36 o_22@@4 f_30@@35) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@21) o_22@@4 f_30@@35) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@19) o_22@@4 f_30@@35))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@36) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@19) o_22@@4 f_30@@35))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7313) (ExhaleHeap@@20 T@PolymorphicMapType_7313) (Mask@@37 T@PolymorphicMapType_7334) (o_22@@5 T@Ref) (f_30@@36 T@Field_3486_7387) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@37) (=> (HasDirectPerm_3486_7387 Mask@@37 o_22@@5 f_30@@36) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@22) o_22@@5 f_30@@36) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@20) o_22@@5 f_30@@36))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@37) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@20) o_22@@5 f_30@@36))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7313) (ExhaleHeap@@21 T@PolymorphicMapType_7313) (Mask@@38 T@PolymorphicMapType_7334) (o_22@@6 T@Ref) (f_30@@37 T@Field_3486_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@38) (=> (HasDirectPerm_3486_53 Mask@@38 o_22@@6 f_30@@37) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@23) o_22@@6 f_30@@37) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@21) o_22@@6 f_30@@37))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@38) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@21) o_22@@6 f_30@@37))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7313) (ExhaleHeap@@22 T@PolymorphicMapType_7313) (Mask@@39 T@PolymorphicMapType_7334) (o_22@@7 T@Ref) (f_30@@38 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@39) (=> (HasDirectPerm_3486_3487 Mask@@39 o_22@@7 f_30@@38) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@24) o_22@@7 f_30@@38) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@22) o_22@@7 f_30@@38))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@39) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@22) o_22@@7 f_30@@38))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7313) (ExhaleHeap@@23 T@PolymorphicMapType_7313) (Mask@@40 T@PolymorphicMapType_7334) (o_46@@0 T@Ref) (f_37@@31 T@Field_7373_12998) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@25 ExhaleHeap@@23 Mask@@40) (=> (HasDirectPerm_7373_23067 Mask@@40 o_46@@0 f_37@@31) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@25) o_46@@0 f_37@@31) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@23) o_46@@0 f_37@@31))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@25 ExhaleHeap@@23 Mask@@40) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@23) o_46@@0 f_37@@31))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7313) (ExhaleHeap@@24 T@PolymorphicMapType_7313) (Mask@@41 T@PolymorphicMapType_7334) (o_46@@1 T@Ref) (f_37@@32 T@Field_7386_7387) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@26 ExhaleHeap@@24 Mask@@41) (=> (HasDirectPerm_7373_7387 Mask@@41 o_46@@1 f_37@@32) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@26) o_46@@1 f_37@@32) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@24) o_46@@1 f_37@@32))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@26 ExhaleHeap@@24 Mask@@41) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@24) o_46@@1 f_37@@32))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7313) (ExhaleHeap@@25 T@PolymorphicMapType_7313) (Mask@@42 T@PolymorphicMapType_7334) (o_46@@2 T@Ref) (f_37@@33 T@Field_7373_53) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@27 ExhaleHeap@@25 Mask@@42) (=> (HasDirectPerm_7373_53 Mask@@42 o_46@@2 f_37@@33) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@27) o_46@@2 f_37@@33) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@25) o_46@@2 f_37@@33))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@27 ExhaleHeap@@25 Mask@@42) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@25) o_46@@2 f_37@@33))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7313) (ExhaleHeap@@26 T@PolymorphicMapType_7313) (Mask@@43 T@PolymorphicMapType_7334) (o_46@@3 T@Ref) (f_37@@34 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@28 ExhaleHeap@@26 Mask@@43) (=> (HasDirectPerm_7373_3487 Mask@@43 o_46@@3 f_37@@34) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@28) o_46@@3 f_37@@34) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@26) o_46@@3 f_37@@34))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@28 ExhaleHeap@@26 Mask@@43) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@26) o_46@@3 f_37@@34))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7313) (ExhaleHeap@@27 T@PolymorphicMapType_7313) (Mask@@44 T@PolymorphicMapType_7334) (o_46@@4 T@Ref) (f_37@@35 T@Field_12993_12998) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@29 ExhaleHeap@@27 Mask@@44) (=> (HasDirectPerm_3486_22139 Mask@@44 o_46@@4 f_37@@35) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@29) o_46@@4 f_37@@35) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@27) o_46@@4 f_37@@35))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@29 ExhaleHeap@@27 Mask@@44) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@27) o_46@@4 f_37@@35))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7313) (ExhaleHeap@@28 T@PolymorphicMapType_7313) (Mask@@45 T@PolymorphicMapType_7334) (o_46@@5 T@Ref) (f_37@@36 T@Field_3486_7387) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@30 ExhaleHeap@@28 Mask@@45) (=> (HasDirectPerm_3486_7387 Mask@@45 o_46@@5 f_37@@36) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@30) o_46@@5 f_37@@36) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@28) o_46@@5 f_37@@36))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@30 ExhaleHeap@@28 Mask@@45) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@28) o_46@@5 f_37@@36))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7313) (ExhaleHeap@@29 T@PolymorphicMapType_7313) (Mask@@46 T@PolymorphicMapType_7334) (o_46@@6 T@Ref) (f_37@@37 T@Field_3486_53) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@31 ExhaleHeap@@29 Mask@@46) (=> (HasDirectPerm_3486_53 Mask@@46 o_46@@6 f_37@@37) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@31) o_46@@6 f_37@@37) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@29) o_46@@6 f_37@@37))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@31 ExhaleHeap@@29 Mask@@46) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@29) o_46@@6 f_37@@37))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_7313) (ExhaleHeap@@30 T@PolymorphicMapType_7313) (Mask@@47 T@PolymorphicMapType_7334) (o_46@@7 T@Ref) (f_37@@38 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@32 ExhaleHeap@@30 Mask@@47) (=> (HasDirectPerm_3486_3487 Mask@@47 o_46@@7 f_37@@38) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@32) o_46@@7 f_37@@38) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@30) o_46@@7 f_37@@38))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@32 ExhaleHeap@@30 Mask@@47) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@30) o_46@@7 f_37@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_7373_12998) ) (! (= (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_7386_7387) ) (! (= (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_7373_53) ) (! (= (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_7373_3487) ) (! (= (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_12993_12998) ) (! (= (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_3486_7387) ) (! (= (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_3486_53) ) (! (= (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_12980_12981) ) (! (= (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7334) (SummandMask1 T@PolymorphicMapType_7334) (SummandMask2 T@PolymorphicMapType_7334) (o_2@@31 T@Ref) (f_4@@31 T@Field_7373_12998) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7334) (SummandMask1@@0 T@PolymorphicMapType_7334) (SummandMask2@@0 T@PolymorphicMapType_7334) (o_2@@32 T@Ref) (f_4@@32 T@Field_7386_7387) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7334) (SummandMask1@@1 T@PolymorphicMapType_7334) (SummandMask2@@1 T@PolymorphicMapType_7334) (o_2@@33 T@Ref) (f_4@@33 T@Field_7373_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7334) (SummandMask1@@2 T@PolymorphicMapType_7334) (SummandMask2@@2 T@PolymorphicMapType_7334) (o_2@@34 T@Ref) (f_4@@34 T@Field_7373_3487) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7334) (SummandMask1@@3 T@PolymorphicMapType_7334) (SummandMask2@@3 T@PolymorphicMapType_7334) (o_2@@35 T@Ref) (f_4@@35 T@Field_12993_12998) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7334) (SummandMask1@@4 T@PolymorphicMapType_7334) (SummandMask2@@4 T@PolymorphicMapType_7334) (o_2@@36 T@Ref) (f_4@@36 T@Field_3486_7387) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7334) (SummandMask1@@5 T@PolymorphicMapType_7334) (SummandMask2@@5 T@PolymorphicMapType_7334) (o_2@@37 T@Ref) (f_4@@37 T@Field_3486_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7334) (SummandMask1@@6 T@PolymorphicMapType_7334) (SummandMask2@@6 T@PolymorphicMapType_7334) (o_2@@38 T@Ref) (f_4@@38 T@Field_12980_12981) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_7313) (Heap1@@1 T@PolymorphicMapType_7313) (Mask1 T@PolymorphicMapType_7334) (Heap2@@0 T@PolymorphicMapType_7313) (Mask2 T@PolymorphicMapType_7334) ) (! (= (SumHeap Heap@@33 Heap1@@1 Mask1 Heap2@@0 Mask2)  (and (IdenticalOnKnownLocationsLiberal Heap1@@1 Heap@@33 Mask1) (IdenticalOnKnownLocationsLiberal Heap2@@0 Heap@@33 Mask2)))
 :qid |stdinbpl.150:15|
 :skolemid |24|
 :pattern ( (SumHeap Heap@@33 Heap1@@1 Mask1 Heap2@@0 Mask2))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_3486_3487 (List x@@3)) 0)
 :qid |stdinbpl.256:15|
 :skolemid |36|
 :pattern ( (List x@@3))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_7313) (ExhaleHeap@@31 T@PolymorphicMapType_7313) (Mask@@48 T@PolymorphicMapType_7334) (pm_f_22@@3 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@34 ExhaleHeap@@31 Mask@@48) (=> (and (HasDirectPerm_7373_3487 Mask@@48 null pm_f_22@@3) (IsPredicateField_7373_23680 pm_f_22@@3)) (and (and (and (and (and (and (and (forall ((o2_22@@31 T@Ref) (f_37@@39 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@31 f_37@@39) (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@31 f_37@@39))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@31 f_37@@39))
)) (forall ((o2_22@@32 T@Ref) (f_37@@40 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@32 f_37@@40) (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@32 f_37@@40))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@32 f_37@@40))
))) (forall ((o2_22@@33 T@Ref) (f_37@@41 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@33 f_37@@41) (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@33 f_37@@41))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@33 f_37@@41))
))) (forall ((o2_22@@34 T@Ref) (f_37@@42 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@34 f_37@@42) (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@34 f_37@@42))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@34 f_37@@42))
))) (forall ((o2_22@@35 T@Ref) (f_37@@43 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@35 f_37@@43) (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@35 f_37@@43))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@35 f_37@@43))
))) (forall ((o2_22@@36 T@Ref) (f_37@@44 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@36 f_37@@44) (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@36 f_37@@44))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@36 f_37@@44))
))) (forall ((o2_22@@37 T@Ref) (f_37@@45 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@37 f_37@@45) (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@37 f_37@@45))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@37 f_37@@45))
))) (forall ((o2_22@@38 T@Ref) (f_37@@46 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@38 f_37@@46) (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@38 f_37@@46))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@38 f_37@@46))
)))))
 :qid |stdinbpl.110:19|
 :skolemid |16|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@34 ExhaleHeap@@31 Mask@@48) (IsPredicateField_7373_23680 pm_f_22@@3) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_7313) (ExhaleHeap@@32 T@PolymorphicMapType_7313) (Mask@@49 T@PolymorphicMapType_7334) (pm_f_22@@4 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@35 ExhaleHeap@@32 Mask@@49) (=> (and (HasDirectPerm_3486_3487 Mask@@49 null pm_f_22@@4) (IsPredicateField_3486_3487 pm_f_22@@4)) (and (and (and (and (and (and (and (forall ((o2_22@@39 T@Ref) (f_37@@47 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@39 f_37@@47) (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@39 f_37@@47))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@39 f_37@@47))
)) (forall ((o2_22@@40 T@Ref) (f_37@@48 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@40 f_37@@48) (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@40 f_37@@48))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@40 f_37@@48))
))) (forall ((o2_22@@41 T@Ref) (f_37@@49 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@41 f_37@@49) (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@41 f_37@@49))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@41 f_37@@49))
))) (forall ((o2_22@@42 T@Ref) (f_37@@50 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@42 f_37@@50) (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@42 f_37@@50))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@42 f_37@@50))
))) (forall ((o2_22@@43 T@Ref) (f_37@@51 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@43 f_37@@51) (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@43 f_37@@51))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@43 f_37@@51))
))) (forall ((o2_22@@44 T@Ref) (f_37@@52 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@44 f_37@@52) (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@44 f_37@@52))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@44 f_37@@52))
))) (forall ((o2_22@@45 T@Ref) (f_37@@53 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@45 f_37@@53) (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@45 f_37@@53))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@45 f_37@@53))
))) (forall ((o2_22@@46 T@Ref) (f_37@@54 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@46 f_37@@54) (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@46 f_37@@54))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@46 f_37@@54))
)))))
 :qid |stdinbpl.110:19|
 :skolemid |16|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@35 ExhaleHeap@@32 Mask@@49) (IsPredicateField_3486_3487 pm_f_22@@4) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_7313) (ExhaleHeap@@33 T@PolymorphicMapType_7313) (Mask@@50 T@PolymorphicMapType_7334) (pm_f_22@@5 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@36 ExhaleHeap@@33 Mask@@50) (=> (and (HasDirectPerm_7373_3487 Mask@@50 null pm_f_22@@5) (IsWandField_7373_26656 pm_f_22@@5)) (and (and (and (and (and (and (and (forall ((o2_22@@47 T@Ref) (f_37@@55 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@47 f_37@@55) (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@47 f_37@@55))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@47 f_37@@55))
)) (forall ((o2_22@@48 T@Ref) (f_37@@56 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@48 f_37@@56) (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@48 f_37@@56))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@48 f_37@@56))
))) (forall ((o2_22@@49 T@Ref) (f_37@@57 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@49 f_37@@57) (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@49 f_37@@57))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@49 f_37@@57))
))) (forall ((o2_22@@50 T@Ref) (f_37@@58 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@50 f_37@@58) (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@50 f_37@@58))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@50 f_37@@58))
))) (forall ((o2_22@@51 T@Ref) (f_37@@59 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@51 f_37@@59) (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@51 f_37@@59))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@51 f_37@@59))
))) (forall ((o2_22@@52 T@Ref) (f_37@@60 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@52 f_37@@60) (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@52 f_37@@60))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@52 f_37@@60))
))) (forall ((o2_22@@53 T@Ref) (f_37@@61 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@53 f_37@@61) (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@53 f_37@@61))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@53 f_37@@61))
))) (forall ((o2_22@@54 T@Ref) (f_37@@62 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@54 f_37@@62) (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@54 f_37@@62))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@54 f_37@@62))
)))))
 :qid |stdinbpl.126:19|
 :skolemid |20|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@36 ExhaleHeap@@33 Mask@@50) (IsWandField_7373_26656 pm_f_22@@5) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_7313) (ExhaleHeap@@34 T@PolymorphicMapType_7313) (Mask@@51 T@PolymorphicMapType_7334) (pm_f_22@@6 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@37 ExhaleHeap@@34 Mask@@51) (=> (and (HasDirectPerm_3486_3487 Mask@@51 null pm_f_22@@6) (IsWandField_3486_26299 pm_f_22@@6)) (and (and (and (and (and (and (and (forall ((o2_22@@55 T@Ref) (f_37@@63 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@55 f_37@@63) (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@55 f_37@@63))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@55 f_37@@63))
)) (forall ((o2_22@@56 T@Ref) (f_37@@64 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@56 f_37@@64) (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@56 f_37@@64))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@56 f_37@@64))
))) (forall ((o2_22@@57 T@Ref) (f_37@@65 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@57 f_37@@65) (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@57 f_37@@65))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@57 f_37@@65))
))) (forall ((o2_22@@58 T@Ref) (f_37@@66 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@58 f_37@@66) (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@58 f_37@@66))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@58 f_37@@66))
))) (forall ((o2_22@@59 T@Ref) (f_37@@67 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@59 f_37@@67) (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@59 f_37@@67))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@59 f_37@@67))
))) (forall ((o2_22@@60 T@Ref) (f_37@@68 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@60 f_37@@68) (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@60 f_37@@68))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@60 f_37@@68))
))) (forall ((o2_22@@61 T@Ref) (f_37@@69 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@61 f_37@@69) (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@61 f_37@@69))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@61 f_37@@69))
))) (forall ((o2_22@@62 T@Ref) (f_37@@70 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@62 f_37@@70) (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@62 f_37@@70))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@62 f_37@@70))
)))))
 :qid |stdinbpl.126:19|
 :skolemid |20|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@37 ExhaleHeap@@34 Mask@@51) (IsWandField_3486_26299 pm_f_22@@6) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_7313) (o_35 T@Ref) (f_11 T@Field_12993_12998) (v T@PolymorphicMapType_7878) ) (! (succHeap Heap@@38 (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@38) (store (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@38) o_35 f_11 v) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@38)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@38) (store (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@38) o_35 f_11 v) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_7313) (o_35@@0 T@Ref) (f_11@@0 T@Field_12980_12981) (v@@0 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@39) (store (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@39) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@39)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@39) (store (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@39) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_7313) (o_35@@1 T@Ref) (f_11@@1 T@Field_3486_7387) (v@@1 T@Ref) ) (! (succHeap Heap@@40 (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@40) (store (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@40) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@40)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@40) (store (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@40) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_7313) (o_35@@2 T@Ref) (f_11@@2 T@Field_3486_53) (v@@2 Bool) ) (! (succHeap Heap@@41 (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@41) (store (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@41) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@41)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@41) (store (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@41) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_7313) (o_35@@3 T@Ref) (f_11@@3 T@Field_7373_12998) (v@@3 T@PolymorphicMapType_7878) ) (! (succHeap Heap@@42 (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@42) (store (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@42) o_35@@3 f_11@@3 v@@3)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@42) (store (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@42) o_35@@3 f_11@@3 v@@3)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_7313) (o_35@@4 T@Ref) (f_11@@4 T@Field_7373_3487) (v@@4 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@43) (store (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@43) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@43)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@43) (store (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@43) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_7313) (o_35@@5 T@Ref) (f_11@@5 T@Field_7386_7387) (v@@5 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@44) (store (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@44) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@44)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@44) (store (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@44) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_7313) (o_35@@6 T@Ref) (f_11@@6 T@Field_7373_53) (v@@6 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_7313 (store (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@45) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@45)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (store (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@45) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@45)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_3486 (List x@@4)) (|List#sm| x@@4))
 :qid |stdinbpl.248:15|
 :skolemid |34|
 :pattern ( (PredicateMaskField_3486 (List x@@4)))
)))
(assert (forall ((o_35@@7 T@Ref) (f_31 T@Field_7386_7387) (Heap@@46 T@PolymorphicMapType_7313) ) (!  (=> (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@46) o_35@@7 $allocated) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@46) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@46) o_35@@7 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@46) o_35@@7 f_31))
)))
(assert (forall ((p@@2 T@Field_12980_12981) (v_1@@1 T@FrameType) (q T@Field_12980_12981) (w@@1 T@FrameType) (r T@Field_12980_12981) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12980_12980 p@@2 v_1@@1 q w@@1) (InsidePredicate_12980_12980 q w@@1 r u)) (InsidePredicate_12980_12980 p@@2 v_1@@1 r u))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_12980_12980 p@@2 v_1@@1 q w@@1) (InsidePredicate_12980_12980 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_12980_12981) (v_1@@2 T@FrameType) (q@@0 T@Field_12980_12981) (w@@2 T@FrameType) (r@@0 T@Field_7373_3487) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_12980_12980 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12980_7373 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_12980_7373 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_12980_12980 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12980_7373 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_12980_12981) (v_1@@3 T@FrameType) (q@@1 T@Field_7373_3487) (w@@3 T@FrameType) (r@@1 T@Field_12980_12981) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_12980_7373 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7373_12980 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_12980_12980 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_12980_7373 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7373_12980 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_12980_12981) (v_1@@4 T@FrameType) (q@@2 T@Field_7373_3487) (w@@4 T@FrameType) (r@@2 T@Field_7373_3487) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_12980_7373 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7373_7373 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_12980_7373 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_12980_7373 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7373_7373 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_7373_3487) (v_1@@5 T@FrameType) (q@@3 T@Field_12980_12981) (w@@5 T@FrameType) (r@@3 T@Field_12980_12981) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7373_12980 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12980_12980 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7373_12980 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_7373_12980 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12980_12980 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_7373_3487) (v_1@@6 T@FrameType) (q@@4 T@Field_12980_12981) (w@@6 T@FrameType) (r@@4 T@Field_7373_3487) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7373_12980 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12980_7373 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7373_7373 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_7373_12980 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12980_7373 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_7373_3487) (v_1@@7 T@FrameType) (q@@5 T@Field_7373_3487) (w@@7 T@FrameType) (r@@5 T@Field_12980_12981) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7373_7373 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7373_12980 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7373_12980 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_7373_7373 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7373_12980 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_7373_3487) (v_1@@8 T@FrameType) (q@@6 T@Field_7373_3487) (w@@8 T@FrameType) (r@@6 T@Field_7373_3487) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7373_7373 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7373_7373 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7373_7373 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_7373_7373 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7373_7373 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |List#definedness|)
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
(declare-sort T@Field_7373_53 0)
(declare-sort T@Field_7386_7387 0)
(declare-sort T@Field_12980_12981 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_3486_53 0)
(declare-sort T@Field_3486_7387 0)
(declare-sort T@Field_12993_12998 0)
(declare-sort T@Field_7373_3487 0)
(declare-sort T@Field_7373_12998 0)
(declare-datatypes ((T@PolymorphicMapType_7334 0)) (((PolymorphicMapType_7334 (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| (Array T@Ref T@Field_12980_12981 Real)) (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| (Array T@Ref T@Field_3486_53 Real)) (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| (Array T@Ref T@Field_3486_7387 Real)) (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| (Array T@Ref T@Field_12993_12998 Real)) (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| (Array T@Ref T@Field_7373_3487 Real)) (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| (Array T@Ref T@Field_7373_53 Real)) (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| (Array T@Ref T@Field_7386_7387 Real)) (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| (Array T@Ref T@Field_7373_12998 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7878 0)) (((PolymorphicMapType_7878 (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (Array T@Ref T@Field_7373_53 Bool)) (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (Array T@Ref T@Field_7386_7387 Bool)) (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (Array T@Ref T@Field_7373_3487 Bool)) (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (Array T@Ref T@Field_7373_12998 Bool)) (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (Array T@Ref T@Field_3486_53 Bool)) (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (Array T@Ref T@Field_3486_7387 Bool)) (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (Array T@Ref T@Field_12980_12981 Bool)) (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (Array T@Ref T@Field_12993_12998 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7313 0)) (((PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| (Array T@Ref T@Field_7373_53 Bool)) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| (Array T@Ref T@Field_7386_7387 T@Ref)) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| (Array T@Ref T@Field_12980_12981 T@FrameType)) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| (Array T@Ref T@Field_3486_53 Bool)) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| (Array T@Ref T@Field_3486_7387 T@Ref)) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| (Array T@Ref T@Field_12993_12998 T@PolymorphicMapType_7878)) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| (Array T@Ref T@Field_7373_3487 T@FrameType)) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| (Array T@Ref T@Field_7373_12998 T@PolymorphicMapType_7878)) ) ) ))
(declare-fun $allocated () T@Field_7373_53)
(declare-fun next () T@Field_7386_7387)
(declare-fun succHeap (T@PolymorphicMapType_7313 T@PolymorphicMapType_7313) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7313 T@PolymorphicMapType_7313) Bool)
(declare-fun state (T@PolymorphicMapType_7313 T@PolymorphicMapType_7334) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7334) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7313 T@PolymorphicMapType_7313 T@PolymorphicMapType_7334) Bool)
(declare-fun IsPredicateField_7373_23680 (T@Field_7373_3487) Bool)
(declare-fun HasDirectPerm_7373_3487 (T@PolymorphicMapType_7334 T@Ref T@Field_7373_3487) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7373 (T@Field_7373_3487) T@Field_7373_12998)
(declare-fun IsPredicateField_3486_3487 (T@Field_12980_12981) Bool)
(declare-fun HasDirectPerm_3486_3487 (T@PolymorphicMapType_7334 T@Ref T@Field_12980_12981) Bool)
(declare-fun PredicateMaskField_3486 (T@Field_12980_12981) T@Field_12993_12998)
(declare-fun IsWandField_7373_26656 (T@Field_7373_3487) Bool)
(declare-fun WandMaskField_7373 (T@Field_7373_3487) T@Field_7373_12998)
(declare-fun IsWandField_3486_26299 (T@Field_12980_12981) Bool)
(declare-fun WandMaskField_3486 (T@Field_12980_12981) T@Field_12993_12998)
(declare-fun IdenticalOnKnownLocationsLiberal (T@PolymorphicMapType_7313 T@PolymorphicMapType_7313 T@PolymorphicMapType_7334) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7878)
(declare-fun List (T@Ref) T@Field_12980_12981)
(declare-fun |List#trigger_3486| (T@PolymorphicMapType_7313 T@Field_12980_12981) Bool)
(declare-fun |List#everUsed_3486| (T@Field_12980_12981) Bool)
(declare-fun |List#sm| (T@Ref) T@Field_12993_12998)
(declare-fun dummyHeap () T@PolymorphicMapType_7313)
(declare-fun ZeroMask () T@PolymorphicMapType_7334)
(declare-fun InsidePredicate_12980_12980 (T@Field_12980_12981 T@FrameType T@Field_12980_12981 T@FrameType) Bool)
(declare-fun InsidePredicate_7373_7373 (T@Field_7373_3487 T@FrameType T@Field_7373_3487 T@FrameType) Bool)
(declare-fun IsPredicateField_3482_3483 (T@Field_7386_7387) Bool)
(declare-fun IsWandField_3482_3483 (T@Field_7386_7387) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7373_44434 (T@Field_7373_12998) Bool)
(declare-fun IsWandField_7373_44450 (T@Field_7373_12998) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7373_53 (T@Field_7373_53) Bool)
(declare-fun IsWandField_7373_53 (T@Field_7373_53) Bool)
(declare-fun IsPredicateField_3486_43785 (T@Field_12993_12998) Bool)
(declare-fun IsWandField_3486_43801 (T@Field_12993_12998) Bool)
(declare-fun IsPredicateField_3486_7387 (T@Field_3486_7387) Bool)
(declare-fun IsWandField_3486_7387 (T@Field_3486_7387) Bool)
(declare-fun IsPredicateField_3486_53 (T@Field_3486_53) Bool)
(declare-fun IsWandField_3486_53 (T@Field_3486_53) Bool)
(declare-fun HasDirectPerm_7373_23067 (T@PolymorphicMapType_7334 T@Ref T@Field_7373_12998) Bool)
(declare-fun HasDirectPerm_7373_7387 (T@PolymorphicMapType_7334 T@Ref T@Field_7386_7387) Bool)
(declare-fun HasDirectPerm_7373_53 (T@PolymorphicMapType_7334 T@Ref T@Field_7373_53) Bool)
(declare-fun HasDirectPerm_3486_22139 (T@PolymorphicMapType_7334 T@Ref T@Field_12993_12998) Bool)
(declare-fun HasDirectPerm_3486_7387 (T@PolymorphicMapType_7334 T@Ref T@Field_3486_7387) Bool)
(declare-fun HasDirectPerm_3486_53 (T@PolymorphicMapType_7334 T@Ref T@Field_3486_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7334 T@PolymorphicMapType_7334 T@PolymorphicMapType_7334) Bool)
(declare-fun SumHeap (T@PolymorphicMapType_7313 T@PolymorphicMapType_7313 T@PolymorphicMapType_7334 T@PolymorphicMapType_7313 T@PolymorphicMapType_7334) Bool)
(declare-fun getPredWandId_3486_3487 (T@Field_12980_12981) Int)
(declare-fun InsidePredicate_12980_7373 (T@Field_12980_12981 T@FrameType T@Field_7373_3487 T@FrameType) Bool)
(declare-fun InsidePredicate_7373_12980 (T@Field_7373_3487 T@FrameType T@Field_12980_12981 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7313) (Heap1 T@PolymorphicMapType_7313) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.95:15|
 :skolemid |12|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7313) (Mask T@PolymorphicMapType_7334) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.182:15|
 :skolemid |27|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7313) (ExhaleHeap T@PolymorphicMapType_7313) (Mask@@0 T@PolymorphicMapType_7334) (pm_f_13 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7373_3487 Mask@@0 null pm_f_13) (IsPredicateField_7373_23680 pm_f_13)) (and (and (and (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13 f_30) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@0) o2_13 f_30) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap) o2_13 f_30)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@0) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@0) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@0) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap) o2_13@@3 f_30@@3))
))) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@0) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@0) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@0) null (PredicateMaskField_7373 pm_f_13))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@0) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap) o2_13@@6 f_30@@6))
)))))
 :qid |stdinbpl.54:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_7373_23680 pm_f_13))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7313) (ExhaleHeap@@0 T@PolymorphicMapType_7313) (Mask@@1 T@PolymorphicMapType_7334) (pm_f_13@@0 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3486_3487 Mask@@1 null pm_f_13@@0) (IsPredicateField_3486_3487 pm_f_13@@0)) (and (and (and (and (and (and (and (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@1) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@7 f_30@@7))
)) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@1) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@8 f_30@@8))
))) (forall ((o2_13@@9 T@Ref) (f_30@@9 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@9 f_30@@9) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@1) o2_13@@9 f_30@@9) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@9 f_30@@9)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@9 f_30@@9))
))) (forall ((o2_13@@10 T@Ref) (f_30@@10 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@10 f_30@@10) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@1) o2_13@@10 f_30@@10) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@10 f_30@@10)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@10 f_30@@10))
))) (forall ((o2_13@@11 T@Ref) (f_30@@11 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@11 f_30@@11) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@1) o2_13@@11 f_30@@11) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@11 f_30@@11)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@11 f_30@@11))
))) (forall ((o2_13@@12 T@Ref) (f_30@@12 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@12 f_30@@12) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@1) o2_13@@12 f_30@@12) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@12 f_30@@12)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@12 f_30@@12))
))) (forall ((o2_13@@13 T@Ref) (f_30@@13 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@13 f_30@@13) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@1) o2_13@@13 f_30@@13) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@13 f_30@@13)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@13 f_30@@13))
))) (forall ((o2_13@@14 T@Ref) (f_30@@14 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) null (PredicateMaskField_3486 pm_f_13@@0))) o2_13@@14 f_30@@14) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@1) o2_13@@14 f_30@@14) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@14 f_30@@14)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@0) o2_13@@14 f_30@@14))
)))))
 :qid |stdinbpl.54:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3486_3487 pm_f_13@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7313) (ExhaleHeap@@1 T@PolymorphicMapType_7313) (Mask@@2 T@PolymorphicMapType_7334) (pm_f_13@@1 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_7373_3487 Mask@@2 null pm_f_13@@1) (IsWandField_7373_26656 pm_f_13@@1)) (and (and (and (and (and (and (and (forall ((o2_13@@15 T@Ref) (f_30@@15 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@15 f_30@@15) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@2) o2_13@@15 f_30@@15) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@15 f_30@@15)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@15 f_30@@15))
)) (forall ((o2_13@@16 T@Ref) (f_30@@16 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@16 f_30@@16) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@2) o2_13@@16 f_30@@16) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@16 f_30@@16)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@16 f_30@@16))
))) (forall ((o2_13@@17 T@Ref) (f_30@@17 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@17 f_30@@17) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@2) o2_13@@17 f_30@@17) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@17 f_30@@17)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@17 f_30@@17))
))) (forall ((o2_13@@18 T@Ref) (f_30@@18 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@18 f_30@@18) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) o2_13@@18 f_30@@18) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@18 f_30@@18)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@18 f_30@@18))
))) (forall ((o2_13@@19 T@Ref) (f_30@@19 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@19 f_30@@19) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@2) o2_13@@19 f_30@@19) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@19 f_30@@19)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@19 f_30@@19))
))) (forall ((o2_13@@20 T@Ref) (f_30@@20 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@20 f_30@@20) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@2) o2_13@@20 f_30@@20) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@20 f_30@@20)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@20 f_30@@20))
))) (forall ((o2_13@@21 T@Ref) (f_30@@21 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@21 f_30@@21) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@2) o2_13@@21 f_30@@21) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@21 f_30@@21)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@21 f_30@@21))
))) (forall ((o2_13@@22 T@Ref) (f_30@@22 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@2) null (WandMaskField_7373 pm_f_13@@1))) o2_13@@22 f_30@@22) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@2) o2_13@@22 f_30@@22) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@22 f_30@@22)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@1) o2_13@@22 f_30@@22))
)))))
 :qid |stdinbpl.67:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_7373_26656 pm_f_13@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7313) (ExhaleHeap@@2 T@PolymorphicMapType_7313) (Mask@@3 T@PolymorphicMapType_7334) (pm_f_13@@2 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3486_3487 Mask@@3 null pm_f_13@@2) (IsWandField_3486_26299 pm_f_13@@2)) (and (and (and (and (and (and (and (forall ((o2_13@@23 T@Ref) (f_30@@23 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@23 f_30@@23) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@3) o2_13@@23 f_30@@23) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@23 f_30@@23)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@23 f_30@@23))
)) (forall ((o2_13@@24 T@Ref) (f_30@@24 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@24 f_30@@24) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@3) o2_13@@24 f_30@@24) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@24 f_30@@24)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@24 f_30@@24))
))) (forall ((o2_13@@25 T@Ref) (f_30@@25 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@25 f_30@@25) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@3) o2_13@@25 f_30@@25) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@25 f_30@@25)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@25 f_30@@25))
))) (forall ((o2_13@@26 T@Ref) (f_30@@26 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@26 f_30@@26) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@3) o2_13@@26 f_30@@26) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@26 f_30@@26)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@26 f_30@@26))
))) (forall ((o2_13@@27 T@Ref) (f_30@@27 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@27 f_30@@27) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@3) o2_13@@27 f_30@@27) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@27 f_30@@27)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@27 f_30@@27))
))) (forall ((o2_13@@28 T@Ref) (f_30@@28 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@28 f_30@@28) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@3) o2_13@@28 f_30@@28) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@28 f_30@@28)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@28 f_30@@28))
))) (forall ((o2_13@@29 T@Ref) (f_30@@29 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@29 f_30@@29) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@3) o2_13@@29 f_30@@29) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@29 f_30@@29)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@29 f_30@@29))
))) (forall ((o2_13@@30 T@Ref) (f_30@@30 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) null (WandMaskField_3486 pm_f_13@@2))) o2_13@@30 f_30@@30) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@3) o2_13@@30 f_30@@30) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@30 f_30@@30)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@2) o2_13@@30 f_30@@30))
)))))
 :qid |stdinbpl.67:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3486_26299 pm_f_13@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7313) (ExhaleHeap@@3 T@PolymorphicMapType_7313) (Mask@@4 T@PolymorphicMapType_7334) (pm_f_22 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_7373_3487 Mask@@4 null pm_f_22) (IsPredicateField_7373_23680 pm_f_22)) (and (and (and (and (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22 f_37) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@4) o2_22 f_37) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22 f_37)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22@@0 f_37@@0) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@4) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@0 f_37@@0)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22@@1 f_37@@1) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@4) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@1 f_37@@1)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22@@2 f_37@@2) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@2 f_37@@2)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@2 f_37@@2))
))) (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22@@3 f_37@@3) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@4) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@3 f_37@@3)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@3 f_37@@3))
))) (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22@@4 f_37@@4) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@4) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@4 f_37@@4)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@4 f_37@@4))
))) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22@@5 f_37@@5) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@4) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@5 f_37@@5)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@4) null (PredicateMaskField_7373 pm_f_22))) o2_22@@6 f_37@@6) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@4) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@6 f_37@@6)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@3) o2_22@@6 f_37@@6))
)))))
 :qid |stdinbpl.118:19|
 :skolemid |18|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@4 ExhaleHeap@@3 Mask@@4) (IsPredicateField_7373_23680 pm_f_22))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7313) (ExhaleHeap@@4 T@PolymorphicMapType_7313) (Mask@@5 T@PolymorphicMapType_7334) (pm_f_22@@0 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3486_3487 Mask@@5 null pm_f_22@@0) (IsPredicateField_3486_3487 pm_f_22@@0)) (and (and (and (and (and (and (and (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@7 f_37@@7) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@5) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@7 f_37@@7)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@7 f_37@@7))
)) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@8 f_37@@8) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@5) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@8 f_37@@8)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@8 f_37@@8))
))) (forall ((o2_22@@9 T@Ref) (f_37@@9 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@9 f_37@@9) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@5) o2_22@@9 f_37@@9) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@9 f_37@@9)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@9 f_37@@9))
))) (forall ((o2_22@@10 T@Ref) (f_37@@10 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@10 f_37@@10) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@5) o2_22@@10 f_37@@10) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@10 f_37@@10)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@10 f_37@@10))
))) (forall ((o2_22@@11 T@Ref) (f_37@@11 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@11 f_37@@11) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@5) o2_22@@11 f_37@@11) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@11 f_37@@11)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@11 f_37@@11))
))) (forall ((o2_22@@12 T@Ref) (f_37@@12 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@12 f_37@@12) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@5) o2_22@@12 f_37@@12) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@12 f_37@@12)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@12 f_37@@12))
))) (forall ((o2_22@@13 T@Ref) (f_37@@13 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@13 f_37@@13) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@5) o2_22@@13 f_37@@13) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@13 f_37@@13)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@13 f_37@@13))
))) (forall ((o2_22@@14 T@Ref) (f_37@@14 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) null (PredicateMaskField_3486 pm_f_22@@0))) o2_22@@14 f_37@@14) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@5) o2_22@@14 f_37@@14) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@14 f_37@@14)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@4) o2_22@@14 f_37@@14))
)))))
 :qid |stdinbpl.118:19|
 :skolemid |18|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3486_3487 pm_f_22@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7313) (ExhaleHeap@@5 T@PolymorphicMapType_7313) (Mask@@6 T@PolymorphicMapType_7334) (pm_f_22@@1 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_7373_3487 Mask@@6 null pm_f_22@@1) (IsWandField_7373_26656 pm_f_22@@1)) (and (and (and (and (and (and (and (forall ((o2_22@@15 T@Ref) (f_37@@15 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@15 f_37@@15) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@6) o2_22@@15 f_37@@15) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@15 f_37@@15)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@15 f_37@@15))
)) (forall ((o2_22@@16 T@Ref) (f_37@@16 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@16 f_37@@16) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@6) o2_22@@16 f_37@@16) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@16 f_37@@16)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@16 f_37@@16))
))) (forall ((o2_22@@17 T@Ref) (f_37@@17 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@17 f_37@@17) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@6) o2_22@@17 f_37@@17) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@17 f_37@@17)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@17 f_37@@17))
))) (forall ((o2_22@@18 T@Ref) (f_37@@18 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@18 f_37@@18) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) o2_22@@18 f_37@@18) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@18 f_37@@18)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@18 f_37@@18))
))) (forall ((o2_22@@19 T@Ref) (f_37@@19 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@19 f_37@@19) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@6) o2_22@@19 f_37@@19) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@19 f_37@@19)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@19 f_37@@19))
))) (forall ((o2_22@@20 T@Ref) (f_37@@20 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@20 f_37@@20) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@6) o2_22@@20 f_37@@20) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@20 f_37@@20)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@20 f_37@@20))
))) (forall ((o2_22@@21 T@Ref) (f_37@@21 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@21 f_37@@21) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@6) o2_22@@21 f_37@@21) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@21 f_37@@21)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@21 f_37@@21))
))) (forall ((o2_22@@22 T@Ref) (f_37@@22 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@6) null (WandMaskField_7373 pm_f_22@@1))) o2_22@@22 f_37@@22) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@6) o2_22@@22 f_37@@22) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@22 f_37@@22)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@5) o2_22@@22 f_37@@22))
)))))
 :qid |stdinbpl.134:19|
 :skolemid |22|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@6 ExhaleHeap@@5 Mask@@6) (IsWandField_7373_26656 pm_f_22@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7313) (ExhaleHeap@@6 T@PolymorphicMapType_7313) (Mask@@7 T@PolymorphicMapType_7334) (pm_f_22@@2 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3486_3487 Mask@@7 null pm_f_22@@2) (IsWandField_3486_26299 pm_f_22@@2)) (and (and (and (and (and (and (and (forall ((o2_22@@23 T@Ref) (f_37@@23 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@23 f_37@@23) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@7) o2_22@@23 f_37@@23) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@23 f_37@@23)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@23 f_37@@23))
)) (forall ((o2_22@@24 T@Ref) (f_37@@24 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@24 f_37@@24) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@7) o2_22@@24 f_37@@24) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@24 f_37@@24)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@24 f_37@@24))
))) (forall ((o2_22@@25 T@Ref) (f_37@@25 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@25 f_37@@25) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@7) o2_22@@25 f_37@@25) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@25 f_37@@25)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@25 f_37@@25))
))) (forall ((o2_22@@26 T@Ref) (f_37@@26 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@26 f_37@@26) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@7) o2_22@@26 f_37@@26) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@26 f_37@@26)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@26 f_37@@26))
))) (forall ((o2_22@@27 T@Ref) (f_37@@27 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@27 f_37@@27) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@7) o2_22@@27 f_37@@27) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@27 f_37@@27)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@27 f_37@@27))
))) (forall ((o2_22@@28 T@Ref) (f_37@@28 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@28 f_37@@28) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@7) o2_22@@28 f_37@@28) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@28 f_37@@28)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@28 f_37@@28))
))) (forall ((o2_22@@29 T@Ref) (f_37@@29 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@29 f_37@@29) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@7) o2_22@@29 f_37@@29) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@29 f_37@@29)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@29 f_37@@29))
))) (forall ((o2_22@@30 T@Ref) (f_37@@30 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) null (WandMaskField_3486 pm_f_22@@2))) o2_22@@30 f_37@@30) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@7) o2_22@@30 f_37@@30) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@30 f_37@@30)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@6) o2_22@@30 f_37@@30))
)))))
 :qid |stdinbpl.134:19|
 :skolemid |22|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7) (IsWandField_3486_26299 pm_f_22@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7313) (Heap1@@0 T@PolymorphicMapType_7313) (Heap2 T@PolymorphicMapType_7313) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.100:15|
 :skolemid |13|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12993_12998) ) (!  (not (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12980_12981) ) (!  (not (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3486_7387) ) (!  (not (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3486_53) ) (!  (not (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7373_12998) ) (!  (not (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7373_3487) ) (!  (not (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_7386_7387) ) (!  (not (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7373_53) ) (!  (not (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_3486_3487 (List x))
 :qid |stdinbpl.252:15|
 :skolemid |35|
 :pattern ( (List x))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7313) (x@@0 T@Ref) ) (! (|List#everUsed_3486| (List x@@0))
 :qid |stdinbpl.271:15|
 :skolemid |39|
 :pattern ( (|List#trigger_3486| Heap@@8 (List x@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7313) (ExhaleHeap@@7 T@PolymorphicMapType_7313) (Mask@@8 T@PolymorphicMapType_7334) (pm_f_13@@3 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_7373_3487 Mask@@8 null pm_f_13@@3) (IsPredicateField_7373_23680 pm_f_13@@3)) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@9) null (PredicateMaskField_7373 pm_f_13@@3)) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@7) null (PredicateMaskField_7373 pm_f_13@@3)))))
 :qid |stdinbpl.49:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (IsPredicateField_7373_23680 pm_f_13@@3) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@7) null (PredicateMaskField_7373 pm_f_13@@3)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7313) (ExhaleHeap@@8 T@PolymorphicMapType_7313) (Mask@@9 T@PolymorphicMapType_7334) (pm_f_13@@4 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_3486_3487 Mask@@9 null pm_f_13@@4) (IsPredicateField_3486_3487 pm_f_13@@4)) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@10) null (PredicateMaskField_3486 pm_f_13@@4)) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@8) null (PredicateMaskField_3486 pm_f_13@@4)))))
 :qid |stdinbpl.49:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (IsPredicateField_3486_3487 pm_f_13@@4) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@8) null (PredicateMaskField_3486 pm_f_13@@4)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7313) (ExhaleHeap@@9 T@PolymorphicMapType_7313) (Mask@@10 T@PolymorphicMapType_7334) (pm_f_13@@5 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_7373_3487 Mask@@10 null pm_f_13@@5) (IsWandField_7373_26656 pm_f_13@@5)) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@11) null (WandMaskField_7373 pm_f_13@@5)) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@9) null (WandMaskField_7373 pm_f_13@@5)))))
 :qid |stdinbpl.62:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (IsWandField_7373_26656 pm_f_13@@5) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@9) null (WandMaskField_7373 pm_f_13@@5)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7313) (ExhaleHeap@@10 T@PolymorphicMapType_7313) (Mask@@11 T@PolymorphicMapType_7334) (pm_f_13@@6 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_3486_3487 Mask@@11 null pm_f_13@@6) (IsWandField_3486_26299 pm_f_13@@6)) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@12) null (WandMaskField_3486 pm_f_13@@6)) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@10) null (WandMaskField_3486 pm_f_13@@6)))))
 :qid |stdinbpl.62:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11) (IsWandField_3486_26299 pm_f_13@@6) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@10) null (WandMaskField_3486 pm_f_13@@6)))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (List x@@1) (List x2)) (= x@@1 x2))
 :qid |stdinbpl.262:15|
 :skolemid |37|
 :pattern ( (List x@@1) (List x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|List#sm| x@@2) (|List#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.266:15|
 :skolemid |38|
 :pattern ( (|List#sm| x@@2) (|List#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7313) (ExhaleHeap@@11 T@PolymorphicMapType_7313) (Mask@@12 T@PolymorphicMapType_7334) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@12) (=> (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@13) o_22 $allocated) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@11) o_22 $allocated)))
 :qid |stdinbpl.75:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@12) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@11) o_22 $allocated))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7313) (ExhaleHeap@@12 T@PolymorphicMapType_7313) (Mask@@13 T@PolymorphicMapType_7334) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@14 ExhaleHeap@@12 Mask@@13) (=> (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@14) o_46 $allocated) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@12) o_46 $allocated)))
 :qid |stdinbpl.142:15|
 :skolemid |23|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@14 ExhaleHeap@@12 Mask@@13) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@12) o_46 $allocated))
)))
(assert (forall ((p T@Field_12980_12981) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12980_12980 p v_1 p w))
 :qid |stdinbpl.228:19|
 :skolemid |33|
 :pattern ( (InsidePredicate_12980_12980 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_7373_3487) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_7373_7373 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.228:19|
 :skolemid |33|
 :pattern ( (InsidePredicate_7373_7373 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3482_3483 next)))
(assert  (not (IsWandField_3482_3483 next)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7313) (ExhaleHeap@@13 T@PolymorphicMapType_7313) (Mask@@14 T@PolymorphicMapType_7334) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@14) (succHeap Heap@@15 ExhaleHeap@@13))
 :qid |stdinbpl.85:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@14))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7313) (ExhaleHeap@@14 T@PolymorphicMapType_7313) (Mask@@15 T@PolymorphicMapType_7334) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@16 ExhaleHeap@@14 Mask@@15) (succHeap Heap@@16 ExhaleHeap@@14))
 :qid |stdinbpl.90:15|
 :skolemid |11|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@16 ExhaleHeap@@14 Mask@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7334) (o_2@@7 T@Ref) (f_4@@7 T@Field_7373_12998) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| Mask@@16) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_7373_44434 f_4@@7))) (not (IsWandField_7373_44450 f_4@@7))) (<= (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| Mask@@16) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| Mask@@16) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7334) (o_2@@8 T@Ref) (f_4@@8 T@Field_7386_7387) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| Mask@@17) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3482_3483 f_4@@8))) (not (IsWandField_3482_3483 f_4@@8))) (<= (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| Mask@@17) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| Mask@@17) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7334) (o_2@@9 T@Ref) (f_4@@9 T@Field_7373_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| Mask@@18) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_7373_53 f_4@@9))) (not (IsWandField_7373_53 f_4@@9))) (<= (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| Mask@@18) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| Mask@@18) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7334) (o_2@@10 T@Ref) (f_4@@10 T@Field_7373_3487) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| Mask@@19) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_7373_23680 f_4@@10))) (not (IsWandField_7373_26656 f_4@@10))) (<= (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| Mask@@19) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| Mask@@19) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7334) (o_2@@11 T@Ref) (f_4@@11 T@Field_12993_12998) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| Mask@@20) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3486_43785 f_4@@11))) (not (IsWandField_3486_43801 f_4@@11))) (<= (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| Mask@@20) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| Mask@@20) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7334) (o_2@@12 T@Ref) (f_4@@12 T@Field_3486_7387) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| Mask@@21) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_3486_7387 f_4@@12))) (not (IsWandField_3486_7387 f_4@@12))) (<= (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| Mask@@21) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| Mask@@21) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7334) (o_2@@13 T@Ref) (f_4@@13 T@Field_3486_53) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| Mask@@22) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_3486_53 f_4@@13))) (not (IsWandField_3486_53 f_4@@13))) (<= (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| Mask@@22) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| Mask@@22) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7334) (o_2@@14 T@Ref) (f_4@@14 T@Field_12980_12981) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| Mask@@23) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_3486_3487 f_4@@14))) (not (IsWandField_3486_26299 f_4@@14))) (<= (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| Mask@@23) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| Mask@@23) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7334) (o_2@@15 T@Ref) (f_4@@15 T@Field_7373_12998) ) (! (= (HasDirectPerm_7373_23067 Mask@@24 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| Mask@@24) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_7373_23067 Mask@@24 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7334) (o_2@@16 T@Ref) (f_4@@16 T@Field_7386_7387) ) (! (= (HasDirectPerm_7373_7387 Mask@@25 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| Mask@@25) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_7373_7387 Mask@@25 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_7334) (o_2@@17 T@Ref) (f_4@@17 T@Field_7373_53) ) (! (= (HasDirectPerm_7373_53 Mask@@26 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| Mask@@26) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_7373_53 Mask@@26 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_7334) (o_2@@18 T@Ref) (f_4@@18 T@Field_7373_3487) ) (! (= (HasDirectPerm_7373_3487 Mask@@27 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| Mask@@27) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_7373_3487 Mask@@27 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_7334) (o_2@@19 T@Ref) (f_4@@19 T@Field_12993_12998) ) (! (= (HasDirectPerm_3486_22139 Mask@@28 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| Mask@@28) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_3486_22139 Mask@@28 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_7334) (o_2@@20 T@Ref) (f_4@@20 T@Field_3486_7387) ) (! (= (HasDirectPerm_3486_7387 Mask@@29 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| Mask@@29) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_3486_7387 Mask@@29 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_7334) (o_2@@21 T@Ref) (f_4@@21 T@Field_3486_53) ) (! (= (HasDirectPerm_3486_53 Mask@@30 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| Mask@@30) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_3486_53 Mask@@30 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_7334) (o_2@@22 T@Ref) (f_4@@22 T@Field_12980_12981) ) (! (= (HasDirectPerm_3486_3487 Mask@@31 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| Mask@@31) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_3486_3487 Mask@@31 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.216:15|
 :skolemid |31|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7313) (ExhaleHeap@@15 T@PolymorphicMapType_7313) (Mask@@32 T@PolymorphicMapType_7334) (o_22@@0 T@Ref) (f_30@@31 T@Field_7373_12998) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_7373_23067 Mask@@32 o_22@@0 f_30@@31) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@17) o_22@@0 f_30@@31) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@15) o_22@@0 f_30@@31))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@15) o_22@@0 f_30@@31))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7313) (ExhaleHeap@@16 T@PolymorphicMapType_7313) (Mask@@33 T@PolymorphicMapType_7334) (o_22@@1 T@Ref) (f_30@@32 T@Field_7386_7387) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_7373_7387 Mask@@33 o_22@@1 f_30@@32) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@18) o_22@@1 f_30@@32) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@16) o_22@@1 f_30@@32))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@16) o_22@@1 f_30@@32))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7313) (ExhaleHeap@@17 T@PolymorphicMapType_7313) (Mask@@34 T@PolymorphicMapType_7334) (o_22@@2 T@Ref) (f_30@@33 T@Field_7373_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@34) (=> (HasDirectPerm_7373_53 Mask@@34 o_22@@2 f_30@@33) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@19) o_22@@2 f_30@@33) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@17) o_22@@2 f_30@@33))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@34) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@17) o_22@@2 f_30@@33))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7313) (ExhaleHeap@@18 T@PolymorphicMapType_7313) (Mask@@35 T@PolymorphicMapType_7334) (o_22@@3 T@Ref) (f_30@@34 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@35) (=> (HasDirectPerm_7373_3487 Mask@@35 o_22@@3 f_30@@34) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@20) o_22@@3 f_30@@34) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@18) o_22@@3 f_30@@34))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@35) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@18) o_22@@3 f_30@@34))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7313) (ExhaleHeap@@19 T@PolymorphicMapType_7313) (Mask@@36 T@PolymorphicMapType_7334) (o_22@@4 T@Ref) (f_30@@35 T@Field_12993_12998) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@36) (=> (HasDirectPerm_3486_22139 Mask@@36 o_22@@4 f_30@@35) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@21) o_22@@4 f_30@@35) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@19) o_22@@4 f_30@@35))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@36) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@19) o_22@@4 f_30@@35))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7313) (ExhaleHeap@@20 T@PolymorphicMapType_7313) (Mask@@37 T@PolymorphicMapType_7334) (o_22@@5 T@Ref) (f_30@@36 T@Field_3486_7387) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@37) (=> (HasDirectPerm_3486_7387 Mask@@37 o_22@@5 f_30@@36) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@22) o_22@@5 f_30@@36) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@20) o_22@@5 f_30@@36))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@37) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@20) o_22@@5 f_30@@36))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7313) (ExhaleHeap@@21 T@PolymorphicMapType_7313) (Mask@@38 T@PolymorphicMapType_7334) (o_22@@6 T@Ref) (f_30@@37 T@Field_3486_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@38) (=> (HasDirectPerm_3486_53 Mask@@38 o_22@@6 f_30@@37) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@23) o_22@@6 f_30@@37) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@21) o_22@@6 f_30@@37))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@38) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@21) o_22@@6 f_30@@37))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7313) (ExhaleHeap@@22 T@PolymorphicMapType_7313) (Mask@@39 T@PolymorphicMapType_7334) (o_22@@7 T@Ref) (f_30@@38 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@39) (=> (HasDirectPerm_3486_3487 Mask@@39 o_22@@7 f_30@@38) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@24) o_22@@7 f_30@@38) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@22) o_22@@7 f_30@@38))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@39) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@22) o_22@@7 f_30@@38))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7313) (ExhaleHeap@@23 T@PolymorphicMapType_7313) (Mask@@40 T@PolymorphicMapType_7334) (o_46@@0 T@Ref) (f_37@@31 T@Field_7373_12998) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@25 ExhaleHeap@@23 Mask@@40) (=> (HasDirectPerm_7373_23067 Mask@@40 o_46@@0 f_37@@31) (= (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@25) o_46@@0 f_37@@31) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@23) o_46@@0 f_37@@31))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@25 ExhaleHeap@@23 Mask@@40) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@23) o_46@@0 f_37@@31))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7313) (ExhaleHeap@@24 T@PolymorphicMapType_7313) (Mask@@41 T@PolymorphicMapType_7334) (o_46@@1 T@Ref) (f_37@@32 T@Field_7386_7387) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@26 ExhaleHeap@@24 Mask@@41) (=> (HasDirectPerm_7373_7387 Mask@@41 o_46@@1 f_37@@32) (= (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@26) o_46@@1 f_37@@32) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@24) o_46@@1 f_37@@32))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@26 ExhaleHeap@@24 Mask@@41) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| ExhaleHeap@@24) o_46@@1 f_37@@32))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7313) (ExhaleHeap@@25 T@PolymorphicMapType_7313) (Mask@@42 T@PolymorphicMapType_7334) (o_46@@2 T@Ref) (f_37@@33 T@Field_7373_53) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@27 ExhaleHeap@@25 Mask@@42) (=> (HasDirectPerm_7373_53 Mask@@42 o_46@@2 f_37@@33) (= (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@27) o_46@@2 f_37@@33) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@25) o_46@@2 f_37@@33))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@27 ExhaleHeap@@25 Mask@@42) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| ExhaleHeap@@25) o_46@@2 f_37@@33))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7313) (ExhaleHeap@@26 T@PolymorphicMapType_7313) (Mask@@43 T@PolymorphicMapType_7334) (o_46@@3 T@Ref) (f_37@@34 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@28 ExhaleHeap@@26 Mask@@43) (=> (HasDirectPerm_7373_3487 Mask@@43 o_46@@3 f_37@@34) (= (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@28) o_46@@3 f_37@@34) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@26) o_46@@3 f_37@@34))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@28 ExhaleHeap@@26 Mask@@43) (select (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| ExhaleHeap@@26) o_46@@3 f_37@@34))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7313) (ExhaleHeap@@27 T@PolymorphicMapType_7313) (Mask@@44 T@PolymorphicMapType_7334) (o_46@@4 T@Ref) (f_37@@35 T@Field_12993_12998) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@29 ExhaleHeap@@27 Mask@@44) (=> (HasDirectPerm_3486_22139 Mask@@44 o_46@@4 f_37@@35) (= (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@29) o_46@@4 f_37@@35) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@27) o_46@@4 f_37@@35))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@29 ExhaleHeap@@27 Mask@@44) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@27) o_46@@4 f_37@@35))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7313) (ExhaleHeap@@28 T@PolymorphicMapType_7313) (Mask@@45 T@PolymorphicMapType_7334) (o_46@@5 T@Ref) (f_37@@36 T@Field_3486_7387) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@30 ExhaleHeap@@28 Mask@@45) (=> (HasDirectPerm_3486_7387 Mask@@45 o_46@@5 f_37@@36) (= (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@30) o_46@@5 f_37@@36) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@28) o_46@@5 f_37@@36))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@30 ExhaleHeap@@28 Mask@@45) (select (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| ExhaleHeap@@28) o_46@@5 f_37@@36))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7313) (ExhaleHeap@@29 T@PolymorphicMapType_7313) (Mask@@46 T@PolymorphicMapType_7334) (o_46@@6 T@Ref) (f_37@@37 T@Field_3486_53) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@31 ExhaleHeap@@29 Mask@@46) (=> (HasDirectPerm_3486_53 Mask@@46 o_46@@6 f_37@@37) (= (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@31) o_46@@6 f_37@@37) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@29) o_46@@6 f_37@@37))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@31 ExhaleHeap@@29 Mask@@46) (select (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| ExhaleHeap@@29) o_46@@6 f_37@@37))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_7313) (ExhaleHeap@@30 T@PolymorphicMapType_7313) (Mask@@47 T@PolymorphicMapType_7334) (o_46@@7 T@Ref) (f_37@@38 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@32 ExhaleHeap@@30 Mask@@47) (=> (HasDirectPerm_3486_3487 Mask@@47 o_46@@7 f_37@@38) (= (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@32) o_46@@7 f_37@@38) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@30) o_46@@7 f_37@@38))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@32 ExhaleHeap@@30 Mask@@47) (select (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| ExhaleHeap@@30) o_46@@7 f_37@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_7373_12998) ) (! (= (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_7386_7387) ) (! (= (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_7373_53) ) (! (= (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_7373_3487) ) (! (= (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_12993_12998) ) (! (= (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_3486_7387) ) (! (= (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_3486_53) ) (! (= (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_12980_12981) ) (! (= (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7334) (SummandMask1 T@PolymorphicMapType_7334) (SummandMask2 T@PolymorphicMapType_7334) (o_2@@31 T@Ref) (f_4@@31 T@Field_7373_12998) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7334_7373_42610#PolymorphicMapType_7334| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7334) (SummandMask1@@0 T@PolymorphicMapType_7334) (SummandMask2@@0 T@PolymorphicMapType_7334) (o_2@@32 T@Ref) (f_4@@32 T@Field_7386_7387) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7334_7373_7387#PolymorphicMapType_7334| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7334) (SummandMask1@@1 T@PolymorphicMapType_7334) (SummandMask2@@1 T@PolymorphicMapType_7334) (o_2@@33 T@Ref) (f_4@@33 T@Field_7373_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7334_7373_53#PolymorphicMapType_7334| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7334) (SummandMask1@@2 T@PolymorphicMapType_7334) (SummandMask2@@2 T@PolymorphicMapType_7334) (o_2@@34 T@Ref) (f_4@@34 T@Field_7373_3487) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7334_7373_3487#PolymorphicMapType_7334| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7334) (SummandMask1@@3 T@PolymorphicMapType_7334) (SummandMask2@@3 T@PolymorphicMapType_7334) (o_2@@35 T@Ref) (f_4@@35 T@Field_12993_12998) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7334_3486_42264#PolymorphicMapType_7334| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7334) (SummandMask1@@4 T@PolymorphicMapType_7334) (SummandMask2@@4 T@PolymorphicMapType_7334) (o_2@@36 T@Ref) (f_4@@36 T@Field_3486_7387) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7334_3486_7387#PolymorphicMapType_7334| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7334) (SummandMask1@@5 T@PolymorphicMapType_7334) (SummandMask2@@5 T@PolymorphicMapType_7334) (o_2@@37 T@Ref) (f_4@@37 T@Field_3486_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7334_3486_53#PolymorphicMapType_7334| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7334) (SummandMask1@@6 T@PolymorphicMapType_7334) (SummandMask2@@6 T@PolymorphicMapType_7334) (o_2@@38 T@Ref) (f_4@@38 T@Field_12980_12981) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7334_3486_3487#PolymorphicMapType_7334| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_7313) (Heap1@@1 T@PolymorphicMapType_7313) (Mask1 T@PolymorphicMapType_7334) (Heap2@@0 T@PolymorphicMapType_7313) (Mask2 T@PolymorphicMapType_7334) ) (! (= (SumHeap Heap@@33 Heap1@@1 Mask1 Heap2@@0 Mask2)  (and (IdenticalOnKnownLocationsLiberal Heap1@@1 Heap@@33 Mask1) (IdenticalOnKnownLocationsLiberal Heap2@@0 Heap@@33 Mask2)))
 :qid |stdinbpl.150:15|
 :skolemid |24|
 :pattern ( (SumHeap Heap@@33 Heap1@@1 Mask1 Heap2@@0 Mask2))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_3486_3487 (List x@@3)) 0)
 :qid |stdinbpl.256:15|
 :skolemid |36|
 :pattern ( (List x@@3))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_7313) (ExhaleHeap@@31 T@PolymorphicMapType_7313) (Mask@@48 T@PolymorphicMapType_7334) (pm_f_22@@3 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@34 ExhaleHeap@@31 Mask@@48) (=> (and (HasDirectPerm_7373_3487 Mask@@48 null pm_f_22@@3) (IsPredicateField_7373_23680 pm_f_22@@3)) (and (and (and (and (and (and (and (forall ((o2_22@@31 T@Ref) (f_37@@39 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@31 f_37@@39) (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@31 f_37@@39))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@31 f_37@@39))
)) (forall ((o2_22@@32 T@Ref) (f_37@@40 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@32 f_37@@40) (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@32 f_37@@40))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@32 f_37@@40))
))) (forall ((o2_22@@33 T@Ref) (f_37@@41 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@33 f_37@@41) (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@33 f_37@@41))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@33 f_37@@41))
))) (forall ((o2_22@@34 T@Ref) (f_37@@42 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@34 f_37@@42) (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@34 f_37@@42))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@34 f_37@@42))
))) (forall ((o2_22@@35 T@Ref) (f_37@@43 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@35 f_37@@43) (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@35 f_37@@43))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@35 f_37@@43))
))) (forall ((o2_22@@36 T@Ref) (f_37@@44 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@36 f_37@@44) (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@36 f_37@@44))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@36 f_37@@44))
))) (forall ((o2_22@@37 T@Ref) (f_37@@45 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@37 f_37@@45) (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@37 f_37@@45))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@37 f_37@@45))
))) (forall ((o2_22@@38 T@Ref) (f_37@@46 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@34) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@38 f_37@@46) (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@38 f_37@@46))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3))) o2_22@@38 f_37@@46))
)))))
 :qid |stdinbpl.110:19|
 :skolemid |16|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@34 ExhaleHeap@@31 Mask@@48) (IsPredicateField_7373_23680 pm_f_22@@3) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@31) null (PredicateMaskField_7373 pm_f_22@@3)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_7313) (ExhaleHeap@@32 T@PolymorphicMapType_7313) (Mask@@49 T@PolymorphicMapType_7334) (pm_f_22@@4 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@35 ExhaleHeap@@32 Mask@@49) (=> (and (HasDirectPerm_3486_3487 Mask@@49 null pm_f_22@@4) (IsPredicateField_3486_3487 pm_f_22@@4)) (and (and (and (and (and (and (and (forall ((o2_22@@39 T@Ref) (f_37@@47 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@39 f_37@@47) (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@39 f_37@@47))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@39 f_37@@47))
)) (forall ((o2_22@@40 T@Ref) (f_37@@48 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@40 f_37@@48) (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@40 f_37@@48))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@40 f_37@@48))
))) (forall ((o2_22@@41 T@Ref) (f_37@@49 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@41 f_37@@49) (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@41 f_37@@49))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@41 f_37@@49))
))) (forall ((o2_22@@42 T@Ref) (f_37@@50 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@42 f_37@@50) (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@42 f_37@@50))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@42 f_37@@50))
))) (forall ((o2_22@@43 T@Ref) (f_37@@51 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@43 f_37@@51) (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@43 f_37@@51))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@43 f_37@@51))
))) (forall ((o2_22@@44 T@Ref) (f_37@@52 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@44 f_37@@52) (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@44 f_37@@52))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@44 f_37@@52))
))) (forall ((o2_22@@45 T@Ref) (f_37@@53 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@45 f_37@@53) (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@45 f_37@@53))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@45 f_37@@53))
))) (forall ((o2_22@@46 T@Ref) (f_37@@54 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@35) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@46 f_37@@54) (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@46 f_37@@54))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4))) o2_22@@46 f_37@@54))
)))))
 :qid |stdinbpl.110:19|
 :skolemid |16|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@35 ExhaleHeap@@32 Mask@@49) (IsPredicateField_3486_3487 pm_f_22@@4) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@32) null (PredicateMaskField_3486 pm_f_22@@4)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_7313) (ExhaleHeap@@33 T@PolymorphicMapType_7313) (Mask@@50 T@PolymorphicMapType_7334) (pm_f_22@@5 T@Field_7373_3487) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@36 ExhaleHeap@@33 Mask@@50) (=> (and (HasDirectPerm_7373_3487 Mask@@50 null pm_f_22@@5) (IsWandField_7373_26656 pm_f_22@@5)) (and (and (and (and (and (and (and (forall ((o2_22@@47 T@Ref) (f_37@@55 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@47 f_37@@55) (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@47 f_37@@55))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@47 f_37@@55))
)) (forall ((o2_22@@48 T@Ref) (f_37@@56 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@48 f_37@@56) (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@48 f_37@@56))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@48 f_37@@56))
))) (forall ((o2_22@@49 T@Ref) (f_37@@57 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@49 f_37@@57) (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@49 f_37@@57))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@49 f_37@@57))
))) (forall ((o2_22@@50 T@Ref) (f_37@@58 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@50 f_37@@58) (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@50 f_37@@58))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@50 f_37@@58))
))) (forall ((o2_22@@51 T@Ref) (f_37@@59 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@51 f_37@@59) (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@51 f_37@@59))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@51 f_37@@59))
))) (forall ((o2_22@@52 T@Ref) (f_37@@60 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@52 f_37@@60) (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@52 f_37@@60))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@52 f_37@@60))
))) (forall ((o2_22@@53 T@Ref) (f_37@@61 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@53 f_37@@61) (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@53 f_37@@61))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@53 f_37@@61))
))) (forall ((o2_22@@54 T@Ref) (f_37@@62 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@36) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@54 f_37@@62) (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@54 f_37@@62))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5))) o2_22@@54 f_37@@62))
)))))
 :qid |stdinbpl.126:19|
 :skolemid |20|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@36 ExhaleHeap@@33 Mask@@50) (IsWandField_7373_26656 pm_f_22@@5) (select (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| ExhaleHeap@@33) null (WandMaskField_7373 pm_f_22@@5)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_7313) (ExhaleHeap@@34 T@PolymorphicMapType_7313) (Mask@@51 T@PolymorphicMapType_7334) (pm_f_22@@6 T@Field_12980_12981) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@37 ExhaleHeap@@34 Mask@@51) (=> (and (HasDirectPerm_3486_3487 Mask@@51 null pm_f_22@@6) (IsWandField_3486_26299 pm_f_22@@6)) (and (and (and (and (and (and (and (forall ((o2_22@@55 T@Ref) (f_37@@63 T@Field_7373_53) ) (!  (=> (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@55 f_37@@63) (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@55 f_37@@63))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@55 f_37@@63))
)) (forall ((o2_22@@56 T@Ref) (f_37@@64 T@Field_7386_7387) ) (!  (=> (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@56 f_37@@64) (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@56 f_37@@64))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@56 f_37@@64))
))) (forall ((o2_22@@57 T@Ref) (f_37@@65 T@Field_7373_3487) ) (!  (=> (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@57 f_37@@65) (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@57 f_37@@65))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@57 f_37@@65))
))) (forall ((o2_22@@58 T@Ref) (f_37@@66 T@Field_7373_12998) ) (!  (=> (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@58 f_37@@66) (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@58 f_37@@66))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_7373_24641#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@58 f_37@@66))
))) (forall ((o2_22@@59 T@Ref) (f_37@@67 T@Field_3486_53) ) (!  (=> (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@59 f_37@@67) (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@59 f_37@@67))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_53#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@59 f_37@@67))
))) (forall ((o2_22@@60 T@Ref) (f_37@@68 T@Field_3486_7387) ) (!  (=> (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@60 f_37@@68) (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@60 f_37@@68))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_7387#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@60 f_37@@68))
))) (forall ((o2_22@@61 T@Ref) (f_37@@69 T@Field_12980_12981) ) (!  (=> (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@61 f_37@@69) (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@61 f_37@@69))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_12981#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@61 f_37@@69))
))) (forall ((o2_22@@62 T@Ref) (f_37@@70 T@Field_12993_12998) ) (!  (=> (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@37) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@62 f_37@@70) (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@62 f_37@@70))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7878_12980_25491#PolymorphicMapType_7878| (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6))) o2_22@@62 f_37@@70))
)))))
 :qid |stdinbpl.126:19|
 :skolemid |20|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@37 ExhaleHeap@@34 Mask@@51) (IsWandField_3486_26299 pm_f_22@@6) (select (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| ExhaleHeap@@34) null (WandMaskField_3486 pm_f_22@@6)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_7313) (o_35 T@Ref) (f_11 T@Field_12993_12998) (v T@PolymorphicMapType_7878) ) (! (succHeap Heap@@38 (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@38) (store (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@38) o_35 f_11 v) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@38)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@38) (store (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@38) o_35 f_11 v) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@38) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_7313) (o_35@@0 T@Ref) (f_11@@0 T@Field_12980_12981) (v@@0 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@39) (store (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@39) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@39)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@39) (store (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@39) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@39) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_7313) (o_35@@1 T@Ref) (f_11@@1 T@Field_3486_7387) (v@@1 T@Ref) ) (! (succHeap Heap@@40 (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@40) (store (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@40) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@40)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@40) (store (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@40) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@40) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_7313) (o_35@@2 T@Ref) (f_11@@2 T@Field_3486_53) (v@@2 Bool) ) (! (succHeap Heap@@41 (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@41) (store (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@41) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@41)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@41) (store (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@41) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@41) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_7313) (o_35@@3 T@Ref) (f_11@@3 T@Field_7373_12998) (v@@3 T@PolymorphicMapType_7878) ) (! (succHeap Heap@@42 (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@42) (store (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@42) o_35@@3 f_11@@3 v@@3)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@42) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@42) (store (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@42) o_35@@3 f_11@@3 v@@3)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_7313) (o_35@@4 T@Ref) (f_11@@4 T@Field_7373_3487) (v@@4 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@43) (store (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@43) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@43)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@43) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@43) (store (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@43) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_7313) (o_35@@5 T@Ref) (f_11@@5 T@Field_7386_7387) (v@@5 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@44) (store (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@44) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@44)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@44) (store (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@44) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@44) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_7313) (o_35@@6 T@Ref) (f_11@@6 T@Field_7373_53) (v@@6 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_7313 (store (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@45) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@45)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7313 (store (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@45) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_3487#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_53#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_7387#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_3486_22181#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_7373_3487#PolymorphicMapType_7313| Heap@@45) (|PolymorphicMapType_7313_7373_23109#PolymorphicMapType_7313| Heap@@45)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_3486 (List x@@4)) (|List#sm| x@@4))
 :qid |stdinbpl.248:15|
 :skolemid |34|
 :pattern ( (PredicateMaskField_3486 (List x@@4)))
)))
(assert (forall ((o_35@@7 T@Ref) (f_31 T@Field_7386_7387) (Heap@@46 T@PolymorphicMapType_7313) ) (!  (=> (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@46) o_35@@7 $allocated) (select (|PolymorphicMapType_7313_3301_53#PolymorphicMapType_7313| Heap@@46) (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@46) o_35@@7 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7313_3304_3305#PolymorphicMapType_7313| Heap@@46) o_35@@7 f_31))
)))
(assert (forall ((p@@2 T@Field_12980_12981) (v_1@@1 T@FrameType) (q T@Field_12980_12981) (w@@1 T@FrameType) (r T@Field_12980_12981) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12980_12980 p@@2 v_1@@1 q w@@1) (InsidePredicate_12980_12980 q w@@1 r u)) (InsidePredicate_12980_12980 p@@2 v_1@@1 r u))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_12980_12980 p@@2 v_1@@1 q w@@1) (InsidePredicate_12980_12980 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_12980_12981) (v_1@@2 T@FrameType) (q@@0 T@Field_12980_12981) (w@@2 T@FrameType) (r@@0 T@Field_7373_3487) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_12980_12980 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12980_7373 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_12980_7373 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_12980_12980 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12980_7373 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_12980_12981) (v_1@@3 T@FrameType) (q@@1 T@Field_7373_3487) (w@@3 T@FrameType) (r@@1 T@Field_12980_12981) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_12980_7373 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7373_12980 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_12980_12980 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_12980_7373 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_7373_12980 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_12980_12981) (v_1@@4 T@FrameType) (q@@2 T@Field_7373_3487) (w@@4 T@FrameType) (r@@2 T@Field_7373_3487) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_12980_7373 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7373_7373 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_12980_7373 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_12980_7373 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_7373_7373 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_7373_3487) (v_1@@5 T@FrameType) (q@@3 T@Field_12980_12981) (w@@5 T@FrameType) (r@@3 T@Field_12980_12981) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_7373_12980 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12980_12980 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_7373_12980 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_7373_12980 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12980_12980 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_7373_3487) (v_1@@6 T@FrameType) (q@@4 T@Field_12980_12981) (w@@6 T@FrameType) (r@@4 T@Field_7373_3487) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_7373_12980 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12980_7373 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_7373_7373 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_7373_12980 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12980_7373 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_7373_3487) (v_1@@7 T@FrameType) (q@@5 T@Field_7373_3487) (w@@7 T@FrameType) (r@@5 T@Field_12980_12981) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_7373_7373 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7373_12980 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_7373_12980 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_7373_7373 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_7373_12980 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_7373_3487) (v_1@@8 T@FrameType) (q@@6 T@Field_7373_3487) (w@@8 T@FrameType) (r@@6 T@Field_7373_3487) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_7373_7373 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7373_7373 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_7373_7373 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_7373_7373 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_7373_7373 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

