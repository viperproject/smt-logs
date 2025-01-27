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
(declare-fun left_2 () T@Field_27162_27163)
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
(assert (and (distinct $allocated is_marked)(distinct left_2 right_1))
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_27089) (ExhaleHeap T@PolymorphicMapType_27089) (Mask@@0 T@PolymorphicMapType_27110) (pm_f_51 T@Field_17236_88415) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_17236_88479 Mask@@0 null pm_f_51) (IsPredicateField_17236_88506 pm_f_51)) (= (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@0) null (PredicateMaskField_17236 pm_f_51)) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap) null (PredicateMaskField_17236 pm_f_51)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_17236_88506 pm_f_51) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap) null (PredicateMaskField_17236 pm_f_51)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_27089) (ExhaleHeap@@0 T@PolymorphicMapType_27089) (Mask@@1 T@PolymorphicMapType_27110) (pm_f_51@@0 T@Field_17236_88415) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_17236_88479 Mask@@1 null pm_f_51@@0) (IsWandField_17236_90055 pm_f_51@@0)) (= (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@1) null (WandMaskField_17236 pm_f_51@@0)) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@0) null (WandMaskField_17236 pm_f_51@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_17236_90055 pm_f_51@@0) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@0) null (WandMaskField_17236 pm_f_51@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_27089) (ExhaleHeap@@1 T@PolymorphicMapType_27089) (Mask@@2 T@PolymorphicMapType_27110) (pm_f_51@@1 T@Field_17236_88415) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_17236_88479 Mask@@2 null pm_f_51@@1) (IsPredicateField_17236_88506 pm_f_51@@1)) (and (and (and (forall ((o2_52 T@Ref) (f_30 T@Field_27149_53) ) (!  (=> (select (|PolymorphicMapType_27638_27149_53#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@2) null (PredicateMaskField_17236 pm_f_51@@1))) o2_52 f_30) (= (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@2) o2_52 f_30) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@1) o2_52 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@1) o2_52 f_30))
)) (forall ((o2_52@@0 T@Ref) (f_30@@0 T@Field_27162_27163) ) (!  (=> (select (|PolymorphicMapType_27638_27149_27163#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@2) null (PredicateMaskField_17236 pm_f_51@@1))) o2_52@@0 f_30@@0) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@2) o2_52@@0 f_30@@0) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@@1) o2_52@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@@1) o2_52@@0 f_30@@0))
))) (forall ((o2_52@@1 T@Ref) (f_30@@1 T@Field_17236_88415) ) (!  (=> (select (|PolymorphicMapType_27638_27149_88415#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@2) null (PredicateMaskField_17236 pm_f_51@@1))) o2_52@@1 f_30@@1) (= (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@2) o2_52@@1 f_30@@1) (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| ExhaleHeap@@1) o2_52@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| ExhaleHeap@@1) o2_52@@1 f_30@@1))
))) (forall ((o2_52@@2 T@Ref) (f_30@@2 T@Field_17236_88548) ) (!  (=> (select (|PolymorphicMapType_27638_27149_89528#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@2) null (PredicateMaskField_17236 pm_f_51@@1))) o2_52@@2 f_30@@2) (= (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@2) o2_52@@2 f_30@@2) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@1) o2_52@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@1) o2_52@@2 f_30@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_17236_88506 pm_f_51@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_27089) (ExhaleHeap@@2 T@PolymorphicMapType_27089) (Mask@@3 T@PolymorphicMapType_27110) (pm_f_51@@2 T@Field_17236_88415) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_17236_88479 Mask@@3 null pm_f_51@@2) (IsWandField_17236_90055 pm_f_51@@2)) (and (and (and (forall ((o2_52@@3 T@Ref) (f_30@@3 T@Field_27149_53) ) (!  (=> (select (|PolymorphicMapType_27638_27149_53#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@3) null (WandMaskField_17236 pm_f_51@@2))) o2_52@@3 f_30@@3) (= (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@3) o2_52@@3 f_30@@3) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@2) o2_52@@3 f_30@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@2) o2_52@@3 f_30@@3))
)) (forall ((o2_52@@4 T@Ref) (f_30@@4 T@Field_27162_27163) ) (!  (=> (select (|PolymorphicMapType_27638_27149_27163#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@3) null (WandMaskField_17236 pm_f_51@@2))) o2_52@@4 f_30@@4) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@3) o2_52@@4 f_30@@4) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@@2) o2_52@@4 f_30@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@@2) o2_52@@4 f_30@@4))
))) (forall ((o2_52@@5 T@Ref) (f_30@@5 T@Field_17236_88415) ) (!  (=> (select (|PolymorphicMapType_27638_27149_88415#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@3) null (WandMaskField_17236 pm_f_51@@2))) o2_52@@5 f_30@@5) (= (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@3) o2_52@@5 f_30@@5) (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| ExhaleHeap@@2) o2_52@@5 f_30@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| ExhaleHeap@@2) o2_52@@5 f_30@@5))
))) (forall ((o2_52@@6 T@Ref) (f_30@@6 T@Field_17236_88548) ) (!  (=> (select (|PolymorphicMapType_27638_27149_89528#PolymorphicMapType_27638| (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@3) null (WandMaskField_17236 pm_f_51@@2))) o2_52@@6 f_30@@6) (= (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@3) o2_52@@6 f_30@@6) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@2) o2_52@@6 f_30@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@2) o2_52@@6 f_30@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_17236_90055 pm_f_51@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_27089) (ExhaleHeap@@3 T@PolymorphicMapType_27089) (Mask@@4 T@PolymorphicMapType_27110) (o_49 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@4) o_49 $allocated) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@3) o_49 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@3) o_49 $allocated))
)))
(assert (forall ((p T@Field_17236_88415) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_27149_27149 p v_1 p w))
 :qid |stdinbpl.282:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_27149_27149 p v_1 p w))
)))
(assert  (not (IsPredicateField_17236_17237 left_2)))
(assert  (not (IsWandField_17236_17237 left_2)))
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
(assert (forall ((Heap@@6 T@PolymorphicMapType_27089) (ExhaleHeap@@5 T@PolymorphicMapType_27089) (Mask@@14 T@PolymorphicMapType_27110) (o_49@@0 T@Ref) (f_30@@7 T@Field_17236_88548) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_17236_93334 Mask@@14 o_49@@0 f_30@@7) (= (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@6) o_49@@0 f_30@@7) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@5) o_49@@0 f_30@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| ExhaleHeap@@5) o_49@@0 f_30@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_27089) (ExhaleHeap@@6 T@PolymorphicMapType_27089) (Mask@@15 T@PolymorphicMapType_27110) (o_49@@1 T@Ref) (f_30@@8 T@Field_17236_88415) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_17236_88479 Mask@@15 o_49@@1 f_30@@8) (= (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@7) o_49@@1 f_30@@8) (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| ExhaleHeap@@6) o_49@@1 f_30@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| ExhaleHeap@@6) o_49@@1 f_30@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_27089) (ExhaleHeap@@7 T@PolymorphicMapType_27089) (Mask@@16 T@PolymorphicMapType_27110) (o_49@@2 T@Ref) (f_30@@9 T@Field_27149_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_17242_4009 Mask@@16 o_49@@2 f_30@@9) (= (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@8) o_49@@2 f_30@@9) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@7) o_49@@2 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@@7) o_49@@2 f_30@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_27089) (ExhaleHeap@@8 T@PolymorphicMapType_27089) (Mask@@17 T@PolymorphicMapType_27110) (o_49@@3 T@Ref) (f_30@@10 T@Field_27162_27163) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_17236_17237 Mask@@17 o_49@@3 f_30@@10) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@9) o_49@@3 f_30@@10) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@@8) o_49@@3 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@@8) o_49@@3 f_30@@10))
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
(assert (forall ((Heap@@10 T@PolymorphicMapType_27089) (o_48 T@Ref) (f_62 T@Field_17236_88415) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@10) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@10) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@10) (store (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@10) o_48 f_62 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@10) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@10) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@10) (store (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@10) o_48 f_62 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_27089) (o_48@@0 T@Ref) (f_62@@0 T@Field_17236_88548) (v@@0 T@PolymorphicMapType_27638) ) (! (succHeap Heap@@11 (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@11) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@11) (store (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@11) o_48@@0 f_62@@0 v@@0) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@11) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@11) (store (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@11) o_48@@0 f_62@@0 v@@0) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_27089) (o_48@@1 T@Ref) (f_62@@1 T@Field_27162_27163) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@12) (store (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@12) o_48@@1 f_62@@1 v@@1) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@12) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27089 (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@12) (store (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@12) o_48@@1 f_62@@1 v@@1) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@12) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_27089) (o_48@@2 T@Ref) (f_62@@2 T@Field_27149_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_27089 (store (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@13) o_48@@2 f_62@@2 v@@2) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@13) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@13) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_27089 (store (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@13) o_48@@2 f_62@@2 v@@2) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@13) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@13) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@13)))
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
(assert (forall ((o_48@@3 T@Ref) (f_66 T@Field_27162_27163) (Heap@@14 T@PolymorphicMapType_27089) ) (!  (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@14) o_48@@3 $allocated) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@14) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@14) o_48@@3 f_66) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@14) o_48@@3 f_66))
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
(declare-fun PostHeap@0 () T@PolymorphicMapType_27089)
(declare-fun n_93 () T@Ref)
(declare-fun QPMask@20 () T@PolymorphicMapType_27110)
(declare-fun Heap@@15 () T@PolymorphicMapType_27089)
(declare-fun nodes () (Array T@Ref Bool))
(declare-fun QPMask@2 () T@PolymorphicMapType_27110)
(declare-fun n_92 () T@Ref)
(declare-fun n_32 () T@Ref)
(declare-fun n_91 () T@Ref)
(declare-fun node () T@Ref)
(declare-fun n_90 () T@Ref)
(declare-fun n$8_6 () T@Ref)
(declare-fun n$7_6 () T@Ref)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) T@Ref)
(declare-fun QPMask@19 () T@PolymorphicMapType_27110)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) T@Ref)
(declare-fun QPMask@18 () T@PolymorphicMapType_27110)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) T@Ref)
(declare-fun n$3_2 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_27089)
(declare-fun n$2_2 () T@Ref)
(declare-fun n$3_4_1 () T@Ref)
(declare-fun Heap@1 () T@PolymorphicMapType_27089)
(declare-fun n$2_4_1 () T@Ref)
(declare-fun n_20 () T@Ref)
(declare-fun Heap@2 () T@PolymorphicMapType_27089)
(declare-fun n_18 () T@Ref)
(declare-fun n_16_1 () T@Ref)
(declare-fun n_14_1 () T@Ref)
(declare-fun n_12 () T@Ref)
(declare-fun n$8_2_1 () T@Ref)
(declare-fun n$7_2 () T@Ref)
(declare-fun Mask@1 () T@PolymorphicMapType_27110)
(declare-fun neverTriggered7 (T@Ref) Bool)
(declare-fun QPMask@15 () T@PolymorphicMapType_27110)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) T@Ref)
(declare-fun neverTriggered8 (T@Ref) Bool)
(declare-fun QPMask@16 () T@PolymorphicMapType_27110)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) T@Ref)
(declare-fun neverTriggered9 (T@Ref) Bool)
(declare-fun QPMask@17 () T@PolymorphicMapType_27110)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) T@Ref)
(declare-fun arg_node_1@0 () T@Ref)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_27089)
(declare-fun QPMask@11 () T@PolymorphicMapType_27110)
(declare-fun QPMask@12 () T@PolymorphicMapType_27110)
(declare-fun qpRange19 (T@Ref) Bool)
(declare-fun invRecv19 (T@Ref) T@Ref)
(declare-fun QPMask@13 () T@PolymorphicMapType_27110)
(declare-fun qpRange20 (T@Ref) Bool)
(declare-fun invRecv20 (T@Ref) T@Ref)
(declare-fun QPMask@14 () T@PolymorphicMapType_27110)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_27110)
(declare-fun neverTriggered16 (T@Ref) Bool)
(declare-fun QPMask@9 () T@PolymorphicMapType_27110)
(declare-fun qpRange16 (T@Ref) Bool)
(declare-fun invRecv16 (T@Ref) T@Ref)
(declare-fun neverTriggered17 (T@Ref) Bool)
(declare-fun QPMask@10 () T@PolymorphicMapType_27110)
(declare-fun qpRange17 (T@Ref) Bool)
(declare-fun invRecv17 (T@Ref) T@Ref)
(declare-fun neverTriggered18 (T@Ref) Bool)
(declare-fun qpRange18 (T@Ref) Bool)
(declare-fun invRecv18 (T@Ref) T@Ref)
(declare-fun arg_node@0 () T@Ref)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_27089)
(declare-fun QPMask@5 () T@PolymorphicMapType_27110)
(declare-fun QPMask@6 () T@PolymorphicMapType_27110)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) T@Ref)
(declare-fun QPMask@7 () T@PolymorphicMapType_27110)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) T@Ref)
(declare-fun QPMask@8 () T@PolymorphicMapType_27110)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) T@Ref)
(declare-fun neverTriggered10 (T@Ref) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_27110)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) T@Ref)
(declare-fun neverTriggered11 (T@Ref) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_27110)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) T@Ref)
(declare-fun neverTriggered12 (T@Ref) Bool)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) T@Ref)
(declare-fun n$3_9 () T@Ref)
(declare-fun n$2_33 () T@Ref)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_27110)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_27110)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id trav_rec)
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
 (=> (= (ControlFlow 0 0) 219) (let ((anon65_correct true))
(let ((anon158_Else_correct  (=> (and (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n_93 right_1) null) (= (ControlFlow 0 187) 181)) anon65_correct)))
(let ((anon158_Then_correct  (=> (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n_93 right_1) null)) (and (=> (= (ControlFlow 0 184) (- 0 186)) (HasDirectPerm_17236_17237 QPMask@20 n_93 right_1)) (=> (HasDirectPerm_17236_17237 QPMask@20 n_93 right_1) (and (=> (= (ControlFlow 0 184) (- 0 185)) (HasDirectPerm_17242_4009 QPMask@20 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n_93 right_1) is_marked)) (=> (HasDirectPerm_17242_4009 QPMask@20 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n_93 right_1) is_marked) (=> (= (ControlFlow 0 184) 181) anon65_correct))))))))
(let ((anon157_Then_correct  (=> (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_93 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| PostHeap@0) n_93 is_marked)) (and (=> (= (ControlFlow 0 188) (- 0 189)) (HasDirectPerm_17236_17237 QPMask@20 n_93 right_1)) (=> (HasDirectPerm_17236_17237 QPMask@20 n_93 right_1) (and (=> (= (ControlFlow 0 188) 184) anon158_Then_correct) (=> (= (ControlFlow 0 188) 187) anon158_Else_correct)))))))
(let ((anon157_Else_correct  (=> (and (not (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_93 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| PostHeap@0) n_93 is_marked))) (= (ControlFlow 0 183) 181)) anon65_correct)))
(let ((anon156_Else_correct  (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_93 is_marked) (and (=> (= (ControlFlow 0 192) 188) anon157_Then_correct) (=> (= (ControlFlow 0 192) 183) anon157_Else_correct)))))
(let ((anon156_Then_correct  (=> (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_93 is_marked)) (and (=> (= (ControlFlow 0 190) (- 0 191)) (HasDirectPerm_17242_4009 QPMask@20 n_93 is_marked)) (=> (HasDirectPerm_17242_4009 QPMask@20 n_93 is_marked) (and (=> (= (ControlFlow 0 190) 188) anon157_Then_correct) (=> (= (ControlFlow 0 190) 183) anon157_Else_correct)))))))
(let ((anon155_Then_correct  (=> (select nodes n_93) (and (=> (= (ControlFlow 0 193) (- 0 194)) (HasDirectPerm_17242_4009 QPMask@2 n_93 is_marked)) (=> (HasDirectPerm_17242_4009 QPMask@2 n_93 is_marked) (and (=> (= (ControlFlow 0 193) 190) anon156_Then_correct) (=> (= (ControlFlow 0 193) 192) anon156_Else_correct)))))))
(let ((anon155_Else_correct  (=> (and (not (select nodes n_93)) (= (ControlFlow 0 182) 181)) anon65_correct)))
(let ((anon154_Else_correct true))
(let ((anon149_Else_correct  (=> (and (forall ((n_9 T@Ref) ) (!  (=> (select nodes n_9) (=> (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_9 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| PostHeap@0) n_9 is_marked)) (or (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n_9 left_2) null) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| PostHeap@0) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n_9 left_2) is_marked))))
 :qid |stdinbpl.945:20|
 :skolemid |125|
 :pattern ( (select nodes n_9) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| PostHeap@0) n_9 is_marked))
 :pattern ( (select nodes n_9) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| PostHeap@0) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n_9 left_2) is_marked))
)) (state PostHeap@0 QPMask@20)) (and (and (=> (= (ControlFlow 0 195) 180) anon154_Else_correct) (=> (= (ControlFlow 0 195) 193) anon155_Then_correct)) (=> (= (ControlFlow 0 195) 182) anon155_Else_correct)))))
(let ((anon57_correct true))
(let ((anon153_Else_correct  (=> (and (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n_92 left_2) null) (= (ControlFlow 0 172) 166)) anon57_correct)))
(let ((anon153_Then_correct  (=> (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n_92 left_2) null)) (and (=> (= (ControlFlow 0 169) (- 0 171)) (HasDirectPerm_17236_17237 QPMask@20 n_92 left_2)) (=> (HasDirectPerm_17236_17237 QPMask@20 n_92 left_2) (and (=> (= (ControlFlow 0 169) (- 0 170)) (HasDirectPerm_17242_4009 QPMask@20 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n_92 left_2) is_marked)) (=> (HasDirectPerm_17242_4009 QPMask@20 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n_92 left_2) is_marked) (=> (= (ControlFlow 0 169) 166) anon57_correct))))))))
(let ((anon152_Then_correct  (=> (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_92 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| PostHeap@0) n_92 is_marked)) (and (=> (= (ControlFlow 0 173) (- 0 174)) (HasDirectPerm_17236_17237 QPMask@20 n_92 left_2)) (=> (HasDirectPerm_17236_17237 QPMask@20 n_92 left_2) (and (=> (= (ControlFlow 0 173) 169) anon153_Then_correct) (=> (= (ControlFlow 0 173) 172) anon153_Else_correct)))))))
(let ((anon152_Else_correct  (=> (and (not (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_92 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| PostHeap@0) n_92 is_marked))) (= (ControlFlow 0 168) 166)) anon57_correct)))
(let ((anon151_Else_correct  (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_92 is_marked) (and (=> (= (ControlFlow 0 177) 173) anon152_Then_correct) (=> (= (ControlFlow 0 177) 168) anon152_Else_correct)))))
(let ((anon151_Then_correct  (=> (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_92 is_marked)) (and (=> (= (ControlFlow 0 175) (- 0 176)) (HasDirectPerm_17242_4009 QPMask@20 n_92 is_marked)) (=> (HasDirectPerm_17242_4009 QPMask@20 n_92 is_marked) (and (=> (= (ControlFlow 0 175) 173) anon152_Then_correct) (=> (= (ControlFlow 0 175) 168) anon152_Else_correct)))))))
(let ((anon150_Then_correct  (=> (select nodes n_92) (and (=> (= (ControlFlow 0 178) (- 0 179)) (HasDirectPerm_17242_4009 QPMask@2 n_92 is_marked)) (=> (HasDirectPerm_17242_4009 QPMask@2 n_92 is_marked) (and (=> (= (ControlFlow 0 178) 175) anon151_Then_correct) (=> (= (ControlFlow 0 178) 177) anon151_Else_correct)))))))
(let ((anon150_Else_correct  (=> (and (not (select nodes n_92)) (= (ControlFlow 0 167) 166)) anon57_correct)))
(let ((anon147_Else_correct  (=> (and (forall ((n_7 T@Ref) ) (!  (=> (select nodes n_7) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n_7 right_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n_7 right_1)))
 :qid |stdinbpl.917:20|
 :skolemid |124|
 :pattern ( (select nodes n_7) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n_7 right_1))
)) (state PostHeap@0 QPMask@20)) (and (and (=> (= (ControlFlow 0 196) 195) anon149_Else_correct) (=> (= (ControlFlow 0 196) 178) anon150_Then_correct)) (=> (= (ControlFlow 0 196) 167) anon150_Else_correct)))))
(let ((anon49_correct true))
(let ((anon148_Else_correct  (=> (and (not (select nodes n_32)) (= (ControlFlow 0 165) 161)) anon49_correct)))
(let ((anon148_Then_correct  (=> (select nodes n_32) (and (=> (= (ControlFlow 0 162) (- 0 164)) (HasDirectPerm_17236_17237 QPMask@20 n_32 right_1)) (=> (HasDirectPerm_17236_17237 QPMask@20 n_32 right_1) (and (=> (= (ControlFlow 0 162) (- 0 163)) (HasDirectPerm_17236_17237 QPMask@2 n_32 right_1)) (=> (HasDirectPerm_17236_17237 QPMask@2 n_32 right_1) (=> (= (ControlFlow 0 162) 161) anon49_correct))))))))
(let ((anon145_Else_correct  (=> (and (forall ((n_5 T@Ref) ) (!  (=> (select nodes n_5) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n_5 left_2) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n_5 left_2)))
 :qid |stdinbpl.901:20|
 :skolemid |123|
 :pattern ( (select nodes n_5) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n_5 left_2))
)) (state PostHeap@0 QPMask@20)) (and (and (=> (= (ControlFlow 0 197) 196) anon147_Else_correct) (=> (= (ControlFlow 0 197) 162) anon148_Then_correct)) (=> (= (ControlFlow 0 197) 165) anon148_Else_correct)))))
(let ((anon45_correct true))
(let ((anon146_Else_correct  (=> (and (not (select nodes n_91)) (= (ControlFlow 0 160) 156)) anon45_correct)))
(let ((anon146_Then_correct  (=> (select nodes n_91) (and (=> (= (ControlFlow 0 157) (- 0 159)) (HasDirectPerm_17236_17237 QPMask@20 n_91 left_2)) (=> (HasDirectPerm_17236_17237 QPMask@20 n_91 left_2) (and (=> (= (ControlFlow 0 157) (- 0 158)) (HasDirectPerm_17236_17237 QPMask@2 n_91 left_2)) (=> (HasDirectPerm_17236_17237 QPMask@2 n_91 left_2) (=> (= (ControlFlow 0 157) 156) anon45_correct))))))))
(let ((anon142_Else_correct  (=> (and (forall ((n_3 T@Ref) ) (!  (=> (select nodes n_3) (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_3 is_marked) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| PostHeap@0) n_3 is_marked)))
 :qid |stdinbpl.879:20|
 :skolemid |122|
 :pattern ( (select nodes n_3) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| PostHeap@0) n_3 is_marked))
)) (state PostHeap@0 QPMask@20)) (and (=> (= (ControlFlow 0 198) (- 0 199)) (HasDirectPerm_17242_4009 QPMask@20 node is_marked)) (=> (HasDirectPerm_17242_4009 QPMask@20 node is_marked) (=> (and (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| PostHeap@0) node is_marked) (state PostHeap@0 QPMask@20)) (and (and (=> (= (ControlFlow 0 198) 197) anon145_Else_correct) (=> (= (ControlFlow 0 198) 157) anon146_Then_correct)) (=> (= (ControlFlow 0 198) 160) anon146_Else_correct))))))))
(let ((anon41_correct true))
(let ((anon144_Else_correct  (=> (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_90 is_marked)) (= (ControlFlow 0 153) 149)) anon41_correct)))
(let ((anon144_Then_correct  (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_90 is_marked) (and (=> (= (ControlFlow 0 151) (- 0 152)) (HasDirectPerm_17242_4009 QPMask@20 n_90 is_marked)) (=> (HasDirectPerm_17242_4009 QPMask@20 n_90 is_marked) (=> (= (ControlFlow 0 151) 149) anon41_correct))))))
(let ((anon143_Then_correct  (=> (select nodes n_90) (and (=> (= (ControlFlow 0 154) (- 0 155)) (HasDirectPerm_17242_4009 QPMask@2 n_90 is_marked)) (=> (HasDirectPerm_17242_4009 QPMask@2 n_90 is_marked) (and (=> (= (ControlFlow 0 154) 151) anon144_Then_correct) (=> (= (ControlFlow 0 154) 153) anon144_Else_correct)))))))
(let ((anon143_Else_correct  (=> (and (not (select nodes n_90)) (= (ControlFlow 0 150) 149)) anon41_correct)))
(let ((anon139_Else_correct  (=> (and (forall ((n$8_1 T@Ref) ) (!  (=> (and (select nodes n$8_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$8_1 right_1) null))) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$8_1 right_1)))
 :qid |stdinbpl.861:20|
 :skolemid |121|
 :pattern ( (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$8_1 right_1)))
 :pattern ( (select nodes n$8_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$8_1 right_1))
)) (state PostHeap@0 QPMask@20)) (and (and (=> (= (ControlFlow 0 200) 198) anon142_Else_correct) (=> (= (ControlFlow 0 200) 154) anon143_Then_correct)) (=> (= (ControlFlow 0 200) 150) anon143_Else_correct)))))
(let ((anon36_correct true))
(let ((anon141_Else_correct  (=> (and (not (and (select nodes n$8_6) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$8_6 right_1) null)))) (= (ControlFlow 0 145) 142)) anon36_correct)))
(let ((anon141_Then_correct  (=> (and (select nodes n$8_6) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$8_6 right_1) null))) (and (=> (= (ControlFlow 0 143) (- 0 144)) (HasDirectPerm_17236_17237 QPMask@20 n$8_6 right_1)) (=> (HasDirectPerm_17236_17237 QPMask@20 n$8_6 right_1) (=> (= (ControlFlow 0 143) 142) anon36_correct))))))
(let ((anon140_Else_correct  (=> (not (select nodes n$8_6)) (and (=> (= (ControlFlow 0 148) 143) anon141_Then_correct) (=> (= (ControlFlow 0 148) 145) anon141_Else_correct)))))
(let ((anon140_Then_correct  (=> (select nodes n$8_6) (and (=> (= (ControlFlow 0 146) (- 0 147)) (HasDirectPerm_17236_17237 QPMask@20 n$8_6 right_1)) (=> (HasDirectPerm_17236_17237 QPMask@20 n$8_6 right_1) (and (=> (= (ControlFlow 0 146) 143) anon141_Then_correct) (=> (= (ControlFlow 0 146) 145) anon141_Else_correct)))))))
(let ((anon136_Else_correct  (=> (forall ((n$7_1 T@Ref) ) (!  (=> (and (select nodes n$7_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$7_1 left_2) null))) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$7_1 left_2)))
 :qid |stdinbpl.844:20|
 :skolemid |120|
 :pattern ( (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$7_1 left_2)))
 :pattern ( (select nodes n$7_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$7_1 left_2))
)) (and (and (=> (= (ControlFlow 0 201) 200) anon139_Else_correct) (=> (= (ControlFlow 0 201) 146) anon140_Then_correct)) (=> (= (ControlFlow 0 201) 148) anon140_Else_correct)))))
(let ((anon30_correct true))
(let ((anon138_Else_correct  (=> (and (not (and (select nodes n$7_6) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$7_6 left_2) null)))) (= (ControlFlow 0 138) 135)) anon30_correct)))
(let ((anon138_Then_correct  (=> (and (select nodes n$7_6) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$7_6 left_2) null))) (and (=> (= (ControlFlow 0 136) (- 0 137)) (HasDirectPerm_17236_17237 QPMask@20 n$7_6 left_2)) (=> (HasDirectPerm_17236_17237 QPMask@20 n$7_6 left_2) (=> (= (ControlFlow 0 136) 135) anon30_correct))))))
(let ((anon137_Else_correct  (=> (not (select nodes n$7_6)) (and (=> (= (ControlFlow 0 141) 136) anon138_Then_correct) (=> (= (ControlFlow 0 141) 138) anon138_Else_correct)))))
(let ((anon137_Then_correct  (=> (select nodes n$7_6) (and (=> (= (ControlFlow 0 139) (- 0 140)) (HasDirectPerm_17236_17237 QPMask@20 n$7_6 left_2)) (=> (HasDirectPerm_17236_17237 QPMask@20 n$7_6 left_2) (and (=> (= (ControlFlow 0 139) 136) anon138_Then_correct) (=> (= (ControlFlow 0 139) 138) anon138_Else_correct)))))))
(let ((anon135_Else_correct  (and (=> (= (ControlFlow 0 202) (- 0 203)) (forall ((n$6_1 T@Ref) (n$6_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$6_1 n$6_1_1)) (select nodes n$6_1)) (select nodes n$6_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$6_1 n$6_1_1)))
 :qid |stdinbpl.799:15|
 :skolemid |114|
))) (=> (forall ((n$6_1@@0 T@Ref) (n$6_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$6_1@@0 n$6_1_1@@0)) (select nodes n$6_1@@0)) (select nodes n$6_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$6_1@@0 n$6_1_1@@0)))
 :qid |stdinbpl.799:15|
 :skolemid |114|
)) (=> (and (and (forall ((n$6_1@@1 T@Ref) ) (!  (=> (and (select nodes n$6_1@@1) (< NoPerm FullPerm)) (and (qpRange6 n$6_1@@1) (= (invRecv6 n$6_1@@1) n$6_1@@1)))
 :qid |stdinbpl.805:22|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| PostHeap@0) n$6_1@@1 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@20) n$6_1@@1 is_marked))
 :pattern ( (select nodes n$6_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select nodes (invRecv6 o_9)) (< NoPerm FullPerm)) (qpRange6 o_9)) (= (invRecv6 o_9) o_9))
 :qid |stdinbpl.809:22|
 :skolemid |116|
 :pattern ( (invRecv6 o_9))
))) (and (forall ((n$6_1@@2 T@Ref) ) (!  (=> (select nodes n$6_1@@2) (not (= n$6_1@@2 null)))
 :qid |stdinbpl.815:22|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| PostHeap@0) n$6_1@@2 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@20) n$6_1@@2 is_marked))
 :pattern ( (select nodes n$6_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select nodes (invRecv6 o_9@@0)) (< NoPerm FullPerm)) (qpRange6 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv6 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@20) o_9@@0 is_marked) (+ (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@19) o_9@@0 is_marked) FullPerm)))) (=> (not (and (and (select nodes (invRecv6 o_9@@0)) (< NoPerm FullPerm)) (qpRange6 o_9@@0))) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@20) o_9@@0 is_marked) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@19) o_9@@0 is_marked))))
 :qid |stdinbpl.821:22|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@20) o_9@@0 is_marked))
)))) (=> (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_27149_53) ) (!  (=> (not (= f_5 is_marked)) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@19) o_9@@1 f_5) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@20) o_9@@1 f_5)))
 :qid |stdinbpl.825:29|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@19) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@20) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_27162_27163) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@19) o_9@@2 f_5@@0) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@20) o_9@@2 f_5@@0)))
 :qid |stdinbpl.825:29|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@19) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@20) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@19) o_9@@3 f_5@@1) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@20) o_9@@3 f_5@@1)))
 :qid |stdinbpl.825:29|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@19) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@20) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@19) o_9@@4 f_5@@2) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@20) o_9@@4 f_5@@2)))
 :qid |stdinbpl.825:29|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@19) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@20) o_9@@4 f_5@@2))
))) (state PostHeap@0 QPMask@20)) (and (and (=> (= (ControlFlow 0 202) 201) anon136_Else_correct) (=> (= (ControlFlow 0 202) 139) anon137_Then_correct)) (=> (= (ControlFlow 0 202) 141) anon137_Else_correct))))))))
(let ((anon135_Then_correct true))
(let ((anon134_Else_correct  (and (=> (= (ControlFlow 0 204) (- 0 205)) (forall ((n$5_1 T@Ref) (n$5_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_1 n$5_1_1)) (select nodes n$5_1)) (select nodes n$5_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_1 n$5_1_1)))
 :qid |stdinbpl.760:15|
 :skolemid |108|
))) (=> (forall ((n$5_1@@0 T@Ref) (n$5_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_1@@0 n$5_1_1@@0)) (select nodes n$5_1@@0)) (select nodes n$5_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_1@@0 n$5_1_1@@0)))
 :qid |stdinbpl.760:15|
 :skolemid |108|
)) (=> (and (and (forall ((n$5_1@@1 T@Ref) ) (!  (=> (and (select nodes n$5_1@@1) (< NoPerm FullPerm)) (and (qpRange5 n$5_1@@1) (= (invRecv5 n$5_1@@1) n$5_1@@1)))
 :qid |stdinbpl.766:22|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$5_1@@1 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@19) n$5_1@@1 right_1))
 :pattern ( (select nodes n$5_1@@1))
)) (forall ((o_9@@5 T@Ref) ) (!  (=> (and (and (select nodes (invRecv5 o_9@@5)) (< NoPerm FullPerm)) (qpRange5 o_9@@5)) (= (invRecv5 o_9@@5) o_9@@5))
 :qid |stdinbpl.770:22|
 :skolemid |110|
 :pattern ( (invRecv5 o_9@@5))
))) (and (forall ((n$5_1@@2 T@Ref) ) (!  (=> (select nodes n$5_1@@2) (not (= n$5_1@@2 null)))
 :qid |stdinbpl.776:22|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$5_1@@2 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@19) n$5_1@@2 right_1))
 :pattern ( (select nodes n$5_1@@2))
)) (forall ((o_9@@6 T@Ref) ) (!  (and (=> (and (and (select nodes (invRecv5 o_9@@6)) (< NoPerm FullPerm)) (qpRange5 o_9@@6)) (and (=> (< NoPerm FullPerm) (= (invRecv5 o_9@@6) o_9@@6)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@19) o_9@@6 right_1) (+ (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@18) o_9@@6 right_1) FullPerm)))) (=> (not (and (and (select nodes (invRecv5 o_9@@6)) (< NoPerm FullPerm)) (qpRange5 o_9@@6))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@19) o_9@@6 right_1) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@18) o_9@@6 right_1))))
 :qid |stdinbpl.782:22|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@19) o_9@@6 right_1))
)))) (=> (and (and (and (and (forall ((o_9@@7 T@Ref) (f_5@@3 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@18) o_9@@7 f_5@@3) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@19) o_9@@7 f_5@@3)))
 :qid |stdinbpl.786:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@18) o_9@@7 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@19) o_9@@7 f_5@@3))
)) (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_27162_27163) ) (!  (=> (not (= f_5@@4 right_1)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@18) o_9@@8 f_5@@4) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@19) o_9@@8 f_5@@4)))
 :qid |stdinbpl.786:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@18) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@19) o_9@@8 f_5@@4))
))) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@18) o_9@@9 f_5@@5) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@19) o_9@@9 f_5@@5)))
 :qid |stdinbpl.786:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@18) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@19) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@18) o_9@@10 f_5@@6) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@19) o_9@@10 f_5@@6)))
 :qid |stdinbpl.786:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@18) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@19) o_9@@10 f_5@@6))
))) (state PostHeap@0 QPMask@19)) (and (=> (= (ControlFlow 0 204) 134) anon135_Then_correct) (=> (= (ControlFlow 0 204) 202) anon135_Else_correct))))))))
(let ((anon134_Then_correct true))
(let ((anon133_Else_correct  (and (=> (= (ControlFlow 0 206) (- 0 207)) (forall ((n$4_1 T@Ref) (n$4_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_1 n$4_1_1)) (select nodes n$4_1)) (select nodes n$4_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$4_1 n$4_1_1)))
 :qid |stdinbpl.721:15|
 :skolemid |102|
))) (=> (forall ((n$4_1@@0 T@Ref) (n$4_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_1@@0 n$4_1_1@@0)) (select nodes n$4_1@@0)) (select nodes n$4_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$4_1@@0 n$4_1_1@@0)))
 :qid |stdinbpl.721:15|
 :skolemid |102|
)) (=> (and (and (forall ((n$4_1@@1 T@Ref) ) (!  (=> (and (select nodes n$4_1@@1) (< NoPerm FullPerm)) (and (qpRange4 n$4_1@@1) (= (invRecv4 n$4_1@@1) n$4_1@@1)))
 :qid |stdinbpl.727:22|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$4_1@@1 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@18) n$4_1@@1 left_2))
 :pattern ( (select nodes n$4_1@@1))
)) (forall ((o_9@@11 T@Ref) ) (!  (=> (and (and (select nodes (invRecv4 o_9@@11)) (< NoPerm FullPerm)) (qpRange4 o_9@@11)) (= (invRecv4 o_9@@11) o_9@@11))
 :qid |stdinbpl.731:22|
 :skolemid |104|
 :pattern ( (invRecv4 o_9@@11))
))) (and (forall ((n$4_1@@2 T@Ref) ) (!  (=> (select nodes n$4_1@@2) (not (= n$4_1@@2 null)))
 :qid |stdinbpl.737:22|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| PostHeap@0) n$4_1@@2 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@18) n$4_1@@2 left_2))
 :pattern ( (select nodes n$4_1@@2))
)) (forall ((o_9@@12 T@Ref) ) (!  (and (=> (and (and (select nodes (invRecv4 o_9@@12)) (< NoPerm FullPerm)) (qpRange4 o_9@@12)) (and (=> (< NoPerm FullPerm) (= (invRecv4 o_9@@12) o_9@@12)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@18) o_9@@12 left_2) (+ (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| ZeroMask) o_9@@12 left_2) FullPerm)))) (=> (not (and (and (select nodes (invRecv4 o_9@@12)) (< NoPerm FullPerm)) (qpRange4 o_9@@12))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@18) o_9@@12 left_2) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| ZeroMask) o_9@@12 left_2))))
 :qid |stdinbpl.743:22|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@18) o_9@@12 left_2))
)))) (=> (and (and (and (and (forall ((o_9@@13 T@Ref) (f_5@@7 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| ZeroMask) o_9@@13 f_5@@7) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@18) o_9@@13 f_5@@7)))
 :qid |stdinbpl.747:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| ZeroMask) o_9@@13 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@18) o_9@@13 f_5@@7))
)) (forall ((o_9@@14 T@Ref) (f_5@@8 T@Field_27162_27163) ) (!  (=> (not (= f_5@@8 left_2)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| ZeroMask) o_9@@14 f_5@@8) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@18) o_9@@14 f_5@@8)))
 :qid |stdinbpl.747:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| ZeroMask) o_9@@14 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@18) o_9@@14 f_5@@8))
))) (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| ZeroMask) o_9@@15 f_5@@9) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@18) o_9@@15 f_5@@9)))
 :qid |stdinbpl.747:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| ZeroMask) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@18) o_9@@15 f_5@@9))
))) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| ZeroMask) o_9@@16 f_5@@10) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@18) o_9@@16 f_5@@10)))
 :qid |stdinbpl.747:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| ZeroMask) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@18) o_9@@16 f_5@@10))
))) (state PostHeap@0 QPMask@18)) (and (=> (= (ControlFlow 0 206) 133) anon134_Then_correct) (=> (= (ControlFlow 0 206) 204) anon134_Else_correct))))))))
(let ((anon133_Then_correct true))
(let ((anon132_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (select nodes node) (not (select nodes null))) (and (=> (= (ControlFlow 0 208) 132) anon133_Then_correct) (=> (= (ControlFlow 0 208) 206) anon133_Else_correct))))))
(let ((anon77_correct true))
(let ((anon164_Else_correct  (=> (and (not (and (select nodes n$3_2) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$3_2 right_1) null)))) (= (ControlFlow 0 113) 110)) anon77_correct)))
(let ((anon164_Then_correct  (=> (and (select nodes n$3_2) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$3_2 right_1) null))) (and (=> (= (ControlFlow 0 111) (- 0 112)) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$3_2 right_1))) (=> (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$3_2 right_1)) (=> (= (ControlFlow 0 111) 110) anon77_correct))))))
(let ((anon73_correct true))
(let ((anon162_Else_correct  (=> (and (not (and (select nodes n$2_2) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$2_2 left_2) null)))) (= (ControlFlow 0 104) 101)) anon73_correct)))
(let ((anon162_Then_correct  (=> (and (select nodes n$2_2) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$2_2 left_2) null))) (and (=> (= (ControlFlow 0 102) (- 0 103)) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$2_2 left_2))) (=> (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$2_2 left_2)) (=> (= (ControlFlow 0 102) 101) anon73_correct))))))
(let ((anon89_correct true))
(let ((anon170_Else_correct  (=> (and (not (and (select nodes n$3_4_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$3_4_1 right_1) null)))) (= (ControlFlow 0 82) 79)) anon89_correct)))
(let ((anon170_Then_correct  (=> (and (select nodes n$3_4_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$3_4_1 right_1) null))) (and (=> (= (ControlFlow 0 80) (- 0 81)) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$3_4_1 right_1))) (=> (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$3_4_1 right_1)) (=> (= (ControlFlow 0 80) 79) anon89_correct))))))
(let ((anon85_correct true))
(let ((anon168_Else_correct  (=> (and (not (and (select nodes n$2_4_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$2_4_1 left_2) null)))) (= (ControlFlow 0 73) 70)) anon85_correct)))
(let ((anon168_Then_correct  (=> (and (select nodes n$2_4_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$2_4_1 left_2) null))) (and (=> (= (ControlFlow 0 71) (- 0 72)) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$2_4_1 left_2))) (=> (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$2_4_1 left_2)) (=> (= (ControlFlow 0 71) 70) anon85_correct))))))
(let ((anon121_correct true))
(let ((anon187_Else_correct  (=> (and (not (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_20 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) n_20 is_marked))) (= (ControlFlow 0 51) 47)) anon121_correct)))
(let ((anon187_Then_correct  (=> (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_20 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) n_20 is_marked)) (and (=> (= (ControlFlow 0 49) (- 0 50)) (or (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_20 right_1) null) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_20 right_1) is_marked))) (=> (or (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_20 right_1) null) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_20 right_1) is_marked)) (=> (= (ControlFlow 0 49) 47) anon121_correct))))))
(let ((anon186_Then_correct  (=> (select nodes n_20) (and (=> (= (ControlFlow 0 52) 49) anon187_Then_correct) (=> (= (ControlFlow 0 52) 51) anon187_Else_correct)))))
(let ((anon186_Else_correct  (=> (and (not (select nodes n_20)) (= (ControlFlow 0 48) 47)) anon121_correct)))
(let ((anon185_Else_correct true))
(let ((anon182_Else_correct  (=> (forall ((n_19_1_1 T@Ref) ) (!  (=> (select nodes n_19_1_1) (=> (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_19_1_1 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) n_19_1_1 is_marked)) (or (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_19_1_1 left_2) null) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_19_1_1 left_2) is_marked))))
 :qid |stdinbpl.1826:20|
 :skolemid |240|
 :pattern ( (select nodes n_19_1_1) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) n_19_1_1 is_marked))
 :pattern ( (select nodes n_19_1_1) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_19_1_1 left_2) is_marked))
)) (and (and (=> (= (ControlFlow 0 53) 46) anon185_Else_correct) (=> (= (ControlFlow 0 53) 52) anon186_Then_correct)) (=> (= (ControlFlow 0 53) 48) anon186_Else_correct)))))
(let ((anon116_correct true))
(let ((anon184_Else_correct  (=> (and (not (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_18 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) n_18 is_marked))) (= (ControlFlow 0 44) 40)) anon116_correct)))
(let ((anon184_Then_correct  (=> (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_18 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) n_18 is_marked)) (and (=> (= (ControlFlow 0 42) (- 0 43)) (or (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_18 left_2) null) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_18 left_2) is_marked))) (=> (or (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_18 left_2) null) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_18 left_2) is_marked)) (=> (= (ControlFlow 0 42) 40) anon116_correct))))))
(let ((anon183_Then_correct  (=> (select nodes n_18) (and (=> (= (ControlFlow 0 45) 42) anon184_Then_correct) (=> (= (ControlFlow 0 45) 44) anon184_Else_correct)))))
(let ((anon183_Else_correct  (=> (and (not (select nodes n_18)) (= (ControlFlow 0 41) 40)) anon116_correct)))
(let ((anon180_Else_correct  (=> (forall ((n_17_1_1 T@Ref) ) (!  (=> (select nodes n_17_1_1) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_17_1_1 right_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n_17_1_1 right_1)))
 :qid |stdinbpl.1813:20|
 :skolemid |239|
 :pattern ( (select nodes n_17_1_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_17_1_1 right_1))
)) (and (and (=> (= (ControlFlow 0 54) 53) anon182_Else_correct) (=> (= (ControlFlow 0 54) 45) anon183_Then_correct)) (=> (= (ControlFlow 0 54) 41) anon183_Else_correct)))))
(let ((anon111_correct true))
(let ((anon181_Else_correct  (=> (and (not (select nodes n_16_1)) (= (ControlFlow 0 39) 36)) anon111_correct)))
(let ((anon181_Then_correct  (=> (select nodes n_16_1) (and (=> (= (ControlFlow 0 37) (- 0 38)) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_16_1 right_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n_16_1 right_1))) (=> (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_16_1 right_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n_16_1 right_1)) (=> (= (ControlFlow 0 37) 36) anon111_correct))))))
(let ((anon178_Else_correct  (=> (forall ((n_15_1_1 T@Ref) ) (!  (=> (select nodes n_15_1_1) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_15_1_1 left_2) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n_15_1_1 left_2)))
 :qid |stdinbpl.1802:20|
 :skolemid |238|
 :pattern ( (select nodes n_15_1_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_15_1_1 left_2))
)) (and (and (=> (= (ControlFlow 0 55) 54) anon180_Else_correct) (=> (= (ControlFlow 0 55) 37) anon181_Then_correct)) (=> (= (ControlFlow 0 55) 39) anon181_Else_correct)))))
(let ((anon107_correct true))
(let ((anon179_Else_correct  (=> (and (not (select nodes n_14_1)) (= (ControlFlow 0 35) 32)) anon107_correct)))
(let ((anon179_Then_correct  (=> (select nodes n_14_1) (and (=> (= (ControlFlow 0 33) (- 0 34)) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_14_1 left_2) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n_14_1 left_2))) (=> (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n_14_1 left_2) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n_14_1 left_2)) (=> (= (ControlFlow 0 33) 32) anon107_correct))))))
(let ((anon175_Else_correct  (=> (forall ((n_13_1 T@Ref) ) (!  (=> (select nodes n_13_1) (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_13_1 is_marked) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) n_13_1 is_marked)))
 :qid |stdinbpl.1789:20|
 :skolemid |237|
 :pattern ( (select nodes n_13_1) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) n_13_1 is_marked))
)) (and (=> (= (ControlFlow 0 56) (- 0 57)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) node is_marked)) (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) node is_marked) (and (and (=> (= (ControlFlow 0 56) 55) anon178_Else_correct) (=> (= (ControlFlow 0 56) 33) anon179_Then_correct)) (=> (= (ControlFlow 0 56) 35) anon179_Else_correct)))))))
(let ((anon103_correct true))
(let ((anon177_Else_correct  (=> (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_12 is_marked)) (= (ControlFlow 0 30) 26)) anon103_correct)))
(let ((anon177_Then_correct  (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n_12 is_marked) (and (=> (= (ControlFlow 0 28) (- 0 29)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) n_12 is_marked)) (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) n_12 is_marked) (=> (= (ControlFlow 0 28) 26) anon103_correct))))))
(let ((anon176_Then_correct  (=> (select nodes n_12) (and (=> (= (ControlFlow 0 31) 28) anon177_Then_correct) (=> (= (ControlFlow 0 31) 30) anon177_Else_correct)))))
(let ((anon176_Else_correct  (=> (and (not (select nodes n_12)) (= (ControlFlow 0 27) 26)) anon103_correct)))
(let ((anon173_Else_correct  (=> (forall ((n$8_3_1 T@Ref) ) (!  (=> (and (select nodes n$8_3_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$8_3_1 right_1) null))) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$8_3_1 right_1)))
 :qid |stdinbpl.1776:20|
 :skolemid |236|
 :pattern ( (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$8_3_1 right_1)))
 :pattern ( (select nodes n$8_3_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$8_3_1 right_1))
)) (and (and (=> (= (ControlFlow 0 58) 56) anon175_Else_correct) (=> (= (ControlFlow 0 58) 31) anon176_Then_correct)) (=> (= (ControlFlow 0 58) 27) anon176_Else_correct)))))
(let ((anon98_correct true))
(let ((anon174_Else_correct  (=> (and (not (and (select nodes n$8_2_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$8_2_1 right_1) null)))) (= (ControlFlow 0 25) 22)) anon98_correct)))
(let ((anon174_Then_correct  (=> (and (select nodes n$8_2_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$8_2_1 right_1) null))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$8_2_1 right_1))) (=> (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$8_2_1 right_1)) (=> (= (ControlFlow 0 23) 22) anon98_correct))))))
(let ((anon171_Else_correct  (=> (forall ((n$7_3_1 T@Ref) ) (!  (=> (and (select nodes n$7_3_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$7_3_1 left_2) null))) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$7_3_1 left_2)))
 :qid |stdinbpl.1765:20|
 :skolemid |235|
 :pattern ( (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$7_3_1 left_2)))
 :pattern ( (select nodes n$7_3_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$7_3_1 left_2))
)) (and (and (=> (= (ControlFlow 0 59) 58) anon173_Else_correct) (=> (= (ControlFlow 0 59) 23) anon174_Then_correct)) (=> (= (ControlFlow 0 59) 25) anon174_Else_correct)))))
(let ((anon94_correct true))
(let ((anon172_Else_correct  (=> (and (not (and (select nodes n$7_2) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$7_2 left_2) null)))) (= (ControlFlow 0 21) 18)) anon94_correct)))
(let ((anon172_Then_correct  (=> (and (select nodes n$7_2) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$7_2 left_2) null))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$7_2 left_2))) (=> (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$7_2 left_2)) (=> (= (ControlFlow 0 19) 18) anon94_correct))))))
(let ((anon91_correct  (=> (state Heap@2 Mask@1) (and (=> (= (ControlFlow 0 60) (- 0 68)) (select nodes node)) (=> (select nodes node) (and (=> (= (ControlFlow 0 60) (- 0 67)) (not (select nodes null))) (=> (not (select nodes null)) (and (=> (= (ControlFlow 0 60) (- 0 66)) (forall ((n$4_2 T@Ref) (n$4_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_2 n$4_2_1)) (select nodes n$4_2)) (select nodes n$4_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$4_2 n$4_2_1)))
 :qid |stdinbpl.1642:17|
 :skolemid |217|
 :pattern ( (neverTriggered7 n$4_2) (neverTriggered7 n$4_2_1))
))) (=> (forall ((n$4_2@@0 T@Ref) (n$4_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_2@@0 n$4_2_1@@0)) (select nodes n$4_2@@0)) (select nodes n$4_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$4_2@@0 n$4_2_1@@0)))
 :qid |stdinbpl.1642:17|
 :skolemid |217|
 :pattern ( (neverTriggered7 n$4_2@@0) (neverTriggered7 n$4_2_1@@0))
)) (and (=> (= (ControlFlow 0 60) (- 0 65)) (forall ((n$4_2@@1 T@Ref) ) (!  (=> (select nodes n$4_2@@1) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@1) n$4_2@@1 left_2) FullPerm))
 :qid |stdinbpl.1649:17|
 :skolemid |218|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$4_2@@1 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@15) n$4_2@@1 left_2))
 :pattern ( (select nodes n$4_2@@1))
))) (=> (forall ((n$4_2@@2 T@Ref) ) (!  (=> (select nodes n$4_2@@2) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@1) n$4_2@@2 left_2) FullPerm))
 :qid |stdinbpl.1649:17|
 :skolemid |218|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$4_2@@2 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@15) n$4_2@@2 left_2))
 :pattern ( (select nodes n$4_2@@2))
)) (=> (forall ((n$4_2@@3 T@Ref) ) (!  (=> (and (select nodes n$4_2@@3) (< NoPerm FullPerm)) (and (qpRange7 n$4_2@@3) (= (invRecv7 n$4_2@@3) n$4_2@@3)))
 :qid |stdinbpl.1655:22|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$4_2@@3 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@15) n$4_2@@3 left_2))
 :pattern ( (select nodes n$4_2@@3))
)) (=> (and (forall ((o_9@@17 T@Ref) ) (!  (=> (and (select nodes (invRecv7 o_9@@17)) (and (< NoPerm FullPerm) (qpRange7 o_9@@17))) (= (invRecv7 o_9@@17) o_9@@17))
 :qid |stdinbpl.1659:22|
 :skolemid |220|
 :pattern ( (invRecv7 o_9@@17))
)) (forall ((o_9@@18 T@Ref) ) (!  (and (=> (and (select nodes (invRecv7 o_9@@18)) (and (< NoPerm FullPerm) (qpRange7 o_9@@18))) (and (= (invRecv7 o_9@@18) o_9@@18) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@15) o_9@@18 left_2) (- (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@1) o_9@@18 left_2) FullPerm)))) (=> (not (and (select nodes (invRecv7 o_9@@18)) (and (< NoPerm FullPerm) (qpRange7 o_9@@18)))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@15) o_9@@18 left_2) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@1) o_9@@18 left_2))))
 :qid |stdinbpl.1665:22|
 :skolemid |221|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@15) o_9@@18 left_2))
))) (=> (and (and (and (forall ((o_9@@19 T@Ref) (f_5@@11 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@1) o_9@@19 f_5@@11) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@15) o_9@@19 f_5@@11)))
 :qid |stdinbpl.1671:29|
 :skolemid |222|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@15) o_9@@19 f_5@@11))
)) (forall ((o_9@@20 T@Ref) (f_5@@12 T@Field_27162_27163) ) (!  (=> (not (= f_5@@12 left_2)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@1) o_9@@20 f_5@@12) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@15) o_9@@20 f_5@@12)))
 :qid |stdinbpl.1671:29|
 :skolemid |222|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@15) o_9@@20 f_5@@12))
))) (forall ((o_9@@21 T@Ref) (f_5@@13 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| Mask@1) o_9@@21 f_5@@13) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@15) o_9@@21 f_5@@13)))
 :qid |stdinbpl.1671:29|
 :skolemid |222|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@15) o_9@@21 f_5@@13))
))) (forall ((o_9@@22 T@Ref) (f_5@@14 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| Mask@1) o_9@@22 f_5@@14) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@15) o_9@@22 f_5@@14)))
 :qid |stdinbpl.1671:29|
 :skolemid |222|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@15) o_9@@22 f_5@@14))
))) (and (=> (= (ControlFlow 0 60) (- 0 64)) (forall ((n$5_2 T@Ref) (n$5_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_2 n$5_2_1)) (select nodes n$5_2)) (select nodes n$5_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_2 n$5_2_1)))
 :qid |stdinbpl.1683:17|
 :skolemid |223|
 :pattern ( (neverTriggered8 n$5_2) (neverTriggered8 n$5_2_1))
))) (=> (forall ((n$5_2@@0 T@Ref) (n$5_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_2@@0 n$5_2_1@@0)) (select nodes n$5_2@@0)) (select nodes n$5_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_2@@0 n$5_2_1@@0)))
 :qid |stdinbpl.1683:17|
 :skolemid |223|
 :pattern ( (neverTriggered8 n$5_2@@0) (neverTriggered8 n$5_2_1@@0))
)) (and (=> (= (ControlFlow 0 60) (- 0 63)) (forall ((n$5_2@@1 T@Ref) ) (!  (=> (select nodes n$5_2@@1) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@15) n$5_2@@1 right_1) FullPerm))
 :qid |stdinbpl.1690:17|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$5_2@@1 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@16) n$5_2@@1 right_1))
 :pattern ( (select nodes n$5_2@@1))
))) (=> (forall ((n$5_2@@2 T@Ref) ) (!  (=> (select nodes n$5_2@@2) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@15) n$5_2@@2 right_1) FullPerm))
 :qid |stdinbpl.1690:17|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$5_2@@2 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@16) n$5_2@@2 right_1))
 :pattern ( (select nodes n$5_2@@2))
)) (=> (forall ((n$5_2@@3 T@Ref) ) (!  (=> (and (select nodes n$5_2@@3) (< NoPerm FullPerm)) (and (qpRange8 n$5_2@@3) (= (invRecv8 n$5_2@@3) n$5_2@@3)))
 :qid |stdinbpl.1696:22|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@2) n$5_2@@3 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@16) n$5_2@@3 right_1))
 :pattern ( (select nodes n$5_2@@3))
)) (=> (and (forall ((o_9@@23 T@Ref) ) (!  (=> (and (select nodes (invRecv8 o_9@@23)) (and (< NoPerm FullPerm) (qpRange8 o_9@@23))) (= (invRecv8 o_9@@23) o_9@@23))
 :qid |stdinbpl.1700:22|
 :skolemid |226|
 :pattern ( (invRecv8 o_9@@23))
)) (forall ((o_9@@24 T@Ref) ) (!  (and (=> (and (select nodes (invRecv8 o_9@@24)) (and (< NoPerm FullPerm) (qpRange8 o_9@@24))) (and (= (invRecv8 o_9@@24) o_9@@24) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@16) o_9@@24 right_1) (- (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@15) o_9@@24 right_1) FullPerm)))) (=> (not (and (select nodes (invRecv8 o_9@@24)) (and (< NoPerm FullPerm) (qpRange8 o_9@@24)))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@16) o_9@@24 right_1) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@15) o_9@@24 right_1))))
 :qid |stdinbpl.1706:22|
 :skolemid |227|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@16) o_9@@24 right_1))
))) (=> (and (and (and (forall ((o_9@@25 T@Ref) (f_5@@15 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@15) o_9@@25 f_5@@15) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@16) o_9@@25 f_5@@15)))
 :qid |stdinbpl.1712:29|
 :skolemid |228|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@16) o_9@@25 f_5@@15))
)) (forall ((o_9@@26 T@Ref) (f_5@@16 T@Field_27162_27163) ) (!  (=> (not (= f_5@@16 right_1)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@15) o_9@@26 f_5@@16) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@16) o_9@@26 f_5@@16)))
 :qid |stdinbpl.1712:29|
 :skolemid |228|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@16) o_9@@26 f_5@@16))
))) (forall ((o_9@@27 T@Ref) (f_5@@17 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@15) o_9@@27 f_5@@17) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@16) o_9@@27 f_5@@17)))
 :qid |stdinbpl.1712:29|
 :skolemid |228|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@16) o_9@@27 f_5@@17))
))) (forall ((o_9@@28 T@Ref) (f_5@@18 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@15) o_9@@28 f_5@@18) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@16) o_9@@28 f_5@@18)))
 :qid |stdinbpl.1712:29|
 :skolemid |228|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@16) o_9@@28 f_5@@18))
))) (and (=> (= (ControlFlow 0 60) (- 0 62)) (forall ((n$6_2 T@Ref) (n$6_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$6_2 n$6_2_1)) (select nodes n$6_2)) (select nodes n$6_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$6_2 n$6_2_1)))
 :qid |stdinbpl.1724:17|
 :skolemid |229|
 :pattern ( (neverTriggered9 n$6_2) (neverTriggered9 n$6_2_1))
))) (=> (forall ((n$6_2@@0 T@Ref) (n$6_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$6_2@@0 n$6_2_1@@0)) (select nodes n$6_2@@0)) (select nodes n$6_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$6_2@@0 n$6_2_1@@0)))
 :qid |stdinbpl.1724:17|
 :skolemid |229|
 :pattern ( (neverTriggered9 n$6_2@@0) (neverTriggered9 n$6_2_1@@0))
)) (and (=> (= (ControlFlow 0 60) (- 0 61)) (forall ((n$6_2@@1 T@Ref) ) (!  (=> (select nodes n$6_2@@1) (>= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@16) n$6_2@@1 is_marked) FullPerm))
 :qid |stdinbpl.1731:17|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) n$6_2@@1 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@17) n$6_2@@1 is_marked))
 :pattern ( (select nodes n$6_2@@1))
))) (=> (forall ((n$6_2@@2 T@Ref) ) (!  (=> (select nodes n$6_2@@2) (>= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@16) n$6_2@@2 is_marked) FullPerm))
 :qid |stdinbpl.1731:17|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) n$6_2@@2 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@17) n$6_2@@2 is_marked))
 :pattern ( (select nodes n$6_2@@2))
)) (=> (forall ((n$6_2@@3 T@Ref) ) (!  (=> (and (select nodes n$6_2@@3) (< NoPerm FullPerm)) (and (qpRange9 n$6_2@@3) (= (invRecv9 n$6_2@@3) n$6_2@@3)))
 :qid |stdinbpl.1737:22|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@2) n$6_2@@3 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@17) n$6_2@@3 is_marked))
 :pattern ( (select nodes n$6_2@@3))
)) (=> (and (forall ((o_9@@29 T@Ref) ) (!  (=> (and (select nodes (invRecv9 o_9@@29)) (and (< NoPerm FullPerm) (qpRange9 o_9@@29))) (= (invRecv9 o_9@@29) o_9@@29))
 :qid |stdinbpl.1741:22|
 :skolemid |232|
 :pattern ( (invRecv9 o_9@@29))
)) (forall ((o_9@@30 T@Ref) ) (!  (and (=> (and (select nodes (invRecv9 o_9@@30)) (and (< NoPerm FullPerm) (qpRange9 o_9@@30))) (and (= (invRecv9 o_9@@30) o_9@@30) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@17) o_9@@30 is_marked) (- (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@16) o_9@@30 is_marked) FullPerm)))) (=> (not (and (select nodes (invRecv9 o_9@@30)) (and (< NoPerm FullPerm) (qpRange9 o_9@@30)))) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@17) o_9@@30 is_marked) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@16) o_9@@30 is_marked))))
 :qid |stdinbpl.1747:22|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@17) o_9@@30 is_marked))
))) (=> (and (and (and (forall ((o_9@@31 T@Ref) (f_5@@19 T@Field_27149_53) ) (!  (=> (not (= f_5@@19 is_marked)) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@16) o_9@@31 f_5@@19) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@17) o_9@@31 f_5@@19)))
 :qid |stdinbpl.1753:29|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@17) o_9@@31 f_5@@19))
)) (forall ((o_9@@32 T@Ref) (f_5@@20 T@Field_27162_27163) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@16) o_9@@32 f_5@@20) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@17) o_9@@32 f_5@@20)))
 :qid |stdinbpl.1753:29|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@17) o_9@@32 f_5@@20))
))) (forall ((o_9@@33 T@Ref) (f_5@@21 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@16) o_9@@33 f_5@@21) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@17) o_9@@33 f_5@@21)))
 :qid |stdinbpl.1753:29|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@17) o_9@@33 f_5@@21))
))) (forall ((o_9@@34 T@Ref) (f_5@@22 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@16) o_9@@34 f_5@@22) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@17) o_9@@34 f_5@@22)))
 :qid |stdinbpl.1753:29|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@17) o_9@@34 f_5@@22))
))) (and (and (=> (= (ControlFlow 0 60) 59) anon171_Else_correct) (=> (= (ControlFlow 0 60) 19) anon172_Then_correct)) (=> (= (ControlFlow 0 60) 21) anon172_Else_correct))))))))))))))))))))))))))))))
(let ((anon169_Else_correct  (=> (forall ((n$3_5_1_1 T@Ref) ) (!  (=> (and (select nodes n$3_5_1_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$3_5_1_1 right_1) null))) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$3_5_1_1 right_1)))
 :qid |stdinbpl.1478:26|
 :skolemid |191|
 :pattern ( (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$3_5_1_1 right_1)))
 :pattern ( (select nodes n$3_5_1_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$3_5_1_1 right_1))
)) (and (=> (= (ControlFlow 0 74) (- 0 78)) (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@1) arg_node_1@0 is_marked))) (=> (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@1) arg_node_1@0 is_marked)) (=> (IdenticalOnKnownLocations Heap@1 ExhaleHeap@1 QPMask@11) (=> (and (select nodes arg_node_1@0) (not (select nodes null))) (and (=> (= (ControlFlow 0 74) (- 0 77)) (forall ((n$4_4_1 T@Ref) (n$4_4_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_4_1 n$4_4_2)) (select nodes n$4_4_1)) (select nodes n$4_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$4_4_1 n$4_4_2)))
 :qid |stdinbpl.1494:21|
 :skolemid |192|
))) (=> (forall ((n$4_4_1@@0 T@Ref) (n$4_4_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_4_1@@0 n$4_4_2@@0)) (select nodes n$4_4_1@@0)) (select nodes n$4_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$4_4_1@@0 n$4_4_2@@0)))
 :qid |stdinbpl.1494:21|
 :skolemid |192|
)) (=> (and (and (forall ((n$4_4_1@@1 T@Ref) ) (!  (=> (and (select nodes n$4_4_1@@1) (< NoPerm FullPerm)) (and (qpRange19 n$4_4_1@@1) (= (invRecv19 n$4_4_1@@1) n$4_4_1@@1)))
 :qid |stdinbpl.1500:28|
 :skolemid |193|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n$4_4_1@@1 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@12) n$4_4_1@@1 left_2))
 :pattern ( (select nodes n$4_4_1@@1))
)) (forall ((o_9@@35 T@Ref) ) (!  (=> (and (and (select nodes (invRecv19 o_9@@35)) (< NoPerm FullPerm)) (qpRange19 o_9@@35)) (= (invRecv19 o_9@@35) o_9@@35))
 :qid |stdinbpl.1504:28|
 :skolemid |194|
 :pattern ( (invRecv19 o_9@@35))
))) (and (forall ((n$4_4_1@@2 T@Ref) ) (!  (=> (select nodes n$4_4_1@@2) (not (= n$4_4_1@@2 null)))
 :qid |stdinbpl.1510:28|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n$4_4_1@@2 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@12) n$4_4_1@@2 left_2))
 :pattern ( (select nodes n$4_4_1@@2))
)) (forall ((o_9@@36 T@Ref) ) (!  (and (=> (and (and (select nodes (invRecv19 o_9@@36)) (< NoPerm FullPerm)) (qpRange19 o_9@@36)) (and (=> (< NoPerm FullPerm) (= (invRecv19 o_9@@36) o_9@@36)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@12) o_9@@36 left_2) (+ (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@11) o_9@@36 left_2) FullPerm)))) (=> (not (and (and (select nodes (invRecv19 o_9@@36)) (< NoPerm FullPerm)) (qpRange19 o_9@@36))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@12) o_9@@36 left_2) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@11) o_9@@36 left_2))))
 :qid |stdinbpl.1516:28|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@12) o_9@@36 left_2))
)))) (=> (and (and (and (and (forall ((o_9@@37 T@Ref) (f_5@@23 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@11) o_9@@37 f_5@@23) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@12) o_9@@37 f_5@@23)))
 :qid |stdinbpl.1520:35|
 :skolemid |197|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@11) o_9@@37 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@12) o_9@@37 f_5@@23))
)) (forall ((o_9@@38 T@Ref) (f_5@@24 T@Field_27162_27163) ) (!  (=> (not (= f_5@@24 left_2)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@11) o_9@@38 f_5@@24) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@12) o_9@@38 f_5@@24)))
 :qid |stdinbpl.1520:35|
 :skolemid |197|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@11) o_9@@38 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@12) o_9@@38 f_5@@24))
))) (forall ((o_9@@39 T@Ref) (f_5@@25 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@11) o_9@@39 f_5@@25) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@12) o_9@@39 f_5@@25)))
 :qid |stdinbpl.1520:35|
 :skolemid |197|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@11) o_9@@39 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@12) o_9@@39 f_5@@25))
))) (forall ((o_9@@40 T@Ref) (f_5@@26 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@11) o_9@@40 f_5@@26) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@12) o_9@@40 f_5@@26)))
 :qid |stdinbpl.1520:35|
 :skolemid |197|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@11) o_9@@40 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@12) o_9@@40 f_5@@26))
))) (state ExhaleHeap@1 QPMask@12)) (and (=> (= (ControlFlow 0 74) (- 0 76)) (forall ((n$5_4_1 T@Ref) (n$5_4_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_4_1 n$5_4_2)) (select nodes n$5_4_1)) (select nodes n$5_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_4_1 n$5_4_2)))
 :qid |stdinbpl.1528:21|
 :skolemid |198|
))) (=> (forall ((n$5_4_1@@0 T@Ref) (n$5_4_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_4_1@@0 n$5_4_2@@0)) (select nodes n$5_4_1@@0)) (select nodes n$5_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_4_1@@0 n$5_4_2@@0)))
 :qid |stdinbpl.1528:21|
 :skolemid |198|
)) (=> (and (and (forall ((n$5_4_1@@1 T@Ref) ) (!  (=> (and (select nodes n$5_4_1@@1) (< NoPerm FullPerm)) (and (qpRange20 n$5_4_1@@1) (= (invRecv20 n$5_4_1@@1) n$5_4_1@@1)))
 :qid |stdinbpl.1534:28|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n$5_4_1@@1 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@13) n$5_4_1@@1 right_1))
 :pattern ( (select nodes n$5_4_1@@1))
)) (forall ((o_9@@41 T@Ref) ) (!  (=> (and (and (select nodes (invRecv20 o_9@@41)) (< NoPerm FullPerm)) (qpRange20 o_9@@41)) (= (invRecv20 o_9@@41) o_9@@41))
 :qid |stdinbpl.1538:28|
 :skolemid |200|
 :pattern ( (invRecv20 o_9@@41))
))) (and (forall ((n$5_4_1@@2 T@Ref) ) (!  (=> (select nodes n$5_4_1@@2) (not (= n$5_4_1@@2 null)))
 :qid |stdinbpl.1544:28|
 :skolemid |201|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n$5_4_1@@2 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@13) n$5_4_1@@2 right_1))
 :pattern ( (select nodes n$5_4_1@@2))
)) (forall ((o_9@@42 T@Ref) ) (!  (and (=> (and (and (select nodes (invRecv20 o_9@@42)) (< NoPerm FullPerm)) (qpRange20 o_9@@42)) (and (=> (< NoPerm FullPerm) (= (invRecv20 o_9@@42) o_9@@42)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@13) o_9@@42 right_1) (+ (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@12) o_9@@42 right_1) FullPerm)))) (=> (not (and (and (select nodes (invRecv20 o_9@@42)) (< NoPerm FullPerm)) (qpRange20 o_9@@42))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@13) o_9@@42 right_1) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@12) o_9@@42 right_1))))
 :qid |stdinbpl.1550:28|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@13) o_9@@42 right_1))
)))) (=> (and (and (and (and (forall ((o_9@@43 T@Ref) (f_5@@27 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@12) o_9@@43 f_5@@27) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@13) o_9@@43 f_5@@27)))
 :qid |stdinbpl.1554:35|
 :skolemid |203|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@12) o_9@@43 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@13) o_9@@43 f_5@@27))
)) (forall ((o_9@@44 T@Ref) (f_5@@28 T@Field_27162_27163) ) (!  (=> (not (= f_5@@28 right_1)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@12) o_9@@44 f_5@@28) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@13) o_9@@44 f_5@@28)))
 :qid |stdinbpl.1554:35|
 :skolemid |203|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@12) o_9@@44 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@13) o_9@@44 f_5@@28))
))) (forall ((o_9@@45 T@Ref) (f_5@@29 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@12) o_9@@45 f_5@@29) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@13) o_9@@45 f_5@@29)))
 :qid |stdinbpl.1554:35|
 :skolemid |203|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@12) o_9@@45 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@13) o_9@@45 f_5@@29))
))) (forall ((o_9@@46 T@Ref) (f_5@@30 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@12) o_9@@46 f_5@@30) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@13) o_9@@46 f_5@@30)))
 :qid |stdinbpl.1554:35|
 :skolemid |203|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@12) o_9@@46 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@13) o_9@@46 f_5@@30))
))) (state ExhaleHeap@1 QPMask@13)) (and (=> (= (ControlFlow 0 74) (- 0 75)) (forall ((n$6_4_1 T@Ref) (n$6_4_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$6_4_1 n$6_4_2)) (select nodes n$6_4_1)) (select nodes n$6_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$6_4_1 n$6_4_2)))
 :qid |stdinbpl.1562:21|
 :skolemid |204|
))) (=> (forall ((n$6_4_1@@0 T@Ref) (n$6_4_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$6_4_1@@0 n$6_4_2@@0)) (select nodes n$6_4_1@@0)) (select nodes n$6_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$6_4_1@@0 n$6_4_2@@0)))
 :qid |stdinbpl.1562:21|
 :skolemid |204|
)) (=> (and (and (forall ((n$6_4_1@@1 T@Ref) ) (!  (=> (and (select nodes n$6_4_1@@1) (< NoPerm FullPerm)) (and (qpRange21 n$6_4_1@@1) (= (invRecv21 n$6_4_1@@1) n$6_4_1@@1)))
 :qid |stdinbpl.1568:28|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@1) n$6_4_1@@1 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@14) n$6_4_1@@1 is_marked))
 :pattern ( (select nodes n$6_4_1@@1))
)) (forall ((o_9@@47 T@Ref) ) (!  (=> (and (and (select nodes (invRecv21 o_9@@47)) (< NoPerm FullPerm)) (qpRange21 o_9@@47)) (= (invRecv21 o_9@@47) o_9@@47))
 :qid |stdinbpl.1572:28|
 :skolemid |206|
 :pattern ( (invRecv21 o_9@@47))
))) (and (forall ((n$6_4_1@@2 T@Ref) ) (!  (=> (select nodes n$6_4_1@@2) (not (= n$6_4_1@@2 null)))
 :qid |stdinbpl.1578:28|
 :skolemid |207|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@1) n$6_4_1@@2 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@14) n$6_4_1@@2 is_marked))
 :pattern ( (select nodes n$6_4_1@@2))
)) (forall ((o_9@@48 T@Ref) ) (!  (and (=> (and (and (select nodes (invRecv21 o_9@@48)) (< NoPerm FullPerm)) (qpRange21 o_9@@48)) (and (=> (< NoPerm FullPerm) (= (invRecv21 o_9@@48) o_9@@48)) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@14) o_9@@48 is_marked) (+ (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@13) o_9@@48 is_marked) FullPerm)))) (=> (not (and (and (select nodes (invRecv21 o_9@@48)) (< NoPerm FullPerm)) (qpRange21 o_9@@48))) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@14) o_9@@48 is_marked) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@13) o_9@@48 is_marked))))
 :qid |stdinbpl.1584:28|
 :skolemid |208|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@14) o_9@@48 is_marked))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@49 T@Ref) (f_5@@31 T@Field_27149_53) ) (!  (=> (not (= f_5@@31 is_marked)) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@13) o_9@@49 f_5@@31) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@14) o_9@@49 f_5@@31)))
 :qid |stdinbpl.1588:35|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@13) o_9@@49 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@14) o_9@@49 f_5@@31))
)) (forall ((o_9@@50 T@Ref) (f_5@@32 T@Field_27162_27163) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@13) o_9@@50 f_5@@32) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@14) o_9@@50 f_5@@32)))
 :qid |stdinbpl.1588:35|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@13) o_9@@50 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@14) o_9@@50 f_5@@32))
))) (forall ((o_9@@51 T@Ref) (f_5@@33 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@13) o_9@@51 f_5@@33) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@14) o_9@@51 f_5@@33)))
 :qid |stdinbpl.1588:35|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@13) o_9@@51 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@14) o_9@@51 f_5@@33))
))) (forall ((o_9@@52 T@Ref) (f_5@@34 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@13) o_9@@52 f_5@@34) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@14) o_9@@52 f_5@@34)))
 :qid |stdinbpl.1588:35|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@13) o_9@@52 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@14) o_9@@52 f_5@@34))
))) (and (state ExhaleHeap@1 QPMask@14) (forall ((n$7_5_1 T@Ref) ) (!  (=> (and (select nodes n$7_5_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n$7_5_1 left_2) null))) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n$7_5_1 left_2)))
 :qid |stdinbpl.1594:26|
 :skolemid |210|
 :pattern ( (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n$7_5_1 left_2)))
 :pattern ( (select nodes n$7_5_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n$7_5_1 left_2))
)))) (and (and (forall ((n$8_5 T@Ref) ) (!  (=> (and (select nodes n$8_5) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n$8_5 right_1) null))) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n$8_5 right_1)))
 :qid |stdinbpl.1598:26|
 :skolemid |211|
 :pattern ( (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n$8_5 right_1)))
 :pattern ( (select nodes n$8_5) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n$8_5 right_1))
)) (forall ((n_29 T@Ref) ) (!  (=> (select nodes n_29) (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@1) n_29 is_marked) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@1) n_29 is_marked)))
 :qid |stdinbpl.1602:26|
 :skolemid |212|
 :pattern ( (select nodes n_29) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@1) n_29 is_marked))
))) (and (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@1) arg_node_1@0 is_marked) (forall ((n_30 T@Ref) ) (!  (=> (select nodes n_30) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n_30 left_2) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n_30 left_2)))
 :qid |stdinbpl.1607:26|
 :skolemid |213|
 :pattern ( (select nodes n_30) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n_30 left_2))
))))) (and (and (and (forall ((n_31 T@Ref) ) (!  (=> (select nodes n_31) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n_31 right_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n_31 right_1)))
 :qid |stdinbpl.1611:26|
 :skolemid |214|
 :pattern ( (select nodes n_31) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n_31 right_1))
)) (forall ((n_32_2 T@Ref) ) (!  (=> (select nodes n_32_2) (=> (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@1) n_32_2 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@1) n_32_2 is_marked)) (or (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n_32_2 left_2) null) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n_32_2 left_2) is_marked))))
 :qid |stdinbpl.1615:26|
 :skolemid |215|
 :pattern ( (select nodes n_32_2) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@1) n_32_2 is_marked))
 :pattern ( (select nodes n_32_2) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n_32_2 left_2) is_marked))
))) (and (forall ((n_33 T@Ref) ) (!  (=> (select nodes n_33) (=> (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@1) n_33 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@1) n_33 is_marked)) (or (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n_33 right_1) null) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n_33 right_1) is_marked))))
 :qid |stdinbpl.1619:26|
 :skolemid |216|
 :pattern ( (select nodes n_33) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@1) n_33 is_marked))
 :pattern ( (select nodes n_33) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@1) n_33 right_1) is_marked))
)) (state ExhaleHeap@1 QPMask@14))) (and (and (state ExhaleHeap@1 QPMask@14) (= Heap@2 ExhaleHeap@1)) (and (= Mask@1 QPMask@14) (= (ControlFlow 0 74) 60))))) anon91_correct)))))))))))))))))))
(let ((anon167_Else_correct  (=> (forall ((n$2_5_1_1 T@Ref) ) (!  (=> (and (select nodes n$2_5_1_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$2_5_1_1 left_2) null))) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$2_5_1_1 left_2)))
 :qid |stdinbpl.1467:26|
 :skolemid |190|
 :pattern ( (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$2_5_1_1 left_2)))
 :pattern ( (select nodes n$2_5_1_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$2_5_1_1 left_2))
)) (and (and (=> (= (ControlFlow 0 83) 74) anon169_Else_correct) (=> (= (ControlFlow 0 83) 80) anon170_Then_correct)) (=> (= (ControlFlow 0 83) 82) anon170_Else_correct)))))
(let ((anon166_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) node right_1) null)) (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) node right_1) is_marked))) (and (=> (= (ControlFlow 0 84) (- 0 93)) (HasDirectPerm_17236_17237 Mask@0 node right_1)) (=> (HasDirectPerm_17236_17237 Mask@0 node right_1) (=> (= arg_node_1@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) node right_1)) (and (=> (= (ControlFlow 0 84) (- 0 92)) (select nodes arg_node_1@0)) (=> (select nodes arg_node_1@0) (and (=> (= (ControlFlow 0 84) (- 0 91)) (not (select nodes null))) (=> (not (select nodes null)) (and (=> (= (ControlFlow 0 84) (- 0 90)) (forall ((n_28 T@Ref) (n_28_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_28 n_28_1)) (select nodes n_28)) (select nodes n_28_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_28 n_28_1)))
 :qid |stdinbpl.1344:23|
 :skolemid |172|
 :pattern ( (neverTriggered16 n_28) (neverTriggered16 n_28_1))
))) (=> (forall ((n_28@@0 T@Ref) (n_28_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_28@@0 n_28_1@@0)) (select nodes n_28@@0)) (select nodes n_28_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_28@@0 n_28_1@@0)))
 :qid |stdinbpl.1344:23|
 :skolemid |172|
 :pattern ( (neverTriggered16 n_28@@0) (neverTriggered16 n_28_1@@0))
)) (and (=> (= (ControlFlow 0 84) (- 0 89)) (forall ((n_28@@1 T@Ref) ) (!  (=> (select nodes n_28@@1) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@0) n_28@@1 left_2) FullPerm))
 :qid |stdinbpl.1351:23|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n_28@@1 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@9) n_28@@1 left_2))
 :pattern ( (select nodes n_28@@1))
))) (=> (forall ((n_28@@2 T@Ref) ) (!  (=> (select nodes n_28@@2) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@0) n_28@@2 left_2) FullPerm))
 :qid |stdinbpl.1351:23|
 :skolemid |173|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n_28@@2 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@9) n_28@@2 left_2))
 :pattern ( (select nodes n_28@@2))
)) (=> (forall ((n_28@@3 T@Ref) ) (!  (=> (and (select nodes n_28@@3) (< NoPerm FullPerm)) (and (qpRange16 n_28@@3) (= (invRecv16 n_28@@3) n_28@@3)))
 :qid |stdinbpl.1357:28|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n_28@@3 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@9) n_28@@3 left_2))
 :pattern ( (select nodes n_28@@3))
)) (=> (and (forall ((o_9@@53 T@Ref) ) (!  (=> (and (select nodes (invRecv16 o_9@@53)) (and (< NoPerm FullPerm) (qpRange16 o_9@@53))) (= (invRecv16 o_9@@53) o_9@@53))
 :qid |stdinbpl.1361:28|
 :skolemid |175|
 :pattern ( (invRecv16 o_9@@53))
)) (forall ((o_9@@54 T@Ref) ) (!  (and (=> (and (select nodes (invRecv16 o_9@@54)) (and (< NoPerm FullPerm) (qpRange16 o_9@@54))) (and (= (invRecv16 o_9@@54) o_9@@54) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@9) o_9@@54 left_2) (- (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@0) o_9@@54 left_2) FullPerm)))) (=> (not (and (select nodes (invRecv16 o_9@@54)) (and (< NoPerm FullPerm) (qpRange16 o_9@@54)))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@9) o_9@@54 left_2) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@0) o_9@@54 left_2))))
 :qid |stdinbpl.1367:28|
 :skolemid |176|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@9) o_9@@54 left_2))
))) (=> (and (and (and (forall ((o_9@@55 T@Ref) (f_5@@35 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| Mask@0) o_9@@55 f_5@@35) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@9) o_9@@55 f_5@@35)))
 :qid |stdinbpl.1373:35|
 :skolemid |177|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@9) o_9@@55 f_5@@35))
)) (forall ((o_9@@56 T@Ref) (f_5@@36 T@Field_27162_27163) ) (!  (=> (not (= f_5@@36 left_2)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| Mask@0) o_9@@56 f_5@@36) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@9) o_9@@56 f_5@@36)))
 :qid |stdinbpl.1373:35|
 :skolemid |177|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@9) o_9@@56 f_5@@36))
))) (forall ((o_9@@57 T@Ref) (f_5@@37 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| Mask@0) o_9@@57 f_5@@37) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@9) o_9@@57 f_5@@37)))
 :qid |stdinbpl.1373:35|
 :skolemid |177|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@9) o_9@@57 f_5@@37))
))) (forall ((o_9@@58 T@Ref) (f_5@@38 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| Mask@0) o_9@@58 f_5@@38) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@9) o_9@@58 f_5@@38)))
 :qid |stdinbpl.1373:35|
 :skolemid |177|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@9) o_9@@58 f_5@@38))
))) (and (=> (= (ControlFlow 0 84) (- 0 88)) (forall ((n$0_3 T@Ref) (n$0_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3 n$0_3_1)) (select nodes n$0_3)) (select nodes n$0_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_3 n$0_3_1)))
 :qid |stdinbpl.1385:23|
 :skolemid |178|
 :pattern ( (neverTriggered17 n$0_3) (neverTriggered17 n$0_3_1))
))) (=> (forall ((n$0_3@@0 T@Ref) (n$0_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3@@0 n$0_3_1@@0)) (select nodes n$0_3@@0)) (select nodes n$0_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_3@@0 n$0_3_1@@0)))
 :qid |stdinbpl.1385:23|
 :skolemid |178|
 :pattern ( (neverTriggered17 n$0_3@@0) (neverTriggered17 n$0_3_1@@0))
)) (and (=> (= (ControlFlow 0 84) (- 0 87)) (forall ((n$0_3@@1 T@Ref) ) (!  (=> (select nodes n$0_3@@1) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@9) n$0_3@@1 right_1) FullPerm))
 :qid |stdinbpl.1392:23|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$0_3@@1 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@10) n$0_3@@1 right_1))
 :pattern ( (select nodes n$0_3@@1))
))) (=> (forall ((n$0_3@@2 T@Ref) ) (!  (=> (select nodes n$0_3@@2) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@9) n$0_3@@2 right_1) FullPerm))
 :qid |stdinbpl.1392:23|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$0_3@@2 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@10) n$0_3@@2 right_1))
 :pattern ( (select nodes n$0_3@@2))
)) (=> (forall ((n$0_3@@3 T@Ref) ) (!  (=> (and (select nodes n$0_3@@3) (< NoPerm FullPerm)) (and (qpRange17 n$0_3@@3) (= (invRecv17 n$0_3@@3) n$0_3@@3)))
 :qid |stdinbpl.1398:28|
 :skolemid |180|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) n$0_3@@3 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@10) n$0_3@@3 right_1))
 :pattern ( (select nodes n$0_3@@3))
)) (=> (and (forall ((o_9@@59 T@Ref) ) (!  (=> (and (select nodes (invRecv17 o_9@@59)) (and (< NoPerm FullPerm) (qpRange17 o_9@@59))) (= (invRecv17 o_9@@59) o_9@@59))
 :qid |stdinbpl.1402:28|
 :skolemid |181|
 :pattern ( (invRecv17 o_9@@59))
)) (forall ((o_9@@60 T@Ref) ) (!  (and (=> (and (select nodes (invRecv17 o_9@@60)) (and (< NoPerm FullPerm) (qpRange17 o_9@@60))) (and (= (invRecv17 o_9@@60) o_9@@60) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@10) o_9@@60 right_1) (- (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@9) o_9@@60 right_1) FullPerm)))) (=> (not (and (select nodes (invRecv17 o_9@@60)) (and (< NoPerm FullPerm) (qpRange17 o_9@@60)))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@10) o_9@@60 right_1) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@9) o_9@@60 right_1))))
 :qid |stdinbpl.1408:28|
 :skolemid |182|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@10) o_9@@60 right_1))
))) (=> (and (and (and (forall ((o_9@@61 T@Ref) (f_5@@39 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@9) o_9@@61 f_5@@39) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@10) o_9@@61 f_5@@39)))
 :qid |stdinbpl.1414:35|
 :skolemid |183|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@10) o_9@@61 f_5@@39))
)) (forall ((o_9@@62 T@Ref) (f_5@@40 T@Field_27162_27163) ) (!  (=> (not (= f_5@@40 right_1)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@9) o_9@@62 f_5@@40) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@10) o_9@@62 f_5@@40)))
 :qid |stdinbpl.1414:35|
 :skolemid |183|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@10) o_9@@62 f_5@@40))
))) (forall ((o_9@@63 T@Ref) (f_5@@41 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@9) o_9@@63 f_5@@41) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@10) o_9@@63 f_5@@41)))
 :qid |stdinbpl.1414:35|
 :skolemid |183|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@10) o_9@@63 f_5@@41))
))) (forall ((o_9@@64 T@Ref) (f_5@@42 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@9) o_9@@64 f_5@@42) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@10) o_9@@64 f_5@@42)))
 :qid |stdinbpl.1414:35|
 :skolemid |183|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@10) o_9@@64 f_5@@42))
))) (and (=> (= (ControlFlow 0 84) (- 0 86)) (forall ((n$1_3 T@Ref) (n$1_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_3 n$1_3_1)) (select nodes n$1_3)) (select nodes n$1_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_3 n$1_3_1)))
 :qid |stdinbpl.1426:23|
 :skolemid |184|
 :pattern ( (neverTriggered18 n$1_3) (neverTriggered18 n$1_3_1))
))) (=> (forall ((n$1_3@@0 T@Ref) (n$1_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_3@@0 n$1_3_1@@0)) (select nodes n$1_3@@0)) (select nodes n$1_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_3@@0 n$1_3_1@@0)))
 :qid |stdinbpl.1426:23|
 :skolemid |184|
 :pattern ( (neverTriggered18 n$1_3@@0) (neverTriggered18 n$1_3_1@@0))
)) (and (=> (= (ControlFlow 0 84) (- 0 85)) (forall ((n$1_3@@1 T@Ref) ) (!  (=> (select nodes n$1_3@@1) (>= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@10) n$1_3@@1 is_marked) FullPerm))
 :qid |stdinbpl.1433:23|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@1) n$1_3@@1 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@11) n$1_3@@1 is_marked))
 :pattern ( (select nodes n$1_3@@1))
))) (=> (forall ((n$1_3@@2 T@Ref) ) (!  (=> (select nodes n$1_3@@2) (>= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@10) n$1_3@@2 is_marked) FullPerm))
 :qid |stdinbpl.1433:23|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@1) n$1_3@@2 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@11) n$1_3@@2 is_marked))
 :pattern ( (select nodes n$1_3@@2))
)) (=> (forall ((n$1_3@@3 T@Ref) ) (!  (=> (and (select nodes n$1_3@@3) (< NoPerm FullPerm)) (and (qpRange18 n$1_3@@3) (= (invRecv18 n$1_3@@3) n$1_3@@3)))
 :qid |stdinbpl.1439:28|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@1) n$1_3@@3 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@11) n$1_3@@3 is_marked))
 :pattern ( (select nodes n$1_3@@3))
)) (=> (and (forall ((o_9@@65 T@Ref) ) (!  (=> (and (select nodes (invRecv18 o_9@@65)) (and (< NoPerm FullPerm) (qpRange18 o_9@@65))) (= (invRecv18 o_9@@65) o_9@@65))
 :qid |stdinbpl.1443:28|
 :skolemid |187|
 :pattern ( (invRecv18 o_9@@65))
)) (forall ((o_9@@66 T@Ref) ) (!  (and (=> (and (select nodes (invRecv18 o_9@@66)) (and (< NoPerm FullPerm) (qpRange18 o_9@@66))) (and (= (invRecv18 o_9@@66) o_9@@66) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@11) o_9@@66 is_marked) (- (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@10) o_9@@66 is_marked) FullPerm)))) (=> (not (and (select nodes (invRecv18 o_9@@66)) (and (< NoPerm FullPerm) (qpRange18 o_9@@66)))) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@11) o_9@@66 is_marked) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@10) o_9@@66 is_marked))))
 :qid |stdinbpl.1449:28|
 :skolemid |188|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@11) o_9@@66 is_marked))
))) (=> (and (and (and (forall ((o_9@@67 T@Ref) (f_5@@43 T@Field_27149_53) ) (!  (=> (not (= f_5@@43 is_marked)) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@10) o_9@@67 f_5@@43) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@11) o_9@@67 f_5@@43)))
 :qid |stdinbpl.1455:35|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@11) o_9@@67 f_5@@43))
)) (forall ((o_9@@68 T@Ref) (f_5@@44 T@Field_27162_27163) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@10) o_9@@68 f_5@@44) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@11) o_9@@68 f_5@@44)))
 :qid |stdinbpl.1455:35|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@11) o_9@@68 f_5@@44))
))) (forall ((o_9@@69 T@Ref) (f_5@@45 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@10) o_9@@69 f_5@@45) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@11) o_9@@69 f_5@@45)))
 :qid |stdinbpl.1455:35|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@11) o_9@@69 f_5@@45))
))) (forall ((o_9@@70 T@Ref) (f_5@@46 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@10) o_9@@70 f_5@@46) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@11) o_9@@70 f_5@@46)))
 :qid |stdinbpl.1455:35|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@11) o_9@@70 f_5@@46))
))) (and (and (=> (= (ControlFlow 0 84) 83) anon167_Else_correct) (=> (= (ControlFlow 0 84) 71) anon168_Then_correct)) (=> (= (ControlFlow 0 84) 73) anon168_Else_correct)))))))))))))))))))))))))))))))))
(let ((anon166_Else_correct  (=> (and (and (not (and (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) node right_1) null)) (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) node right_1) is_marked)))) (= Heap@2 Heap@1)) (and (= Mask@1 Mask@0) (= (ControlFlow 0 69) 60))) anon91_correct)))
(let ((anon165_Else_correct  (=> (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) node right_1) null) (and (=> (= (ControlFlow 0 97) 84) anon166_Then_correct) (=> (= (ControlFlow 0 97) 69) anon166_Else_correct)))))
(let ((anon165_Then_correct  (=> (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) node right_1) null)) (and (=> (= (ControlFlow 0 94) (- 0 96)) (HasDirectPerm_17236_17237 Mask@0 node right_1)) (=> (HasDirectPerm_17236_17237 Mask@0 node right_1) (and (=> (= (ControlFlow 0 94) (- 0 95)) (HasDirectPerm_17242_4009 Mask@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) node right_1) is_marked)) (=> (HasDirectPerm_17242_4009 Mask@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@1) node right_1) is_marked) (and (=> (= (ControlFlow 0 94) 84) anon166_Then_correct) (=> (= (ControlFlow 0 94) 69) anon166_Else_correct)))))))))
(let ((anon79_correct  (=> (state Heap@1 Mask@0) (and (=> (= (ControlFlow 0 98) (- 0 99)) (HasDirectPerm_17236_17237 Mask@0 node right_1)) (=> (HasDirectPerm_17236_17237 Mask@0 node right_1) (and (=> (= (ControlFlow 0 98) 94) anon165_Then_correct) (=> (= (ControlFlow 0 98) 97) anon165_Else_correct)))))))
(let ((anon163_Else_correct  (=> (forall ((n$3_3_1_1 T@Ref) ) (!  (=> (and (select nodes n$3_3_1_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$3_3_1_1 right_1) null))) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$3_3_1_1 right_1)))
 :qid |stdinbpl.1158:26|
 :skolemid |146|
 :pattern ( (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$3_3_1_1 right_1)))
 :pattern ( (select nodes n$3_3_1_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$3_3_1_1 right_1))
)) (and (=> (= (ControlFlow 0 105) (- 0 109)) (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@0) arg_node@0 is_marked))) (=> (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@0) arg_node@0 is_marked)) (=> (IdenticalOnKnownLocations Heap@0 ExhaleHeap@0 QPMask@5) (=> (and (select nodes arg_node@0) (not (select nodes null))) (and (=> (= (ControlFlow 0 105) (- 0 108)) (forall ((n$4_3_2 T@Ref) (n$4_3_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_3_2 n$4_3_3)) (select nodes n$4_3_2)) (select nodes n$4_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$4_3_2 n$4_3_3)))
 :qid |stdinbpl.1174:21|
 :skolemid |147|
))) (=> (forall ((n$4_3_2@@0 T@Ref) (n$4_3_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$4_3_2@@0 n$4_3_3@@0)) (select nodes n$4_3_2@@0)) (select nodes n$4_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$4_3_2@@0 n$4_3_3@@0)))
 :qid |stdinbpl.1174:21|
 :skolemid |147|
)) (=> (and (and (forall ((n$4_3_2@@1 T@Ref) ) (!  (=> (and (select nodes n$4_3_2@@1) (< NoPerm FullPerm)) (and (qpRange13 n$4_3_2@@1) (= (invRecv13 n$4_3_2@@1) n$4_3_2@@1)))
 :qid |stdinbpl.1180:28|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$4_3_2@@1 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@6) n$4_3_2@@1 left_2))
 :pattern ( (select nodes n$4_3_2@@1))
)) (forall ((o_9@@71 T@Ref) ) (!  (=> (and (and (select nodes (invRecv13 o_9@@71)) (< NoPerm FullPerm)) (qpRange13 o_9@@71)) (= (invRecv13 o_9@@71) o_9@@71))
 :qid |stdinbpl.1184:28|
 :skolemid |149|
 :pattern ( (invRecv13 o_9@@71))
))) (and (forall ((n$4_3_2@@2 T@Ref) ) (!  (=> (select nodes n$4_3_2@@2) (not (= n$4_3_2@@2 null)))
 :qid |stdinbpl.1190:28|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$4_3_2@@2 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@6) n$4_3_2@@2 left_2))
 :pattern ( (select nodes n$4_3_2@@2))
)) (forall ((o_9@@72 T@Ref) ) (!  (and (=> (and (and (select nodes (invRecv13 o_9@@72)) (< NoPerm FullPerm)) (qpRange13 o_9@@72)) (and (=> (< NoPerm FullPerm) (= (invRecv13 o_9@@72) o_9@@72)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@6) o_9@@72 left_2) (+ (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@5) o_9@@72 left_2) FullPerm)))) (=> (not (and (and (select nodes (invRecv13 o_9@@72)) (< NoPerm FullPerm)) (qpRange13 o_9@@72))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@6) o_9@@72 left_2) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@5) o_9@@72 left_2))))
 :qid |stdinbpl.1196:28|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@6) o_9@@72 left_2))
)))) (=> (and (and (and (and (forall ((o_9@@73 T@Ref) (f_5@@47 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) o_9@@73 f_5@@47) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@6) o_9@@73 f_5@@47)))
 :qid |stdinbpl.1200:35|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) o_9@@73 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@6) o_9@@73 f_5@@47))
)) (forall ((o_9@@74 T@Ref) (f_5@@48 T@Field_27162_27163) ) (!  (=> (not (= f_5@@48 left_2)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@5) o_9@@74 f_5@@48) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@6) o_9@@74 f_5@@48)))
 :qid |stdinbpl.1200:35|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@5) o_9@@74 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@6) o_9@@74 f_5@@48))
))) (forall ((o_9@@75 T@Ref) (f_5@@49 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@5) o_9@@75 f_5@@49) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@6) o_9@@75 f_5@@49)))
 :qid |stdinbpl.1200:35|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@5) o_9@@75 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@6) o_9@@75 f_5@@49))
))) (forall ((o_9@@76 T@Ref) (f_5@@50 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@5) o_9@@76 f_5@@50) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@6) o_9@@76 f_5@@50)))
 :qid |stdinbpl.1200:35|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@5) o_9@@76 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@6) o_9@@76 f_5@@50))
))) (state ExhaleHeap@0 QPMask@6)) (and (=> (= (ControlFlow 0 105) (- 0 107)) (forall ((n$5_3_2 T@Ref) (n$5_3_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_3_2 n$5_3_3)) (select nodes n$5_3_2)) (select nodes n$5_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_3_2 n$5_3_3)))
 :qid |stdinbpl.1208:21|
 :skolemid |153|
))) (=> (forall ((n$5_3_2@@0 T@Ref) (n$5_3_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_3_2@@0 n$5_3_3@@0)) (select nodes n$5_3_2@@0)) (select nodes n$5_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_3_2@@0 n$5_3_3@@0)))
 :qid |stdinbpl.1208:21|
 :skolemid |153|
)) (=> (and (and (forall ((n$5_3_2@@1 T@Ref) ) (!  (=> (and (select nodes n$5_3_2@@1) (< NoPerm FullPerm)) (and (qpRange14 n$5_3_2@@1) (= (invRecv14 n$5_3_2@@1) n$5_3_2@@1)))
 :qid |stdinbpl.1214:28|
 :skolemid |154|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$5_3_2@@1 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@7) n$5_3_2@@1 right_1))
 :pattern ( (select nodes n$5_3_2@@1))
)) (forall ((o_9@@77 T@Ref) ) (!  (=> (and (and (select nodes (invRecv14 o_9@@77)) (< NoPerm FullPerm)) (qpRange14 o_9@@77)) (= (invRecv14 o_9@@77) o_9@@77))
 :qid |stdinbpl.1218:28|
 :skolemid |155|
 :pattern ( (invRecv14 o_9@@77))
))) (and (forall ((n$5_3_2@@2 T@Ref) ) (!  (=> (select nodes n$5_3_2@@2) (not (= n$5_3_2@@2 null)))
 :qid |stdinbpl.1224:28|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$5_3_2@@2 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@7) n$5_3_2@@2 right_1))
 :pattern ( (select nodes n$5_3_2@@2))
)) (forall ((o_9@@78 T@Ref) ) (!  (and (=> (and (and (select nodes (invRecv14 o_9@@78)) (< NoPerm FullPerm)) (qpRange14 o_9@@78)) (and (=> (< NoPerm FullPerm) (= (invRecv14 o_9@@78) o_9@@78)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@7) o_9@@78 right_1) (+ (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@6) o_9@@78 right_1) FullPerm)))) (=> (not (and (and (select nodes (invRecv14 o_9@@78)) (< NoPerm FullPerm)) (qpRange14 o_9@@78))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@7) o_9@@78 right_1) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@6) o_9@@78 right_1))))
 :qid |stdinbpl.1230:28|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@7) o_9@@78 right_1))
)))) (=> (and (and (and (and (forall ((o_9@@79 T@Ref) (f_5@@51 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@6) o_9@@79 f_5@@51) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@7) o_9@@79 f_5@@51)))
 :qid |stdinbpl.1234:35|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@6) o_9@@79 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@7) o_9@@79 f_5@@51))
)) (forall ((o_9@@80 T@Ref) (f_5@@52 T@Field_27162_27163) ) (!  (=> (not (= f_5@@52 right_1)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@6) o_9@@80 f_5@@52) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@7) o_9@@80 f_5@@52)))
 :qid |stdinbpl.1234:35|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@6) o_9@@80 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@7) o_9@@80 f_5@@52))
))) (forall ((o_9@@81 T@Ref) (f_5@@53 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@6) o_9@@81 f_5@@53) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@7) o_9@@81 f_5@@53)))
 :qid |stdinbpl.1234:35|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@6) o_9@@81 f_5@@53))
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@7) o_9@@81 f_5@@53))
))) (forall ((o_9@@82 T@Ref) (f_5@@54 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@6) o_9@@82 f_5@@54) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@7) o_9@@82 f_5@@54)))
 :qid |stdinbpl.1234:35|
 :skolemid |158|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@6) o_9@@82 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@7) o_9@@82 f_5@@54))
))) (state ExhaleHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 105) (- 0 106)) (forall ((n$6_3_2 T@Ref) (n$6_3_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$6_3_2 n$6_3_3)) (select nodes n$6_3_2)) (select nodes n$6_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$6_3_2 n$6_3_3)))
 :qid |stdinbpl.1242:21|
 :skolemid |159|
))) (=> (forall ((n$6_3_2@@0 T@Ref) (n$6_3_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$6_3_2@@0 n$6_3_3@@0)) (select nodes n$6_3_2@@0)) (select nodes n$6_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$6_3_2@@0 n$6_3_3@@0)))
 :qid |stdinbpl.1242:21|
 :skolemid |159|
)) (=> (and (and (forall ((n$6_3_2@@1 T@Ref) ) (!  (=> (and (select nodes n$6_3_2@@1) (< NoPerm FullPerm)) (and (qpRange15 n$6_3_2@@1) (= (invRecv15 n$6_3_2@@1) n$6_3_2@@1)))
 :qid |stdinbpl.1248:28|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n$6_3_2@@1 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@8) n$6_3_2@@1 is_marked))
 :pattern ( (select nodes n$6_3_2@@1))
)) (forall ((o_9@@83 T@Ref) ) (!  (=> (and (and (select nodes (invRecv15 o_9@@83)) (< NoPerm FullPerm)) (qpRange15 o_9@@83)) (= (invRecv15 o_9@@83) o_9@@83))
 :qid |stdinbpl.1252:28|
 :skolemid |161|
 :pattern ( (invRecv15 o_9@@83))
))) (and (forall ((n$6_3_2@@2 T@Ref) ) (!  (=> (select nodes n$6_3_2@@2) (not (= n$6_3_2@@2 null)))
 :qid |stdinbpl.1258:28|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n$6_3_2@@2 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@8) n$6_3_2@@2 is_marked))
 :pattern ( (select nodes n$6_3_2@@2))
)) (forall ((o_9@@84 T@Ref) ) (!  (and (=> (and (and (select nodes (invRecv15 o_9@@84)) (< NoPerm FullPerm)) (qpRange15 o_9@@84)) (and (=> (< NoPerm FullPerm) (= (invRecv15 o_9@@84) o_9@@84)) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@8) o_9@@84 is_marked) (+ (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@7) o_9@@84 is_marked) FullPerm)))) (=> (not (and (and (select nodes (invRecv15 o_9@@84)) (< NoPerm FullPerm)) (qpRange15 o_9@@84))) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@8) o_9@@84 is_marked) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@7) o_9@@84 is_marked))))
 :qid |stdinbpl.1264:28|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@8) o_9@@84 is_marked))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@85 T@Ref) (f_5@@55 T@Field_27149_53) ) (!  (=> (not (= f_5@@55 is_marked)) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@7) o_9@@85 f_5@@55) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@8) o_9@@85 f_5@@55)))
 :qid |stdinbpl.1268:35|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@7) o_9@@85 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@8) o_9@@85 f_5@@55))
)) (forall ((o_9@@86 T@Ref) (f_5@@56 T@Field_27162_27163) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@7) o_9@@86 f_5@@56) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@8) o_9@@86 f_5@@56)))
 :qid |stdinbpl.1268:35|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@7) o_9@@86 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@8) o_9@@86 f_5@@56))
))) (forall ((o_9@@87 T@Ref) (f_5@@57 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@7) o_9@@87 f_5@@57) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@8) o_9@@87 f_5@@57)))
 :qid |stdinbpl.1268:35|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@7) o_9@@87 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@8) o_9@@87 f_5@@57))
))) (forall ((o_9@@88 T@Ref) (f_5@@58 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@7) o_9@@88 f_5@@58) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@8) o_9@@88 f_5@@58)))
 :qid |stdinbpl.1268:35|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@7) o_9@@88 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@8) o_9@@88 f_5@@58))
))) (and (state ExhaleHeap@0 QPMask@8) (forall ((n$7_4_1 T@Ref) ) (!  (=> (and (select nodes n$7_4_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$7_4_1 left_2) null))) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$7_4_1 left_2)))
 :qid |stdinbpl.1274:26|
 :skolemid |165|
 :pattern ( (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$7_4_1 left_2)))
 :pattern ( (select nodes n$7_4_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$7_4_1 left_2))
)))) (and (and (forall ((n$8_4 T@Ref) ) (!  (=> (and (select nodes n$8_4) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$8_4 right_1) null))) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$8_4 right_1)))
 :qid |stdinbpl.1278:26|
 :skolemid |166|
 :pattern ( (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$8_4 right_1)))
 :pattern ( (select nodes n$8_4) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n$8_4 right_1))
)) (forall ((n_23 T@Ref) ) (!  (=> (select nodes n_23) (=> (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@0) n_23 is_marked) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n_23 is_marked)))
 :qid |stdinbpl.1282:26|
 :skolemid |167|
 :pattern ( (select nodes n_23) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n_23 is_marked))
))) (and (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) arg_node@0 is_marked) (forall ((n_24 T@Ref) ) (!  (=> (select nodes n_24) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_24 left_2) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n_24 left_2)))
 :qid |stdinbpl.1287:26|
 :skolemid |168|
 :pattern ( (select nodes n_24) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_24 left_2))
))))) (and (and (and (forall ((n_25 T@Ref) ) (!  (=> (select nodes n_25) (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_25 right_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n_25 right_1)))
 :qid |stdinbpl.1291:26|
 :skolemid |169|
 :pattern ( (select nodes n_25) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_25 right_1))
)) (forall ((n_26 T@Ref) ) (!  (=> (select nodes n_26) (=> (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@0) n_26 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n_26 is_marked)) (or (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_26 left_2) null) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_26 left_2) is_marked))))
 :qid |stdinbpl.1295:26|
 :skolemid |170|
 :pattern ( (select nodes n_26) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n_26 is_marked))
 :pattern ( (select nodes n_26) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_26 left_2) is_marked))
))) (and (forall ((n_27 T@Ref) ) (!  (=> (select nodes n_27) (=> (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@0) n_27 is_marked)) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n_27 is_marked)) (or (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_27 right_1) null) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_27 right_1) is_marked))))
 :qid |stdinbpl.1299:26|
 :skolemid |171|
 :pattern ( (select nodes n_27) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) n_27 is_marked))
 :pattern ( (select nodes n_27) (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| ExhaleHeap@0) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| ExhaleHeap@0) n_27 right_1) is_marked))
)) (state ExhaleHeap@0 QPMask@8))) (and (and (state ExhaleHeap@0 QPMask@8) (= Mask@0 QPMask@8)) (and (= Heap@1 ExhaleHeap@0) (= (ControlFlow 0 105) 98))))) anon79_correct)))))))))))))))))))
(let ((anon161_Else_correct  (=> (forall ((n$2_3_1 T@Ref) ) (!  (=> (and (select nodes n$2_3_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$2_3_1 left_2) null))) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$2_3_1 left_2)))
 :qid |stdinbpl.1147:26|
 :skolemid |145|
 :pattern ( (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$2_3_1 left_2)))
 :pattern ( (select nodes n$2_3_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$2_3_1 left_2))
)) (and (and (=> (= (ControlFlow 0 114) 105) anon163_Else_correct) (=> (= (ControlFlow 0 114) 111) anon164_Then_correct)) (=> (= (ControlFlow 0 114) 113) anon164_Else_correct)))))
(let ((anon160_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) node left_2) null)) (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@0) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) node left_2) is_marked))) (and (=> (= (ControlFlow 0 115) (- 0 124)) (HasDirectPerm_17236_17237 QPMask@2 node left_2)) (=> (HasDirectPerm_17236_17237 QPMask@2 node left_2) (=> (= arg_node@0 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) node left_2)) (and (=> (= (ControlFlow 0 115) (- 0 123)) (select nodes arg_node@0)) (=> (select nodes arg_node@0) (and (=> (= (ControlFlow 0 115) (- 0 122)) (not (select nodes null))) (=> (not (select nodes null)) (and (=> (= (ControlFlow 0 115) (- 0 121)) (forall ((n_22 T@Ref) (n_22_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_22 n_22_1)) (select nodes n_22)) (select nodes n_22_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_22 n_22_1)))
 :qid |stdinbpl.1024:23|
 :skolemid |127|
 :pattern ( (neverTriggered10 n_22) (neverTriggered10 n_22_1))
))) (=> (forall ((n_22@@0 T@Ref) (n_22_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_22@@0 n_22_1@@0)) (select nodes n_22@@0)) (select nodes n_22_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_22@@0 n_22_1@@0)))
 :qid |stdinbpl.1024:23|
 :skolemid |127|
 :pattern ( (neverTriggered10 n_22@@0) (neverTriggered10 n_22_1@@0))
)) (and (=> (= (ControlFlow 0 115) (- 0 120)) (forall ((n_22@@1 T@Ref) ) (!  (=> (select nodes n_22@@1) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@2) n_22@@1 left_2) FullPerm))
 :qid |stdinbpl.1031:23|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n_22@@1 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) n_22@@1 left_2))
 :pattern ( (select nodes n_22@@1))
))) (=> (forall ((n_22@@2 T@Ref) ) (!  (=> (select nodes n_22@@2) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@2) n_22@@2 left_2) FullPerm))
 :qid |stdinbpl.1031:23|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n_22@@2 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) n_22@@2 left_2))
 :pattern ( (select nodes n_22@@2))
)) (=> (forall ((n_22@@3 T@Ref) ) (!  (=> (and (select nodes n_22@@3) (< NoPerm FullPerm)) (and (qpRange10 n_22@@3) (= (invRecv10 n_22@@3) n_22@@3)))
 :qid |stdinbpl.1037:28|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n_22@@3 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) n_22@@3 left_2))
 :pattern ( (select nodes n_22@@3))
)) (=> (and (forall ((o_9@@89 T@Ref) ) (!  (=> (and (select nodes (invRecv10 o_9@@89)) (and (< NoPerm FullPerm) (qpRange10 o_9@@89))) (= (invRecv10 o_9@@89) o_9@@89))
 :qid |stdinbpl.1041:28|
 :skolemid |130|
 :pattern ( (invRecv10 o_9@@89))
)) (forall ((o_9@@90 T@Ref) ) (!  (and (=> (and (select nodes (invRecv10 o_9@@90)) (and (< NoPerm FullPerm) (qpRange10 o_9@@90))) (and (= (invRecv10 o_9@@90) o_9@@90) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_9@@90 left_2) (- (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@2) o_9@@90 left_2) FullPerm)))) (=> (not (and (select nodes (invRecv10 o_9@@90)) (and (< NoPerm FullPerm) (qpRange10 o_9@@90)))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_9@@90 left_2) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@2) o_9@@90 left_2))))
 :qid |stdinbpl.1047:28|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_9@@90 left_2))
))) (=> (and (and (and (forall ((o_9@@91 T@Ref) (f_5@@59 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) o_9@@91 f_5@@59) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@3) o_9@@91 f_5@@59)))
 :qid |stdinbpl.1053:35|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@3) o_9@@91 f_5@@59))
)) (forall ((o_9@@92 T@Ref) (f_5@@60 T@Field_27162_27163) ) (!  (=> (not (= f_5@@60 left_2)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@2) o_9@@92 f_5@@60) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_9@@92 f_5@@60)))
 :qid |stdinbpl.1053:35|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_9@@92 f_5@@60))
))) (forall ((o_9@@93 T@Ref) (f_5@@61 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@2) o_9@@93 f_5@@61) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@3) o_9@@93 f_5@@61)))
 :qid |stdinbpl.1053:35|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@3) o_9@@93 f_5@@61))
))) (forall ((o_9@@94 T@Ref) (f_5@@62 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@2) o_9@@94 f_5@@62) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@3) o_9@@94 f_5@@62)))
 :qid |stdinbpl.1053:35|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@3) o_9@@94 f_5@@62))
))) (and (=> (= (ControlFlow 0 115) (- 0 119)) (forall ((n$0_2 T@Ref) (n$0_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2 n$0_2_1)) (select nodes n$0_2)) (select nodes n$0_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_2 n$0_2_1)))
 :qid |stdinbpl.1065:23|
 :skolemid |133|
 :pattern ( (neverTriggered11 n$0_2) (neverTriggered11 n$0_2_1))
))) (=> (forall ((n$0_2@@0 T@Ref) (n$0_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2@@0 n$0_2_1@@0)) (select nodes n$0_2@@0)) (select nodes n$0_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_2@@0 n$0_2_1@@0)))
 :qid |stdinbpl.1065:23|
 :skolemid |133|
 :pattern ( (neverTriggered11 n$0_2@@0) (neverTriggered11 n$0_2_1@@0))
)) (and (=> (= (ControlFlow 0 115) (- 0 118)) (forall ((n$0_2@@1 T@Ref) ) (!  (=> (select nodes n$0_2@@1) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) n$0_2@@1 right_1) FullPerm))
 :qid |stdinbpl.1072:23|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$0_2@@1 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) n$0_2@@1 right_1))
 :pattern ( (select nodes n$0_2@@1))
))) (=> (forall ((n$0_2@@2 T@Ref) ) (!  (=> (select nodes n$0_2@@2) (>= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) n$0_2@@2 right_1) FullPerm))
 :qid |stdinbpl.1072:23|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$0_2@@2 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) n$0_2@@2 right_1))
 :pattern ( (select nodes n$0_2@@2))
)) (=> (forall ((n$0_2@@3 T@Ref) ) (!  (=> (and (select nodes n$0_2@@3) (< NoPerm FullPerm)) (and (qpRange11 n$0_2@@3) (= (invRecv11 n$0_2@@3) n$0_2@@3)))
 :qid |stdinbpl.1078:28|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) n$0_2@@3 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) n$0_2@@3 right_1))
 :pattern ( (select nodes n$0_2@@3))
)) (=> (and (forall ((o_9@@95 T@Ref) ) (!  (=> (and (select nodes (invRecv11 o_9@@95)) (and (< NoPerm FullPerm) (qpRange11 o_9@@95))) (= (invRecv11 o_9@@95) o_9@@95))
 :qid |stdinbpl.1082:28|
 :skolemid |136|
 :pattern ( (invRecv11 o_9@@95))
)) (forall ((o_9@@96 T@Ref) ) (!  (and (=> (and (select nodes (invRecv11 o_9@@96)) (and (< NoPerm FullPerm) (qpRange11 o_9@@96))) (and (= (invRecv11 o_9@@96) o_9@@96) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) o_9@@96 right_1) (- (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_9@@96 right_1) FullPerm)))) (=> (not (and (select nodes (invRecv11 o_9@@96)) (and (< NoPerm FullPerm) (qpRange11 o_9@@96)))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) o_9@@96 right_1) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_9@@96 right_1))))
 :qid |stdinbpl.1088:28|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) o_9@@96 right_1))
))) (=> (and (and (and (forall ((o_9@@97 T@Ref) (f_5@@63 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@3) o_9@@97 f_5@@63) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@4) o_9@@97 f_5@@63)))
 :qid |stdinbpl.1094:35|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@4) o_9@@97 f_5@@63))
)) (forall ((o_9@@98 T@Ref) (f_5@@64 T@Field_27162_27163) ) (!  (=> (not (= f_5@@64 right_1)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@3) o_9@@98 f_5@@64) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) o_9@@98 f_5@@64)))
 :qid |stdinbpl.1094:35|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) o_9@@98 f_5@@64))
))) (forall ((o_9@@99 T@Ref) (f_5@@65 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@3) o_9@@99 f_5@@65) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@4) o_9@@99 f_5@@65)))
 :qid |stdinbpl.1094:35|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@4) o_9@@99 f_5@@65))
))) (forall ((o_9@@100 T@Ref) (f_5@@66 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@3) o_9@@100 f_5@@66) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@4) o_9@@100 f_5@@66)))
 :qid |stdinbpl.1094:35|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@4) o_9@@100 f_5@@66))
))) (and (=> (= (ControlFlow 0 115) (- 0 117)) (forall ((n$1_2 T@Ref) (n$1_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_2 n$1_2_1)) (select nodes n$1_2)) (select nodes n$1_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_2 n$1_2_1)))
 :qid |stdinbpl.1106:23|
 :skolemid |139|
 :pattern ( (neverTriggered12 n$1_2) (neverTriggered12 n$1_2_1))
))) (=> (forall ((n$1_2@@0 T@Ref) (n$1_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_2@@0 n$1_2_1@@0)) (select nodes n$1_2@@0)) (select nodes n$1_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_2@@0 n$1_2_1@@0)))
 :qid |stdinbpl.1106:23|
 :skolemid |139|
 :pattern ( (neverTriggered12 n$1_2@@0) (neverTriggered12 n$1_2_1@@0))
)) (and (=> (= (ControlFlow 0 115) (- 0 116)) (forall ((n$1_2@@1 T@Ref) ) (!  (=> (select nodes n$1_2@@1) (>= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@4) n$1_2@@1 is_marked) FullPerm))
 :qid |stdinbpl.1113:23|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@0) n$1_2@@1 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) n$1_2@@1 is_marked))
 :pattern ( (select nodes n$1_2@@1))
))) (=> (forall ((n$1_2@@2 T@Ref) ) (!  (=> (select nodes n$1_2@@2) (>= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@4) n$1_2@@2 is_marked) FullPerm))
 :qid |stdinbpl.1113:23|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@0) n$1_2@@2 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) n$1_2@@2 is_marked))
 :pattern ( (select nodes n$1_2@@2))
)) (=> (forall ((n$1_2@@3 T@Ref) ) (!  (=> (and (select nodes n$1_2@@3) (< NoPerm FullPerm)) (and (qpRange12 n$1_2@@3) (= (invRecv12 n$1_2@@3) n$1_2@@3)))
 :qid |stdinbpl.1119:28|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@0) n$1_2@@3 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) n$1_2@@3 is_marked))
 :pattern ( (select nodes n$1_2@@3))
)) (=> (and (forall ((o_9@@101 T@Ref) ) (!  (=> (and (select nodes (invRecv12 o_9@@101)) (and (< NoPerm FullPerm) (qpRange12 o_9@@101))) (= (invRecv12 o_9@@101) o_9@@101))
 :qid |stdinbpl.1123:28|
 :skolemid |142|
 :pattern ( (invRecv12 o_9@@101))
)) (forall ((o_9@@102 T@Ref) ) (!  (and (=> (and (select nodes (invRecv12 o_9@@102)) (and (< NoPerm FullPerm) (qpRange12 o_9@@102))) (and (= (invRecv12 o_9@@102) o_9@@102) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) o_9@@102 is_marked) (- (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@4) o_9@@102 is_marked) FullPerm)))) (=> (not (and (select nodes (invRecv12 o_9@@102)) (and (< NoPerm FullPerm) (qpRange12 o_9@@102)))) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) o_9@@102 is_marked) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@4) o_9@@102 is_marked))))
 :qid |stdinbpl.1129:28|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) o_9@@102 is_marked))
))) (=> (and (and (and (forall ((o_9@@103 T@Ref) (f_5@@67 T@Field_27149_53) ) (!  (=> (not (= f_5@@67 is_marked)) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@4) o_9@@103 f_5@@67) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) o_9@@103 f_5@@67)))
 :qid |stdinbpl.1135:35|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@5) o_9@@103 f_5@@67))
)) (forall ((o_9@@104 T@Ref) (f_5@@68 T@Field_27162_27163) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@4) o_9@@104 f_5@@68) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@5) o_9@@104 f_5@@68)))
 :qid |stdinbpl.1135:35|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@5) o_9@@104 f_5@@68))
))) (forall ((o_9@@105 T@Ref) (f_5@@69 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@4) o_9@@105 f_5@@69) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@5) o_9@@105 f_5@@69)))
 :qid |stdinbpl.1135:35|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@5) o_9@@105 f_5@@69))
))) (forall ((o_9@@106 T@Ref) (f_5@@70 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@4) o_9@@106 f_5@@70) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@5) o_9@@106 f_5@@70)))
 :qid |stdinbpl.1135:35|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@5) o_9@@106 f_5@@70))
))) (and (and (=> (= (ControlFlow 0 115) 114) anon161_Else_correct) (=> (= (ControlFlow 0 115) 102) anon162_Then_correct)) (=> (= (ControlFlow 0 115) 104) anon162_Else_correct)))))))))))))))))))))))))))))))))
(let ((anon160_Else_correct  (=> (and (and (not (and (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) node left_2) null)) (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@0) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) node left_2) is_marked)))) (= Mask@0 QPMask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 100) 98))) anon79_correct)))
(let ((anon159_Else_correct  (=> (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) node left_2) null) (and (=> (= (ControlFlow 0 128) 115) anon160_Then_correct) (=> (= (ControlFlow 0 128) 100) anon160_Else_correct)))))
(let ((anon159_Then_correct  (=> (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) node left_2) null)) (and (=> (= (ControlFlow 0 125) (- 0 127)) (HasDirectPerm_17236_17237 QPMask@2 node left_2)) (=> (HasDirectPerm_17236_17237 QPMask@2 node left_2) (and (=> (= (ControlFlow 0 125) (- 0 126)) (HasDirectPerm_17242_4009 QPMask@2 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) node left_2) is_marked)) (=> (HasDirectPerm_17242_4009 QPMask@2 (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@0) node left_2) is_marked) (and (=> (= (ControlFlow 0 125) 115) anon160_Then_correct) (=> (= (ControlFlow 0 125) 100) anon160_Else_correct)))))))))
(let ((anon132_Else_correct  (and (=> (= (ControlFlow 0 129) (- 0 131)) (= FullPerm (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) node is_marked))) (=> (= FullPerm (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) node is_marked)) (=> (and (= Heap@0 (PolymorphicMapType_27089 (store (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) node is_marked true) (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) (|PolymorphicMapType_27089_17236_88592#PolymorphicMapType_27089| Heap@@15) (|PolymorphicMapType_27089_27149_88415#PolymorphicMapType_27089| Heap@@15))) (state Heap@0 QPMask@2)) (and (=> (= (ControlFlow 0 129) (- 0 130)) (HasDirectPerm_17236_17237 QPMask@2 node left_2)) (=> (HasDirectPerm_17236_17237 QPMask@2 node left_2) (and (=> (= (ControlFlow 0 129) 125) anon159_Then_correct) (=> (= (ControlFlow 0 129) 128) anon159_Else_correct)))))))))
(let ((anon129_Else_correct  (=> (and (forall ((n$3_1 T@Ref) ) (!  (=> (and (select nodes n$3_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n$3_1 right_1) null))) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n$3_1 right_1)))
 :qid |stdinbpl.690:20|
 :skolemid |101|
 :pattern ( (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n$3_1 right_1)))
 :pattern ( (select nodes n$3_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n$3_1 right_1))
)) (state Heap@@15 QPMask@2)) (and (=> (= (ControlFlow 0 209) (- 0 210)) (HasDirectPerm_17242_4009 QPMask@2 node is_marked)) (=> (HasDirectPerm_17242_4009 QPMask@2 node is_marked) (=> (and (not (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) node is_marked)) (state Heap@@15 QPMask@2)) (and (=> (= (ControlFlow 0 209) 208) anon132_Then_correct) (=> (= (ControlFlow 0 209) 129) anon132_Else_correct))))))))
(let ((anon17_correct true))
(let ((anon131_Else_correct  (=> (and (not (and (select nodes n$3_9) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n$3_9 right_1) null)))) (= (ControlFlow 0 14) 11)) anon17_correct)))
(let ((anon131_Then_correct  (=> (and (select nodes n$3_9) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n$3_9 right_1) null))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_17236_17237 QPMask@2 n$3_9 right_1)) (=> (HasDirectPerm_17236_17237 QPMask@2 n$3_9 right_1) (=> (= (ControlFlow 0 12) 11) anon17_correct))))))
(let ((anon130_Else_correct  (=> (not (select nodes n$3_9)) (and (=> (= (ControlFlow 0 17) 12) anon131_Then_correct) (=> (= (ControlFlow 0 17) 14) anon131_Else_correct)))))
(let ((anon130_Then_correct  (=> (select nodes n$3_9) (and (=> (= (ControlFlow 0 15) (- 0 16)) (HasDirectPerm_17236_17237 QPMask@2 n$3_9 right_1)) (=> (HasDirectPerm_17236_17237 QPMask@2 n$3_9 right_1) (and (=> (= (ControlFlow 0 15) 12) anon131_Then_correct) (=> (= (ControlFlow 0 15) 14) anon131_Else_correct)))))))
(let ((anon126_Else_correct  (=> (forall ((n$2_1 T@Ref) ) (!  (=> (and (select nodes n$2_1) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n$2_1 left_2) null))) (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n$2_1 left_2)))
 :qid |stdinbpl.673:20|
 :skolemid |100|
 :pattern ( (select nodes (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n$2_1 left_2)))
 :pattern ( (select nodes n$2_1) (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n$2_1 left_2))
)) (and (and (=> (= (ControlFlow 0 211) 209) anon129_Else_correct) (=> (= (ControlFlow 0 211) 15) anon130_Then_correct)) (=> (= (ControlFlow 0 211) 17) anon130_Else_correct)))))
(let ((anon11_correct true))
(let ((anon128_Else_correct  (=> (and (not (and (select nodes n$2_33) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n$2_33 left_2) null)))) (= (ControlFlow 0 7) 4)) anon11_correct)))
(let ((anon128_Then_correct  (=> (and (select nodes n$2_33) (not (= (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n$2_33 left_2) null))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_17236_17237 QPMask@2 n$2_33 left_2)) (=> (HasDirectPerm_17236_17237 QPMask@2 n$2_33 left_2) (=> (= (ControlFlow 0 5) 4) anon11_correct))))))
(let ((anon127_Else_correct  (=> (not (select nodes n$2_33)) (and (=> (= (ControlFlow 0 10) 5) anon128_Then_correct) (=> (= (ControlFlow 0 10) 7) anon128_Else_correct)))))
(let ((anon127_Then_correct  (=> (select nodes n$2_33) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_17236_17237 QPMask@2 n$2_33 left_2)) (=> (HasDirectPerm_17236_17237 QPMask@2 n$2_33 left_2) (and (=> (= (ControlFlow 0 8) 5) anon128_Then_correct) (=> (= (ControlFlow 0 8) 7) anon128_Else_correct)))))))
(let ((anon125_Else_correct  (and (=> (= (ControlFlow 0 212) (- 0 213)) (forall ((n$1_1 T@Ref) (n$1_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1 n$1_1_1)) (select nodes n$1_1)) (select nodes n$1_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1 n$1_1_1)))
 :qid |stdinbpl.628:15|
 :skolemid |94|
))) (=> (forall ((n$1_1@@0 T@Ref) (n$1_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1@@0 n$1_1_1@@0)) (select nodes n$1_1@@0)) (select nodes n$1_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1@@0 n$1_1_1@@0)))
 :qid |stdinbpl.628:15|
 :skolemid |94|
)) (=> (and (and (forall ((n$1_1@@1 T@Ref) ) (!  (=> (and (select nodes n$1_1@@1) (< NoPerm FullPerm)) (and (qpRange3 n$1_1@@1) (= (invRecv3 n$1_1@@1) n$1_1@@1)))
 :qid |stdinbpl.634:22|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n$1_1@@1 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) n$1_1@@1 is_marked))
 :pattern ( (select nodes n$1_1@@1))
)) (forall ((o_9@@107 T@Ref) ) (!  (=> (and (and (select nodes (invRecv3 o_9@@107)) (< NoPerm FullPerm)) (qpRange3 o_9@@107)) (= (invRecv3 o_9@@107) o_9@@107))
 :qid |stdinbpl.638:22|
 :skolemid |96|
 :pattern ( (invRecv3 o_9@@107))
))) (and (forall ((n$1_1@@2 T@Ref) ) (!  (=> (select nodes n$1_1@@2) (not (= n$1_1@@2 null)))
 :qid |stdinbpl.644:22|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) n$1_1@@2 is_marked))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) n$1_1@@2 is_marked))
 :pattern ( (select nodes n$1_1@@2))
)) (forall ((o_9@@108 T@Ref) ) (!  (and (=> (and (and (select nodes (invRecv3 o_9@@108)) (< NoPerm FullPerm)) (qpRange3 o_9@@108)) (and (=> (< NoPerm FullPerm) (= (invRecv3 o_9@@108) o_9@@108)) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) o_9@@108 is_marked) (+ (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@1) o_9@@108 is_marked) FullPerm)))) (=> (not (and (and (select nodes (invRecv3 o_9@@108)) (< NoPerm FullPerm)) (qpRange3 o_9@@108))) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) o_9@@108 is_marked) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@1) o_9@@108 is_marked))))
 :qid |stdinbpl.650:22|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) o_9@@108 is_marked))
)))) (=> (and (and (and (and (forall ((o_9@@109 T@Ref) (f_5@@71 T@Field_27149_53) ) (!  (=> (not (= f_5@@71 is_marked)) (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@1) o_9@@109 f_5@@71) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) o_9@@109 f_5@@71)))
 :qid |stdinbpl.654:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@1) o_9@@109 f_5@@71))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@2) o_9@@109 f_5@@71))
)) (forall ((o_9@@110 T@Ref) (f_5@@72 T@Field_27162_27163) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) o_9@@110 f_5@@72) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@2) o_9@@110 f_5@@72)))
 :qid |stdinbpl.654:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) o_9@@110 f_5@@72))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@2) o_9@@110 f_5@@72))
))) (forall ((o_9@@111 T@Ref) (f_5@@73 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@1) o_9@@111 f_5@@73) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@2) o_9@@111 f_5@@73)))
 :qid |stdinbpl.654:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@1) o_9@@111 f_5@@73))
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@2) o_9@@111 f_5@@73))
))) (forall ((o_9@@112 T@Ref) (f_5@@74 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@1) o_9@@112 f_5@@74) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@2) o_9@@112 f_5@@74)))
 :qid |stdinbpl.654:29|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@1) o_9@@112 f_5@@74))
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@2) o_9@@112 f_5@@74))
))) (state Heap@@15 QPMask@2)) (and (and (=> (= (ControlFlow 0 212) 211) anon126_Else_correct) (=> (= (ControlFlow 0 212) 8) anon127_Then_correct)) (=> (= (ControlFlow 0 212) 10) anon127_Else_correct))))))))
(let ((anon125_Then_correct true))
(let ((anon124_Else_correct  (and (=> (= (ControlFlow 0 214) (- 0 215)) (forall ((n$0_1 T@Ref) (n$0_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_1 n$0_1_1)) (select nodes n$0_1)) (select nodes n$0_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_1 n$0_1_1)))
 :qid |stdinbpl.589:15|
 :skolemid |88|
))) (=> (forall ((n$0_1@@0 T@Ref) (n$0_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_1@@0 n$0_1_1@@0)) (select nodes n$0_1@@0)) (select nodes n$0_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_1@@0 n$0_1_1@@0)))
 :qid |stdinbpl.589:15|
 :skolemid |88|
)) (=> (and (and (forall ((n$0_1@@1 T@Ref) ) (!  (=> (and (select nodes n$0_1@@1) (< NoPerm FullPerm)) (and (qpRange2 n$0_1@@1) (= (invRecv2 n$0_1@@1) n$0_1@@1)))
 :qid |stdinbpl.595:22|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n$0_1@@1 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) n$0_1@@1 right_1))
 :pattern ( (select nodes n$0_1@@1))
)) (forall ((o_9@@113 T@Ref) ) (!  (=> (and (and (select nodes (invRecv2 o_9@@113)) (< NoPerm FullPerm)) (qpRange2 o_9@@113)) (= (invRecv2 o_9@@113) o_9@@113))
 :qid |stdinbpl.599:22|
 :skolemid |90|
 :pattern ( (invRecv2 o_9@@113))
))) (and (forall ((n$0_1@@2 T@Ref) ) (!  (=> (select nodes n$0_1@@2) (not (= n$0_1@@2 null)))
 :qid |stdinbpl.605:22|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n$0_1@@2 right_1))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) n$0_1@@2 right_1))
 :pattern ( (select nodes n$0_1@@2))
)) (forall ((o_9@@114 T@Ref) ) (!  (and (=> (and (and (select nodes (invRecv2 o_9@@114)) (< NoPerm FullPerm)) (qpRange2 o_9@@114)) (and (=> (< NoPerm FullPerm) (= (invRecv2 o_9@@114) o_9@@114)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) o_9@@114 right_1) (+ (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_9@@114 right_1) FullPerm)))) (=> (not (and (and (select nodes (invRecv2 o_9@@114)) (< NoPerm FullPerm)) (qpRange2 o_9@@114))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) o_9@@114 right_1) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_9@@114 right_1))))
 :qid |stdinbpl.611:22|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) o_9@@114 right_1))
)))) (=> (and (and (and (and (forall ((o_9@@115 T@Ref) (f_5@@75 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@0) o_9@@115 f_5@@75) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@1) o_9@@115 f_5@@75)))
 :qid |stdinbpl.615:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@0) o_9@@115 f_5@@75))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@1) o_9@@115 f_5@@75))
)) (forall ((o_9@@116 T@Ref) (f_5@@76 T@Field_27162_27163) ) (!  (=> (not (= f_5@@76 right_1)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_9@@116 f_5@@76) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) o_9@@116 f_5@@76)))
 :qid |stdinbpl.615:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_9@@116 f_5@@76))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@1) o_9@@116 f_5@@76))
))) (forall ((o_9@@117 T@Ref) (f_5@@77 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@0) o_9@@117 f_5@@77) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@1) o_9@@117 f_5@@77)))
 :qid |stdinbpl.615:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@0) o_9@@117 f_5@@77))
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@1) o_9@@117 f_5@@77))
))) (forall ((o_9@@118 T@Ref) (f_5@@78 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@0) o_9@@118 f_5@@78) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@1) o_9@@118 f_5@@78)))
 :qid |stdinbpl.615:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@0) o_9@@118 f_5@@78))
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@1) o_9@@118 f_5@@78))
))) (state Heap@@15 QPMask@1)) (and (=> (= (ControlFlow 0 214) 3) anon125_Then_correct) (=> (= (ControlFlow 0 214) 212) anon125_Else_correct))))))))
(let ((anon124_Then_correct true))
(let ((anon123_Else_correct  (and (=> (= (ControlFlow 0 216) (- 0 217)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select nodes n_1)) (select nodes n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.550:15|
 :skolemid |82|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select nodes n_1@@0)) (select nodes n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.550:15|
 :skolemid |82|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select nodes n_1@@1) (< NoPerm FullPerm)) (and (qpRange1 n_1@@1) (= (invRecv1 n_1@@1) n_1@@1)))
 :qid |stdinbpl.556:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n_1@@1 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) n_1@@1 left_2))
 :pattern ( (select nodes n_1@@1))
)) (forall ((o_9@@119 T@Ref) ) (!  (=> (and (and (select nodes (invRecv1 o_9@@119)) (< NoPerm FullPerm)) (qpRange1 o_9@@119)) (= (invRecv1 o_9@@119) o_9@@119))
 :qid |stdinbpl.560:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_9@@119))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select nodes n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.566:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_27089_16818_16819#PolymorphicMapType_27089| Heap@@15) n_1@@2 left_2))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) n_1@@2 left_2))
 :pattern ( (select nodes n_1@@2))
)) (forall ((o_9@@120 T@Ref) ) (!  (and (=> (and (and (select nodes (invRecv1 o_9@@120)) (< NoPerm FullPerm)) (qpRange1 o_9@@120)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_9@@120) o_9@@120)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_9@@120 left_2) (+ (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| ZeroMask) o_9@@120 left_2) FullPerm)))) (=> (not (and (and (select nodes (invRecv1 o_9@@120)) (< NoPerm FullPerm)) (qpRange1 o_9@@120))) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_9@@120 left_2) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| ZeroMask) o_9@@120 left_2))))
 :qid |stdinbpl.572:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_9@@120 left_2))
)))) (=> (and (and (and (and (forall ((o_9@@121 T@Ref) (f_5@@79 T@Field_27149_53) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| ZeroMask) o_9@@121 f_5@@79) (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@0) o_9@@121 f_5@@79)))
 :qid |stdinbpl.576:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| ZeroMask) o_9@@121 f_5@@79))
 :pattern ( (select (|PolymorphicMapType_27110_17242_4009#PolymorphicMapType_27110| QPMask@0) o_9@@121 f_5@@79))
)) (forall ((o_9@@122 T@Ref) (f_5@@80 T@Field_27162_27163) ) (!  (=> (not (= f_5@@80 left_2)) (= (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| ZeroMask) o_9@@122 f_5@@80) (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_9@@122 f_5@@80)))
 :qid |stdinbpl.576:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| ZeroMask) o_9@@122 f_5@@80))
 :pattern ( (select (|PolymorphicMapType_27110_17236_17237#PolymorphicMapType_27110| QPMask@0) o_9@@122 f_5@@80))
))) (forall ((o_9@@123 T@Ref) (f_5@@81 T@Field_17236_88415) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| ZeroMask) o_9@@123 f_5@@81) (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@0) o_9@@123 f_5@@81)))
 :qid |stdinbpl.576:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| ZeroMask) o_9@@123 f_5@@81))
 :pattern ( (select (|PolymorphicMapType_27110_17236_88415#PolymorphicMapType_27110| QPMask@0) o_9@@123 f_5@@81))
))) (forall ((o_9@@124 T@Ref) (f_5@@82 T@Field_17236_88548) ) (!  (=> true (= (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| ZeroMask) o_9@@124 f_5@@82) (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@0) o_9@@124 f_5@@82)))
 :qid |stdinbpl.576:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| ZeroMask) o_9@@124 f_5@@82))
 :pattern ( (select (|PolymorphicMapType_27110_17236_92082#PolymorphicMapType_27110| QPMask@0) o_9@@124 f_5@@82))
))) (state Heap@@15 QPMask@0)) (and (=> (= (ControlFlow 0 216) 2) anon124_Then_correct) (=> (= (ControlFlow 0 216) 214) anon124_Else_correct))))))))
(let ((anon123_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@15 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_27089_16815_53#PolymorphicMapType_27089| Heap@@15) node $allocated)) (and (select nodes node) (not (select nodes null)))) (and (=> (= (ControlFlow 0 218) 1) anon123_Then_correct) (=> (= (ControlFlow 0 218) 216) anon123_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 219) 218) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
