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
(declare-sort T@Field_8011_53 0)
(declare-sort T@Field_8024_8025 0)
(declare-sort T@Field_11338_1198 0)
(declare-sort T@Field_13064_13065 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_13077_13082 0)
(declare-sort T@Field_8011_13065 0)
(declare-sort T@Field_8011_13082 0)
(declare-sort T@Field_13064_53 0)
(declare-sort T@Field_13064_8025 0)
(declare-sort T@Field_13064_1198 0)
(declare-datatypes ((T@PolymorphicMapType_7972 0)) (((PolymorphicMapType_7972 (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| (Array T@Ref T@Field_11338_1198 Real)) (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| (Array T@Ref T@Field_13064_13065 Real)) (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| (Array T@Ref T@Field_8011_13065 Real)) (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| (Array T@Ref T@Field_8011_53 Real)) (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| (Array T@Ref T@Field_8024_8025 Real)) (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| (Array T@Ref T@Field_8011_13082 Real)) (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| (Array T@Ref T@Field_13064_1198 Real)) (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| (Array T@Ref T@Field_13064_53 Real)) (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| (Array T@Ref T@Field_13064_8025 Real)) (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| (Array T@Ref T@Field_13077_13082 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8500 0)) (((PolymorphicMapType_8500 (|PolymorphicMapType_8500_4487_1198#PolymorphicMapType_8500| (Array T@Ref T@Field_11338_1198 Bool)) (|PolymorphicMapType_8500_4487_53#PolymorphicMapType_8500| (Array T@Ref T@Field_8011_53 Bool)) (|PolymorphicMapType_8500_4487_8025#PolymorphicMapType_8500| (Array T@Ref T@Field_8024_8025 Bool)) (|PolymorphicMapType_8500_4487_13065#PolymorphicMapType_8500| (Array T@Ref T@Field_8011_13065 Bool)) (|PolymorphicMapType_8500_4487_26925#PolymorphicMapType_8500| (Array T@Ref T@Field_8011_13082 Bool)) (|PolymorphicMapType_8500_13064_1198#PolymorphicMapType_8500| (Array T@Ref T@Field_13064_1198 Bool)) (|PolymorphicMapType_8500_13064_53#PolymorphicMapType_8500| (Array T@Ref T@Field_13064_53 Bool)) (|PolymorphicMapType_8500_13064_8025#PolymorphicMapType_8500| (Array T@Ref T@Field_13064_8025 Bool)) (|PolymorphicMapType_8500_13064_13065#PolymorphicMapType_8500| (Array T@Ref T@Field_13064_13065 Bool)) (|PolymorphicMapType_8500_13064_27973#PolymorphicMapType_8500| (Array T@Ref T@Field_13077_13082 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7951 0)) (((PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| (Array T@Ref T@Field_8011_53 Bool)) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| (Array T@Ref T@Field_8024_8025 T@Ref)) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| (Array T@Ref T@Field_11338_1198 Int)) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| (Array T@Ref T@Field_13064_13065 T@FrameType)) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| (Array T@Ref T@Field_13077_13082 T@PolymorphicMapType_8500)) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| (Array T@Ref T@Field_8011_13065 T@FrameType)) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| (Array T@Ref T@Field_8011_13082 T@PolymorphicMapType_8500)) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| (Array T@Ref T@Field_13064_53 Bool)) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| (Array T@Ref T@Field_13064_8025 T@Ref)) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| (Array T@Ref T@Field_13064_1198 Int)) ) ) ))
(declare-fun $allocated () T@Field_8011_53)
(declare-fun f_7 () T@Field_11338_1198)
(declare-fun succHeap (T@PolymorphicMapType_7951 T@PolymorphicMapType_7951) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7951 T@PolymorphicMapType_7951) Bool)
(declare-fun state (T@PolymorphicMapType_7951 T@PolymorphicMapType_7972) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7972) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8500)
(declare-fun P (T@Ref Bool) T@Field_13064_13065)
(declare-fun IsPredicateField_4533_4534 (T@Field_13064_13065) Bool)
(declare-fun |P#trigger_4533| (T@PolymorphicMapType_7951 T@Field_13064_13065) Bool)
(declare-fun |P#everUsed_4533| (T@Field_13064_13065) Bool)
(declare-fun |fun1'| (T@PolymorphicMapType_7951 Int) Int)
(declare-fun dummyFunction_1379 (Int) Bool)
(declare-fun |fun1#triggerStateless| (Int) Int)
(declare-fun |P#sm| (T@Ref Bool) T@Field_13077_13082)
(declare-fun fun1 (T@PolymorphicMapType_7951 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7951 T@PolymorphicMapType_7951 T@PolymorphicMapType_7972) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4533 (T@Field_13064_13065) T@Field_13077_13082)
(declare-fun HasDirectPerm_13064_13065 (T@PolymorphicMapType_7972 T@Ref T@Field_13064_13065) Bool)
(declare-fun IsPredicateField_8011_25453 (T@Field_8011_13065) Bool)
(declare-fun PredicateMaskField_8011 (T@Field_8011_13065) T@Field_8011_13082)
(declare-fun HasDirectPerm_8011_13065 (T@PolymorphicMapType_7972 T@Ref T@Field_8011_13065) Bool)
(declare-fun IsWandField_13064_29138 (T@Field_13064_13065) Bool)
(declare-fun WandMaskField_13064 (T@Field_13064_13065) T@Field_13077_13082)
(declare-fun IsWandField_8011_28781 (T@Field_8011_13065) Bool)
(declare-fun WandMaskField_8011 (T@Field_8011_13065) T@Field_8011_13082)
(declare-fun dummyHeap () T@PolymorphicMapType_7951)
(declare-fun ZeroMask () T@PolymorphicMapType_7972)
(declare-fun InsidePredicate_13064_13064 (T@Field_13064_13065 T@FrameType T@Field_13064_13065 T@FrameType) Bool)
(declare-fun InsidePredicate_8011_8011 (T@Field_8011_13065 T@FrameType T@Field_8011_13065 T@FrameType) Bool)
(declare-fun IsPredicateField_4487_1198 (T@Field_11338_1198) Bool)
(declare-fun IsWandField_4487_1198 (T@Field_11338_1198) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4533_36070 (T@Field_13077_13082) Bool)
(declare-fun IsWandField_4533_36086 (T@Field_13077_13082) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4533_8025 (T@Field_13064_8025) Bool)
(declare-fun IsWandField_4533_8025 (T@Field_13064_8025) Bool)
(declare-fun IsPredicateField_4533_53 (T@Field_13064_53) Bool)
(declare-fun IsWandField_4533_53 (T@Field_13064_53) Bool)
(declare-fun IsPredicateField_4533_1198 (T@Field_13064_1198) Bool)
(declare-fun IsWandField_4533_1198 (T@Field_13064_1198) Bool)
(declare-fun IsPredicateField_4487_35239 (T@Field_8011_13082) Bool)
(declare-fun IsWandField_4487_35255 (T@Field_8011_13082) Bool)
(declare-fun IsPredicateField_4487_8025 (T@Field_8024_8025) Bool)
(declare-fun IsWandField_4487_8025 (T@Field_8024_8025) Bool)
(declare-fun IsPredicateField_4487_53 (T@Field_8011_53) Bool)
(declare-fun IsWandField_4487_53 (T@Field_8011_53) Bool)
(declare-fun HasDirectPerm_13064_25208 (T@PolymorphicMapType_7972 T@Ref T@Field_13077_13082) Bool)
(declare-fun HasDirectPerm_13064_1198 (T@PolymorphicMapType_7972 T@Ref T@Field_13064_1198) Bool)
(declare-fun HasDirectPerm_13064_8025 (T@PolymorphicMapType_7972 T@Ref T@Field_13064_8025) Bool)
(declare-fun HasDirectPerm_13064_53 (T@PolymorphicMapType_7972 T@Ref T@Field_13064_53) Bool)
(declare-fun HasDirectPerm_8011_24047 (T@PolymorphicMapType_7972 T@Ref T@Field_8011_13082) Bool)
(declare-fun HasDirectPerm_8011_1198 (T@PolymorphicMapType_7972 T@Ref T@Field_11338_1198) Bool)
(declare-fun HasDirectPerm_8011_8025 (T@PolymorphicMapType_7972 T@Ref T@Field_8024_8025) Bool)
(declare-fun HasDirectPerm_8011_53 (T@PolymorphicMapType_7972 T@Ref T@Field_8011_53) Bool)
(declare-fun |fun2'| (T@PolymorphicMapType_7951 Bool T@Ref T@Ref Int) Int)
(declare-fun |fun2#triggerStateless| (Bool T@Ref T@Ref Int) Int)
(declare-fun fun2 (T@PolymorphicMapType_7951 Bool T@Ref T@Ref Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7972 T@PolymorphicMapType_7972 T@PolymorphicMapType_7972) Bool)
(declare-fun getPredWandId_4533_4534 (T@Field_13064_13065) Int)
(declare-fun |fun1#frame| (T@FrameType Int) Int)
(declare-fun |fun2#frame| (T@FrameType Bool T@Ref T@Ref Int) Int)
(declare-fun FrameFragment_5914 (T@FrameType) T@FrameType)
(declare-fun FrameFragment_1198 (Int) T@FrameType)
(declare-fun InsidePredicate_13064_8011 (T@Field_13064_13065 T@FrameType T@Field_8011_13065 T@FrameType) Bool)
(declare-fun InsidePredicate_8011_13064 (T@Field_8011_13065 T@FrameType T@Field_13064_13065 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7951) (Heap1 T@PolymorphicMapType_7951) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7951) (Mask T@PolymorphicMapType_7972) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7951) (Heap1@@0 T@PolymorphicMapType_7951) (Heap2 T@PolymorphicMapType_7951) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13077_13082) ) (!  (not (select (|PolymorphicMapType_8500_13064_27973#PolymorphicMapType_8500| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_13064_27973#PolymorphicMapType_8500| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13064_13065) ) (!  (not (select (|PolymorphicMapType_8500_13064_13065#PolymorphicMapType_8500| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_13064_13065#PolymorphicMapType_8500| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13064_8025) ) (!  (not (select (|PolymorphicMapType_8500_13064_8025#PolymorphicMapType_8500| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_13064_8025#PolymorphicMapType_8500| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13064_53) ) (!  (not (select (|PolymorphicMapType_8500_13064_53#PolymorphicMapType_8500| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_13064_53#PolymorphicMapType_8500| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13064_1198) ) (!  (not (select (|PolymorphicMapType_8500_13064_1198#PolymorphicMapType_8500| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_13064_1198#PolymorphicMapType_8500| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8011_13082) ) (!  (not (select (|PolymorphicMapType_8500_4487_26925#PolymorphicMapType_8500| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_4487_26925#PolymorphicMapType_8500| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8011_13065) ) (!  (not (select (|PolymorphicMapType_8500_4487_13065#PolymorphicMapType_8500| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_4487_13065#PolymorphicMapType_8500| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8024_8025) ) (!  (not (select (|PolymorphicMapType_8500_4487_8025#PolymorphicMapType_8500| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_4487_8025#PolymorphicMapType_8500| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8011_53) ) (!  (not (select (|PolymorphicMapType_8500_4487_53#PolymorphicMapType_8500| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_4487_53#PolymorphicMapType_8500| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11338_1198) ) (!  (not (select (|PolymorphicMapType_8500_4487_1198#PolymorphicMapType_8500| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_4487_1198#PolymorphicMapType_8500| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((x T@Ref) (b_24 Bool) ) (! (IsPredicateField_4533_4534 (P x b_24))
 :qid |stdinbpl.326:15|
 :skolemid |31|
 :pattern ( (P x b_24))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7951) (x@@0 T@Ref) (b_24@@0 Bool) ) (! (|P#everUsed_4533| (P x@@0 b_24@@0))
 :qid |stdinbpl.345:15|
 :skolemid |35|
 :pattern ( (|P#trigger_4533| Heap@@0 (P x@@0 b_24@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7951) (j Int) ) (! (dummyFunction_1379 (|fun1#triggerStateless| j))
 :qid |stdinbpl.209:15|
 :skolemid |23|
 :pattern ( (|fun1'| Heap@@1 j))
)))
(assert (forall ((x@@1 T@Ref) (b_24@@1 Bool) (x2 T@Ref) (b2 Bool) ) (!  (=> (= (P x@@1 b_24@@1) (P x2 b2)) (and (= x@@1 x2) (= b_24@@1 b2)))
 :qid |stdinbpl.336:15|
 :skolemid |33|
 :pattern ( (P x@@1 b_24@@1) (P x2 b2))
)))
(assert (forall ((x@@2 T@Ref) (b_24@@2 Bool) (x2@@0 T@Ref) (b2@@0 Bool) ) (!  (=> (= (|P#sm| x@@2 b_24@@2) (|P#sm| x2@@0 b2@@0)) (and (= x@@2 x2@@0) (= b_24@@2 b2@@0)))
 :qid |stdinbpl.340:15|
 :skolemid |34|
 :pattern ( (|P#sm| x@@2 b_24@@2) (|P#sm| x2@@0 b2@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7951) (j@@0 Int) ) (!  (and (= (fun1 Heap@@2 j@@0) (|fun1'| Heap@@2 j@@0)) (dummyFunction_1379 (|fun1#triggerStateless| j@@0)))
 :qid |stdinbpl.205:15|
 :skolemid |22|
 :pattern ( (fun1 Heap@@2 j@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7951) (ExhaleHeap T@PolymorphicMapType_7951) (Mask@@0 T@PolymorphicMapType_7972) (pm_f_10 T@Field_13064_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_13064_13065 Mask@@0 null pm_f_10) (IsPredicateField_4533_4534 pm_f_10)) (= (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@3) null (PredicateMaskField_4533 pm_f_10)) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap) null (PredicateMaskField_4533 pm_f_10)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_4533_4534 pm_f_10) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap) null (PredicateMaskField_4533 pm_f_10)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7951) (ExhaleHeap@@0 T@PolymorphicMapType_7951) (Mask@@1 T@PolymorphicMapType_7972) (pm_f_10@@0 T@Field_8011_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8011_13065 Mask@@1 null pm_f_10@@0) (IsPredicateField_8011_25453 pm_f_10@@0)) (= (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@4) null (PredicateMaskField_8011 pm_f_10@@0)) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@0) null (PredicateMaskField_8011 pm_f_10@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_8011_25453 pm_f_10@@0) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@0) null (PredicateMaskField_8011 pm_f_10@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7951) (ExhaleHeap@@1 T@PolymorphicMapType_7951) (Mask@@2 T@PolymorphicMapType_7972) (pm_f_10@@1 T@Field_13064_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_13064_13065 Mask@@2 null pm_f_10@@1) (IsWandField_13064_29138 pm_f_10@@1)) (= (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@5) null (WandMaskField_13064 pm_f_10@@1)) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@1) null (WandMaskField_13064 pm_f_10@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsWandField_13064_29138 pm_f_10@@1) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@1) null (WandMaskField_13064 pm_f_10@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7951) (ExhaleHeap@@2 T@PolymorphicMapType_7951) (Mask@@3 T@PolymorphicMapType_7972) (pm_f_10@@2 T@Field_8011_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8011_13065 Mask@@3 null pm_f_10@@2) (IsWandField_8011_28781 pm_f_10@@2)) (= (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@6) null (WandMaskField_8011 pm_f_10@@2)) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@2) null (WandMaskField_8011 pm_f_10@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_8011_28781 pm_f_10@@2) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@2) null (WandMaskField_8011 pm_f_10@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7951) (ExhaleHeap@@3 T@PolymorphicMapType_7951) (Mask@@4 T@PolymorphicMapType_7972) (pm_f_10@@3 T@Field_13064_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_13064_13065 Mask@@4 null pm_f_10@@3) (IsPredicateField_4533_4534 pm_f_10@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_10 T@Ref) (f_15 T@Field_11338_1198) ) (!  (=> (select (|PolymorphicMapType_8500_4487_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10 f_15) (= (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@7) o2_10 f_15) (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10 f_15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10 f_15))
)) (forall ((o2_10@@0 T@Ref) (f_15@@0 T@Field_8011_53) ) (!  (=> (select (|PolymorphicMapType_8500_4487_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@0 f_15@@0) (= (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@7) o2_10@@0 f_15@@0) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@0 f_15@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@0 f_15@@0))
))) (forall ((o2_10@@1 T@Ref) (f_15@@1 T@Field_8024_8025) ) (!  (=> (select (|PolymorphicMapType_8500_4487_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@1 f_15@@1) (= (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@7) o2_10@@1 f_15@@1) (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@1 f_15@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@1 f_15@@1))
))) (forall ((o2_10@@2 T@Ref) (f_15@@2 T@Field_8011_13065) ) (!  (=> (select (|PolymorphicMapType_8500_4487_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@2 f_15@@2) (= (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@7) o2_10@@2 f_15@@2) (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@2 f_15@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@2 f_15@@2))
))) (forall ((o2_10@@3 T@Ref) (f_15@@3 T@Field_8011_13082) ) (!  (=> (select (|PolymorphicMapType_8500_4487_26925#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@3 f_15@@3) (= (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@7) o2_10@@3 f_15@@3) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@3 f_15@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@3 f_15@@3))
))) (forall ((o2_10@@4 T@Ref) (f_15@@4 T@Field_13064_1198) ) (!  (=> (select (|PolymorphicMapType_8500_13064_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@4 f_15@@4) (= (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@7) o2_10@@4 f_15@@4) (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@4 f_15@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@4 f_15@@4))
))) (forall ((o2_10@@5 T@Ref) (f_15@@5 T@Field_13064_53) ) (!  (=> (select (|PolymorphicMapType_8500_13064_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@5 f_15@@5) (= (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@7) o2_10@@5 f_15@@5) (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@5 f_15@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@5 f_15@@5))
))) (forall ((o2_10@@6 T@Ref) (f_15@@6 T@Field_13064_8025) ) (!  (=> (select (|PolymorphicMapType_8500_13064_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@6 f_15@@6) (= (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@7) o2_10@@6 f_15@@6) (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@6 f_15@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@6 f_15@@6))
))) (forall ((o2_10@@7 T@Ref) (f_15@@7 T@Field_13064_13065) ) (!  (=> (select (|PolymorphicMapType_8500_13064_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@7 f_15@@7) (= (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@7) o2_10@@7 f_15@@7) (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@7 f_15@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@7 f_15@@7))
))) (forall ((o2_10@@8 T@Ref) (f_15@@8 T@Field_13077_13082) ) (!  (=> (select (|PolymorphicMapType_8500_13064_27973#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@8 f_15@@8) (= (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) o2_10@@8 f_15@@8) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@8 f_15@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@8 f_15@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4533_4534 pm_f_10@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7951) (ExhaleHeap@@4 T@PolymorphicMapType_7951) (Mask@@5 T@PolymorphicMapType_7972) (pm_f_10@@4 T@Field_8011_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8011_13065 Mask@@5 null pm_f_10@@4) (IsPredicateField_8011_25453 pm_f_10@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_10@@9 T@Ref) (f_15@@9 T@Field_11338_1198) ) (!  (=> (select (|PolymorphicMapType_8500_4487_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@9 f_15@@9) (= (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@8) o2_10@@9 f_15@@9) (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@9 f_15@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@9 f_15@@9))
)) (forall ((o2_10@@10 T@Ref) (f_15@@10 T@Field_8011_53) ) (!  (=> (select (|PolymorphicMapType_8500_4487_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@10 f_15@@10) (= (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@8) o2_10@@10 f_15@@10) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@10 f_15@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@10 f_15@@10))
))) (forall ((o2_10@@11 T@Ref) (f_15@@11 T@Field_8024_8025) ) (!  (=> (select (|PolymorphicMapType_8500_4487_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@11 f_15@@11) (= (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@8) o2_10@@11 f_15@@11) (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@11 f_15@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@11 f_15@@11))
))) (forall ((o2_10@@12 T@Ref) (f_15@@12 T@Field_8011_13065) ) (!  (=> (select (|PolymorphicMapType_8500_4487_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@12 f_15@@12) (= (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@8) o2_10@@12 f_15@@12) (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@12 f_15@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@12 f_15@@12))
))) (forall ((o2_10@@13 T@Ref) (f_15@@13 T@Field_8011_13082) ) (!  (=> (select (|PolymorphicMapType_8500_4487_26925#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@13 f_15@@13) (= (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) o2_10@@13 f_15@@13) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@13 f_15@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@13 f_15@@13))
))) (forall ((o2_10@@14 T@Ref) (f_15@@14 T@Field_13064_1198) ) (!  (=> (select (|PolymorphicMapType_8500_13064_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@14 f_15@@14) (= (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@8) o2_10@@14 f_15@@14) (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@14 f_15@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@14 f_15@@14))
))) (forall ((o2_10@@15 T@Ref) (f_15@@15 T@Field_13064_53) ) (!  (=> (select (|PolymorphicMapType_8500_13064_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@15 f_15@@15) (= (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@8) o2_10@@15 f_15@@15) (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@15 f_15@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@15 f_15@@15))
))) (forall ((o2_10@@16 T@Ref) (f_15@@16 T@Field_13064_8025) ) (!  (=> (select (|PolymorphicMapType_8500_13064_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@16 f_15@@16) (= (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@8) o2_10@@16 f_15@@16) (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@16 f_15@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@16 f_15@@16))
))) (forall ((o2_10@@17 T@Ref) (f_15@@17 T@Field_13064_13065) ) (!  (=> (select (|PolymorphicMapType_8500_13064_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@17 f_15@@17) (= (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@8) o2_10@@17 f_15@@17) (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@17 f_15@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@17 f_15@@17))
))) (forall ((o2_10@@18 T@Ref) (f_15@@18 T@Field_13077_13082) ) (!  (=> (select (|PolymorphicMapType_8500_13064_27973#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@18 f_15@@18) (= (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@8) o2_10@@18 f_15@@18) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@18 f_15@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@18 f_15@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_8011_25453 pm_f_10@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7951) (ExhaleHeap@@5 T@PolymorphicMapType_7951) (Mask@@6 T@PolymorphicMapType_7972) (pm_f_10@@5 T@Field_13064_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_13064_13065 Mask@@6 null pm_f_10@@5) (IsWandField_13064_29138 pm_f_10@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_10@@19 T@Ref) (f_15@@19 T@Field_11338_1198) ) (!  (=> (select (|PolymorphicMapType_8500_4487_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@19 f_15@@19) (= (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@9) o2_10@@19 f_15@@19) (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@19 f_15@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@19 f_15@@19))
)) (forall ((o2_10@@20 T@Ref) (f_15@@20 T@Field_8011_53) ) (!  (=> (select (|PolymorphicMapType_8500_4487_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@20 f_15@@20) (= (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@9) o2_10@@20 f_15@@20) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@20 f_15@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@20 f_15@@20))
))) (forall ((o2_10@@21 T@Ref) (f_15@@21 T@Field_8024_8025) ) (!  (=> (select (|PolymorphicMapType_8500_4487_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@21 f_15@@21) (= (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@9) o2_10@@21 f_15@@21) (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@21 f_15@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@21 f_15@@21))
))) (forall ((o2_10@@22 T@Ref) (f_15@@22 T@Field_8011_13065) ) (!  (=> (select (|PolymorphicMapType_8500_4487_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@22 f_15@@22) (= (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@9) o2_10@@22 f_15@@22) (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@22 f_15@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@22 f_15@@22))
))) (forall ((o2_10@@23 T@Ref) (f_15@@23 T@Field_8011_13082) ) (!  (=> (select (|PolymorphicMapType_8500_4487_26925#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@23 f_15@@23) (= (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@9) o2_10@@23 f_15@@23) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@23 f_15@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@23 f_15@@23))
))) (forall ((o2_10@@24 T@Ref) (f_15@@24 T@Field_13064_1198) ) (!  (=> (select (|PolymorphicMapType_8500_13064_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@24 f_15@@24) (= (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@9) o2_10@@24 f_15@@24) (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@24 f_15@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@24 f_15@@24))
))) (forall ((o2_10@@25 T@Ref) (f_15@@25 T@Field_13064_53) ) (!  (=> (select (|PolymorphicMapType_8500_13064_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@25 f_15@@25) (= (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@9) o2_10@@25 f_15@@25) (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@25 f_15@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@25 f_15@@25))
))) (forall ((o2_10@@26 T@Ref) (f_15@@26 T@Field_13064_8025) ) (!  (=> (select (|PolymorphicMapType_8500_13064_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@26 f_15@@26) (= (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@9) o2_10@@26 f_15@@26) (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@26 f_15@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@26 f_15@@26))
))) (forall ((o2_10@@27 T@Ref) (f_15@@27 T@Field_13064_13065) ) (!  (=> (select (|PolymorphicMapType_8500_13064_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@27 f_15@@27) (= (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@9) o2_10@@27 f_15@@27) (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@27 f_15@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@27 f_15@@27))
))) (forall ((o2_10@@28 T@Ref) (f_15@@28 T@Field_13077_13082) ) (!  (=> (select (|PolymorphicMapType_8500_13064_27973#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@28 f_15@@28) (= (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) o2_10@@28 f_15@@28) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@28 f_15@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@28 f_15@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_13064_29138 pm_f_10@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7951) (ExhaleHeap@@6 T@PolymorphicMapType_7951) (Mask@@7 T@PolymorphicMapType_7972) (pm_f_10@@6 T@Field_8011_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_8011_13065 Mask@@7 null pm_f_10@@6) (IsWandField_8011_28781 pm_f_10@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_10@@29 T@Ref) (f_15@@29 T@Field_11338_1198) ) (!  (=> (select (|PolymorphicMapType_8500_4487_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@29 f_15@@29) (= (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@10) o2_10@@29 f_15@@29) (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@29 f_15@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@29 f_15@@29))
)) (forall ((o2_10@@30 T@Ref) (f_15@@30 T@Field_8011_53) ) (!  (=> (select (|PolymorphicMapType_8500_4487_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@30 f_15@@30) (= (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@10) o2_10@@30 f_15@@30) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@30 f_15@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@30 f_15@@30))
))) (forall ((o2_10@@31 T@Ref) (f_15@@31 T@Field_8024_8025) ) (!  (=> (select (|PolymorphicMapType_8500_4487_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@31 f_15@@31) (= (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@10) o2_10@@31 f_15@@31) (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@31 f_15@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@31 f_15@@31))
))) (forall ((o2_10@@32 T@Ref) (f_15@@32 T@Field_8011_13065) ) (!  (=> (select (|PolymorphicMapType_8500_4487_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@32 f_15@@32) (= (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@10) o2_10@@32 f_15@@32) (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@32 f_15@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@32 f_15@@32))
))) (forall ((o2_10@@33 T@Ref) (f_15@@33 T@Field_8011_13082) ) (!  (=> (select (|PolymorphicMapType_8500_4487_26925#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@33 f_15@@33) (= (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) o2_10@@33 f_15@@33) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@33 f_15@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@33 f_15@@33))
))) (forall ((o2_10@@34 T@Ref) (f_15@@34 T@Field_13064_1198) ) (!  (=> (select (|PolymorphicMapType_8500_13064_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@34 f_15@@34) (= (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@10) o2_10@@34 f_15@@34) (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@34 f_15@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@34 f_15@@34))
))) (forall ((o2_10@@35 T@Ref) (f_15@@35 T@Field_13064_53) ) (!  (=> (select (|PolymorphicMapType_8500_13064_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@35 f_15@@35) (= (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@10) o2_10@@35 f_15@@35) (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@35 f_15@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@35 f_15@@35))
))) (forall ((o2_10@@36 T@Ref) (f_15@@36 T@Field_13064_8025) ) (!  (=> (select (|PolymorphicMapType_8500_13064_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@36 f_15@@36) (= (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@10) o2_10@@36 f_15@@36) (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@36 f_15@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@36 f_15@@36))
))) (forall ((o2_10@@37 T@Ref) (f_15@@37 T@Field_13064_13065) ) (!  (=> (select (|PolymorphicMapType_8500_13064_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@37 f_15@@37) (= (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@10) o2_10@@37 f_15@@37) (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@37 f_15@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@37 f_15@@37))
))) (forall ((o2_10@@38 T@Ref) (f_15@@38 T@Field_13077_13082) ) (!  (=> (select (|PolymorphicMapType_8500_13064_27973#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@38 f_15@@38) (= (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@10) o2_10@@38 f_15@@38) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@38 f_15@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@38 f_15@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_8011_28781 pm_f_10@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7951) (ExhaleHeap@@7 T@PolymorphicMapType_7951) (Mask@@8 T@PolymorphicMapType_7972) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@11) o_23 $allocated) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@7) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@7) o_23 $allocated))
)))
(assert (forall ((p T@Field_13064_13065) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_13064_13064 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13064_13064 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8011_13065) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8011_8011 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8011_8011 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4487_1198 f_7)))
(assert  (not (IsWandField_4487_1198 f_7)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7951) (ExhaleHeap@@8 T@PolymorphicMapType_7951) (Mask@@9 T@PolymorphicMapType_7972) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7972) (o_2@@9 T@Ref) (f_4@@9 T@Field_13077_13082) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4533_36070 f_4@@9))) (not (IsWandField_4533_36086 f_4@@9))) (<= (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7972) (o_2@@10 T@Ref) (f_4@@10 T@Field_13064_8025) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4533_8025 f_4@@10))) (not (IsWandField_4533_8025 f_4@@10))) (<= (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7972) (o_2@@11 T@Ref) (f_4@@11 T@Field_13064_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4533_53 f_4@@11))) (not (IsWandField_4533_53 f_4@@11))) (<= (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7972) (o_2@@12 T@Ref) (f_4@@12 T@Field_13064_13065) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4533_4534 f_4@@12))) (not (IsWandField_13064_29138 f_4@@12))) (<= (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7972) (o_2@@13 T@Ref) (f_4@@13 T@Field_13064_1198) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4533_1198 f_4@@13))) (not (IsWandField_4533_1198 f_4@@13))) (<= (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7972) (o_2@@14 T@Ref) (f_4@@14 T@Field_8011_13082) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4487_35239 f_4@@14))) (not (IsWandField_4487_35255 f_4@@14))) (<= (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7972) (o_2@@15 T@Ref) (f_4@@15 T@Field_8024_8025) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4487_8025 f_4@@15))) (not (IsWandField_4487_8025 f_4@@15))) (<= (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7972) (o_2@@16 T@Ref) (f_4@@16 T@Field_8011_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4487_53 f_4@@16))) (not (IsWandField_4487_53 f_4@@16))) (<= (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7972) (o_2@@17 T@Ref) (f_4@@17 T@Field_8011_13065) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8011_25453 f_4@@17))) (not (IsWandField_8011_28781 f_4@@17))) (<= (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7972) (o_2@@18 T@Ref) (f_4@@18 T@Field_11338_1198) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4487_1198 f_4@@18))) (not (IsWandField_4487_1198 f_4@@18))) (<= (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7972) (o_2@@19 T@Ref) (f_4@@19 T@Field_13077_13082) ) (! (= (HasDirectPerm_13064_25208 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13064_25208 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7972) (o_2@@20 T@Ref) (f_4@@20 T@Field_13064_13065) ) (! (= (HasDirectPerm_13064_13065 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13064_13065 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7972) (o_2@@21 T@Ref) (f_4@@21 T@Field_13064_1198) ) (! (= (HasDirectPerm_13064_1198 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13064_1198 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7972) (o_2@@22 T@Ref) (f_4@@22 T@Field_13064_8025) ) (! (= (HasDirectPerm_13064_8025 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13064_8025 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7972) (o_2@@23 T@Ref) (f_4@@23 T@Field_13064_53) ) (! (= (HasDirectPerm_13064_53 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13064_53 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7972) (o_2@@24 T@Ref) (f_4@@24 T@Field_8011_13082) ) (! (= (HasDirectPerm_8011_24047 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8011_24047 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_7972) (o_2@@25 T@Ref) (f_4@@25 T@Field_8011_13065) ) (! (= (HasDirectPerm_8011_13065 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8011_13065 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_7972) (o_2@@26 T@Ref) (f_4@@26 T@Field_11338_1198) ) (! (= (HasDirectPerm_8011_1198 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8011_1198 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_7972) (o_2@@27 T@Ref) (f_4@@27 T@Field_8024_8025) ) (! (= (HasDirectPerm_8011_8025 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8011_8025 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_7972) (o_2@@28 T@Ref) (f_4@@28 T@Field_8011_53) ) (! (= (HasDirectPerm_8011_53 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8011_53 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7951) (b_24@@3 Bool) (x@@3 T@Ref) (y T@Ref) (j@@1 Int) ) (! (dummyFunction_1379 (|fun2#triggerStateless| b_24@@3 x@@3 y j@@1))
 :qid |stdinbpl.259:15|
 :skolemid |27|
 :pattern ( (|fun2'| Heap@@13 b_24@@3 x@@3 y j@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7951) (Mask@@30 T@PolymorphicMapType_7972) (b_24@@4 Bool) (x@@4 T@Ref) (y@@0 T@Ref) (j@@2 Int) ) (!  (=> (and (state Heap@@14 Mask@@30) (< AssumeFunctionsAbove 1)) (= (fun2 Heap@@14 b_24@@4 x@@4 y@@0 j@@2) 10))
 :qid |stdinbpl.265:15|
 :skolemid |28|
 :pattern ( (state Heap@@14 Mask@@30) (fun2 Heap@@14 b_24@@4 x@@4 y@@0 j@@2))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7951) (ExhaleHeap@@9 T@PolymorphicMapType_7951) (Mask@@31 T@PolymorphicMapType_7972) (o_23@@0 T@Ref) (f_15@@39 T@Field_13077_13082) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_13064_25208 Mask@@31 o_23@@0 f_15@@39) (= (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@15) o_23@@0 f_15@@39) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@9) o_23@@0 f_15@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@9) o_23@@0 f_15@@39))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7951) (ExhaleHeap@@10 T@PolymorphicMapType_7951) (Mask@@32 T@PolymorphicMapType_7972) (o_23@@1 T@Ref) (f_15@@40 T@Field_13064_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_13064_13065 Mask@@32 o_23@@1 f_15@@40) (= (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@16) o_23@@1 f_15@@40) (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@10) o_23@@1 f_15@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@10) o_23@@1 f_15@@40))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7951) (ExhaleHeap@@11 T@PolymorphicMapType_7951) (Mask@@33 T@PolymorphicMapType_7972) (o_23@@2 T@Ref) (f_15@@41 T@Field_13064_1198) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_13064_1198 Mask@@33 o_23@@2 f_15@@41) (= (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@17) o_23@@2 f_15@@41) (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@11) o_23@@2 f_15@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@11) o_23@@2 f_15@@41))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7951) (ExhaleHeap@@12 T@PolymorphicMapType_7951) (Mask@@34 T@PolymorphicMapType_7972) (o_23@@3 T@Ref) (f_15@@42 T@Field_13064_8025) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_13064_8025 Mask@@34 o_23@@3 f_15@@42) (= (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@18) o_23@@3 f_15@@42) (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@12) o_23@@3 f_15@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@12) o_23@@3 f_15@@42))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7951) (ExhaleHeap@@13 T@PolymorphicMapType_7951) (Mask@@35 T@PolymorphicMapType_7972) (o_23@@4 T@Ref) (f_15@@43 T@Field_13064_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_13064_53 Mask@@35 o_23@@4 f_15@@43) (= (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@19) o_23@@4 f_15@@43) (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@13) o_23@@4 f_15@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@13) o_23@@4 f_15@@43))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7951) (ExhaleHeap@@14 T@PolymorphicMapType_7951) (Mask@@36 T@PolymorphicMapType_7972) (o_23@@5 T@Ref) (f_15@@44 T@Field_8011_13082) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_8011_24047 Mask@@36 o_23@@5 f_15@@44) (= (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@20) o_23@@5 f_15@@44) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@14) o_23@@5 f_15@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@14) o_23@@5 f_15@@44))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7951) (ExhaleHeap@@15 T@PolymorphicMapType_7951) (Mask@@37 T@PolymorphicMapType_7972) (o_23@@6 T@Ref) (f_15@@45 T@Field_8011_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_8011_13065 Mask@@37 o_23@@6 f_15@@45) (= (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@21) o_23@@6 f_15@@45) (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@15) o_23@@6 f_15@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@15) o_23@@6 f_15@@45))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7951) (ExhaleHeap@@16 T@PolymorphicMapType_7951) (Mask@@38 T@PolymorphicMapType_7972) (o_23@@7 T@Ref) (f_15@@46 T@Field_11338_1198) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_8011_1198 Mask@@38 o_23@@7 f_15@@46) (= (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@22) o_23@@7 f_15@@46) (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@16) o_23@@7 f_15@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@16) o_23@@7 f_15@@46))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7951) (ExhaleHeap@@17 T@PolymorphicMapType_7951) (Mask@@39 T@PolymorphicMapType_7972) (o_23@@8 T@Ref) (f_15@@47 T@Field_8024_8025) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_8011_8025 Mask@@39 o_23@@8 f_15@@47) (= (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@23) o_23@@8 f_15@@47) (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@17) o_23@@8 f_15@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@17) o_23@@8 f_15@@47))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7951) (ExhaleHeap@@18 T@PolymorphicMapType_7951) (Mask@@40 T@PolymorphicMapType_7972) (o_23@@9 T@Ref) (f_15@@48 T@Field_8011_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_8011_53 Mask@@40 o_23@@9 f_15@@48) (= (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@24) o_23@@9 f_15@@48) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@18) o_23@@9 f_15@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@18) o_23@@9 f_15@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_13077_13082) ) (! (= (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_13064_8025) ) (! (= (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_13064_53) ) (! (= (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_13064_13065) ) (! (= (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_13064_1198) ) (! (= (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_8011_13082) ) (! (= (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_8024_8025) ) (! (= (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_8011_53) ) (! (= (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_8011_13065) ) (! (= (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_11338_1198) ) (! (= (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7951) (b_24@@5 Bool) (x@@5 T@Ref) (y@@1 T@Ref) (j@@3 Int) ) (!  (and (= (fun2 Heap@@25 b_24@@5 x@@5 y@@1 j@@3) (|fun2'| Heap@@25 b_24@@5 x@@5 y@@1 j@@3)) (dummyFunction_1379 (|fun2#triggerStateless| b_24@@5 x@@5 y@@1 j@@3)))
 :qid |stdinbpl.255:15|
 :skolemid |26|
 :pattern ( (fun2 Heap@@25 b_24@@5 x@@5 y@@1 j@@3))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7972) (SummandMask1 T@PolymorphicMapType_7972) (SummandMask2 T@PolymorphicMapType_7972) (o_2@@39 T@Ref) (f_4@@39 T@Field_13077_13082) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7972) (SummandMask1@@0 T@PolymorphicMapType_7972) (SummandMask2@@0 T@PolymorphicMapType_7972) (o_2@@40 T@Ref) (f_4@@40 T@Field_13064_8025) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7972) (SummandMask1@@1 T@PolymorphicMapType_7972) (SummandMask2@@1 T@PolymorphicMapType_7972) (o_2@@41 T@Ref) (f_4@@41 T@Field_13064_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7972) (SummandMask1@@2 T@PolymorphicMapType_7972) (SummandMask2@@2 T@PolymorphicMapType_7972) (o_2@@42 T@Ref) (f_4@@42 T@Field_13064_13065) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7972) (SummandMask1@@3 T@PolymorphicMapType_7972) (SummandMask2@@3 T@PolymorphicMapType_7972) (o_2@@43 T@Ref) (f_4@@43 T@Field_13064_1198) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7972) (SummandMask1@@4 T@PolymorphicMapType_7972) (SummandMask2@@4 T@PolymorphicMapType_7972) (o_2@@44 T@Ref) (f_4@@44 T@Field_8011_13082) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7972) (SummandMask1@@5 T@PolymorphicMapType_7972) (SummandMask2@@5 T@PolymorphicMapType_7972) (o_2@@45 T@Ref) (f_4@@45 T@Field_8024_8025) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7972) (SummandMask1@@6 T@PolymorphicMapType_7972) (SummandMask2@@6 T@PolymorphicMapType_7972) (o_2@@46 T@Ref) (f_4@@46 T@Field_8011_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_7972) (SummandMask1@@7 T@PolymorphicMapType_7972) (SummandMask2@@7 T@PolymorphicMapType_7972) (o_2@@47 T@Ref) (f_4@@47 T@Field_8011_13065) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_7972) (SummandMask1@@8 T@PolymorphicMapType_7972) (SummandMask2@@8 T@PolymorphicMapType_7972) (o_2@@48 T@Ref) (f_4@@48 T@Field_11338_1198) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((x@@6 T@Ref) (b_24@@6 Bool) ) (! (= (getPredWandId_4533_4534 (P x@@6 b_24@@6)) 0)
 :qid |stdinbpl.330:15|
 :skolemid |32|
 :pattern ( (P x@@6 b_24@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7951) (Mask@@41 T@PolymorphicMapType_7972) (j@@4 Int) ) (!  (=> (state Heap@@26 Mask@@41) (= (|fun1'| Heap@@26 j@@4) (|fun1#frame| EmptyFrame j@@4)))
 :qid |stdinbpl.222:15|
 :skolemid |25|
 :pattern ( (state Heap@@26 Mask@@41) (|fun1'| Heap@@26 j@@4))
)))
(assert (forall ((x@@7 T@Ref) (b_24@@7 Bool) ) (! (= (PredicateMaskField_4533 (P x@@7 b_24@@7)) (|P#sm| x@@7 b_24@@7))
 :qid |stdinbpl.322:15|
 :skolemid |30|
 :pattern ( (PredicateMaskField_4533 (P x@@7 b_24@@7)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7951) (o_4 T@Ref) (f_25 T@Field_13077_13082) (v T@PolymorphicMapType_8500) ) (! (succHeap Heap@@27 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@27) (store (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@27) o_4 f_25 v) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@27) (store (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@27) o_4 f_25 v) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7951) (o_4@@0 T@Ref) (f_25@@0 T@Field_13064_13065) (v@@0 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@28) (store (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@28) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@28) (store (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@28) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7951) (o_4@@1 T@Ref) (f_25@@1 T@Field_13064_1198) (v@@1 Int) ) (! (succHeap Heap@@29 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@29) (store (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@29) o_4@@1 f_25@@1 v@@1)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@29) (store (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@29) o_4@@1 f_25@@1 v@@1)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7951) (o_4@@2 T@Ref) (f_25@@2 T@Field_13064_8025) (v@@2 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@30) (store (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@30) o_4@@2 f_25@@2 v@@2) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@30) (store (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@30) o_4@@2 f_25@@2 v@@2) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7951) (o_4@@3 T@Ref) (f_25@@3 T@Field_13064_53) (v@@3 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@31) (store (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@31) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@31) (store (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@31) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_7951) (o_4@@4 T@Ref) (f_25@@4 T@Field_8011_13082) (v@@4 T@PolymorphicMapType_8500) ) (! (succHeap Heap@@32 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@32) (store (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@32) o_4@@4 f_25@@4 v@@4) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@32) (store (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@32) o_4@@4 f_25@@4 v@@4) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_7951) (o_4@@5 T@Ref) (f_25@@5 T@Field_8011_13065) (v@@5 T@FrameType) ) (! (succHeap Heap@@33 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@33) (store (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@33) o_4@@5 f_25@@5 v@@5) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@33) (store (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@33) o_4@@5 f_25@@5 v@@5) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_7951) (o_4@@6 T@Ref) (f_25@@6 T@Field_11338_1198) (v@@6 Int) ) (! (succHeap Heap@@34 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@34) (store (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@34) o_4@@6 f_25@@6 v@@6) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@34) (store (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@34) o_4@@6 f_25@@6 v@@6) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_7951) (o_4@@7 T@Ref) (f_25@@7 T@Field_8024_8025) (v@@7 T@Ref) ) (! (succHeap Heap@@35 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@35) (store (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@35) o_4@@7 f_25@@7 v@@7) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@35) (store (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@35) o_4@@7 f_25@@7 v@@7) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_7951) (o_4@@8 T@Ref) (f_25@@8 T@Field_8011_53) (v@@8 Bool) ) (! (succHeap Heap@@36 (PolymorphicMapType_7951 (store (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@36) o_4@@8 f_25@@8 v@@8) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (store (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@36) o_4@@8 f_25@@8 v@@8) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_7951) (Mask@@42 T@PolymorphicMapType_7972) (b_24@@8 Bool) (x@@8 T@Ref) (y@@2 T@Ref) (j@@5 Int) ) (!  (=> (state Heap@@37 Mask@@42) (= (|fun2'| Heap@@37 b_24@@8 x@@8 y@@2 j@@5) (|fun2#frame| (FrameFragment_5914 (ite b_24@@8 (FrameFragment_1198 (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@37) x@@8 f_7)) (FrameFragment_1198 (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@37) y@@2 f_7)))) b_24@@8 x@@8 y@@2 j@@5)))
 :qid |stdinbpl.272:15|
 :skolemid |29|
 :pattern ( (state Heap@@37 Mask@@42) (|fun2'| Heap@@37 b_24@@8 x@@8 y@@2 j@@5))
)))
(assert (forall ((o_4@@9 T@Ref) (f_9 T@Field_8024_8025) (Heap@@38 T@PolymorphicMapType_7951) ) (!  (=> (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@38) o_4@@9 $allocated) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@38) (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@38) o_4@@9 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@38) o_4@@9 f_9))
)))
(assert (forall ((p@@2 T@Field_13064_13065) (v_1@@1 T@FrameType) (q T@Field_13064_13065) (w@@1 T@FrameType) (r T@Field_13064_13065) (u T@FrameType) ) (!  (=> (and (InsidePredicate_13064_13064 p@@2 v_1@@1 q w@@1) (InsidePredicate_13064_13064 q w@@1 r u)) (InsidePredicate_13064_13064 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13064_13064 p@@2 v_1@@1 q w@@1) (InsidePredicate_13064_13064 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_13064_13065) (v_1@@2 T@FrameType) (q@@0 T@Field_13064_13065) (w@@2 T@FrameType) (r@@0 T@Field_8011_13065) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_13064_13064 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13064_8011 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_13064_8011 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13064_13064 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13064_8011 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_13064_13065) (v_1@@3 T@FrameType) (q@@1 T@Field_8011_13065) (w@@3 T@FrameType) (r@@1 T@Field_13064_13065) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_13064_8011 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8011_13064 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_13064_13064 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13064_8011 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8011_13064 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_13064_13065) (v_1@@4 T@FrameType) (q@@2 T@Field_8011_13065) (w@@4 T@FrameType) (r@@2 T@Field_8011_13065) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_13064_8011 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8011_8011 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_13064_8011 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13064_8011 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8011_8011 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_8011_13065) (v_1@@5 T@FrameType) (q@@3 T@Field_13064_13065) (w@@5 T@FrameType) (r@@3 T@Field_13064_13065) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8011_13064 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13064_13064 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8011_13064 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8011_13064 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13064_13064 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_8011_13065) (v_1@@6 T@FrameType) (q@@4 T@Field_13064_13065) (w@@6 T@FrameType) (r@@4 T@Field_8011_13065) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8011_13064 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13064_8011 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8011_8011 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8011_13064 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13064_8011 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_8011_13065) (v_1@@7 T@FrameType) (q@@5 T@Field_8011_13065) (w@@7 T@FrameType) (r@@5 T@Field_13064_13065) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8011_8011 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8011_13064 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8011_13064 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8011_8011 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8011_13064 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_8011_13065) (v_1@@8 T@FrameType) (q@@6 T@Field_8011_13065) (w@@8 T@FrameType) (r@@6 T@Field_8011_13065) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8011_8011 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8011_8011 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8011_8011 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8011_8011 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8011_8011 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_7951) (Mask@@43 T@PolymorphicMapType_7972) (j@@6 Int) ) (!  (=> (and (state Heap@@39 Mask@@43) (< AssumeFunctionsAbove 0)) (= (fun1 Heap@@39 j@@6) 10))
 :qid |stdinbpl.215:15|
 :skolemid |24|
 :pattern ( (state Heap@@39 Mask@@43) (fun1 Heap@@39 j@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |P#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) true)
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
(declare-sort T@Field_8011_53 0)
(declare-sort T@Field_8024_8025 0)
(declare-sort T@Field_11338_1198 0)
(declare-sort T@Field_13064_13065 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_13077_13082 0)
(declare-sort T@Field_8011_13065 0)
(declare-sort T@Field_8011_13082 0)
(declare-sort T@Field_13064_53 0)
(declare-sort T@Field_13064_8025 0)
(declare-sort T@Field_13064_1198 0)
(declare-datatypes ((T@PolymorphicMapType_7972 0)) (((PolymorphicMapType_7972 (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| (Array T@Ref T@Field_11338_1198 Real)) (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| (Array T@Ref T@Field_13064_13065 Real)) (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| (Array T@Ref T@Field_8011_13065 Real)) (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| (Array T@Ref T@Field_8011_53 Real)) (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| (Array T@Ref T@Field_8024_8025 Real)) (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| (Array T@Ref T@Field_8011_13082 Real)) (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| (Array T@Ref T@Field_13064_1198 Real)) (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| (Array T@Ref T@Field_13064_53 Real)) (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| (Array T@Ref T@Field_13064_8025 Real)) (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| (Array T@Ref T@Field_13077_13082 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8500 0)) (((PolymorphicMapType_8500 (|PolymorphicMapType_8500_4487_1198#PolymorphicMapType_8500| (Array T@Ref T@Field_11338_1198 Bool)) (|PolymorphicMapType_8500_4487_53#PolymorphicMapType_8500| (Array T@Ref T@Field_8011_53 Bool)) (|PolymorphicMapType_8500_4487_8025#PolymorphicMapType_8500| (Array T@Ref T@Field_8024_8025 Bool)) (|PolymorphicMapType_8500_4487_13065#PolymorphicMapType_8500| (Array T@Ref T@Field_8011_13065 Bool)) (|PolymorphicMapType_8500_4487_26925#PolymorphicMapType_8500| (Array T@Ref T@Field_8011_13082 Bool)) (|PolymorphicMapType_8500_13064_1198#PolymorphicMapType_8500| (Array T@Ref T@Field_13064_1198 Bool)) (|PolymorphicMapType_8500_13064_53#PolymorphicMapType_8500| (Array T@Ref T@Field_13064_53 Bool)) (|PolymorphicMapType_8500_13064_8025#PolymorphicMapType_8500| (Array T@Ref T@Field_13064_8025 Bool)) (|PolymorphicMapType_8500_13064_13065#PolymorphicMapType_8500| (Array T@Ref T@Field_13064_13065 Bool)) (|PolymorphicMapType_8500_13064_27973#PolymorphicMapType_8500| (Array T@Ref T@Field_13077_13082 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7951 0)) (((PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| (Array T@Ref T@Field_8011_53 Bool)) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| (Array T@Ref T@Field_8024_8025 T@Ref)) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| (Array T@Ref T@Field_11338_1198 Int)) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| (Array T@Ref T@Field_13064_13065 T@FrameType)) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| (Array T@Ref T@Field_13077_13082 T@PolymorphicMapType_8500)) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| (Array T@Ref T@Field_8011_13065 T@FrameType)) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| (Array T@Ref T@Field_8011_13082 T@PolymorphicMapType_8500)) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| (Array T@Ref T@Field_13064_53 Bool)) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| (Array T@Ref T@Field_13064_8025 T@Ref)) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| (Array T@Ref T@Field_13064_1198 Int)) ) ) ))
(declare-fun $allocated () T@Field_8011_53)
(declare-fun f_7 () T@Field_11338_1198)
(declare-fun succHeap (T@PolymorphicMapType_7951 T@PolymorphicMapType_7951) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7951 T@PolymorphicMapType_7951) Bool)
(declare-fun state (T@PolymorphicMapType_7951 T@PolymorphicMapType_7972) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7972) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8500)
(declare-fun P (T@Ref Bool) T@Field_13064_13065)
(declare-fun IsPredicateField_4533_4534 (T@Field_13064_13065) Bool)
(declare-fun |P#trigger_4533| (T@PolymorphicMapType_7951 T@Field_13064_13065) Bool)
(declare-fun |P#everUsed_4533| (T@Field_13064_13065) Bool)
(declare-fun |fun1'| (T@PolymorphicMapType_7951 Int) Int)
(declare-fun dummyFunction_1379 (Int) Bool)
(declare-fun |fun1#triggerStateless| (Int) Int)
(declare-fun |P#sm| (T@Ref Bool) T@Field_13077_13082)
(declare-fun fun1 (T@PolymorphicMapType_7951 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7951 T@PolymorphicMapType_7951 T@PolymorphicMapType_7972) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4533 (T@Field_13064_13065) T@Field_13077_13082)
(declare-fun HasDirectPerm_13064_13065 (T@PolymorphicMapType_7972 T@Ref T@Field_13064_13065) Bool)
(declare-fun IsPredicateField_8011_25453 (T@Field_8011_13065) Bool)
(declare-fun PredicateMaskField_8011 (T@Field_8011_13065) T@Field_8011_13082)
(declare-fun HasDirectPerm_8011_13065 (T@PolymorphicMapType_7972 T@Ref T@Field_8011_13065) Bool)
(declare-fun IsWandField_13064_29138 (T@Field_13064_13065) Bool)
(declare-fun WandMaskField_13064 (T@Field_13064_13065) T@Field_13077_13082)
(declare-fun IsWandField_8011_28781 (T@Field_8011_13065) Bool)
(declare-fun WandMaskField_8011 (T@Field_8011_13065) T@Field_8011_13082)
(declare-fun dummyHeap () T@PolymorphicMapType_7951)
(declare-fun ZeroMask () T@PolymorphicMapType_7972)
(declare-fun InsidePredicate_13064_13064 (T@Field_13064_13065 T@FrameType T@Field_13064_13065 T@FrameType) Bool)
(declare-fun InsidePredicate_8011_8011 (T@Field_8011_13065 T@FrameType T@Field_8011_13065 T@FrameType) Bool)
(declare-fun IsPredicateField_4487_1198 (T@Field_11338_1198) Bool)
(declare-fun IsWandField_4487_1198 (T@Field_11338_1198) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4533_36070 (T@Field_13077_13082) Bool)
(declare-fun IsWandField_4533_36086 (T@Field_13077_13082) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4533_8025 (T@Field_13064_8025) Bool)
(declare-fun IsWandField_4533_8025 (T@Field_13064_8025) Bool)
(declare-fun IsPredicateField_4533_53 (T@Field_13064_53) Bool)
(declare-fun IsWandField_4533_53 (T@Field_13064_53) Bool)
(declare-fun IsPredicateField_4533_1198 (T@Field_13064_1198) Bool)
(declare-fun IsWandField_4533_1198 (T@Field_13064_1198) Bool)
(declare-fun IsPredicateField_4487_35239 (T@Field_8011_13082) Bool)
(declare-fun IsWandField_4487_35255 (T@Field_8011_13082) Bool)
(declare-fun IsPredicateField_4487_8025 (T@Field_8024_8025) Bool)
(declare-fun IsWandField_4487_8025 (T@Field_8024_8025) Bool)
(declare-fun IsPredicateField_4487_53 (T@Field_8011_53) Bool)
(declare-fun IsWandField_4487_53 (T@Field_8011_53) Bool)
(declare-fun HasDirectPerm_13064_25208 (T@PolymorphicMapType_7972 T@Ref T@Field_13077_13082) Bool)
(declare-fun HasDirectPerm_13064_1198 (T@PolymorphicMapType_7972 T@Ref T@Field_13064_1198) Bool)
(declare-fun HasDirectPerm_13064_8025 (T@PolymorphicMapType_7972 T@Ref T@Field_13064_8025) Bool)
(declare-fun HasDirectPerm_13064_53 (T@PolymorphicMapType_7972 T@Ref T@Field_13064_53) Bool)
(declare-fun HasDirectPerm_8011_24047 (T@PolymorphicMapType_7972 T@Ref T@Field_8011_13082) Bool)
(declare-fun HasDirectPerm_8011_1198 (T@PolymorphicMapType_7972 T@Ref T@Field_11338_1198) Bool)
(declare-fun HasDirectPerm_8011_8025 (T@PolymorphicMapType_7972 T@Ref T@Field_8024_8025) Bool)
(declare-fun HasDirectPerm_8011_53 (T@PolymorphicMapType_7972 T@Ref T@Field_8011_53) Bool)
(declare-fun |fun2'| (T@PolymorphicMapType_7951 Bool T@Ref T@Ref Int) Int)
(declare-fun |fun2#triggerStateless| (Bool T@Ref T@Ref Int) Int)
(declare-fun fun2 (T@PolymorphicMapType_7951 Bool T@Ref T@Ref Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7972 T@PolymorphicMapType_7972 T@PolymorphicMapType_7972) Bool)
(declare-fun getPredWandId_4533_4534 (T@Field_13064_13065) Int)
(declare-fun |fun1#frame| (T@FrameType Int) Int)
(declare-fun |fun2#frame| (T@FrameType Bool T@Ref T@Ref Int) Int)
(declare-fun FrameFragment_5914 (T@FrameType) T@FrameType)
(declare-fun FrameFragment_1198 (Int) T@FrameType)
(declare-fun InsidePredicate_13064_8011 (T@Field_13064_13065 T@FrameType T@Field_8011_13065 T@FrameType) Bool)
(declare-fun InsidePredicate_8011_13064 (T@Field_8011_13065 T@FrameType T@Field_13064_13065 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7951) (Heap1 T@PolymorphicMapType_7951) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7951) (Mask T@PolymorphicMapType_7972) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7951) (Heap1@@0 T@PolymorphicMapType_7951) (Heap2 T@PolymorphicMapType_7951) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13077_13082) ) (!  (not (select (|PolymorphicMapType_8500_13064_27973#PolymorphicMapType_8500| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_13064_27973#PolymorphicMapType_8500| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_13064_13065) ) (!  (not (select (|PolymorphicMapType_8500_13064_13065#PolymorphicMapType_8500| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_13064_13065#PolymorphicMapType_8500| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13064_8025) ) (!  (not (select (|PolymorphicMapType_8500_13064_8025#PolymorphicMapType_8500| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_13064_8025#PolymorphicMapType_8500| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13064_53) ) (!  (not (select (|PolymorphicMapType_8500_13064_53#PolymorphicMapType_8500| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_13064_53#PolymorphicMapType_8500| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13064_1198) ) (!  (not (select (|PolymorphicMapType_8500_13064_1198#PolymorphicMapType_8500| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_13064_1198#PolymorphicMapType_8500| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8011_13082) ) (!  (not (select (|PolymorphicMapType_8500_4487_26925#PolymorphicMapType_8500| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_4487_26925#PolymorphicMapType_8500| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8011_13065) ) (!  (not (select (|PolymorphicMapType_8500_4487_13065#PolymorphicMapType_8500| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_4487_13065#PolymorphicMapType_8500| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8024_8025) ) (!  (not (select (|PolymorphicMapType_8500_4487_8025#PolymorphicMapType_8500| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_4487_8025#PolymorphicMapType_8500| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8011_53) ) (!  (not (select (|PolymorphicMapType_8500_4487_53#PolymorphicMapType_8500| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_4487_53#PolymorphicMapType_8500| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11338_1198) ) (!  (not (select (|PolymorphicMapType_8500_4487_1198#PolymorphicMapType_8500| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8500_4487_1198#PolymorphicMapType_8500| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((x T@Ref) (b_24 Bool) ) (! (IsPredicateField_4533_4534 (P x b_24))
 :qid |stdinbpl.326:15|
 :skolemid |31|
 :pattern ( (P x b_24))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7951) (x@@0 T@Ref) (b_24@@0 Bool) ) (! (|P#everUsed_4533| (P x@@0 b_24@@0))
 :qid |stdinbpl.345:15|
 :skolemid |35|
 :pattern ( (|P#trigger_4533| Heap@@0 (P x@@0 b_24@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7951) (j Int) ) (! (dummyFunction_1379 (|fun1#triggerStateless| j))
 :qid |stdinbpl.209:15|
 :skolemid |23|
 :pattern ( (|fun1'| Heap@@1 j))
)))
(assert (forall ((x@@1 T@Ref) (b_24@@1 Bool) (x2 T@Ref) (b2 Bool) ) (!  (=> (= (P x@@1 b_24@@1) (P x2 b2)) (and (= x@@1 x2) (= b_24@@1 b2)))
 :qid |stdinbpl.336:15|
 :skolemid |33|
 :pattern ( (P x@@1 b_24@@1) (P x2 b2))
)))
(assert (forall ((x@@2 T@Ref) (b_24@@2 Bool) (x2@@0 T@Ref) (b2@@0 Bool) ) (!  (=> (= (|P#sm| x@@2 b_24@@2) (|P#sm| x2@@0 b2@@0)) (and (= x@@2 x2@@0) (= b_24@@2 b2@@0)))
 :qid |stdinbpl.340:15|
 :skolemid |34|
 :pattern ( (|P#sm| x@@2 b_24@@2) (|P#sm| x2@@0 b2@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7951) (j@@0 Int) ) (!  (and (= (fun1 Heap@@2 j@@0) (|fun1'| Heap@@2 j@@0)) (dummyFunction_1379 (|fun1#triggerStateless| j@@0)))
 :qid |stdinbpl.205:15|
 :skolemid |22|
 :pattern ( (fun1 Heap@@2 j@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7951) (ExhaleHeap T@PolymorphicMapType_7951) (Mask@@0 T@PolymorphicMapType_7972) (pm_f_10 T@Field_13064_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_13064_13065 Mask@@0 null pm_f_10) (IsPredicateField_4533_4534 pm_f_10)) (= (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@3) null (PredicateMaskField_4533 pm_f_10)) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap) null (PredicateMaskField_4533 pm_f_10)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@0) (IsPredicateField_4533_4534 pm_f_10) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap) null (PredicateMaskField_4533 pm_f_10)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7951) (ExhaleHeap@@0 T@PolymorphicMapType_7951) (Mask@@1 T@PolymorphicMapType_7972) (pm_f_10@@0 T@Field_8011_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8011_13065 Mask@@1 null pm_f_10@@0) (IsPredicateField_8011_25453 pm_f_10@@0)) (= (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@4) null (PredicateMaskField_8011 pm_f_10@@0)) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@0) null (PredicateMaskField_8011 pm_f_10@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@1) (IsPredicateField_8011_25453 pm_f_10@@0) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@0) null (PredicateMaskField_8011 pm_f_10@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7951) (ExhaleHeap@@1 T@PolymorphicMapType_7951) (Mask@@2 T@PolymorphicMapType_7972) (pm_f_10@@1 T@Field_13064_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_13064_13065 Mask@@2 null pm_f_10@@1) (IsWandField_13064_29138 pm_f_10@@1)) (= (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@5) null (WandMaskField_13064 pm_f_10@@1)) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@1) null (WandMaskField_13064 pm_f_10@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@2) (IsWandField_13064_29138 pm_f_10@@1) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@1) null (WandMaskField_13064 pm_f_10@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7951) (ExhaleHeap@@2 T@PolymorphicMapType_7951) (Mask@@3 T@PolymorphicMapType_7972) (pm_f_10@@2 T@Field_8011_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8011_13065 Mask@@3 null pm_f_10@@2) (IsWandField_8011_28781 pm_f_10@@2)) (= (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@6) null (WandMaskField_8011 pm_f_10@@2)) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@2) null (WandMaskField_8011 pm_f_10@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@3) (IsWandField_8011_28781 pm_f_10@@2) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@2) null (WandMaskField_8011 pm_f_10@@2)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7951) (ExhaleHeap@@3 T@PolymorphicMapType_7951) (Mask@@4 T@PolymorphicMapType_7972) (pm_f_10@@3 T@Field_13064_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_13064_13065 Mask@@4 null pm_f_10@@3) (IsPredicateField_4533_4534 pm_f_10@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_10 T@Ref) (f_15 T@Field_11338_1198) ) (!  (=> (select (|PolymorphicMapType_8500_4487_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10 f_15) (= (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@7) o2_10 f_15) (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10 f_15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10 f_15))
)) (forall ((o2_10@@0 T@Ref) (f_15@@0 T@Field_8011_53) ) (!  (=> (select (|PolymorphicMapType_8500_4487_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@0 f_15@@0) (= (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@7) o2_10@@0 f_15@@0) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@0 f_15@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@0 f_15@@0))
))) (forall ((o2_10@@1 T@Ref) (f_15@@1 T@Field_8024_8025) ) (!  (=> (select (|PolymorphicMapType_8500_4487_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@1 f_15@@1) (= (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@7) o2_10@@1 f_15@@1) (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@1 f_15@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@1 f_15@@1))
))) (forall ((o2_10@@2 T@Ref) (f_15@@2 T@Field_8011_13065) ) (!  (=> (select (|PolymorphicMapType_8500_4487_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@2 f_15@@2) (= (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@7) o2_10@@2 f_15@@2) (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@2 f_15@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@2 f_15@@2))
))) (forall ((o2_10@@3 T@Ref) (f_15@@3 T@Field_8011_13082) ) (!  (=> (select (|PolymorphicMapType_8500_4487_26925#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@3 f_15@@3) (= (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@7) o2_10@@3 f_15@@3) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@3 f_15@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@3 f_15@@3))
))) (forall ((o2_10@@4 T@Ref) (f_15@@4 T@Field_13064_1198) ) (!  (=> (select (|PolymorphicMapType_8500_13064_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@4 f_15@@4) (= (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@7) o2_10@@4 f_15@@4) (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@4 f_15@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@4 f_15@@4))
))) (forall ((o2_10@@5 T@Ref) (f_15@@5 T@Field_13064_53) ) (!  (=> (select (|PolymorphicMapType_8500_13064_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@5 f_15@@5) (= (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@7) o2_10@@5 f_15@@5) (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@5 f_15@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@5 f_15@@5))
))) (forall ((o2_10@@6 T@Ref) (f_15@@6 T@Field_13064_8025) ) (!  (=> (select (|PolymorphicMapType_8500_13064_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@6 f_15@@6) (= (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@7) o2_10@@6 f_15@@6) (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@6 f_15@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@6 f_15@@6))
))) (forall ((o2_10@@7 T@Ref) (f_15@@7 T@Field_13064_13065) ) (!  (=> (select (|PolymorphicMapType_8500_13064_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@7 f_15@@7) (= (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@7) o2_10@@7 f_15@@7) (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@7 f_15@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@7 f_15@@7))
))) (forall ((o2_10@@8 T@Ref) (f_15@@8 T@Field_13077_13082) ) (!  (=> (select (|PolymorphicMapType_8500_13064_27973#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) null (PredicateMaskField_4533 pm_f_10@@3))) o2_10@@8 f_15@@8) (= (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@7) o2_10@@8 f_15@@8) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@8 f_15@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@3) o2_10@@8 f_15@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4533_4534 pm_f_10@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7951) (ExhaleHeap@@4 T@PolymorphicMapType_7951) (Mask@@5 T@PolymorphicMapType_7972) (pm_f_10@@4 T@Field_8011_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8011_13065 Mask@@5 null pm_f_10@@4) (IsPredicateField_8011_25453 pm_f_10@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_10@@9 T@Ref) (f_15@@9 T@Field_11338_1198) ) (!  (=> (select (|PolymorphicMapType_8500_4487_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@9 f_15@@9) (= (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@8) o2_10@@9 f_15@@9) (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@9 f_15@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@9 f_15@@9))
)) (forall ((o2_10@@10 T@Ref) (f_15@@10 T@Field_8011_53) ) (!  (=> (select (|PolymorphicMapType_8500_4487_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@10 f_15@@10) (= (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@8) o2_10@@10 f_15@@10) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@10 f_15@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@10 f_15@@10))
))) (forall ((o2_10@@11 T@Ref) (f_15@@11 T@Field_8024_8025) ) (!  (=> (select (|PolymorphicMapType_8500_4487_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@11 f_15@@11) (= (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@8) o2_10@@11 f_15@@11) (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@11 f_15@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@11 f_15@@11))
))) (forall ((o2_10@@12 T@Ref) (f_15@@12 T@Field_8011_13065) ) (!  (=> (select (|PolymorphicMapType_8500_4487_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@12 f_15@@12) (= (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@8) o2_10@@12 f_15@@12) (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@12 f_15@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@12 f_15@@12))
))) (forall ((o2_10@@13 T@Ref) (f_15@@13 T@Field_8011_13082) ) (!  (=> (select (|PolymorphicMapType_8500_4487_26925#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@13 f_15@@13) (= (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) o2_10@@13 f_15@@13) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@13 f_15@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@13 f_15@@13))
))) (forall ((o2_10@@14 T@Ref) (f_15@@14 T@Field_13064_1198) ) (!  (=> (select (|PolymorphicMapType_8500_13064_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@14 f_15@@14) (= (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@8) o2_10@@14 f_15@@14) (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@14 f_15@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@14 f_15@@14))
))) (forall ((o2_10@@15 T@Ref) (f_15@@15 T@Field_13064_53) ) (!  (=> (select (|PolymorphicMapType_8500_13064_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@15 f_15@@15) (= (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@8) o2_10@@15 f_15@@15) (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@15 f_15@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@15 f_15@@15))
))) (forall ((o2_10@@16 T@Ref) (f_15@@16 T@Field_13064_8025) ) (!  (=> (select (|PolymorphicMapType_8500_13064_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@16 f_15@@16) (= (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@8) o2_10@@16 f_15@@16) (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@16 f_15@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@16 f_15@@16))
))) (forall ((o2_10@@17 T@Ref) (f_15@@17 T@Field_13064_13065) ) (!  (=> (select (|PolymorphicMapType_8500_13064_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@17 f_15@@17) (= (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@8) o2_10@@17 f_15@@17) (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@17 f_15@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@17 f_15@@17))
))) (forall ((o2_10@@18 T@Ref) (f_15@@18 T@Field_13077_13082) ) (!  (=> (select (|PolymorphicMapType_8500_13064_27973#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@8) null (PredicateMaskField_8011 pm_f_10@@4))) o2_10@@18 f_15@@18) (= (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@8) o2_10@@18 f_15@@18) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@18 f_15@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@4) o2_10@@18 f_15@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_8011_25453 pm_f_10@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7951) (ExhaleHeap@@5 T@PolymorphicMapType_7951) (Mask@@6 T@PolymorphicMapType_7972) (pm_f_10@@5 T@Field_13064_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_13064_13065 Mask@@6 null pm_f_10@@5) (IsWandField_13064_29138 pm_f_10@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_10@@19 T@Ref) (f_15@@19 T@Field_11338_1198) ) (!  (=> (select (|PolymorphicMapType_8500_4487_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@19 f_15@@19) (= (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@9) o2_10@@19 f_15@@19) (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@19 f_15@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@19 f_15@@19))
)) (forall ((o2_10@@20 T@Ref) (f_15@@20 T@Field_8011_53) ) (!  (=> (select (|PolymorphicMapType_8500_4487_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@20 f_15@@20) (= (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@9) o2_10@@20 f_15@@20) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@20 f_15@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@20 f_15@@20))
))) (forall ((o2_10@@21 T@Ref) (f_15@@21 T@Field_8024_8025) ) (!  (=> (select (|PolymorphicMapType_8500_4487_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@21 f_15@@21) (= (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@9) o2_10@@21 f_15@@21) (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@21 f_15@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@21 f_15@@21))
))) (forall ((o2_10@@22 T@Ref) (f_15@@22 T@Field_8011_13065) ) (!  (=> (select (|PolymorphicMapType_8500_4487_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@22 f_15@@22) (= (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@9) o2_10@@22 f_15@@22) (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@22 f_15@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@22 f_15@@22))
))) (forall ((o2_10@@23 T@Ref) (f_15@@23 T@Field_8011_13082) ) (!  (=> (select (|PolymorphicMapType_8500_4487_26925#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@23 f_15@@23) (= (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@9) o2_10@@23 f_15@@23) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@23 f_15@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@23 f_15@@23))
))) (forall ((o2_10@@24 T@Ref) (f_15@@24 T@Field_13064_1198) ) (!  (=> (select (|PolymorphicMapType_8500_13064_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@24 f_15@@24) (= (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@9) o2_10@@24 f_15@@24) (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@24 f_15@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@24 f_15@@24))
))) (forall ((o2_10@@25 T@Ref) (f_15@@25 T@Field_13064_53) ) (!  (=> (select (|PolymorphicMapType_8500_13064_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@25 f_15@@25) (= (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@9) o2_10@@25 f_15@@25) (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@25 f_15@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@25 f_15@@25))
))) (forall ((o2_10@@26 T@Ref) (f_15@@26 T@Field_13064_8025) ) (!  (=> (select (|PolymorphicMapType_8500_13064_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@26 f_15@@26) (= (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@9) o2_10@@26 f_15@@26) (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@26 f_15@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@26 f_15@@26))
))) (forall ((o2_10@@27 T@Ref) (f_15@@27 T@Field_13064_13065) ) (!  (=> (select (|PolymorphicMapType_8500_13064_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@27 f_15@@27) (= (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@9) o2_10@@27 f_15@@27) (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@27 f_15@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@27 f_15@@27))
))) (forall ((o2_10@@28 T@Ref) (f_15@@28 T@Field_13077_13082) ) (!  (=> (select (|PolymorphicMapType_8500_13064_27973#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) null (WandMaskField_13064 pm_f_10@@5))) o2_10@@28 f_15@@28) (= (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@9) o2_10@@28 f_15@@28) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@28 f_15@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@5) o2_10@@28 f_15@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_13064_29138 pm_f_10@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7951) (ExhaleHeap@@6 T@PolymorphicMapType_7951) (Mask@@7 T@PolymorphicMapType_7972) (pm_f_10@@6 T@Field_8011_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_8011_13065 Mask@@7 null pm_f_10@@6) (IsWandField_8011_28781 pm_f_10@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_10@@29 T@Ref) (f_15@@29 T@Field_11338_1198) ) (!  (=> (select (|PolymorphicMapType_8500_4487_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@29 f_15@@29) (= (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@10) o2_10@@29 f_15@@29) (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@29 f_15@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@29 f_15@@29))
)) (forall ((o2_10@@30 T@Ref) (f_15@@30 T@Field_8011_53) ) (!  (=> (select (|PolymorphicMapType_8500_4487_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@30 f_15@@30) (= (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@10) o2_10@@30 f_15@@30) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@30 f_15@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@30 f_15@@30))
))) (forall ((o2_10@@31 T@Ref) (f_15@@31 T@Field_8024_8025) ) (!  (=> (select (|PolymorphicMapType_8500_4487_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@31 f_15@@31) (= (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@10) o2_10@@31 f_15@@31) (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@31 f_15@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@31 f_15@@31))
))) (forall ((o2_10@@32 T@Ref) (f_15@@32 T@Field_8011_13065) ) (!  (=> (select (|PolymorphicMapType_8500_4487_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@32 f_15@@32) (= (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@10) o2_10@@32 f_15@@32) (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@32 f_15@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@32 f_15@@32))
))) (forall ((o2_10@@33 T@Ref) (f_15@@33 T@Field_8011_13082) ) (!  (=> (select (|PolymorphicMapType_8500_4487_26925#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@33 f_15@@33) (= (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) o2_10@@33 f_15@@33) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@33 f_15@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@33 f_15@@33))
))) (forall ((o2_10@@34 T@Ref) (f_15@@34 T@Field_13064_1198) ) (!  (=> (select (|PolymorphicMapType_8500_13064_1198#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@34 f_15@@34) (= (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@10) o2_10@@34 f_15@@34) (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@34 f_15@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@34 f_15@@34))
))) (forall ((o2_10@@35 T@Ref) (f_15@@35 T@Field_13064_53) ) (!  (=> (select (|PolymorphicMapType_8500_13064_53#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@35 f_15@@35) (= (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@10) o2_10@@35 f_15@@35) (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@35 f_15@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@35 f_15@@35))
))) (forall ((o2_10@@36 T@Ref) (f_15@@36 T@Field_13064_8025) ) (!  (=> (select (|PolymorphicMapType_8500_13064_8025#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@36 f_15@@36) (= (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@10) o2_10@@36 f_15@@36) (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@36 f_15@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@36 f_15@@36))
))) (forall ((o2_10@@37 T@Ref) (f_15@@37 T@Field_13064_13065) ) (!  (=> (select (|PolymorphicMapType_8500_13064_13065#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@37 f_15@@37) (= (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@10) o2_10@@37 f_15@@37) (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@37 f_15@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@37 f_15@@37))
))) (forall ((o2_10@@38 T@Ref) (f_15@@38 T@Field_13077_13082) ) (!  (=> (select (|PolymorphicMapType_8500_13064_27973#PolymorphicMapType_8500| (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@10) null (WandMaskField_8011 pm_f_10@@6))) o2_10@@38 f_15@@38) (= (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@10) o2_10@@38 f_15@@38) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@38 f_15@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@6) o2_10@@38 f_15@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_8011_28781 pm_f_10@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7951) (ExhaleHeap@@7 T@PolymorphicMapType_7951) (Mask@@8 T@PolymorphicMapType_7972) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@11) o_23 $allocated) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@7) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@7) o_23 $allocated))
)))
(assert (forall ((p T@Field_13064_13065) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_13064_13064 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13064_13064 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8011_13065) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8011_8011 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8011_8011 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4487_1198 f_7)))
(assert  (not (IsWandField_4487_1198 f_7)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7951) (ExhaleHeap@@8 T@PolymorphicMapType_7951) (Mask@@9 T@PolymorphicMapType_7972) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7972) (o_2@@9 T@Ref) (f_4@@9 T@Field_13077_13082) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4533_36070 f_4@@9))) (not (IsWandField_4533_36086 f_4@@9))) (<= (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7972) (o_2@@10 T@Ref) (f_4@@10 T@Field_13064_8025) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4533_8025 f_4@@10))) (not (IsWandField_4533_8025 f_4@@10))) (<= (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7972) (o_2@@11 T@Ref) (f_4@@11 T@Field_13064_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4533_53 f_4@@11))) (not (IsWandField_4533_53 f_4@@11))) (<= (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7972) (o_2@@12 T@Ref) (f_4@@12 T@Field_13064_13065) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4533_4534 f_4@@12))) (not (IsWandField_13064_29138 f_4@@12))) (<= (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7972) (o_2@@13 T@Ref) (f_4@@13 T@Field_13064_1198) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4533_1198 f_4@@13))) (not (IsWandField_4533_1198 f_4@@13))) (<= (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7972) (o_2@@14 T@Ref) (f_4@@14 T@Field_8011_13082) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4487_35239 f_4@@14))) (not (IsWandField_4487_35255 f_4@@14))) (<= (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7972) (o_2@@15 T@Ref) (f_4@@15 T@Field_8024_8025) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4487_8025 f_4@@15))) (not (IsWandField_4487_8025 f_4@@15))) (<= (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7972) (o_2@@16 T@Ref) (f_4@@16 T@Field_8011_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4487_53 f_4@@16))) (not (IsWandField_4487_53 f_4@@16))) (<= (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7972) (o_2@@17 T@Ref) (f_4@@17 T@Field_8011_13065) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8011_25453 f_4@@17))) (not (IsWandField_8011_28781 f_4@@17))) (<= (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7972) (o_2@@18 T@Ref) (f_4@@18 T@Field_11338_1198) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_4487_1198 f_4@@18))) (not (IsWandField_4487_1198 f_4@@18))) (<= (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7972) (o_2@@19 T@Ref) (f_4@@19 T@Field_13077_13082) ) (! (= (HasDirectPerm_13064_25208 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13064_25208 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7972) (o_2@@20 T@Ref) (f_4@@20 T@Field_13064_13065) ) (! (= (HasDirectPerm_13064_13065 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13064_13065 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7972) (o_2@@21 T@Ref) (f_4@@21 T@Field_13064_1198) ) (! (= (HasDirectPerm_13064_1198 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13064_1198 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7972) (o_2@@22 T@Ref) (f_4@@22 T@Field_13064_8025) ) (! (= (HasDirectPerm_13064_8025 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13064_8025 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7972) (o_2@@23 T@Ref) (f_4@@23 T@Field_13064_53) ) (! (= (HasDirectPerm_13064_53 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_13064_53 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7972) (o_2@@24 T@Ref) (f_4@@24 T@Field_8011_13082) ) (! (= (HasDirectPerm_8011_24047 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8011_24047 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_7972) (o_2@@25 T@Ref) (f_4@@25 T@Field_8011_13065) ) (! (= (HasDirectPerm_8011_13065 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8011_13065 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_7972) (o_2@@26 T@Ref) (f_4@@26 T@Field_11338_1198) ) (! (= (HasDirectPerm_8011_1198 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8011_1198 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_7972) (o_2@@27 T@Ref) (f_4@@27 T@Field_8024_8025) ) (! (= (HasDirectPerm_8011_8025 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8011_8025 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_7972) (o_2@@28 T@Ref) (f_4@@28 T@Field_8011_53) ) (! (= (HasDirectPerm_8011_53 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8011_53 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7951) (b_24@@3 Bool) (x@@3 T@Ref) (y T@Ref) (j@@1 Int) ) (! (dummyFunction_1379 (|fun2#triggerStateless| b_24@@3 x@@3 y j@@1))
 :qid |stdinbpl.259:15|
 :skolemid |27|
 :pattern ( (|fun2'| Heap@@13 b_24@@3 x@@3 y j@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7951) (Mask@@30 T@PolymorphicMapType_7972) (b_24@@4 Bool) (x@@4 T@Ref) (y@@0 T@Ref) (j@@2 Int) ) (!  (=> (and (state Heap@@14 Mask@@30) (< AssumeFunctionsAbove 1)) (= (fun2 Heap@@14 b_24@@4 x@@4 y@@0 j@@2) 10))
 :qid |stdinbpl.265:15|
 :skolemid |28|
 :pattern ( (state Heap@@14 Mask@@30) (fun2 Heap@@14 b_24@@4 x@@4 y@@0 j@@2))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7951) (ExhaleHeap@@9 T@PolymorphicMapType_7951) (Mask@@31 T@PolymorphicMapType_7972) (o_23@@0 T@Ref) (f_15@@39 T@Field_13077_13082) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_13064_25208 Mask@@31 o_23@@0 f_15@@39) (= (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@15) o_23@@0 f_15@@39) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@9) o_23@@0 f_15@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| ExhaleHeap@@9) o_23@@0 f_15@@39))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7951) (ExhaleHeap@@10 T@PolymorphicMapType_7951) (Mask@@32 T@PolymorphicMapType_7972) (o_23@@1 T@Ref) (f_15@@40 T@Field_13064_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_13064_13065 Mask@@32 o_23@@1 f_15@@40) (= (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@16) o_23@@1 f_15@@40) (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@10) o_23@@1 f_15@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| ExhaleHeap@@10) o_23@@1 f_15@@40))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7951) (ExhaleHeap@@11 T@PolymorphicMapType_7951) (Mask@@33 T@PolymorphicMapType_7972) (o_23@@2 T@Ref) (f_15@@41 T@Field_13064_1198) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_13064_1198 Mask@@33 o_23@@2 f_15@@41) (= (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@17) o_23@@2 f_15@@41) (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@11) o_23@@2 f_15@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| ExhaleHeap@@11) o_23@@2 f_15@@41))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7951) (ExhaleHeap@@12 T@PolymorphicMapType_7951) (Mask@@34 T@PolymorphicMapType_7972) (o_23@@3 T@Ref) (f_15@@42 T@Field_13064_8025) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_13064_8025 Mask@@34 o_23@@3 f_15@@42) (= (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@18) o_23@@3 f_15@@42) (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@12) o_23@@3 f_15@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| ExhaleHeap@@12) o_23@@3 f_15@@42))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7951) (ExhaleHeap@@13 T@PolymorphicMapType_7951) (Mask@@35 T@PolymorphicMapType_7972) (o_23@@4 T@Ref) (f_15@@43 T@Field_13064_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_13064_53 Mask@@35 o_23@@4 f_15@@43) (= (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@19) o_23@@4 f_15@@43) (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@13) o_23@@4 f_15@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| ExhaleHeap@@13) o_23@@4 f_15@@43))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7951) (ExhaleHeap@@14 T@PolymorphicMapType_7951) (Mask@@36 T@PolymorphicMapType_7972) (o_23@@5 T@Ref) (f_15@@44 T@Field_8011_13082) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_8011_24047 Mask@@36 o_23@@5 f_15@@44) (= (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@20) o_23@@5 f_15@@44) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@14) o_23@@5 f_15@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| ExhaleHeap@@14) o_23@@5 f_15@@44))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7951) (ExhaleHeap@@15 T@PolymorphicMapType_7951) (Mask@@37 T@PolymorphicMapType_7972) (o_23@@6 T@Ref) (f_15@@45 T@Field_8011_13065) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_8011_13065 Mask@@37 o_23@@6 f_15@@45) (= (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@21) o_23@@6 f_15@@45) (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@15) o_23@@6 f_15@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| ExhaleHeap@@15) o_23@@6 f_15@@45))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7951) (ExhaleHeap@@16 T@PolymorphicMapType_7951) (Mask@@38 T@PolymorphicMapType_7972) (o_23@@7 T@Ref) (f_15@@46 T@Field_11338_1198) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_8011_1198 Mask@@38 o_23@@7 f_15@@46) (= (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@22) o_23@@7 f_15@@46) (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@16) o_23@@7 f_15@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| ExhaleHeap@@16) o_23@@7 f_15@@46))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7951) (ExhaleHeap@@17 T@PolymorphicMapType_7951) (Mask@@39 T@PolymorphicMapType_7972) (o_23@@8 T@Ref) (f_15@@47 T@Field_8024_8025) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_8011_8025 Mask@@39 o_23@@8 f_15@@47) (= (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@23) o_23@@8 f_15@@47) (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@17) o_23@@8 f_15@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| ExhaleHeap@@17) o_23@@8 f_15@@47))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7951) (ExhaleHeap@@18 T@PolymorphicMapType_7951) (Mask@@40 T@PolymorphicMapType_7972) (o_23@@9 T@Ref) (f_15@@48 T@Field_8011_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_8011_53 Mask@@40 o_23@@9 f_15@@48) (= (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@24) o_23@@9 f_15@@48) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@18) o_23@@9 f_15@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| ExhaleHeap@@18) o_23@@9 f_15@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_13077_13082) ) (! (= (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_13064_8025) ) (! (= (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_13064_53) ) (! (= (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_13064_13065) ) (! (= (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_13064_1198) ) (! (= (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_8011_13082) ) (! (= (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_8024_8025) ) (! (= (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_8011_53) ) (! (= (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_8011_13065) ) (! (= (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_11338_1198) ) (! (= (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7951) (b_24@@5 Bool) (x@@5 T@Ref) (y@@1 T@Ref) (j@@3 Int) ) (!  (and (= (fun2 Heap@@25 b_24@@5 x@@5 y@@1 j@@3) (|fun2'| Heap@@25 b_24@@5 x@@5 y@@1 j@@3)) (dummyFunction_1379 (|fun2#triggerStateless| b_24@@5 x@@5 y@@1 j@@3)))
 :qid |stdinbpl.255:15|
 :skolemid |26|
 :pattern ( (fun2 Heap@@25 b_24@@5 x@@5 y@@1 j@@3))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7972) (SummandMask1 T@PolymorphicMapType_7972) (SummandMask2 T@PolymorphicMapType_7972) (o_2@@39 T@Ref) (f_4@@39 T@Field_13077_13082) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7972_4533_33778#PolymorphicMapType_7972| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7972) (SummandMask1@@0 T@PolymorphicMapType_7972) (SummandMask2@@0 T@PolymorphicMapType_7972) (o_2@@40 T@Ref) (f_4@@40 T@Field_13064_8025) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7972_4533_8025#PolymorphicMapType_7972| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7972) (SummandMask1@@1 T@PolymorphicMapType_7972) (SummandMask2@@1 T@PolymorphicMapType_7972) (o_2@@41 T@Ref) (f_4@@41 T@Field_13064_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7972_4533_53#PolymorphicMapType_7972| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7972) (SummandMask1@@2 T@PolymorphicMapType_7972) (SummandMask2@@2 T@PolymorphicMapType_7972) (o_2@@42 T@Ref) (f_4@@42 T@Field_13064_13065) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7972_4533_4534#PolymorphicMapType_7972| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7972) (SummandMask1@@3 T@PolymorphicMapType_7972) (SummandMask2@@3 T@PolymorphicMapType_7972) (o_2@@43 T@Ref) (f_4@@43 T@Field_13064_1198) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7972_4533_1198#PolymorphicMapType_7972| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7972) (SummandMask1@@4 T@PolymorphicMapType_7972) (SummandMask2@@4 T@PolymorphicMapType_7972) (o_2@@44 T@Ref) (f_4@@44 T@Field_8011_13082) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7972_4487_33367#PolymorphicMapType_7972| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7972) (SummandMask1@@5 T@PolymorphicMapType_7972) (SummandMask2@@5 T@PolymorphicMapType_7972) (o_2@@45 T@Ref) (f_4@@45 T@Field_8024_8025) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7972_4487_8025#PolymorphicMapType_7972| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7972) (SummandMask1@@6 T@PolymorphicMapType_7972) (SummandMask2@@6 T@PolymorphicMapType_7972) (o_2@@46 T@Ref) (f_4@@46 T@Field_8011_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7972_4487_53#PolymorphicMapType_7972| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_7972) (SummandMask1@@7 T@PolymorphicMapType_7972) (SummandMask2@@7 T@PolymorphicMapType_7972) (o_2@@47 T@Ref) (f_4@@47 T@Field_8011_13065) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7972_4487_4534#PolymorphicMapType_7972| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_7972) (SummandMask1@@8 T@PolymorphicMapType_7972) (SummandMask2@@8 T@PolymorphicMapType_7972) (o_2@@48 T@Ref) (f_4@@48 T@Field_11338_1198) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7972_4487_1198#PolymorphicMapType_7972| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((x@@6 T@Ref) (b_24@@6 Bool) ) (! (= (getPredWandId_4533_4534 (P x@@6 b_24@@6)) 0)
 :qid |stdinbpl.330:15|
 :skolemid |32|
 :pattern ( (P x@@6 b_24@@6))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7951) (Mask@@41 T@PolymorphicMapType_7972) (j@@4 Int) ) (!  (=> (state Heap@@26 Mask@@41) (= (|fun1'| Heap@@26 j@@4) (|fun1#frame| EmptyFrame j@@4)))
 :qid |stdinbpl.222:15|
 :skolemid |25|
 :pattern ( (state Heap@@26 Mask@@41) (|fun1'| Heap@@26 j@@4))
)))
(assert (forall ((x@@7 T@Ref) (b_24@@7 Bool) ) (! (= (PredicateMaskField_4533 (P x@@7 b_24@@7)) (|P#sm| x@@7 b_24@@7))
 :qid |stdinbpl.322:15|
 :skolemid |30|
 :pattern ( (PredicateMaskField_4533 (P x@@7 b_24@@7)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7951) (o_4 T@Ref) (f_25 T@Field_13077_13082) (v T@PolymorphicMapType_8500) ) (! (succHeap Heap@@27 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@27) (store (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@27) o_4 f_25 v) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@27) (store (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@27) o_4 f_25 v) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@27) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7951) (o_4@@0 T@Ref) (f_25@@0 T@Field_13064_13065) (v@@0 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@28) (store (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@28) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@28) (store (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@28) o_4@@0 f_25@@0 v@@0) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@28) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7951) (o_4@@1 T@Ref) (f_25@@1 T@Field_13064_1198) (v@@1 Int) ) (! (succHeap Heap@@29 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@29) (store (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@29) o_4@@1 f_25@@1 v@@1)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@29) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@29) (store (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@29) o_4@@1 f_25@@1 v@@1)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7951) (o_4@@2 T@Ref) (f_25@@2 T@Field_13064_8025) (v@@2 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@30) (store (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@30) o_4@@2 f_25@@2 v@@2) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@30) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@30) (store (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@30) o_4@@2 f_25@@2 v@@2) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7951) (o_4@@3 T@Ref) (f_25@@3 T@Field_13064_53) (v@@3 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@31) (store (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@31) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@31) (store (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@31) o_4@@3 f_25@@3 v@@3) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@31) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_7951) (o_4@@4 T@Ref) (f_25@@4 T@Field_8011_13082) (v@@4 T@PolymorphicMapType_8500) ) (! (succHeap Heap@@32 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@32) (store (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@32) o_4@@4 f_25@@4 v@@4) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@32) (store (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@32) o_4@@4 f_25@@4 v@@4) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@32) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_7951) (o_4@@5 T@Ref) (f_25@@5 T@Field_8011_13065) (v@@5 T@FrameType) ) (! (succHeap Heap@@33 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@33) (store (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@33) o_4@@5 f_25@@5 v@@5) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@33) (store (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@33) o_4@@5 f_25@@5 v@@5) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@33) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_7951) (o_4@@6 T@Ref) (f_25@@6 T@Field_11338_1198) (v@@6 Int) ) (! (succHeap Heap@@34 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@34) (store (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@34) o_4@@6 f_25@@6 v@@6) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@34) (store (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@34) o_4@@6 f_25@@6 v@@6) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@34) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_7951) (o_4@@7 T@Ref) (f_25@@7 T@Field_8024_8025) (v@@7 T@Ref) ) (! (succHeap Heap@@35 (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@35) (store (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@35) o_4@@7 f_25@@7 v@@7) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@35) (store (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@35) o_4@@7 f_25@@7 v@@7) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@35) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_7951) (o_4@@8 T@Ref) (f_25@@8 T@Field_8011_53) (v@@8 Bool) ) (! (succHeap Heap@@36 (PolymorphicMapType_7951 (store (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@36) o_4@@8 f_25@@8 v@@8) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7951 (store (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@36) o_4@@8 f_25@@8 v@@8) (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_4533_4534#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_4537_15430#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_8011_13065#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_8011_24089#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_13064_53#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_13064_8025#PolymorphicMapType_7951| Heap@@36) (|PolymorphicMapType_7951_13064_1198#PolymorphicMapType_7951| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_7951) (Mask@@42 T@PolymorphicMapType_7972) (b_24@@8 Bool) (x@@8 T@Ref) (y@@2 T@Ref) (j@@5 Int) ) (!  (=> (state Heap@@37 Mask@@42) (= (|fun2'| Heap@@37 b_24@@8 x@@8 y@@2 j@@5) (|fun2#frame| (FrameFragment_5914 (ite b_24@@8 (FrameFragment_1198 (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@37) x@@8 f_7)) (FrameFragment_1198 (select (|PolymorphicMapType_7951_4487_1198#PolymorphicMapType_7951| Heap@@37) y@@2 f_7)))) b_24@@8 x@@8 y@@2 j@@5)))
 :qid |stdinbpl.272:15|
 :skolemid |29|
 :pattern ( (state Heap@@37 Mask@@42) (|fun2'| Heap@@37 b_24@@8 x@@8 y@@2 j@@5))
)))
(assert (forall ((o_4@@9 T@Ref) (f_9 T@Field_8024_8025) (Heap@@38 T@PolymorphicMapType_7951) ) (!  (=> (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@38) o_4@@9 $allocated) (select (|PolymorphicMapType_7951_4359_53#PolymorphicMapType_7951| Heap@@38) (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@38) o_4@@9 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7951_4362_4363#PolymorphicMapType_7951| Heap@@38) o_4@@9 f_9))
)))
(assert (forall ((p@@2 T@Field_13064_13065) (v_1@@1 T@FrameType) (q T@Field_13064_13065) (w@@1 T@FrameType) (r T@Field_13064_13065) (u T@FrameType) ) (!  (=> (and (InsidePredicate_13064_13064 p@@2 v_1@@1 q w@@1) (InsidePredicate_13064_13064 q w@@1 r u)) (InsidePredicate_13064_13064 p@@2 v_1@@1 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13064_13064 p@@2 v_1@@1 q w@@1) (InsidePredicate_13064_13064 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_13064_13065) (v_1@@2 T@FrameType) (q@@0 T@Field_13064_13065) (w@@2 T@FrameType) (r@@0 T@Field_8011_13065) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_13064_13064 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13064_8011 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_13064_8011 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13064_13064 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_13064_8011 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_13064_13065) (v_1@@3 T@FrameType) (q@@1 T@Field_8011_13065) (w@@3 T@FrameType) (r@@1 T@Field_13064_13065) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_13064_8011 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8011_13064 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_13064_13064 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13064_8011 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8011_13064 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_13064_13065) (v_1@@4 T@FrameType) (q@@2 T@Field_8011_13065) (w@@4 T@FrameType) (r@@2 T@Field_8011_13065) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_13064_8011 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8011_8011 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_13064_8011 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13064_8011 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8011_8011 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_8011_13065) (v_1@@5 T@FrameType) (q@@3 T@Field_13064_13065) (w@@5 T@FrameType) (r@@3 T@Field_13064_13065) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8011_13064 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13064_13064 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8011_13064 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8011_13064 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_13064_13064 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_8011_13065) (v_1@@6 T@FrameType) (q@@4 T@Field_13064_13065) (w@@6 T@FrameType) (r@@4 T@Field_8011_13065) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8011_13064 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13064_8011 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8011_8011 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8011_13064 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_13064_8011 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_8011_13065) (v_1@@7 T@FrameType) (q@@5 T@Field_8011_13065) (w@@7 T@FrameType) (r@@5 T@Field_13064_13065) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8011_8011 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8011_13064 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8011_13064 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8011_8011 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8011_13064 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_8011_13065) (v_1@@8 T@FrameType) (q@@6 T@Field_8011_13065) (w@@8 T@FrameType) (r@@6 T@Field_8011_13065) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8011_8011 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8011_8011 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8011_8011 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8011_8011 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8011_8011 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_7951) (Mask@@43 T@PolymorphicMapType_7972) (j@@6 Int) ) (!  (=> (and (state Heap@@39 Mask@@43) (< AssumeFunctionsAbove 0)) (= (fun1 Heap@@39 j@@6) 10))
 :qid |stdinbpl.215:15|
 :skolemid |24|
 :pattern ( (state Heap@@39 Mask@@43) (fun1 Heap@@39 j@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

