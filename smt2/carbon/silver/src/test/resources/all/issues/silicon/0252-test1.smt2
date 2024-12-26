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
(declare-sort T@Field_4967_53 0)
(declare-sort T@Field_4980_4981 0)
(declare-sort T@Field_8406_1329 0)
(declare-sort T@Field_8453_8454 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_3014_53 0)
(declare-sort T@Field_3014_4981 0)
(declare-sort T@Field_3014_1329 0)
(declare-sort T@Field_8466_8471 0)
(declare-sort T@Field_4967_3015 0)
(declare-sort T@Field_4967_8471 0)
(declare-datatypes ((T@PolymorphicMapType_4928 0)) (((PolymorphicMapType_4928 (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| (Array T@Ref T@Field_8406_1329 Real)) (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| (Array T@Ref T@Field_8453_8454 Real)) (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| (Array T@Ref T@Field_4967_3015 Real)) (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| (Array T@Ref T@Field_4967_53 Real)) (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| (Array T@Ref T@Field_4980_4981 Real)) (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| (Array T@Ref T@Field_4967_8471 Real)) (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| (Array T@Ref T@Field_3014_1329 Real)) (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| (Array T@Ref T@Field_3014_53 Real)) (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| (Array T@Ref T@Field_3014_4981 Real)) (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| (Array T@Ref T@Field_8466_8471 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5456 0)) (((PolymorphicMapType_5456 (|PolymorphicMapType_5456_4967_53#PolymorphicMapType_5456| (Array T@Ref T@Field_4967_53 Bool)) (|PolymorphicMapType_5456_4967_4981#PolymorphicMapType_5456| (Array T@Ref T@Field_4980_4981 Bool)) (|PolymorphicMapType_5456_4967_1329#PolymorphicMapType_5456| (Array T@Ref T@Field_8406_1329 Bool)) (|PolymorphicMapType_5456_4967_8454#PolymorphicMapType_5456| (Array T@Ref T@Field_4967_3015 Bool)) (|PolymorphicMapType_5456_4967_17723#PolymorphicMapType_5456| (Array T@Ref T@Field_4967_8471 Bool)) (|PolymorphicMapType_5456_8453_53#PolymorphicMapType_5456| (Array T@Ref T@Field_3014_53 Bool)) (|PolymorphicMapType_5456_8453_4981#PolymorphicMapType_5456| (Array T@Ref T@Field_3014_4981 Bool)) (|PolymorphicMapType_5456_8453_1329#PolymorphicMapType_5456| (Array T@Ref T@Field_3014_1329 Bool)) (|PolymorphicMapType_5456_8453_8454#PolymorphicMapType_5456| (Array T@Ref T@Field_8453_8454 Bool)) (|PolymorphicMapType_5456_8453_18771#PolymorphicMapType_5456| (Array T@Ref T@Field_8466_8471 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4907 0)) (((PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| (Array T@Ref T@Field_4967_53 Bool)) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| (Array T@Ref T@Field_4980_4981 T@Ref)) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| (Array T@Ref T@Field_8406_1329 Int)) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| (Array T@Ref T@Field_8453_8454 T@FrameType)) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| (Array T@Ref T@Field_3014_53 Bool)) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| (Array T@Ref T@Field_3014_4981 T@Ref)) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| (Array T@Ref T@Field_3014_1329 Int)) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| (Array T@Ref T@Field_8466_8471 T@PolymorphicMapType_5456)) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| (Array T@Ref T@Field_4967_3015 T@FrameType)) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| (Array T@Ref T@Field_4967_8471 T@PolymorphicMapType_5456)) ) ) ))
(declare-fun $allocated () T@Field_4967_53)
(declare-fun val () T@Field_8406_1329)
(declare-fun succHeap (T@PolymorphicMapType_4907 T@PolymorphicMapType_4907) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4907 T@PolymorphicMapType_4907) Bool)
(declare-fun state (T@PolymorphicMapType_4907 T@PolymorphicMapType_4928) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4928) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5456)
(declare-fun P (T@Ref) T@Field_8453_8454)
(declare-fun IsPredicateField_3014_3015 (T@Field_8453_8454) Bool)
(declare-fun |P#trigger_3014| (T@PolymorphicMapType_4907 T@Field_8453_8454) Bool)
(declare-fun |P#everUsed_3014| (T@Field_8453_8454) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4907 T@PolymorphicMapType_4907 T@PolymorphicMapType_4928) Bool)
(declare-fun IsPredicateField_4967_16564 (T@Field_4967_3015) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4967 (T@Field_4967_3015) T@Field_4967_8471)
(declare-fun HasDirectPerm_4967_3015 (T@PolymorphicMapType_4928 T@Ref T@Field_4967_3015) Bool)
(declare-fun PredicateMaskField_3014 (T@Field_8453_8454) T@Field_8466_8471)
(declare-fun HasDirectPerm_3014_3015 (T@PolymorphicMapType_4928 T@Ref T@Field_8453_8454) Bool)
(declare-fun IsWandField_4967_19936 (T@Field_4967_3015) Bool)
(declare-fun WandMaskField_4967 (T@Field_4967_3015) T@Field_4967_8471)
(declare-fun IsWandField_3014_19579 (T@Field_8453_8454) Bool)
(declare-fun WandMaskField_3014 (T@Field_8453_8454) T@Field_8466_8471)
(declare-fun |P#sm| (T@Ref) T@Field_8466_8471)
(declare-fun dummyHeap () T@PolymorphicMapType_4907)
(declare-fun ZeroMask () T@PolymorphicMapType_4928)
(declare-fun InsidePredicate_8453_8453 (T@Field_8453_8454 T@FrameType T@Field_8453_8454 T@FrameType) Bool)
(declare-fun InsidePredicate_4967_4967 (T@Field_4967_3015 T@FrameType T@Field_4967_3015 T@FrameType) Bool)
(declare-fun IsPredicateField_3011_1329 (T@Field_8406_1329) Bool)
(declare-fun IsWandField_3011_1329 (T@Field_8406_1329) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3014_26868 (T@Field_8466_8471) Bool)
(declare-fun IsWandField_3014_26884 (T@Field_8466_8471) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3014_4981 (T@Field_3014_4981) Bool)
(declare-fun IsWandField_3014_4981 (T@Field_3014_4981) Bool)
(declare-fun IsPredicateField_3014_53 (T@Field_3014_53) Bool)
(declare-fun IsWandField_3014_53 (T@Field_3014_53) Bool)
(declare-fun IsPredicateField_3014_1329 (T@Field_3014_1329) Bool)
(declare-fun IsWandField_3014_1329 (T@Field_3014_1329) Bool)
(declare-fun IsPredicateField_3011_26037 (T@Field_4967_8471) Bool)
(declare-fun IsWandField_3011_26053 (T@Field_4967_8471) Bool)
(declare-fun IsPredicateField_3011_4981 (T@Field_4980_4981) Bool)
(declare-fun IsWandField_3011_4981 (T@Field_4980_4981) Bool)
(declare-fun IsPredicateField_3011_53 (T@Field_4967_53) Bool)
(declare-fun IsWandField_3011_53 (T@Field_4967_53) Bool)
(declare-fun HasDirectPerm_4967_15951 (T@PolymorphicMapType_4928 T@Ref T@Field_4967_8471) Bool)
(declare-fun HasDirectPerm_4967_1329 (T@PolymorphicMapType_4928 T@Ref T@Field_8406_1329) Bool)
(declare-fun HasDirectPerm_4967_4981 (T@PolymorphicMapType_4928 T@Ref T@Field_4980_4981) Bool)
(declare-fun HasDirectPerm_4967_53 (T@PolymorphicMapType_4928 T@Ref T@Field_4967_53) Bool)
(declare-fun HasDirectPerm_3014_14815 (T@PolymorphicMapType_4928 T@Ref T@Field_8466_8471) Bool)
(declare-fun HasDirectPerm_3014_1329 (T@PolymorphicMapType_4928 T@Ref T@Field_3014_1329) Bool)
(declare-fun HasDirectPerm_3014_4981 (T@PolymorphicMapType_4928 T@Ref T@Field_3014_4981) Bool)
(declare-fun HasDirectPerm_3014_53 (T@PolymorphicMapType_4928 T@Ref T@Field_3014_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4928 T@PolymorphicMapType_4928 T@PolymorphicMapType_4928) Bool)
(declare-sort T@IArrayDomainType 0)
(declare-fun len_1 (T@IArrayDomainType) Int)
(declare-fun getPredWandId_3014_3015 (T@Field_8453_8454) Int)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun first (T@Ref) T@IArrayDomainType)
(declare-fun second (T@Ref) Int)
(declare-fun InsidePredicate_8453_4967 (T@Field_8453_8454 T@FrameType T@Field_4967_3015 T@FrameType) Bool)
(declare-fun InsidePredicate_4967_8453 (T@Field_4967_3015 T@FrameType T@Field_8453_8454 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4907) (Heap1 T@PolymorphicMapType_4907) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4907) (Mask T@PolymorphicMapType_4928) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4907) (Heap1@@0 T@PolymorphicMapType_4907) (Heap2 T@PolymorphicMapType_4907) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8466_8471) ) (!  (not (select (|PolymorphicMapType_5456_8453_18771#PolymorphicMapType_5456| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5456_8453_18771#PolymorphicMapType_5456| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8453_8454) ) (!  (not (select (|PolymorphicMapType_5456_8453_8454#PolymorphicMapType_5456| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5456_8453_8454#PolymorphicMapType_5456| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3014_1329) ) (!  (not (select (|PolymorphicMapType_5456_8453_1329#PolymorphicMapType_5456| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5456_8453_1329#PolymorphicMapType_5456| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3014_4981) ) (!  (not (select (|PolymorphicMapType_5456_8453_4981#PolymorphicMapType_5456| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5456_8453_4981#PolymorphicMapType_5456| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3014_53) ) (!  (not (select (|PolymorphicMapType_5456_8453_53#PolymorphicMapType_5456| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5456_8453_53#PolymorphicMapType_5456| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4967_8471) ) (!  (not (select (|PolymorphicMapType_5456_4967_17723#PolymorphicMapType_5456| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5456_4967_17723#PolymorphicMapType_5456| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4967_3015) ) (!  (not (select (|PolymorphicMapType_5456_4967_8454#PolymorphicMapType_5456| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5456_4967_8454#PolymorphicMapType_5456| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8406_1329) ) (!  (not (select (|PolymorphicMapType_5456_4967_1329#PolymorphicMapType_5456| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5456_4967_1329#PolymorphicMapType_5456| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_4980_4981) ) (!  (not (select (|PolymorphicMapType_5456_4967_4981#PolymorphicMapType_5456| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5456_4967_4981#PolymorphicMapType_5456| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_4967_53) ) (!  (not (select (|PolymorphicMapType_5456_4967_53#PolymorphicMapType_5456| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5456_4967_53#PolymorphicMapType_5456| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_3014_3015 (P x))
 :qid |stdinbpl.244:15|
 :skolemid |25|
 :pattern ( (P x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4907) (x@@0 T@Ref) ) (! (|P#everUsed_3014| (P x@@0))
 :qid |stdinbpl.263:15|
 :skolemid |29|
 :pattern ( (|P#trigger_3014| Heap@@0 (P x@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4907) (ExhaleHeap T@PolymorphicMapType_4907) (Mask@@0 T@PolymorphicMapType_4928) (pm_f_5 T@Field_4967_3015) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4967_3015 Mask@@0 null pm_f_5) (IsPredicateField_4967_16564 pm_f_5)) (= (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@1) null (PredicateMaskField_4967 pm_f_5)) (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| ExhaleHeap) null (PredicateMaskField_4967 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_4967_16564 pm_f_5) (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| ExhaleHeap) null (PredicateMaskField_4967 pm_f_5)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4907) (ExhaleHeap@@0 T@PolymorphicMapType_4907) (Mask@@1 T@PolymorphicMapType_4928) (pm_f_5@@0 T@Field_8453_8454) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3014_3015 Mask@@1 null pm_f_5@@0) (IsPredicateField_3014_3015 pm_f_5@@0)) (= (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@2) null (PredicateMaskField_3014 pm_f_5@@0)) (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| ExhaleHeap@@0) null (PredicateMaskField_3014 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3014_3015 pm_f_5@@0) (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| ExhaleHeap@@0) null (PredicateMaskField_3014 pm_f_5@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4907) (ExhaleHeap@@1 T@PolymorphicMapType_4907) (Mask@@2 T@PolymorphicMapType_4928) (pm_f_5@@1 T@Field_4967_3015) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4967_3015 Mask@@2 null pm_f_5@@1) (IsWandField_4967_19936 pm_f_5@@1)) (= (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@3) null (WandMaskField_4967 pm_f_5@@1)) (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| ExhaleHeap@@1) null (WandMaskField_4967 pm_f_5@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_4967_19936 pm_f_5@@1) (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| ExhaleHeap@@1) null (WandMaskField_4967 pm_f_5@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4907) (ExhaleHeap@@2 T@PolymorphicMapType_4907) (Mask@@3 T@PolymorphicMapType_4928) (pm_f_5@@2 T@Field_8453_8454) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3014_3015 Mask@@3 null pm_f_5@@2) (IsWandField_3014_19579 pm_f_5@@2)) (= (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@4) null (WandMaskField_3014 pm_f_5@@2)) (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| ExhaleHeap@@2) null (WandMaskField_3014 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_3014_19579 pm_f_5@@2) (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| ExhaleHeap@@2) null (WandMaskField_3014 pm_f_5@@2)))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@1) (P x2)) (= x@@1 x2))
 :qid |stdinbpl.254:15|
 :skolemid |27|
 :pattern ( (P x@@1) (P x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@2) (|P#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.258:15|
 :skolemid |28|
 :pattern ( (|P#sm| x@@2) (|P#sm| x2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4907) (ExhaleHeap@@3 T@PolymorphicMapType_4907) (Mask@@4 T@PolymorphicMapType_4928) (pm_f_5@@3 T@Field_4967_3015) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_4967_3015 Mask@@4 null pm_f_5@@3) (IsPredicateField_4967_16564 pm_f_5@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_4967_53) ) (!  (=> (select (|PolymorphicMapType_5456_4967_53#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@5) null (PredicateMaskField_4967 pm_f_5@@3))) o2_5 f_16) (= (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@5) o2_5 f_16) (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_4980_4981) ) (!  (=> (select (|PolymorphicMapType_5456_4967_4981#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@5) null (PredicateMaskField_4967 pm_f_5@@3))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@5) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_8406_1329) ) (!  (=> (select (|PolymorphicMapType_5456_4967_1329#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@5) null (PredicateMaskField_4967 pm_f_5@@3))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@5) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_4967_3015) ) (!  (=> (select (|PolymorphicMapType_5456_4967_8454#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@5) null (PredicateMaskField_4967 pm_f_5@@3))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@5) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_4967_8471) ) (!  (=> (select (|PolymorphicMapType_5456_4967_17723#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@5) null (PredicateMaskField_4967 pm_f_5@@3))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@5) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@3 f_16@@3))
))) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_3014_53) ) (!  (=> (select (|PolymorphicMapType_5456_8453_53#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@5) null (PredicateMaskField_4967 pm_f_5@@3))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@5) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_3014_4981) ) (!  (=> (select (|PolymorphicMapType_5456_8453_4981#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@5) null (PredicateMaskField_4967 pm_f_5@@3))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@5) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_3014_1329) ) (!  (=> (select (|PolymorphicMapType_5456_8453_1329#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@5) null (PredicateMaskField_4967 pm_f_5@@3))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@5) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@6 f_16@@6))
))) (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_8453_8454) ) (!  (=> (select (|PolymorphicMapType_5456_8453_8454#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@5) null (PredicateMaskField_4967 pm_f_5@@3))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@5) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@7 f_16@@7))
))) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_8466_8471) ) (!  (=> (select (|PolymorphicMapType_5456_8453_18771#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@5) null (PredicateMaskField_4967 pm_f_5@@3))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@5) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| ExhaleHeap@@3) o2_5@@8 f_16@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4967_16564 pm_f_5@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4907) (ExhaleHeap@@4 T@PolymorphicMapType_4907) (Mask@@5 T@PolymorphicMapType_4928) (pm_f_5@@4 T@Field_8453_8454) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3014_3015 Mask@@5 null pm_f_5@@4) (IsPredicateField_3014_3015 pm_f_5@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@9 T@Ref) (f_16@@9 T@Field_4967_53) ) (!  (=> (select (|PolymorphicMapType_5456_4967_53#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@6) null (PredicateMaskField_3014 pm_f_5@@4))) o2_5@@9 f_16@@9) (= (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@6) o2_5@@9 f_16@@9) (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@9 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@9 f_16@@9))
)) (forall ((o2_5@@10 T@Ref) (f_16@@10 T@Field_4980_4981) ) (!  (=> (select (|PolymorphicMapType_5456_4967_4981#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@6) null (PredicateMaskField_3014 pm_f_5@@4))) o2_5@@10 f_16@@10) (= (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@6) o2_5@@10 f_16@@10) (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@10 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@10 f_16@@10))
))) (forall ((o2_5@@11 T@Ref) (f_16@@11 T@Field_8406_1329) ) (!  (=> (select (|PolymorphicMapType_5456_4967_1329#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@6) null (PredicateMaskField_3014 pm_f_5@@4))) o2_5@@11 f_16@@11) (= (select (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@6) o2_5@@11 f_16@@11) (select (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@11 f_16@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@11 f_16@@11))
))) (forall ((o2_5@@12 T@Ref) (f_16@@12 T@Field_4967_3015) ) (!  (=> (select (|PolymorphicMapType_5456_4967_8454#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@6) null (PredicateMaskField_3014 pm_f_5@@4))) o2_5@@12 f_16@@12) (= (select (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@6) o2_5@@12 f_16@@12) (select (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@12 f_16@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@12 f_16@@12))
))) (forall ((o2_5@@13 T@Ref) (f_16@@13 T@Field_4967_8471) ) (!  (=> (select (|PolymorphicMapType_5456_4967_17723#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@6) null (PredicateMaskField_3014 pm_f_5@@4))) o2_5@@13 f_16@@13) (= (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@6) o2_5@@13 f_16@@13) (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@13 f_16@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@13 f_16@@13))
))) (forall ((o2_5@@14 T@Ref) (f_16@@14 T@Field_3014_53) ) (!  (=> (select (|PolymorphicMapType_5456_8453_53#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@6) null (PredicateMaskField_3014 pm_f_5@@4))) o2_5@@14 f_16@@14) (= (select (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@6) o2_5@@14 f_16@@14) (select (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@14 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@14 f_16@@14))
))) (forall ((o2_5@@15 T@Ref) (f_16@@15 T@Field_3014_4981) ) (!  (=> (select (|PolymorphicMapType_5456_8453_4981#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@6) null (PredicateMaskField_3014 pm_f_5@@4))) o2_5@@15 f_16@@15) (= (select (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@6) o2_5@@15 f_16@@15) (select (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@15 f_16@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@15 f_16@@15))
))) (forall ((o2_5@@16 T@Ref) (f_16@@16 T@Field_3014_1329) ) (!  (=> (select (|PolymorphicMapType_5456_8453_1329#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@6) null (PredicateMaskField_3014 pm_f_5@@4))) o2_5@@16 f_16@@16) (= (select (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@6) o2_5@@16 f_16@@16) (select (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@16 f_16@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@16 f_16@@16))
))) (forall ((o2_5@@17 T@Ref) (f_16@@17 T@Field_8453_8454) ) (!  (=> (select (|PolymorphicMapType_5456_8453_8454#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@6) null (PredicateMaskField_3014 pm_f_5@@4))) o2_5@@17 f_16@@17) (= (select (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@6) o2_5@@17 f_16@@17) (select (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@17 f_16@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@17 f_16@@17))
))) (forall ((o2_5@@18 T@Ref) (f_16@@18 T@Field_8466_8471) ) (!  (=> (select (|PolymorphicMapType_5456_8453_18771#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@6) null (PredicateMaskField_3014 pm_f_5@@4))) o2_5@@18 f_16@@18) (= (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@6) o2_5@@18 f_16@@18) (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@18 f_16@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| ExhaleHeap@@4) o2_5@@18 f_16@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3014_3015 pm_f_5@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4907) (ExhaleHeap@@5 T@PolymorphicMapType_4907) (Mask@@6 T@PolymorphicMapType_4928) (pm_f_5@@5 T@Field_4967_3015) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_4967_3015 Mask@@6 null pm_f_5@@5) (IsWandField_4967_19936 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@19 T@Ref) (f_16@@19 T@Field_4967_53) ) (!  (=> (select (|PolymorphicMapType_5456_4967_53#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@7) null (WandMaskField_4967 pm_f_5@@5))) o2_5@@19 f_16@@19) (= (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@7) o2_5@@19 f_16@@19) (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@19 f_16@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@19 f_16@@19))
)) (forall ((o2_5@@20 T@Ref) (f_16@@20 T@Field_4980_4981) ) (!  (=> (select (|PolymorphicMapType_5456_4967_4981#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@7) null (WandMaskField_4967 pm_f_5@@5))) o2_5@@20 f_16@@20) (= (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@7) o2_5@@20 f_16@@20) (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@20 f_16@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@20 f_16@@20))
))) (forall ((o2_5@@21 T@Ref) (f_16@@21 T@Field_8406_1329) ) (!  (=> (select (|PolymorphicMapType_5456_4967_1329#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@7) null (WandMaskField_4967 pm_f_5@@5))) o2_5@@21 f_16@@21) (= (select (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@7) o2_5@@21 f_16@@21) (select (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@21 f_16@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@21 f_16@@21))
))) (forall ((o2_5@@22 T@Ref) (f_16@@22 T@Field_4967_3015) ) (!  (=> (select (|PolymorphicMapType_5456_4967_8454#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@7) null (WandMaskField_4967 pm_f_5@@5))) o2_5@@22 f_16@@22) (= (select (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@7) o2_5@@22 f_16@@22) (select (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@22 f_16@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@22 f_16@@22))
))) (forall ((o2_5@@23 T@Ref) (f_16@@23 T@Field_4967_8471) ) (!  (=> (select (|PolymorphicMapType_5456_4967_17723#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@7) null (WandMaskField_4967 pm_f_5@@5))) o2_5@@23 f_16@@23) (= (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@7) o2_5@@23 f_16@@23) (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@23 f_16@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@23 f_16@@23))
))) (forall ((o2_5@@24 T@Ref) (f_16@@24 T@Field_3014_53) ) (!  (=> (select (|PolymorphicMapType_5456_8453_53#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@7) null (WandMaskField_4967 pm_f_5@@5))) o2_5@@24 f_16@@24) (= (select (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@7) o2_5@@24 f_16@@24) (select (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@24 f_16@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@24 f_16@@24))
))) (forall ((o2_5@@25 T@Ref) (f_16@@25 T@Field_3014_4981) ) (!  (=> (select (|PolymorphicMapType_5456_8453_4981#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@7) null (WandMaskField_4967 pm_f_5@@5))) o2_5@@25 f_16@@25) (= (select (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@7) o2_5@@25 f_16@@25) (select (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@25 f_16@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@25 f_16@@25))
))) (forall ((o2_5@@26 T@Ref) (f_16@@26 T@Field_3014_1329) ) (!  (=> (select (|PolymorphicMapType_5456_8453_1329#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@7) null (WandMaskField_4967 pm_f_5@@5))) o2_5@@26 f_16@@26) (= (select (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@7) o2_5@@26 f_16@@26) (select (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@26 f_16@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@26 f_16@@26))
))) (forall ((o2_5@@27 T@Ref) (f_16@@27 T@Field_8453_8454) ) (!  (=> (select (|PolymorphicMapType_5456_8453_8454#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@7) null (WandMaskField_4967 pm_f_5@@5))) o2_5@@27 f_16@@27) (= (select (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@7) o2_5@@27 f_16@@27) (select (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@27 f_16@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@27 f_16@@27))
))) (forall ((o2_5@@28 T@Ref) (f_16@@28 T@Field_8466_8471) ) (!  (=> (select (|PolymorphicMapType_5456_8453_18771#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@7) null (WandMaskField_4967 pm_f_5@@5))) o2_5@@28 f_16@@28) (= (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@7) o2_5@@28 f_16@@28) (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@28 f_16@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| ExhaleHeap@@5) o2_5@@28 f_16@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_4967_19936 pm_f_5@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4907) (ExhaleHeap@@6 T@PolymorphicMapType_4907) (Mask@@7 T@PolymorphicMapType_4928) (pm_f_5@@6 T@Field_8453_8454) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3014_3015 Mask@@7 null pm_f_5@@6) (IsWandField_3014_19579 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_16@@29 T@Field_4967_53) ) (!  (=> (select (|PolymorphicMapType_5456_4967_53#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@8) null (WandMaskField_3014 pm_f_5@@6))) o2_5@@29 f_16@@29) (= (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@8) o2_5@@29 f_16@@29) (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@29 f_16@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@29 f_16@@29))
)) (forall ((o2_5@@30 T@Ref) (f_16@@30 T@Field_4980_4981) ) (!  (=> (select (|PolymorphicMapType_5456_4967_4981#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@8) null (WandMaskField_3014 pm_f_5@@6))) o2_5@@30 f_16@@30) (= (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@8) o2_5@@30 f_16@@30) (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@30 f_16@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@30 f_16@@30))
))) (forall ((o2_5@@31 T@Ref) (f_16@@31 T@Field_8406_1329) ) (!  (=> (select (|PolymorphicMapType_5456_4967_1329#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@8) null (WandMaskField_3014 pm_f_5@@6))) o2_5@@31 f_16@@31) (= (select (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@8) o2_5@@31 f_16@@31) (select (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@31 f_16@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@31 f_16@@31))
))) (forall ((o2_5@@32 T@Ref) (f_16@@32 T@Field_4967_3015) ) (!  (=> (select (|PolymorphicMapType_5456_4967_8454#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@8) null (WandMaskField_3014 pm_f_5@@6))) o2_5@@32 f_16@@32) (= (select (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@8) o2_5@@32 f_16@@32) (select (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@32 f_16@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@32 f_16@@32))
))) (forall ((o2_5@@33 T@Ref) (f_16@@33 T@Field_4967_8471) ) (!  (=> (select (|PolymorphicMapType_5456_4967_17723#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@8) null (WandMaskField_3014 pm_f_5@@6))) o2_5@@33 f_16@@33) (= (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@8) o2_5@@33 f_16@@33) (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@33 f_16@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@33 f_16@@33))
))) (forall ((o2_5@@34 T@Ref) (f_16@@34 T@Field_3014_53) ) (!  (=> (select (|PolymorphicMapType_5456_8453_53#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@8) null (WandMaskField_3014 pm_f_5@@6))) o2_5@@34 f_16@@34) (= (select (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@8) o2_5@@34 f_16@@34) (select (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@34 f_16@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@34 f_16@@34))
))) (forall ((o2_5@@35 T@Ref) (f_16@@35 T@Field_3014_4981) ) (!  (=> (select (|PolymorphicMapType_5456_8453_4981#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@8) null (WandMaskField_3014 pm_f_5@@6))) o2_5@@35 f_16@@35) (= (select (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@8) o2_5@@35 f_16@@35) (select (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@35 f_16@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@35 f_16@@35))
))) (forall ((o2_5@@36 T@Ref) (f_16@@36 T@Field_3014_1329) ) (!  (=> (select (|PolymorphicMapType_5456_8453_1329#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@8) null (WandMaskField_3014 pm_f_5@@6))) o2_5@@36 f_16@@36) (= (select (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@8) o2_5@@36 f_16@@36) (select (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@36 f_16@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@36 f_16@@36))
))) (forall ((o2_5@@37 T@Ref) (f_16@@37 T@Field_8453_8454) ) (!  (=> (select (|PolymorphicMapType_5456_8453_8454#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@8) null (WandMaskField_3014 pm_f_5@@6))) o2_5@@37 f_16@@37) (= (select (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@8) o2_5@@37 f_16@@37) (select (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@37 f_16@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@37 f_16@@37))
))) (forall ((o2_5@@38 T@Ref) (f_16@@38 T@Field_8466_8471) ) (!  (=> (select (|PolymorphicMapType_5456_8453_18771#PolymorphicMapType_5456| (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@8) null (WandMaskField_3014 pm_f_5@@6))) o2_5@@38 f_16@@38) (= (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@8) o2_5@@38 f_16@@38) (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@38 f_16@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| ExhaleHeap@@6) o2_5@@38 f_16@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_3014_19579 pm_f_5@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4907) (ExhaleHeap@@7 T@PolymorphicMapType_4907) (Mask@@8 T@PolymorphicMapType_4928) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@9) o_12 $allocated) (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_8453_8454) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8453_8453 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8453_8453 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4967_3015) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4967_4967 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4967_4967 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3011_1329 val)))
(assert  (not (IsWandField_3011_1329 val)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4907) (ExhaleHeap@@8 T@PolymorphicMapType_4907) (Mask@@9 T@PolymorphicMapType_4928) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4928) (o_2@@9 T@Ref) (f_4@@9 T@Field_8466_8471) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3014_26868 f_4@@9))) (not (IsWandField_3014_26884 f_4@@9))) (<= (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4928) (o_2@@10 T@Ref) (f_4@@10 T@Field_3014_4981) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3014_4981 f_4@@10))) (not (IsWandField_3014_4981 f_4@@10))) (<= (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4928) (o_2@@11 T@Ref) (f_4@@11 T@Field_3014_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3014_53 f_4@@11))) (not (IsWandField_3014_53 f_4@@11))) (<= (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4928) (o_2@@12 T@Ref) (f_4@@12 T@Field_8453_8454) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3014_3015 f_4@@12))) (not (IsWandField_3014_19579 f_4@@12))) (<= (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4928) (o_2@@13 T@Ref) (f_4@@13 T@Field_3014_1329) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3014_1329 f_4@@13))) (not (IsWandField_3014_1329 f_4@@13))) (<= (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4928) (o_2@@14 T@Ref) (f_4@@14 T@Field_4967_8471) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3011_26037 f_4@@14))) (not (IsWandField_3011_26053 f_4@@14))) (<= (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4928) (o_2@@15 T@Ref) (f_4@@15 T@Field_4980_4981) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3011_4981 f_4@@15))) (not (IsWandField_3011_4981 f_4@@15))) (<= (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4928) (o_2@@16 T@Ref) (f_4@@16 T@Field_4967_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3011_53 f_4@@16))) (not (IsWandField_3011_53 f_4@@16))) (<= (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4928) (o_2@@17 T@Ref) (f_4@@17 T@Field_4967_3015) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_4967_16564 f_4@@17))) (not (IsWandField_4967_19936 f_4@@17))) (<= (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4928) (o_2@@18 T@Ref) (f_4@@18 T@Field_8406_1329) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3011_1329 f_4@@18))) (not (IsWandField_3011_1329 f_4@@18))) (<= (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4928) (o_2@@19 T@Ref) (f_4@@19 T@Field_4967_8471) ) (! (= (HasDirectPerm_4967_15951 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4967_15951 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4928) (o_2@@20 T@Ref) (f_4@@20 T@Field_8406_1329) ) (! (= (HasDirectPerm_4967_1329 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4967_1329 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4928) (o_2@@21 T@Ref) (f_4@@21 T@Field_4980_4981) ) (! (= (HasDirectPerm_4967_4981 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4967_4981 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4928) (o_2@@22 T@Ref) (f_4@@22 T@Field_4967_53) ) (! (= (HasDirectPerm_4967_53 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4967_53 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4928) (o_2@@23 T@Ref) (f_4@@23 T@Field_4967_3015) ) (! (= (HasDirectPerm_4967_3015 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4967_3015 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4928) (o_2@@24 T@Ref) (f_4@@24 T@Field_8466_8471) ) (! (= (HasDirectPerm_3014_14815 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3014_14815 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_4928) (o_2@@25 T@Ref) (f_4@@25 T@Field_3014_1329) ) (! (= (HasDirectPerm_3014_1329 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3014_1329 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_4928) (o_2@@26 T@Ref) (f_4@@26 T@Field_3014_4981) ) (! (= (HasDirectPerm_3014_4981 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3014_4981 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_4928) (o_2@@27 T@Ref) (f_4@@27 T@Field_3014_53) ) (! (= (HasDirectPerm_3014_53 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3014_53 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_4928) (o_2@@28 T@Ref) (f_4@@28 T@Field_8453_8454) ) (! (= (HasDirectPerm_3014_3015 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3014_3015 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4907) (ExhaleHeap@@9 T@PolymorphicMapType_4907) (Mask@@30 T@PolymorphicMapType_4928) (o_12@@0 T@Ref) (f_16@@39 T@Field_4967_8471) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_4967_15951 Mask@@30 o_12@@0 f_16@@39) (= (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@11) o_12@@0 f_16@@39) (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| ExhaleHeap@@9) o_12@@0 f_16@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| ExhaleHeap@@9) o_12@@0 f_16@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4907) (ExhaleHeap@@10 T@PolymorphicMapType_4907) (Mask@@31 T@PolymorphicMapType_4928) (o_12@@1 T@Ref) (f_16@@40 T@Field_8406_1329) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_4967_1329 Mask@@31 o_12@@1 f_16@@40) (= (select (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@12) o_12@@1 f_16@@40) (select (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| ExhaleHeap@@10) o_12@@1 f_16@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| ExhaleHeap@@10) o_12@@1 f_16@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4907) (ExhaleHeap@@11 T@PolymorphicMapType_4907) (Mask@@32 T@PolymorphicMapType_4928) (o_12@@2 T@Ref) (f_16@@41 T@Field_4980_4981) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_4967_4981 Mask@@32 o_12@@2 f_16@@41) (= (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@13) o_12@@2 f_16@@41) (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| ExhaleHeap@@11) o_12@@2 f_16@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| ExhaleHeap@@11) o_12@@2 f_16@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4907) (ExhaleHeap@@12 T@PolymorphicMapType_4907) (Mask@@33 T@PolymorphicMapType_4928) (o_12@@3 T@Ref) (f_16@@42 T@Field_4967_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_4967_53 Mask@@33 o_12@@3 f_16@@42) (= (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@14) o_12@@3 f_16@@42) (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| ExhaleHeap@@12) o_12@@3 f_16@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| ExhaleHeap@@12) o_12@@3 f_16@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4907) (ExhaleHeap@@13 T@PolymorphicMapType_4907) (Mask@@34 T@PolymorphicMapType_4928) (o_12@@4 T@Ref) (f_16@@43 T@Field_4967_3015) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_4967_3015 Mask@@34 o_12@@4 f_16@@43) (= (select (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@15) o_12@@4 f_16@@43) (select (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| ExhaleHeap@@13) o_12@@4 f_16@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| ExhaleHeap@@13) o_12@@4 f_16@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4907) (ExhaleHeap@@14 T@PolymorphicMapType_4907) (Mask@@35 T@PolymorphicMapType_4928) (o_12@@5 T@Ref) (f_16@@44 T@Field_8466_8471) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_3014_14815 Mask@@35 o_12@@5 f_16@@44) (= (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@16) o_12@@5 f_16@@44) (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| ExhaleHeap@@14) o_12@@5 f_16@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| ExhaleHeap@@14) o_12@@5 f_16@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4907) (ExhaleHeap@@15 T@PolymorphicMapType_4907) (Mask@@36 T@PolymorphicMapType_4928) (o_12@@6 T@Ref) (f_16@@45 T@Field_3014_1329) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_3014_1329 Mask@@36 o_12@@6 f_16@@45) (= (select (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@17) o_12@@6 f_16@@45) (select (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| ExhaleHeap@@15) o_12@@6 f_16@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| ExhaleHeap@@15) o_12@@6 f_16@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4907) (ExhaleHeap@@16 T@PolymorphicMapType_4907) (Mask@@37 T@PolymorphicMapType_4928) (o_12@@7 T@Ref) (f_16@@46 T@Field_3014_4981) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_3014_4981 Mask@@37 o_12@@7 f_16@@46) (= (select (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@18) o_12@@7 f_16@@46) (select (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| ExhaleHeap@@16) o_12@@7 f_16@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| ExhaleHeap@@16) o_12@@7 f_16@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4907) (ExhaleHeap@@17 T@PolymorphicMapType_4907) (Mask@@38 T@PolymorphicMapType_4928) (o_12@@8 T@Ref) (f_16@@47 T@Field_3014_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_3014_53 Mask@@38 o_12@@8 f_16@@47) (= (select (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@19) o_12@@8 f_16@@47) (select (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| ExhaleHeap@@17) o_12@@8 f_16@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| ExhaleHeap@@17) o_12@@8 f_16@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4907) (ExhaleHeap@@18 T@PolymorphicMapType_4907) (Mask@@39 T@PolymorphicMapType_4928) (o_12@@9 T@Ref) (f_16@@48 T@Field_8453_8454) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_3014_3015 Mask@@39 o_12@@9 f_16@@48) (= (select (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@20) o_12@@9 f_16@@48) (select (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| ExhaleHeap@@18) o_12@@9 f_16@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| ExhaleHeap@@18) o_12@@9 f_16@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_8466_8471) ) (! (= (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_3014_4981) ) (! (= (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_3014_53) ) (! (= (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_8453_8454) ) (! (= (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_3014_1329) ) (! (= (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_4967_8471) ) (! (= (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_4980_4981) ) (! (= (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_4967_53) ) (! (= (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_4967_3015) ) (! (= (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_8406_1329) ) (! (= (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4928) (SummandMask1 T@PolymorphicMapType_4928) (SummandMask2 T@PolymorphicMapType_4928) (o_2@@39 T@Ref) (f_4@@39 T@Field_8466_8471) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4928) (SummandMask1@@0 T@PolymorphicMapType_4928) (SummandMask2@@0 T@PolymorphicMapType_4928) (o_2@@40 T@Ref) (f_4@@40 T@Field_3014_4981) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4928) (SummandMask1@@1 T@PolymorphicMapType_4928) (SummandMask2@@1 T@PolymorphicMapType_4928) (o_2@@41 T@Ref) (f_4@@41 T@Field_3014_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4928) (SummandMask1@@2 T@PolymorphicMapType_4928) (SummandMask2@@2 T@PolymorphicMapType_4928) (o_2@@42 T@Ref) (f_4@@42 T@Field_8453_8454) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4928) (SummandMask1@@3 T@PolymorphicMapType_4928) (SummandMask2@@3 T@PolymorphicMapType_4928) (o_2@@43 T@Ref) (f_4@@43 T@Field_3014_1329) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4928) (SummandMask1@@4 T@PolymorphicMapType_4928) (SummandMask2@@4 T@PolymorphicMapType_4928) (o_2@@44 T@Ref) (f_4@@44 T@Field_4967_8471) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4928) (SummandMask1@@5 T@PolymorphicMapType_4928) (SummandMask2@@5 T@PolymorphicMapType_4928) (o_2@@45 T@Ref) (f_4@@45 T@Field_4980_4981) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4928) (SummandMask1@@6 T@PolymorphicMapType_4928) (SummandMask2@@6 T@PolymorphicMapType_4928) (o_2@@46 T@Ref) (f_4@@46 T@Field_4967_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_4928) (SummandMask1@@7 T@PolymorphicMapType_4928) (SummandMask2@@7 T@PolymorphicMapType_4928) (o_2@@47 T@Ref) (f_4@@47 T@Field_4967_3015) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_4928) (SummandMask1@@8 T@PolymorphicMapType_4928) (SummandMask2@@8 T@PolymorphicMapType_4928) (o_2@@48 T@Ref) (f_4@@48 T@Field_8406_1329) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a_2 T@IArrayDomainType) ) (! (>= (len_1 a_2) 0)
 :qid |stdinbpl.220:15|
 :skolemid |23|
 :pattern ( (len_1 a_2))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_3014_3015 (P x@@3)) 0)
 :qid |stdinbpl.248:15|
 :skolemid |26|
 :pattern ( (P x@@3))
)))
(assert (forall ((a_2@@0 T@IArrayDomainType) (i Int) ) (!  (and (= (first (loc a_2@@0 i)) a_2@@0) (= (second (loc a_2@@0 i)) i))
 :qid |stdinbpl.214:15|
 :skolemid |22|
 :pattern ( (loc a_2@@0 i))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4907) (o_11 T@Ref) (f_17 T@Field_8466_8471) (v T@PolymorphicMapType_5456) ) (! (succHeap Heap@@21 (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@21) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@21) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@21) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@21) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@21) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@21) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@21) (store (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@21) o_11 f_17 v) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@21) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@21) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@21) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@21) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@21) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@21) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@21) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@21) (store (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@21) o_11 f_17 v) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@21) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4907) (o_11@@0 T@Ref) (f_17@@0 T@Field_8453_8454) (v@@0 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@22) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@22) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@22) (store (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@22) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@22) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@22) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@22) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@22) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@22) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@22) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@22) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@22) (store (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@22) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@22) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@22) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@22) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@22) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@22) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4907) (o_11@@1 T@Ref) (f_17@@1 T@Field_3014_1329) (v@@1 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@23) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@23) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@23) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@23) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@23) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@23) (store (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@23) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@23) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@23) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@23) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@23) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@23) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@23) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@23) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@23) (store (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@23) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@23) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@23) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4907) (o_11@@2 T@Ref) (f_17@@2 T@Field_3014_4981) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@24) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@24) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@24) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@24) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@24) (store (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@24) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@24) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@24) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@24) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@24) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@24) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@24) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@24) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@24) (store (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@24) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@24) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@24) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@24) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4907) (o_11@@3 T@Ref) (f_17@@3 T@Field_3014_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@25) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@25) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@25) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@25) (store (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@25) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@25) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@25) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@25) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@25) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@25) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@25) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@25) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@25) (store (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@25) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@25) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@25) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@25) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@25) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4907) (o_11@@4 T@Ref) (f_17@@4 T@Field_4967_8471) (v@@4 T@PolymorphicMapType_5456) ) (! (succHeap Heap@@26 (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@26) (store (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@26) o_11@@4 f_17@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@26) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@26) (store (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@26) o_11@@4 f_17@@4 v@@4)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4907) (o_11@@5 T@Ref) (f_17@@5 T@Field_4967_3015) (v@@5 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@27) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@27) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@27) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@27) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@27) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@27) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@27) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@27) (store (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@27) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@27) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@27) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@27) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@27) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@27) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@27) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@27) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@27) (store (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@27) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4907) (o_11@@6 T@Ref) (f_17@@6 T@Field_8406_1329) (v@@6 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@28) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@28) (store (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@28) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@28) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@28) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@28) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@28) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@28) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@28) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@28) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@28) (store (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@28) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@28) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@28) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@28) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@28) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@28) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@28) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4907) (o_11@@7 T@Ref) (f_17@@7 T@Field_4980_4981) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@29) (store (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@29) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@29) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@29) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@29) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@29) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@29) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@29) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@29) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@29) (store (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@29) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@29) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@29) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@29) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@29) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@29) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@29) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@29) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4907) (o_11@@8 T@Ref) (f_17@@8 T@Field_4967_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_4907 (store (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@30) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4907 (store (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@30) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@30) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@30)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_3014 (P x@@4)) (|P#sm| x@@4))
 :qid |stdinbpl.240:15|
 :skolemid |24|
 :pattern ( (PredicateMaskField_3014 (P x@@4)))
)))
(assert (forall ((o_11@@9 T@Ref) (f_10 T@Field_4980_4981) (Heap@@31 T@PolymorphicMapType_4907) ) (!  (=> (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@31) o_11@@9 $allocated) (select (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@31) (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@31) o_11@@9 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@31) o_11@@9 f_10))
)))
(assert (forall ((p@@2 T@Field_8453_8454) (v_1@@1 T@FrameType) (q T@Field_8453_8454) (w@@1 T@FrameType) (r T@Field_8453_8454) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8453_8453 p@@2 v_1@@1 q w@@1) (InsidePredicate_8453_8453 q w@@1 r u)) (InsidePredicate_8453_8453 p@@2 v_1@@1 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8453_8453 p@@2 v_1@@1 q w@@1) (InsidePredicate_8453_8453 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_8453_8454) (v_1@@2 T@FrameType) (q@@0 T@Field_8453_8454) (w@@2 T@FrameType) (r@@0 T@Field_4967_3015) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8453_8453 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8453_4967 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_8453_4967 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8453_8453 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8453_4967 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_8453_8454) (v_1@@3 T@FrameType) (q@@1 T@Field_4967_3015) (w@@3 T@FrameType) (r@@1 T@Field_8453_8454) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8453_4967 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4967_8453 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_8453_8453 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8453_4967 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4967_8453 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_8453_8454) (v_1@@4 T@FrameType) (q@@2 T@Field_4967_3015) (w@@4 T@FrameType) (r@@2 T@Field_4967_3015) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8453_4967 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4967_4967 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_8453_4967 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8453_4967 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4967_4967 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4967_3015) (v_1@@5 T@FrameType) (q@@3 T@Field_8453_8454) (w@@5 T@FrameType) (r@@3 T@Field_8453_8454) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4967_8453 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8453_8453 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4967_8453 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4967_8453 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8453_8453 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4967_3015) (v_1@@6 T@FrameType) (q@@4 T@Field_8453_8454) (w@@6 T@FrameType) (r@@4 T@Field_4967_3015) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4967_8453 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8453_4967 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4967_4967 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4967_8453 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8453_4967 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4967_3015) (v_1@@7 T@FrameType) (q@@5 T@Field_4967_3015) (w@@7 T@FrameType) (r@@5 T@Field_8453_8454) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4967_4967 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4967_8453 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4967_8453 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4967_4967 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4967_8453 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4967_3015) (v_1@@8 T@FrameType) (q@@6 T@Field_4967_3015) (w@@8 T@FrameType) (r@@6 T@Field_4967_3015) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4967_4967 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4967_4967 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4967_4967 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4967_4967 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4967_4967 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun arr1 () T@IArrayDomainType)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_4928)
(declare-fun Heap@@32 () T@PolymorphicMapType_4907)
(declare-fun Heap@0 () T@PolymorphicMapType_4907)
(declare-fun arr2 () T@IArrayDomainType)
(set-info :boogie-vc-id test1)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon3_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 6)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (not (= i_1 i_1_1)) (< NoPerm (ite  (and (<= 0 i_1) (< i_1 10)) FullPerm NoPerm))) (< NoPerm (ite  (and (<= 0 i_1_1) (< i_1_1 10)) FullPerm NoPerm))) (not (= (loc arr1 i_1) (loc arr1 i_1_1))))
 :qid |stdinbpl.315:15|
 :skolemid |30|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (not (= i_1@@0 i_1_1@@0)) (< NoPerm (ite  (and (<= 0 i_1@@0) (< i_1@@0 10)) FullPerm NoPerm))) (< NoPerm (ite  (and (<= 0 i_1_1@@0) (< i_1_1@@0 10)) FullPerm NoPerm))) (not (= (loc arr1 i_1@@0) (loc arr1 i_1_1@@0))))
 :qid |stdinbpl.315:15|
 :skolemid |30|
)) (=> (and (forall ((i_1@@1 Int) ) (!  (=> (< NoPerm (ite  (and (<= 0 i_1@@1) (< i_1@@1 10)) FullPerm NoPerm)) (and (qpRange1 (loc arr1 i_1@@1)) (= (invRecv1 (loc arr1 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.321:22|
 :skolemid |31|
 :pattern ( (loc arr1 i_1@@1))
 :pattern ( (loc arr1 i_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (< NoPerm (ite  (and (<= 0 (invRecv1 o_4)) (< (invRecv1 o_4) 10)) FullPerm NoPerm)) (qpRange1 o_4)) (= (loc arr1 (invRecv1 o_4)) o_4))
 :qid |stdinbpl.325:22|
 :skolemid |32|
 :pattern ( (invRecv1 o_4))
))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (forall ((i_1@@2 Int) ) (! (>= (ite  (and (<= 0 i_1@@2) (< i_1@@2 10)) FullPerm NoPerm) NoPerm)
 :qid |stdinbpl.331:15|
 :skolemid |33|
 :pattern ( (loc arr1 i_1@@2))
 :pattern ( (loc arr1 i_1@@2))
))) (=> (forall ((i_1@@3 Int) ) (! (>= (ite  (and (<= 0 i_1@@3) (< i_1@@3 10)) FullPerm NoPerm) NoPerm)
 :qid |stdinbpl.331:15|
 :skolemid |33|
 :pattern ( (loc arr1 i_1@@3))
 :pattern ( (loc arr1 i_1@@3))
)) (=> (and (forall ((i_1@@4 Int) ) (!  (=> (> (ite  (and (<= 0 i_1@@4) (< i_1@@4 10)) FullPerm NoPerm) NoPerm) (not (= (loc arr1 i_1@@4) null)))
 :qid |stdinbpl.337:22|
 :skolemid |34|
 :pattern ( (loc arr1 i_1@@4))
 :pattern ( (loc arr1 i_1@@4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (< NoPerm (ite  (and (<= 0 (invRecv1 o_4@@0)) (< (invRecv1 o_4@@0) 10)) FullPerm NoPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm (ite  (and (<= 0 (invRecv1 o_4@@0)) (< (invRecv1 o_4@@0) 10)) FullPerm NoPerm)) (= (loc arr1 (invRecv1 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| QPMask@0) o_4@@0 val) (+ (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| ZeroMask) o_4@@0 val) (ite  (and (<= 0 (invRecv1 o_4@@0)) (< (invRecv1 o_4@@0) 10)) FullPerm NoPerm))))) (=> (not (and (< NoPerm (ite  (and (<= 0 (invRecv1 o_4@@0)) (< (invRecv1 o_4@@0) 10)) FullPerm NoPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| QPMask@0) o_4@@0 val) (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| ZeroMask) o_4@@0 val))))
 :qid |stdinbpl.343:22|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| QPMask@0) o_4@@0 val))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_4967_53) ) (!  (=> true (= (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_4928_3011_53#PolymorphicMapType_4928| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_4980_4981) ) (!  (=> true (= (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_4928_3011_4981#PolymorphicMapType_4928| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_8406_1329) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_4967_3015) ) (!  (=> true (= (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_4928_3011_3015#PolymorphicMapType_4928| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_4967_8471) ) (!  (=> true (= (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_4928_3011_24165#PolymorphicMapType_4928| QPMask@0) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_3014_53) ) (!  (=> true (= (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| ZeroMask) o_4@@6 f_5@@4) (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| QPMask@0) o_4@@6 f_5@@4)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| ZeroMask) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_4928_3014_53#PolymorphicMapType_4928| QPMask@0) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_3014_4981) ) (!  (=> true (= (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| ZeroMask) o_4@@7 f_5@@5) (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| QPMask@0) o_4@@7 f_5@@5)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| ZeroMask) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_4928_3014_4981#PolymorphicMapType_4928| QPMask@0) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_3014_1329) ) (!  (=> true (= (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| ZeroMask) o_4@@8 f_5@@6) (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| QPMask@0) o_4@@8 f_5@@6)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| ZeroMask) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_4928_3014_1329#PolymorphicMapType_4928| QPMask@0) o_4@@8 f_5@@6))
))) (forall ((o_4@@9 T@Ref) (f_5@@7 T@Field_8453_8454) ) (!  (=> true (= (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| ZeroMask) o_4@@9 f_5@@7) (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| QPMask@0) o_4@@9 f_5@@7)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| ZeroMask) o_4@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_4928_3014_3015#PolymorphicMapType_4928| QPMask@0) o_4@@9 f_5@@7))
))) (forall ((o_4@@10 T@Ref) (f_5@@8 T@Field_8466_8471) ) (!  (=> true (= (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| ZeroMask) o_4@@10 f_5@@8) (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| QPMask@0) o_4@@10 f_5@@8)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| ZeroMask) o_4@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_4928_3014_24576#PolymorphicMapType_4928| QPMask@0) o_4@@10 f_5@@8))
))) (state Heap@@32 QPMask@0)) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (= FullPerm (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| QPMask@0) (loc arr1 0) val))) (=> (= FullPerm (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| QPMask@0) (loc arr1 0) val)) (=> (= Heap@0 (PolymorphicMapType_4907 (|PolymorphicMapType_4907_2867_53#PolymorphicMapType_4907| Heap@@32) (|PolymorphicMapType_4907_2870_2871#PolymorphicMapType_4907| Heap@@32) (store (|PolymorphicMapType_4907_3011_1329#PolymorphicMapType_4907| Heap@@32) (loc arr1 0) val 0) (|PolymorphicMapType_4907_3014_3015#PolymorphicMapType_4907| Heap@@32) (|PolymorphicMapType_4907_3014_53#PolymorphicMapType_4907| Heap@@32) (|PolymorphicMapType_4907_3014_4981#PolymorphicMapType_4907| Heap@@32) (|PolymorphicMapType_4907_3014_1329#PolymorphicMapType_4907| Heap@@32) (|PolymorphicMapType_4907_3014_14857#PolymorphicMapType_4907| Heap@@32) (|PolymorphicMapType_4907_4967_3015#PolymorphicMapType_4907| Heap@@32) (|PolymorphicMapType_4907_4967_15993#PolymorphicMapType_4907| Heap@@32))) (=> (and (state Heap@0 QPMask@0) (= (ControlFlow 0 3) (- 0 2))) (= FullPerm (select (|PolymorphicMapType_4928_3011_1329#PolymorphicMapType_4928| QPMask@0) (loc arr2 0) val)))))))))))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 7) 1) anon3_Then_correct) (=> (= (ControlFlow 0 7) 3) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 8) 7) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
