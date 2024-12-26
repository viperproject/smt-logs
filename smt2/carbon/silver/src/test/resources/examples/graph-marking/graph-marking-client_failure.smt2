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
(declare-sort T@Field_27149_53 0)
(declare-sort T@Field_27162_27163 0)
(declare-sort T@Field_17236_88548 0)
(declare-sort T@Field_17236_88415 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_27110 0)) (((PolymorphicMapType_27110 (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| (Array T@Ref T@Field_27162_27163 Real)) (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| (Array T@Ref T@Field_27149_53 Real)) (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| (Array T@Ref T@Field_17236_88415 Real)) (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| (Array T@Ref T@Field_17236_88548 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27638 0)) (((PolymorphicMapType_27638 (|PolymorphicMapType_27638_27149_53#PolymorphicMapType_27638| (Array T@Ref T@Field_27149_53 Bool)) (|PolymorphicMapType_27638_27149_27163#PolymorphicMapType_27638| (Array T@Ref T@Field_27162_27163 Bool)) (|PolymorphicMapType_27638_27149_88415#PolymorphicMapType_27638| (Array T@Ref T@Field_17236_88415 Bool)) (|PolymorphicMapType_27638_27149_89528#PolymorphicMapType_27638| (Array T@Ref T@Field_17236_88548 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27089 0)) (((PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| (Array T@Ref T@Field_27149_53 Bool)) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| (Array T@Ref T@Field_27162_27163 T@Ref)) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| (Array T@Ref T@Field_17236_88548 T@PolymorphicMapType_27638)) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| (Array T@Ref T@Field_17236_88415 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_27149_53)
(declare-fun left () T@Field_27162_27163)
(declare-fun right_1 () T@Field_27162_27163)
(declare-fun is_marked () T@Field_27149_53)
(declare-fun succHeap (T@PolymorphicMapType_27089 T@PolymorphicMapType_27089) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_27089 T@PolymorphicMapType_27089) Bool)
(declare-fun state (T@PolymorphicMapType_27089 T@PolymorphicMapType_27110) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_27110) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_27638)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_17489| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_17489| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_17489| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_17489| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_27089 T@PolymorphicMapType_27089 T@PolymorphicMapType_27110) Bool)
(declare-fun IsPredicateField_17236_88506 (T@Field_17236_88415) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_17236 (T@Field_17236_88415) T@Field_17236_88548)
(declare-fun HasDirectPerm_17236_88479 (T@PolymorphicMapType_27110 T@Ref T@Field_17236_88415) Bool)
(declare-fun IsWandField_17236_90055 (T@Field_17236_88415) Bool)
(declare-fun WandMaskField_17236 (T@Field_17236_88415) T@Field_17236_88548)
(declare-fun dummyHeap () T@PolymorphicMapType_27089)
(declare-fun ZeroMask () T@PolymorphicMapType_27110)
(declare-fun InsidePredicate_27149_27149 (T@Field_17236_88415 T@FrameType T@Field_17236_88415 T@FrameType) Bool)
(declare-fun IsPredicateField_17236_17237 (T@Field_27162_27163) Bool)
(declare-fun IsWandField_17236_17237 (T@Field_27162_27163) Bool)
(declare-fun IsPredicateField_17242_4009 (T@Field_27149_53) Bool)
(declare-fun IsWandField_17242_4009 (T@Field_27149_53) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_17236_92963 (T@Field_17236_88548) Bool)
(declare-fun IsWandField_17236_92979 (T@Field_17236_88548) Bool)
(declare-fun FullPerm () Real)
(declare-fun HasDirectPerm_17236_93334 (T@PolymorphicMapType_27110 T@Ref T@Field_17236_88548) Bool)
(declare-fun HasDirectPerm_17242_4009 (T@PolymorphicMapType_27110 T@Ref T@Field_27149_53) Bool)
(declare-fun HasDirectPerm_17236_17237 (T@PolymorphicMapType_27110 T@Ref T@Field_27162_27163) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_27110 T@PolymorphicMapType_27110 T@PolymorphicMapType_27110) Bool)
(declare-fun |Set#Difference_17489| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_17489| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_17489| () (Array T@Ref Bool))
(assert (and (distinct $allocated is_marked)(distinct left right_1))
)
(assert (forall ((Heap0 T@PolymorphicMapType_27089) (Heap1 T@PolymorphicMapType_27089) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_27089) (Mask T@PolymorphicMapType_27110) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_27089) (Heap1@@0 T@PolymorphicMapType_27089) (Heap2 T@PolymorphicMapType_27089) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17236_88548) ) (!  (not (select (|PolymorphicMapType_27638_27149_89528#PolymorphicMapType_27638| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27638_27149_89528#PolymorphicMapType_27638| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17236_88415) ) (!  (not (select (|PolymorphicMapType_27638_27149_88415#PolymorphicMapType_27638| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27638_27149_88415#PolymorphicMapType_27638| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_27162_27163) ) (!  (not (select (|PolymorphicMapType_27638_27149_27163#PolymorphicMapType_27638| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27638_27149_27163#PolymorphicMapType_27638| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_27149_53) ) (!  (not (select (|PolymorphicMapType_27638_27149_53#PolymorphicMapType_27638| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27638_27149_53#PolymorphicMapType_27638| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.384:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_17489| (|Set#Union_17489| a@@0 b@@0) b@@0) (|Set#Union_17489| a@@0 b@@0))
 :qid |stdinbpl.336:18|
 :skolemid |38|
 :pattern ( (|Set#Union_17489| (|Set#Union_17489| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_17489| (|Set#Intersection_17489| a@@1 b@@1) b@@1) (|Set#Intersection_17489| a@@1 b@@1))
 :qid |stdinbpl.340:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_17489| (|Set#Intersection_17489| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_17489| r) o) (= r o))
 :qid |stdinbpl.305:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_17489| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_17489| (|Set#Union_17489| a@@2 b@@2)) (|Set#Card_17489| (|Set#Intersection_17489| a@@2 b@@2))) (+ (|Set#Card_17489| a@@2) (|Set#Card_17489| b@@2)))
 :qid |stdinbpl.344:18|
 :skolemid |42|
 :pattern ( (|Set#Card_17489| (|Set#Union_17489| a@@2 b@@2)))
 :pattern ( (|Set#Card_17489| (|Set#Intersection_17489| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.387:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_27089) (ExhaleHeap T@PolymorphicMapType_27089) (Mask@@0 T@PolymorphicMapType_27110) (pm_f_27 T@Field_17236_88415) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_17236_88479 Mask@@0 null pm_f_27) (IsPredicateField_17236_88506 pm_f_27)) (= (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@0) null (PredicateMaskField_17236 pm_f_27)) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap) null (PredicateMaskField_17236 pm_f_27)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_17236_88506 pm_f_27) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap) null (PredicateMaskField_17236 pm_f_27)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_27089) (ExhaleHeap@@0 T@PolymorphicMapType_27089) (Mask@@1 T@PolymorphicMapType_27110) (pm_f_27@@0 T@Field_17236_88415) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17236_88479 Mask@@1 null pm_f_27@@0) (IsWandField_17236_90055 pm_f_27@@0)) (= (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@1) null (WandMaskField_17236 pm_f_27@@0)) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@0) null (WandMaskField_17236 pm_f_27@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_17236_90055 pm_f_27@@0) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@0) null (WandMaskField_17236 pm_f_27@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_27089) (ExhaleHeap@@1 T@PolymorphicMapType_27089) (Mask@@2 T@PolymorphicMapType_27110) (pm_f_27@@1 T@Field_17236_88415) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_17236_88479 Mask@@2 null pm_f_27@@1) (IsPredicateField_17236_88506 pm_f_27@@1)) (and (and (and (forall ((o2_27 T@Ref) (f_13 T@Field_27149_53) ) (!  (=> (select (|PolymorphicMapType_27638_27149_53#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@2) null (PredicateMaskField_17236 pm_f_27@@1))) o2_27 f_13) (= (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@2) o2_27 f_13) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@1) o2_27 f_13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@1) o2_27 f_13))
)) (forall ((o2_27@@0 T@Ref) (f_13@@0 T@Field_27162_27163) ) (!  (=> (select (|PolymorphicMapType_27638_27149_27163#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@2) null (PredicateMaskField_17236 pm_f_27@@1))) o2_27@@0 f_13@@0) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@2) o2_27@@0 f_13@@0) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@@1) o2_27@@0 f_13@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@@1) o2_27@@0 f_13@@0))
))) (forall ((o2_27@@1 T@Ref) (f_13@@1 T@Field_17236_88415) ) (!  (=> (select (|PolymorphicMapType_27638_27149_88415#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@2) null (PredicateMaskField_17236 pm_f_27@@1))) o2_27@@1 f_13@@1) (= (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@2) o2_27@@1 f_13@@1) (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| ExhaleHeap@@1) o2_27@@1 f_13@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| ExhaleHeap@@1) o2_27@@1 f_13@@1))
))) (forall ((o2_27@@2 T@Ref) (f_13@@2 T@Field_17236_88548) ) (!  (=> (select (|PolymorphicMapType_27638_27149_89528#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@2) null (PredicateMaskField_17236 pm_f_27@@1))) o2_27@@2 f_13@@2) (= (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@2) o2_27@@2 f_13@@2) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@1) o2_27@@2 f_13@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@1) o2_27@@2 f_13@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_17236_88506 pm_f_27@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_27089) (ExhaleHeap@@2 T@PolymorphicMapType_27089) (Mask@@3 T@PolymorphicMapType_27110) (pm_f_27@@2 T@Field_17236_88415) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_17236_88479 Mask@@3 null pm_f_27@@2) (IsWandField_17236_90055 pm_f_27@@2)) (and (and (and (forall ((o2_27@@3 T@Ref) (f_13@@3 T@Field_27149_53) ) (!  (=> (select (|PolymorphicMapType_27638_27149_53#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@3) null (WandMaskField_17236 pm_f_27@@2))) o2_27@@3 f_13@@3) (= (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@3) o2_27@@3 f_13@@3) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@2) o2_27@@3 f_13@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@2) o2_27@@3 f_13@@3))
)) (forall ((o2_27@@4 T@Ref) (f_13@@4 T@Field_27162_27163) ) (!  (=> (select (|PolymorphicMapType_27638_27149_27163#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@3) null (WandMaskField_17236 pm_f_27@@2))) o2_27@@4 f_13@@4) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@3) o2_27@@4 f_13@@4) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@@2) o2_27@@4 f_13@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@@2) o2_27@@4 f_13@@4))
))) (forall ((o2_27@@5 T@Ref) (f_13@@5 T@Field_17236_88415) ) (!  (=> (select (|PolymorphicMapType_27638_27149_88415#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@3) null (WandMaskField_17236 pm_f_27@@2))) o2_27@@5 f_13@@5) (= (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@3) o2_27@@5 f_13@@5) (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| ExhaleHeap@@2) o2_27@@5 f_13@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| ExhaleHeap@@2) o2_27@@5 f_13@@5))
))) (forall ((o2_27@@6 T@Ref) (f_13@@6 T@Field_17236_88548) ) (!  (=> (select (|PolymorphicMapType_27638_27149_89528#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@3) null (WandMaskField_17236 pm_f_27@@2))) o2_27@@6 f_13@@6) (= (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@3) o2_27@@6 f_13@@6) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@2) o2_27@@6 f_13@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@2) o2_27@@6 f_13@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_17236_90055 pm_f_27@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_27089) (ExhaleHeap@@3 T@PolymorphicMapType_27089) (Mask@@4 T@PolymorphicMapType_27110) (o_9 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@4) o_9 $allocated) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@3) o_9 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@3) o_9 $allocated))
)))
(assert (forall ((p T@Field_17236_88415) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_27149_27149 p v_1 p w))
 :qid |stdinbpl.282:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27149_27149 p v_1 p w))
)))
(assert  (not (IsPredicateField_17236_17237 left)))
(assert  (not (IsWandField_17236_17237 left)))
(assert  (not (IsPredicateField_17236_17237 right_1)))
(assert  (not (IsWandField_17236_17237 right_1)))
(assert  (not (IsPredicateField_17242_4009 is_marked)))
(assert  (not (IsWandField_17242_4009 is_marked)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_27089) (ExhaleHeap@@4 T@PolymorphicMapType_27089) (Mask@@5 T@PolymorphicMapType_27110) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_27110) (o_2@@3 T@Ref) (f_4@@3 T@Field_17236_88548) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_17236_92963 f_4@@3))) (not (IsWandField_17236_92979 f_4@@3))) (<= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_27110) (o_2@@4 T@Ref) (f_4@@4 T@Field_17236_88415) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_17236_88506 f_4@@4))) (not (IsWandField_17236_90055 f_4@@4))) (<= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_27110) (o_2@@5 T@Ref) (f_4@@5 T@Field_27149_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_17242_4009 f_4@@5))) (not (IsWandField_17242_4009 f_4@@5))) (<= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_27110) (o_2@@6 T@Ref) (f_4@@6 T@Field_27162_27163) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_17236_17237 f_4@@6))) (not (IsWandField_17236_17237 f_4@@6))) (<= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_27110) (o_2@@7 T@Ref) (f_4@@7 T@Field_17236_88548) ) (! (= (HasDirectPerm_17236_93334 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17236_93334 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_27110) (o_2@@8 T@Ref) (f_4@@8 T@Field_17236_88415) ) (! (= (HasDirectPerm_17236_88479 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17236_88479 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_27110) (o_2@@9 T@Ref) (f_4@@9 T@Field_27149_53) ) (! (= (HasDirectPerm_17242_4009 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17242_4009 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_27110) (o_2@@10 T@Ref) (f_4@@10 T@Field_27162_27163) ) (! (= (HasDirectPerm_17236_17237 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17236_17237 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.270:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_27089) (ExhaleHeap@@5 T@PolymorphicMapType_27089) (Mask@@14 T@PolymorphicMapType_27110) (o_9@@0 T@Ref) (f_13@@7 T@Field_17236_88548) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_17236_93334 Mask@@14 o_9@@0 f_13@@7) (= (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@6) o_9@@0 f_13@@7) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@5) o_9@@0 f_13@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@5) o_9@@0 f_13@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_27089) (ExhaleHeap@@6 T@PolymorphicMapType_27089) (Mask@@15 T@PolymorphicMapType_27110) (o_9@@1 T@Ref) (f_13@@8 T@Field_17236_88415) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_17236_88479 Mask@@15 o_9@@1 f_13@@8) (= (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@7) o_9@@1 f_13@@8) (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| ExhaleHeap@@6) o_9@@1 f_13@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| ExhaleHeap@@6) o_9@@1 f_13@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_27089) (ExhaleHeap@@7 T@PolymorphicMapType_27089) (Mask@@16 T@PolymorphicMapType_27110) (o_9@@2 T@Ref) (f_13@@9 T@Field_27149_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_17242_4009 Mask@@16 o_9@@2 f_13@@9) (= (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@8) o_9@@2 f_13@@9) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@7) o_9@@2 f_13@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@7) o_9@@2 f_13@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_27089) (ExhaleHeap@@8 T@PolymorphicMapType_27089) (Mask@@17 T@PolymorphicMapType_27110) (o_9@@3 T@Ref) (f_13@@10 T@Field_27162_27163) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_17236_17237 Mask@@17 o_9@@3 f_13@@10) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@9) o_9@@3 f_13@@10) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@@8) o_9@@3 f_13@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@@8) o_9@@3 f_13@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_17236_88548) ) (! (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_17236_88415) ) (! (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_27149_53) ) (! (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_27162_27163) ) (! (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_27110) (SummandMask1 T@PolymorphicMapType_27110) (SummandMask2 T@PolymorphicMapType_27110) (o_2@@15 T@Ref) (f_4@@15 T@Field_17236_88548) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_27110) (SummandMask1@@0 T@PolymorphicMapType_27110) (SummandMask2@@0 T@PolymorphicMapType_27110) (o_2@@16 T@Ref) (f_4@@16 T@Field_17236_88415) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_27110) (SummandMask1@@1 T@PolymorphicMapType_27110) (SummandMask2@@1 T@PolymorphicMapType_27110) (o_2@@17 T@Ref) (f_4@@17 T@Field_27149_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_27110) (SummandMask1@@2 T@PolymorphicMapType_27110) (SummandMask2@@2 T@PolymorphicMapType_27110) (o_2@@18 T@Ref) (f_4@@18 T@Field_27162_27163) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_17489| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.333:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_17489| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_17489| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_17489| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_17489| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.348:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_17489| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_17489| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_17489| a@@6 x) y))
 :qid |stdinbpl.313:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_17489| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_17489| a@@7 b@@5) y@@0))
 :qid |stdinbpl.323:18|
 :skolemid |35|
 :pattern ( (|Set#Union_17489| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_17489| a@@8 b@@6) y@@1))
 :qid |stdinbpl.325:18|
 :skolemid |36|
 :pattern ( (|Set#Union_17489| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_17489| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.309:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_17489| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_17489| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.350:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_17489| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_17489| (|Set#Difference_17489| a@@11 b@@8)) (|Set#Card_17489| (|Set#Difference_17489| b@@8 a@@11))) (|Set#Card_17489| (|Set#Intersection_17489| a@@11 b@@8))) (|Set#Card_17489| (|Set#Union_17489| a@@11 b@@8))) (= (|Set#Card_17489| (|Set#Difference_17489| a@@11 b@@8)) (- (|Set#Card_17489| a@@11) (|Set#Card_17489| (|Set#Intersection_17489| a@@11 b@@8)))))
 :qid |stdinbpl.352:18|
 :skolemid |45|
 :pattern ( (|Set#Card_17489| (|Set#Difference_17489| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_17489| s))
 :qid |stdinbpl.295:18|
 :skolemid |22|
 :pattern ( (|Set#Card_17489| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_17489| a@@12 x@@1) x@@1)
 :qid |stdinbpl.311:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_17489| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_17489| (|Set#UnionOne_17489| a@@13 x@@2)) (|Set#Card_17489| a@@13)))
 :qid |stdinbpl.315:18|
 :skolemid |32|
 :pattern ( (|Set#Card_17489| (|Set#UnionOne_17489| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_17489| (|Set#Singleton_17489| r@@0)) 1)
 :qid |stdinbpl.306:18|
 :skolemid |28|
 :pattern ( (|Set#Card_17489| (|Set#Singleton_17489| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_17489| r@@1) r@@1)
 :qid |stdinbpl.304:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_17489| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_17489| a@@14 (|Set#Union_17489| a@@14 b@@9)) (|Set#Union_17489| a@@14 b@@9))
 :qid |stdinbpl.338:18|
 :skolemid |39|
 :pattern ( (|Set#Union_17489| a@@14 (|Set#Union_17489| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_17489| a@@15 (|Set#Intersection_17489| a@@15 b@@10)) (|Set#Intersection_17489| a@@15 b@@10))
 :qid |stdinbpl.342:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_17489| a@@15 (|Set#Intersection_17489| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_17489| o@@3))
 :qid |stdinbpl.298:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_17489| o@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_27089) (o_31 T@Ref) (f_54 T@Field_17236_88415) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@10) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@10) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@10) (store (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@10) o_31 f_54 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@10) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@10) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@10) (store (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@10) o_31 f_54 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_27089) (o_31@@0 T@Ref) (f_54@@0 T@Field_17236_88548) (v@@0 T@PolymorphicMapType_27638) ) (! (succHeap Heap@@11 (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@11) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@11) (store (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@11) o_31@@0 f_54@@0 v@@0) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@11) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@11) (store (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@11) o_31@@0 f_54@@0 v@@0) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_27089) (o_31@@1 T@Ref) (f_54@@1 T@Field_27162_27163) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@12) (store (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@12) o_31@@1 f_54@@1 v@@1) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@12) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@12) (store (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@12) o_31@@1 f_54@@1 v@@1) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@12) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_27089) (o_31@@2 T@Ref) (f_54@@2 T@Field_27149_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_27089 (store (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@13) o_31@@2 f_54@@2 v@@2) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@13) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@13) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27089 (store (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@13) o_31@@2 f_54@@2 v@@2) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@13) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@13) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@13)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.382:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.383:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_17489| s@@0) 0) (= s@@0 |Set#Empty_17489|)) (=> (not (= (|Set#Card_17489| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.301:33|
 :skolemid |24|
))))
 :qid |stdinbpl.299:18|
 :skolemid |25|
 :pattern ( (|Set#Card_17489| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_17489| (|Set#UnionOne_17489| a@@18 x@@4)) (+ (|Set#Card_17489| a@@18) 1)))
 :qid |stdinbpl.317:18|
 :skolemid |33|
 :pattern ( (|Set#Card_17489| (|Set#UnionOne_17489| a@@18 x@@4)))
)))
(assert (forall ((o_31@@3 T@Ref) (f_36 T@Field_27162_27163) (Heap@@14 T@PolymorphicMapType_27089) ) (!  (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@14) o_31@@3 $allocated) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@14) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@14) o_31@@3 f_36) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@14) o_31@@3 f_36))
)))
(assert (forall ((p@@1 T@Field_17236_88415) (v_1@@0 T@FrameType) (q T@Field_17236_88415) (w@@0 T@FrameType) (r@@2 T@Field_17236_88415) (u T@FrameType) ) (!  (=> (and (InsidePredicate_27149_27149 p@@1 v_1@@0 q w@@0) (InsidePredicate_27149_27149 q w@@0 r@@2 u)) (InsidePredicate_27149_27149 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.277:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_27149_27149 p@@1 v_1@@0 q w@@0) (InsidePredicate_27149_27149 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.388:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_17489| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.321:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_17489| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun nodes_1@0 () (Array T@Ref Bool))
(declare-fun n_10_1 () T@Ref)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_27089)
(declare-fun n_83 () T@Ref)
(declare-fun QPMask@5 () T@PolymorphicMapType_27110)
(declare-fun Heap@7 () T@PolymorphicMapType_27089)
(declare-fun freshObj@0 () T@Ref)
(declare-fun QPMask@2 () T@PolymorphicMapType_27110)
(declare-fun QPMask@3 () T@PolymorphicMapType_27110)
(declare-fun qpRange31 (T@Ref) Bool)
(declare-fun invRecv31 (T@Ref) T@Ref)
(declare-fun QPMask@4 () T@PolymorphicMapType_27110)
(declare-fun qpRange32 (T@Ref) Bool)
(declare-fun invRecv32 (T@Ref) T@Ref)
(declare-fun qpRange33 (T@Ref) Bool)
(declare-fun invRecv33 (T@Ref) T@Ref)
(declare-fun n$3 () T@Ref)
(declare-fun n$2 () T@Ref)
(declare-fun Mask@5 () T@PolymorphicMapType_27110)
(declare-fun neverTriggered28 (T@Ref) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_27110)
(declare-fun qpRange28 (T@Ref) Bool)
(declare-fun invRecv28 (T@Ref) T@Ref)
(declare-fun neverTriggered29 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_27110)
(declare-fun qpRange29 (T@Ref) Bool)
(declare-fun invRecv29 (T@Ref) T@Ref)
(declare-fun neverTriggered30 (T@Ref) Bool)
(declare-fun qpRange30 (T@Ref) Bool)
(declare-fun invRecv30 (T@Ref) T@Ref)
(declare-fun n_1 () T@Ref)
(declare-fun n_82 () T@Ref)
(declare-fun Heap@@15 () T@PolymorphicMapType_27089)
(declare-fun a_2 () T@Ref)
(declare-fun b_24 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_27089)
(declare-fun Mask@0 () T@PolymorphicMapType_27110)
(declare-fun Mask@1 () T@PolymorphicMapType_27110)
(declare-fun Mask@2 () T@PolymorphicMapType_27110)
(declare-fun Heap@1 () T@PolymorphicMapType_27089)
(declare-fun freshObj@1 () T@Ref)
(declare-fun Heap@2 () T@PolymorphicMapType_27089)
(declare-fun Mask@3 () T@PolymorphicMapType_27110)
(declare-fun Mask@4 () T@PolymorphicMapType_27110)
(declare-fun Heap@3 () T@PolymorphicMapType_27089)
(declare-fun Heap@4 () T@PolymorphicMapType_27089)
(declare-fun Heap@5 () T@PolymorphicMapType_27089)
(declare-fun Heap@6 () T@PolymorphicMapType_27089)
(set-info :boogie-vc-id client_failure)
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
 (=> (= (ControlFlow 0 0) 48) (let ((anon23_correct true))
(let ((anon36_Else_correct  (=> (and (not (select nodes_1@0 n_10_1)) (= (ControlFlow 0 25) 22)) anon23_correct)))
(let ((anon36_Then_correct  (=> (select nodes_1@0 n_10_1) (and (=> (= (ControlFlow 0 23) (- 0 24)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n_10_1 is_marked)) (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n_10_1 is_marked) (=> (= (ControlFlow 0 23) 22) anon23_correct))))))
(let ((anon19_correct true))
(let ((anon34_Else_correct  (=> (and (not (select nodes_1@0 n_83)) (= (ControlFlow 0 21) 18)) anon19_correct)))
(let ((anon34_Then_correct  (=> (select nodes_1@0 n_83) (and (=> (= (ControlFlow 0 19) (- 0 20)) (HasDirectPerm_17242_4009 QPMask@5 n_83 is_marked)) (=> (HasDirectPerm_17242_4009 QPMask@5 n_83 is_marked) (=> (= (ControlFlow 0 19) 18) anon19_correct))))))
(let ((anon35_Else_correct true))
(let ((anon31_Else_correct  (=> (forall ((n$3_1_1 T@Ref) ) (!  (=> (and (select nodes_1@0 n$3_1_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$3_1_1 right_1) null))) (select nodes_1@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$3_1_1 right_1)))
 :qid |stdinbpl.2579:22|
 :skolemid |309|
 :pattern ( (select nodes_1@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$3_1_1 right_1)))
 :pattern ( (select nodes_1@0 n$3_1_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$3_1_1 right_1))
)) (and (=> (= (ControlFlow 0 26) (- 0 30)) (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@7) freshObj@0 is_marked))) (=> (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@7) freshObj@0 is_marked)) (=> (IdenticalOnKnownLocations Heap@7 ExhaleHeap@0 QPMask@2) (=> (and (select nodes_1@0 freshObj@0) (not (select nodes_1@0 null))) (and (=> (= (ControlFlow 0 26) (- 0 29)) (forall ((n$4 T@Ref) (n$4_16 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4 n$4_16)) (select nodes_1@0 n$4)) (select nodes_1@0 n$4_16)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$4 n$4_16)))
 :qid |stdinbpl.2595:17|
 :skolemid |310|
))) (=> (forall ((n$4@@0 T@Ref) (n$4_16@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4@@0 n$4_16@@0)) (select nodes_1@0 n$4@@0)) (select nodes_1@0 n$4_16@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$4@@0 n$4_16@@0)))
 :qid |stdinbpl.2595:17|
 :skolemid |310|
)) (=> (and (and (forall ((n$4@@1 T@Ref) ) (!  (=> (and (select nodes_1@0 n$4@@1) (< NoPerm FullPerm)) (and (qpRange31 n$4@@1) (= (invRecv31 n$4@@1) n$4@@1)))
 :qid |stdinbpl.2601:24|
 :skolemid |311|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$4@@1 left))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) n$4@@1 left))
 :pattern ( (select nodes_1@0 n$4@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select nodes_1@0 (invRecv31 o_4)) (< NoPerm FullPerm)) (qpRange31 o_4)) (= (invRecv31 o_4) o_4))
 :qid |stdinbpl.2605:24|
 :skolemid |312|
 :pattern ( (invRecv31 o_4))
))) (and (forall ((n$4@@2 T@Ref) ) (!  (=> (select nodes_1@0 n$4@@2) (not (= n$4@@2 null)))
 :qid |stdinbpl.2611:24|
 :skolemid |313|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$4@@2 left))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) n$4@@2 left))
 :pattern ( (select nodes_1@0 n$4@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select nodes_1@0 (invRecv31 o_4@@0)) (< NoPerm FullPerm)) (qpRange31 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv31 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_4@@0 left) (+ (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@2) o_4@@0 left) FullPerm)))) (=> (not (and (and (select nodes_1@0 (invRecv31 o_4@@0)) (< NoPerm FullPerm)) (qpRange31 o_4@@0))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_4@@0 left) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@2) o_4@@0 left))))
 :qid |stdinbpl.2617:24|
 :skolemid |314|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_4@@0 left))
)))) (=> (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) o_4@@1 f_5) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@3) o_4@@1 f_5)))
 :qid |stdinbpl.2621:31|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@3) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_27162_27163) ) (!  (=> (not (= f_5@@0 left)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@2) o_4@@2 f_5@@0) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_4@@2 f_5@@0)))
 :qid |stdinbpl.2621:31|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@2) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@2) o_4@@3 f_5@@1) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@3) o_4@@3 f_5@@1)))
 :qid |stdinbpl.2621:31|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@2) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@3) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@2) o_4@@4 f_5@@2) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@3) o_4@@4 f_5@@2)))
 :qid |stdinbpl.2621:31|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@2) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@3) o_4@@4 f_5@@2))
))) (state ExhaleHeap@0 QPMask@3)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (forall ((n$5_8 T@Ref) (n$5_9 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_8 n$5_9)) (select nodes_1@0 n$5_8)) (select nodes_1@0 n$5_9)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_8 n$5_9)))
 :qid |stdinbpl.2629:17|
 :skolemid |316|
))) (=> (forall ((n$5_8@@0 T@Ref) (n$5_9@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_8@@0 n$5_9@@0)) (select nodes_1@0 n$5_8@@0)) (select nodes_1@0 n$5_9@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_8@@0 n$5_9@@0)))
 :qid |stdinbpl.2629:17|
 :skolemid |316|
)) (=> (and (and (forall ((n$5_8@@1 T@Ref) ) (!  (=> (and (select nodes_1@0 n$5_8@@1) (< NoPerm FullPerm)) (and (qpRange32 n$5_8@@1) (= (invRecv32 n$5_8@@1) n$5_8@@1)))
 :qid |stdinbpl.2635:24|
 :skolemid |317|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$5_8@@1 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) n$5_8@@1 right_1))
 :pattern ( (select nodes_1@0 n$5_8@@1))
)) (forall ((o_4@@5 T@Ref) ) (!  (=> (and (and (select nodes_1@0 (invRecv32 o_4@@5)) (< NoPerm FullPerm)) (qpRange32 o_4@@5)) (= (invRecv32 o_4@@5) o_4@@5))
 :qid |stdinbpl.2639:24|
 :skolemid |318|
 :pattern ( (invRecv32 o_4@@5))
))) (and (forall ((n$5_8@@2 T@Ref) ) (!  (=> (select nodes_1@0 n$5_8@@2) (not (= n$5_8@@2 null)))
 :qid |stdinbpl.2645:24|
 :skolemid |319|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$5_8@@2 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) n$5_8@@2 right_1))
 :pattern ( (select nodes_1@0 n$5_8@@2))
)) (forall ((o_4@@6 T@Ref) ) (!  (and (=> (and (and (select nodes_1@0 (invRecv32 o_4@@6)) (< NoPerm FullPerm)) (qpRange32 o_4@@6)) (and (=> (< NoPerm FullPerm) (= (invRecv32 o_4@@6) o_4@@6)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) o_4@@6 right_1) (+ (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_4@@6 right_1) FullPerm)))) (=> (not (and (and (select nodes_1@0 (invRecv32 o_4@@6)) (< NoPerm FullPerm)) (qpRange32 o_4@@6))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) o_4@@6 right_1) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_4@@6 right_1))))
 :qid |stdinbpl.2651:24|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) o_4@@6 right_1))
)))) (=> (and (and (and (and (forall ((o_4@@7 T@Ref) (f_5@@3 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@3) o_4@@7 f_5@@3) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@4) o_4@@7 f_5@@3)))
 :qid |stdinbpl.2655:31|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@3) o_4@@7 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@4) o_4@@7 f_5@@3))
)) (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_27162_27163) ) (!  (=> (not (= f_5@@4 right_1)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_4@@8 f_5@@4) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) o_4@@8 f_5@@4)))
 :qid |stdinbpl.2655:31|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) o_4@@8 f_5@@4))
))) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@3) o_4@@9 f_5@@5) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@4) o_4@@9 f_5@@5)))
 :qid |stdinbpl.2655:31|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@3) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@4) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@3) o_4@@10 f_5@@6) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@4) o_4@@10 f_5@@6)))
 :qid |stdinbpl.2655:31|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@3) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@4) o_4@@10 f_5@@6))
))) (state ExhaleHeap@0 QPMask@4)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (forall ((n$6_11 T@Ref) (n$6_12 T@Ref) ) (!  (=> (and (and (and (and (not (= n$6_11 n$6_12)) (select nodes_1@0 n$6_11)) (select nodes_1@0 n$6_12)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$6_11 n$6_12)))
 :qid |stdinbpl.2663:17|
 :skolemid |322|
))) (=> (forall ((n$6_11@@0 T@Ref) (n$6_12@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$6_11@@0 n$6_12@@0)) (select nodes_1@0 n$6_11@@0)) (select nodes_1@0 n$6_12@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$6_11@@0 n$6_12@@0)))
 :qid |stdinbpl.2663:17|
 :skolemid |322|
)) (=> (and (and (forall ((n$6_11@@1 T@Ref) ) (!  (=> (and (select nodes_1@0 n$6_11@@1) (< NoPerm FullPerm)) (and (qpRange33 n$6_11@@1) (= (invRecv33 n$6_11@@1) n$6_11@@1)))
 :qid |stdinbpl.2669:24|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n$6_11@@1 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) n$6_11@@1 is_marked))
 :pattern ( (select nodes_1@0 n$6_11@@1))
)) (forall ((o_4@@11 T@Ref) ) (!  (=> (and (and (select nodes_1@0 (invRecv33 o_4@@11)) (< NoPerm FullPerm)) (qpRange33 o_4@@11)) (= (invRecv33 o_4@@11) o_4@@11))
 :qid |stdinbpl.2673:24|
 :skolemid |324|
 :pattern ( (invRecv33 o_4@@11))
))) (and (forall ((n$6_11@@2 T@Ref) ) (!  (=> (select nodes_1@0 n$6_11@@2) (not (= n$6_11@@2 null)))
 :qid |stdinbpl.2679:24|
 :skolemid |325|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n$6_11@@2 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) n$6_11@@2 is_marked))
 :pattern ( (select nodes_1@0 n$6_11@@2))
)) (forall ((o_4@@12 T@Ref) ) (!  (and (=> (and (and (select nodes_1@0 (invRecv33 o_4@@12)) (< NoPerm FullPerm)) (qpRange33 o_4@@12)) (and (=> (< NoPerm FullPerm) (= (invRecv33 o_4@@12) o_4@@12)) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) o_4@@12 is_marked) (+ (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@4) o_4@@12 is_marked) FullPerm)))) (=> (not (and (and (select nodes_1@0 (invRecv33 o_4@@12)) (< NoPerm FullPerm)) (qpRange33 o_4@@12))) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) o_4@@12 is_marked) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@4) o_4@@12 is_marked))))
 :qid |stdinbpl.2685:24|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) o_4@@12 is_marked))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@13 T@Ref) (f_5@@7 T@Field_27149_53) ) (!  (=> (not (= f_5@@7 is_marked)) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@4) o_4@@13 f_5@@7) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) o_4@@13 f_5@@7)))
 :qid |stdinbpl.2689:31|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@4) o_4@@13 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) o_4@@13 f_5@@7))
)) (forall ((o_4@@14 T@Ref) (f_5@@8 T@Field_27162_27163) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) o_4@@14 f_5@@8) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@5) o_4@@14 f_5@@8)))
 :qid |stdinbpl.2689:31|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) o_4@@14 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@5) o_4@@14 f_5@@8))
))) (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@4) o_4@@15 f_5@@9) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@5) o_4@@15 f_5@@9)))
 :qid |stdinbpl.2689:31|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@4) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@5) o_4@@15 f_5@@9))
))) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@4) o_4@@16 f_5@@10) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@5) o_4@@16 f_5@@10)))
 :qid |stdinbpl.2689:31|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@4) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@5) o_4@@16 f_5@@10))
))) (state ExhaleHeap@0 QPMask@5)) (and (forall ((n$7_4 T@Ref) ) (!  (=> (and (select nodes_1@0 n$7_4) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$7_4 left) null))) (select nodes_1@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$7_4 left)))
 :qid |stdinbpl.2695:22|
 :skolemid |328|
 :pattern ( (select nodes_1@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$7_4 left)))
 :pattern ( (select nodes_1@0 n$7_4) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$7_4 left))
)) (forall ((n$8 T@Ref) ) (!  (=> (and (select nodes_1@0 n$8) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$8 right_1) null))) (select nodes_1@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$8 right_1)))
 :qid |stdinbpl.2699:22|
 :skolemid |329|
 :pattern ( (select nodes_1@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$8 right_1)))
 :pattern ( (select nodes_1@0 n$8) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$8 right_1))
)))) (and (and (and (forall ((n_4_1 T@Ref) ) (!  (=> (select nodes_1@0 n_4_1) (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@7) n_4_1 is_marked) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n_4_1 is_marked)))
 :qid |stdinbpl.2703:22|
 :skolemid |330|
 :pattern ( (select nodes_1@0 n_4_1) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n_4_1 is_marked))
)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) freshObj@0 is_marked)) (and (forall ((n_5 T@Ref) ) (!  (=> (select nodes_1@0 n_5) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_5 left) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n_5 left)))
 :qid |stdinbpl.2708:22|
 :skolemid |331|
 :pattern ( (select nodes_1@0 n_5) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_5 left))
)) (forall ((n_6 T@Ref) ) (!  (=> (select nodes_1@0 n_6) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_6 right_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n_6 right_1)))
 :qid |stdinbpl.2712:22|
 :skolemid |332|
 :pattern ( (select nodes_1@0 n_6) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_6 right_1))
)))) (and (and (forall ((n_7 T@Ref) ) (!  (=> (select nodes_1@0 n_7) (=> (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@7) n_7 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n_7 is_marked)) (or (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_7 left) null) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_7 left) is_marked))))
 :qid |stdinbpl.2716:22|
 :skolemid |333|
 :pattern ( (select nodes_1@0 n_7) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n_7 is_marked))
 :pattern ( (select nodes_1@0 n_7) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_7 left) is_marked))
)) (forall ((n_8 T@Ref) ) (!  (=> (select nodes_1@0 n_8) (=> (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@7) n_8 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n_8 is_marked)) (or (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_8 right_1) null) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_8 right_1) is_marked))))
 :qid |stdinbpl.2720:22|
 :skolemid |334|
 :pattern ( (select nodes_1@0 n_8) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n_8 is_marked))
 :pattern ( (select nodes_1@0 n_8) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_8 right_1) is_marked))
))) (and (state ExhaleHeap@0 QPMask@5) (state ExhaleHeap@0 QPMask@5))))) (and (and (and (and (=> (= (ControlFlow 0 26) 17) anon35_Else_correct) (=> (= (ControlFlow 0 26) 23) anon36_Then_correct)) (=> (= (ControlFlow 0 26) 25) anon36_Else_correct)) (=> (= (ControlFlow 0 26) 19) anon34_Then_correct)) (=> (= (ControlFlow 0 26) 21) anon34_Else_correct)))))))))))))))))))))
(let ((anon15_correct true))
(let ((anon32_Else_correct  (=> (and (not (and (select nodes_1@0 n$3) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$3 right_1) null)))) (= (ControlFlow 0 16) 13)) anon15_correct)))
(let ((anon32_Then_correct  (=> (and (select nodes_1@0 n$3) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$3 right_1) null))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (select nodes_1@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$3 right_1))) (=> (select nodes_1@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$3 right_1)) (=> (= (ControlFlow 0 14) 13) anon15_correct))))))
(let ((anon29_Else_correct  (=> (forall ((n$2_1_1_1 T@Ref) ) (!  (=> (and (select nodes_1@0 n$2_1_1_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$2_1_1_1 left) null))) (select nodes_1@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$2_1_1_1 left)))
 :qid |stdinbpl.2568:22|
 :skolemid |308|
 :pattern ( (select nodes_1@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$2_1_1_1 left)))
 :pattern ( (select nodes_1@0 n$2_1_1_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$2_1_1_1 left))
)) (and (and (=> (= (ControlFlow 0 31) 26) anon31_Else_correct) (=> (= (ControlFlow 0 31) 14) anon32_Then_correct)) (=> (= (ControlFlow 0 31) 16) anon32_Else_correct)))))
(let ((anon11_correct true))
(let ((anon30_Else_correct  (=> (and (not (and (select nodes_1@0 n$2) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$2 left) null)))) (= (ControlFlow 0 12) 9)) anon11_correct)))
(let ((anon30_Then_correct  (=> (and (select nodes_1@0 n$2) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$2 left) null))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (select nodes_1@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$2 left))) (=> (select nodes_1@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$2 left)) (=> (= (ControlFlow 0 10) 9) anon11_correct))))))
(let ((anon27_Else_correct  (=> (and (forall ((n_2_1_1 T@Ref) ) (!  (=> (select nodes_1@0 n_2_1_1) (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@7) n_2_1_1 is_marked)))
 :qid |stdinbpl.2421:20|
 :skolemid |289|
 :pattern ( (select nodes_1@0 n_2_1_1))
)) (state Heap@7 Mask@5)) (and (=> (= (ControlFlow 0 32) (- 0 40)) (select nodes_1@0 freshObj@0)) (=> (select nodes_1@0 freshObj@0) (and (=> (= (ControlFlow 0 32) (- 0 39)) (not (select nodes_1@0 null))) (=> (not (select nodes_1@0 null)) (and (=> (= (ControlFlow 0 32) (- 0 38)) (forall ((n_3 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3 n_3_1)) (select nodes_1@0 n_3)) (select nodes_1@0 n_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3 n_3_1)))
 :qid |stdinbpl.2445:19|
 :skolemid |290|
 :pattern ( (neverTriggered28 n_3) (neverTriggered28 n_3_1))
))) (=> (forall ((n_3@@0 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@0 n_3_1@@0)) (select nodes_1@0 n_3@@0)) (select nodes_1@0 n_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3@@0 n_3_1@@0)))
 :qid |stdinbpl.2445:19|
 :skolemid |290|
 :pattern ( (neverTriggered28 n_3@@0) (neverTriggered28 n_3_1@@0))
)) (and (=> (= (ControlFlow 0 32) (- 0 37)) (forall ((n_3@@1 T@Ref) ) (!  (=> (select nodes_1@0 n_3@@1) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@5) n_3@@1 left) FullPerm))
 :qid |stdinbpl.2452:19|
 :skolemid |291|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n_3@@1 left))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) n_3@@1 left))
 :pattern ( (select nodes_1@0 n_3@@1))
))) (=> (forall ((n_3@@2 T@Ref) ) (!  (=> (select nodes_1@0 n_3@@2) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@5) n_3@@2 left) FullPerm))
 :qid |stdinbpl.2452:19|
 :skolemid |291|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n_3@@2 left))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) n_3@@2 left))
 :pattern ( (select nodes_1@0 n_3@@2))
)) (=> (forall ((n_3@@3 T@Ref) ) (!  (=> (and (select nodes_1@0 n_3@@3) (< NoPerm FullPerm)) (and (qpRange28 n_3@@3) (= (invRecv28 n_3@@3) n_3@@3)))
 :qid |stdinbpl.2458:24|
 :skolemid |292|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n_3@@3 left))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) n_3@@3 left))
 :pattern ( (select nodes_1@0 n_3@@3))
)) (=> (and (forall ((o_4@@17 T@Ref) ) (!  (=> (and (select nodes_1@0 (invRecv28 o_4@@17)) (and (< NoPerm FullPerm) (qpRange28 o_4@@17))) (= (invRecv28 o_4@@17) o_4@@17))
 :qid |stdinbpl.2462:24|
 :skolemid |293|
 :pattern ( (invRecv28 o_4@@17))
)) (forall ((o_4@@18 T@Ref) ) (!  (and (=> (and (select nodes_1@0 (invRecv28 o_4@@18)) (and (< NoPerm FullPerm) (qpRange28 o_4@@18))) (and (= (invRecv28 o_4@@18) o_4@@18) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_4@@18 left) (- (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@5) o_4@@18 left) FullPerm)))) (=> (not (and (select nodes_1@0 (invRecv28 o_4@@18)) (and (< NoPerm FullPerm) (qpRange28 o_4@@18)))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_4@@18 left) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@5) o_4@@18 left))))
 :qid |stdinbpl.2468:24|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_4@@18 left))
))) (=> (and (and (and (forall ((o_4@@19 T@Ref) (f_5@@11 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@5) o_4@@19 f_5@@11) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@0) o_4@@19 f_5@@11)))
 :qid |stdinbpl.2474:31|
 :skolemid |295|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@0) o_4@@19 f_5@@11))
)) (forall ((o_4@@20 T@Ref) (f_5@@12 T@Field_27162_27163) ) (!  (=> (not (= f_5@@12 left)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@5) o_4@@20 f_5@@12) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_4@@20 f_5@@12)))
 :qid |stdinbpl.2474:31|
 :skolemid |295|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_4@@20 f_5@@12))
))) (forall ((o_4@@21 T@Ref) (f_5@@13 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| Mask@5) o_4@@21 f_5@@13) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@0) o_4@@21 f_5@@13)))
 :qid |stdinbpl.2474:31|
 :skolemid |295|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@0) o_4@@21 f_5@@13))
))) (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| Mask@5) o_4@@22 f_5@@14) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@0) o_4@@22 f_5@@14)))
 :qid |stdinbpl.2474:31|
 :skolemid |295|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@0) o_4@@22 f_5@@14))
))) (and (=> (= (ControlFlow 0 32) (- 0 36)) (forall ((n$0_13 T@Ref) (n$0_42 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_13 n$0_42)) (select nodes_1@0 n$0_13)) (select nodes_1@0 n$0_42)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_13 n$0_42)))
 :qid |stdinbpl.2486:19|
 :skolemid |296|
 :pattern ( (neverTriggered29 n$0_13) (neverTriggered29 n$0_42))
))) (=> (forall ((n$0_13@@0 T@Ref) (n$0_42@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_13@@0 n$0_42@@0)) (select nodes_1@0 n$0_13@@0)) (select nodes_1@0 n$0_42@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_13@@0 n$0_42@@0)))
 :qid |stdinbpl.2486:19|
 :skolemid |296|
 :pattern ( (neverTriggered29 n$0_13@@0) (neverTriggered29 n$0_42@@0))
)) (and (=> (= (ControlFlow 0 32) (- 0 35)) (forall ((n$0_13@@1 T@Ref) ) (!  (=> (select nodes_1@0 n$0_13@@1) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) n$0_13@@1 right_1) FullPerm))
 :qid |stdinbpl.2493:19|
 :skolemid |297|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$0_13@@1 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) n$0_13@@1 right_1))
 :pattern ( (select nodes_1@0 n$0_13@@1))
))) (=> (forall ((n$0_13@@2 T@Ref) ) (!  (=> (select nodes_1@0 n$0_13@@2) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) n$0_13@@2 right_1) FullPerm))
 :qid |stdinbpl.2493:19|
 :skolemid |297|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$0_13@@2 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) n$0_13@@2 right_1))
 :pattern ( (select nodes_1@0 n$0_13@@2))
)) (=> (forall ((n$0_13@@3 T@Ref) ) (!  (=> (and (select nodes_1@0 n$0_13@@3) (< NoPerm FullPerm)) (and (qpRange29 n$0_13@@3) (= (invRecv29 n$0_13@@3) n$0_13@@3)))
 :qid |stdinbpl.2499:24|
 :skolemid |298|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@7) n$0_13@@3 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) n$0_13@@3 right_1))
 :pattern ( (select nodes_1@0 n$0_13@@3))
)) (=> (and (forall ((o_4@@23 T@Ref) ) (!  (=> (and (select nodes_1@0 (invRecv29 o_4@@23)) (and (< NoPerm FullPerm) (qpRange29 o_4@@23))) (= (invRecv29 o_4@@23) o_4@@23))
 :qid |stdinbpl.2503:24|
 :skolemid |299|
 :pattern ( (invRecv29 o_4@@23))
)) (forall ((o_4@@24 T@Ref) ) (!  (and (=> (and (select nodes_1@0 (invRecv29 o_4@@24)) (and (< NoPerm FullPerm) (qpRange29 o_4@@24))) (and (= (invRecv29 o_4@@24) o_4@@24) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) o_4@@24 right_1) (- (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_4@@24 right_1) FullPerm)))) (=> (not (and (select nodes_1@0 (invRecv29 o_4@@24)) (and (< NoPerm FullPerm) (qpRange29 o_4@@24)))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) o_4@@24 right_1) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_4@@24 right_1))))
 :qid |stdinbpl.2509:24|
 :skolemid |300|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) o_4@@24 right_1))
))) (=> (and (and (and (forall ((o_4@@25 T@Ref) (f_5@@15 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@0) o_4@@25 f_5@@15) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@1) o_4@@25 f_5@@15)))
 :qid |stdinbpl.2515:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@1) o_4@@25 f_5@@15))
)) (forall ((o_4@@26 T@Ref) (f_5@@16 T@Field_27162_27163) ) (!  (=> (not (= f_5@@16 right_1)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_4@@26 f_5@@16) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) o_4@@26 f_5@@16)))
 :qid |stdinbpl.2515:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) o_4@@26 f_5@@16))
))) (forall ((o_4@@27 T@Ref) (f_5@@17 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@0) o_4@@27 f_5@@17) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@1) o_4@@27 f_5@@17)))
 :qid |stdinbpl.2515:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@1) o_4@@27 f_5@@17))
))) (forall ((o_4@@28 T@Ref) (f_5@@18 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@0) o_4@@28 f_5@@18) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@1) o_4@@28 f_5@@18)))
 :qid |stdinbpl.2515:31|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@1) o_4@@28 f_5@@18))
))) (and (=> (= (ControlFlow 0 32) (- 0 34)) (forall ((n$1_12 T@Ref) (n$1_24 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_12 n$1_24)) (select nodes_1@0 n$1_12)) (select nodes_1@0 n$1_24)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_12 n$1_24)))
 :qid |stdinbpl.2527:19|
 :skolemid |302|
 :pattern ( (neverTriggered30 n$1_12) (neverTriggered30 n$1_24))
))) (=> (forall ((n$1_12@@0 T@Ref) (n$1_24@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_12@@0 n$1_24@@0)) (select nodes_1@0 n$1_12@@0)) (select nodes_1@0 n$1_24@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_12@@0 n$1_24@@0)))
 :qid |stdinbpl.2527:19|
 :skolemid |302|
 :pattern ( (neverTriggered30 n$1_12@@0) (neverTriggered30 n$1_24@@0))
)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (forall ((n$1_12@@1 T@Ref) ) (!  (=> (select nodes_1@0 n$1_12@@1) (>= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@1) n$1_12@@1 is_marked) FullPerm))
 :qid |stdinbpl.2534:19|
 :skolemid |303|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@7) n$1_12@@1 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) n$1_12@@1 is_marked))
 :pattern ( (select nodes_1@0 n$1_12@@1))
))) (=> (forall ((n$1_12@@2 T@Ref) ) (!  (=> (select nodes_1@0 n$1_12@@2) (>= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@1) n$1_12@@2 is_marked) FullPerm))
 :qid |stdinbpl.2534:19|
 :skolemid |303|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@7) n$1_12@@2 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) n$1_12@@2 is_marked))
 :pattern ( (select nodes_1@0 n$1_12@@2))
)) (=> (forall ((n$1_12@@3 T@Ref) ) (!  (=> (and (select nodes_1@0 n$1_12@@3) (< NoPerm FullPerm)) (and (qpRange30 n$1_12@@3) (= (invRecv30 n$1_12@@3) n$1_12@@3)))
 :qid |stdinbpl.2540:24|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@7) n$1_12@@3 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) n$1_12@@3 is_marked))
 :pattern ( (select nodes_1@0 n$1_12@@3))
)) (=> (and (forall ((o_4@@29 T@Ref) ) (!  (=> (and (select nodes_1@0 (invRecv30 o_4@@29)) (and (< NoPerm FullPerm) (qpRange30 o_4@@29))) (= (invRecv30 o_4@@29) o_4@@29))
 :qid |stdinbpl.2544:24|
 :skolemid |305|
 :pattern ( (invRecv30 o_4@@29))
)) (forall ((o_4@@30 T@Ref) ) (!  (and (=> (and (select nodes_1@0 (invRecv30 o_4@@30)) (and (< NoPerm FullPerm) (qpRange30 o_4@@30))) (and (= (invRecv30 o_4@@30) o_4@@30) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) o_4@@30 is_marked) (- (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@1) o_4@@30 is_marked) FullPerm)))) (=> (not (and (select nodes_1@0 (invRecv30 o_4@@30)) (and (< NoPerm FullPerm) (qpRange30 o_4@@30)))) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) o_4@@30 is_marked) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@1) o_4@@30 is_marked))))
 :qid |stdinbpl.2550:24|
 :skolemid |306|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) o_4@@30 is_marked))
))) (=> (and (and (and (forall ((o_4@@31 T@Ref) (f_5@@19 T@Field_27149_53) ) (!  (=> (not (= f_5@@19 is_marked)) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@1) o_4@@31 f_5@@19) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) o_4@@31 f_5@@19)))
 :qid |stdinbpl.2556:31|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) o_4@@31 f_5@@19))
)) (forall ((o_4@@32 T@Ref) (f_5@@20 T@Field_27162_27163) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) o_4@@32 f_5@@20) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@2) o_4@@32 f_5@@20)))
 :qid |stdinbpl.2556:31|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@2) o_4@@32 f_5@@20))
))) (forall ((o_4@@33 T@Ref) (f_5@@21 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@1) o_4@@33 f_5@@21) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@2) o_4@@33 f_5@@21)))
 :qid |stdinbpl.2556:31|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@2) o_4@@33 f_5@@21))
))) (forall ((o_4@@34 T@Ref) (f_5@@22 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@1) o_4@@34 f_5@@22) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@2) o_4@@34 f_5@@22)))
 :qid |stdinbpl.2556:31|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@2) o_4@@34 f_5@@22))
))) (and (and (=> (= (ControlFlow 0 32) 31) anon29_Else_correct) (=> (= (ControlFlow 0 32) 10) anon30_Then_correct)) (=> (= (ControlFlow 0 32) 12) anon30_Else_correct))))))))))))))))))))))))))))))
(let ((anon7_correct true))
(let ((anon28_Else_correct  (=> (and (not (select nodes_1@0 n_1)) (= (ControlFlow 0 8) 5)) anon7_correct)))
(let ((anon28_Then_correct  (=> (select nodes_1@0 n_1) (and (=> (= (ControlFlow 0 6) (- 0 7)) (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@7) n_1 is_marked))) (=> (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@7) n_1 is_marked)) (=> (= (ControlFlow 0 6) 5) anon7_correct))))))
(let ((anon3_correct true))
(let ((anon26_Else_correct  (=> (and (not (select nodes_1@0 n_82)) (= (ControlFlow 0 4) 1)) anon3_correct)))
(let ((anon26_Then_correct  (=> (select nodes_1@0 n_82) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_17242_4009 Mask@5 n_82 is_marked)) (=> (HasDirectPerm_17242_4009 Mask@5 n_82 is_marked) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))
(let ((anon0_correct  (=> (and (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) a_2 $allocated) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) b_24 $allocated))) (=> (and (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) freshObj@0 $allocated))) (= Heap@0 (PolymorphicMapType_27089 (store (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) freshObj@0 $allocated true) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@15) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@15)))) (and (and (= Mask@0 (PolymorphicMapType_27110 (store (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| ZeroMask) freshObj@0 left (+ (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| ZeroMask) freshObj@0 left) FullPerm)) (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| ZeroMask) (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| ZeroMask) (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| ZeroMask))) (= Mask@1 (PolymorphicMapType_27110 (store (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@0) freshObj@0 right_1 (+ (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@0) freshObj@0 right_1) FullPerm)) (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@0) (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| Mask@0) (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| Mask@0)))) (and (= Mask@2 (PolymorphicMapType_27110 (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@1) (store (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@1) freshObj@0 is_marked (+ (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@1) freshObj@0 is_marked) FullPerm)) (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| Mask@1) (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| Mask@1))) (state Heap@0 Mask@2)))) (and (=> (= (ControlFlow 0 41) (- 0 47)) (= FullPerm (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@2) freshObj@0 is_marked))) (=> (= FullPerm (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@2) freshObj@0 is_marked)) (=> (and (= Heap@1 (PolymorphicMapType_27089 (store (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@0) freshObj@0 is_marked false) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@0) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@0))) (state Heap@1 Mask@2)) (=> (and (and (and (not (= freshObj@1 null)) (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@1) freshObj@1 $allocated))) (= Heap@2 (PolymorphicMapType_27089 (store (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@1) freshObj@1 $allocated true) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@1) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@1)))) (and (and (= Mask@3 (PolymorphicMapType_27110 (store (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@2) freshObj@1 left (+ (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@2) freshObj@1 left) FullPerm)) (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@2) (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| Mask@2) (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| Mask@2))) (= Mask@4 (PolymorphicMapType_27110 (store (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@3) freshObj@1 right_1 (+ (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@3) freshObj@1 right_1) FullPerm)) (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@3) (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| Mask@3) (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| Mask@3)))) (and (= Mask@5 (PolymorphicMapType_27110 (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@4) (store (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@4) freshObj@1 is_marked (+ (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@4) freshObj@1 is_marked) FullPerm)) (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| Mask@4) (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| Mask@4))) (state Heap@2 Mask@5)))) (and (=> (= (ControlFlow 0 41) (- 0 46)) (= FullPerm (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@5) freshObj@1 is_marked))) (=> (= FullPerm (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@5) freshObj@1 is_marked)) (=> (and (= Heap@3 (PolymorphicMapType_27089 (store (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) freshObj@1 is_marked false) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@2) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@2))) (state Heap@3 Mask@5)) (and (=> (= (ControlFlow 0 41) (- 0 45)) (= FullPerm (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@5) freshObj@0 left))) (=> (= FullPerm (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@5) freshObj@0 left)) (=> (and (= Heap@4 (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@3) (store (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@3) freshObj@0 left freshObj@0) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@3) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@3))) (state Heap@4 Mask@5)) (and (=> (= (ControlFlow 0 41) (- 0 44)) (= FullPerm (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@5) freshObj@0 right_1))) (=> (= FullPerm (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@5) freshObj@0 right_1)) (=> (and (= Heap@5 (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@4) (store (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@4) freshObj@0 right_1 freshObj@0) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@4) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@4))) (state Heap@5 Mask@5)) (and (=> (= (ControlFlow 0 41) (- 0 43)) (= FullPerm (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@5) freshObj@1 left))) (=> (= FullPerm (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@5) freshObj@1 left)) (=> (and (= Heap@6 (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@5) (store (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@5) freshObj@1 left freshObj@0) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@5) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@5))) (state Heap@6 Mask@5)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (= FullPerm (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@5) freshObj@1 right_1))) (=> (= FullPerm (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@5) freshObj@1 right_1)) (=> (and (and (= Heap@7 (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@6) (store (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@6) freshObj@1 right_1 freshObj@0) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@6) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@6))) (state Heap@7 Mask@5)) (and (= nodes_1@0 (|Set#UnionOne_17489| (|Set#Singleton_17489| freshObj@1) freshObj@0)) (state Heap@7 Mask@5))) (and (and (and (and (=> (= (ControlFlow 0 41) 32) anon27_Else_correct) (=> (= (ControlFlow 0 41) 6) anon28_Then_correct)) (=> (= (ControlFlow 0 41) 8) anon28_Else_correct)) (=> (= (ControlFlow 0 41) 2) anon26_Then_correct)) (=> (= (ControlFlow 0 41) 4) anon26_Else_correct)))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 48) 41) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 23) (- 24))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
