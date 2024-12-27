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
(declare-sort T@Field_11080_53 0)
(declare-sort T@Field_11093_11094 0)
(declare-sort T@Field_17347_17348 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_17256_3251 0)
(declare-sort T@Field_17360_17365 0)
(declare-sort T@Field_6531_6537 0)
(declare-sort T@Field_6531_17365 0)
(declare-sort T@Field_6536_3251 0)
(declare-sort T@Field_6536_3266 0)
(declare-sort T@Field_6536_11094 0)
(declare-datatypes ((T@PolymorphicMapType_11041 0)) (((PolymorphicMapType_11041 (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| (Array T@Ref T@Field_17256_3251 Real)) (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| (Array T@Ref T@Field_11080_53 Real)) (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| (Array T@Ref T@Field_17347_17348 Real)) (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| (Array T@Ref T@Field_6531_6537 Real)) (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| (Array T@Ref T@Field_11093_11094 Real)) (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| (Array T@Ref T@Field_6531_17365 Real)) (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| (Array T@Ref T@Field_6536_3251 Real)) (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| (Array T@Ref T@Field_6536_3266 Real)) (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| (Array T@Ref T@Field_6536_11094 Real)) (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| (Array T@Ref T@Field_17360_17365 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11569 0)) (((PolymorphicMapType_11569 (|PolymorphicMapType_11569_6531_3251#PolymorphicMapType_11569| (Array T@Ref T@Field_17256_3251 Bool)) (|PolymorphicMapType_11569_6533_3266#PolymorphicMapType_11569| (Array T@Ref T@Field_11080_53 Bool)) (|PolymorphicMapType_11569_6531_11094#PolymorphicMapType_11569| (Array T@Ref T@Field_11093_11094 Bool)) (|PolymorphicMapType_11569_6531_17348#PolymorphicMapType_11569| (Array T@Ref T@Field_6531_6537 Bool)) (|PolymorphicMapType_11569_6531_34624#PolymorphicMapType_11569| (Array T@Ref T@Field_6531_17365 Bool)) (|PolymorphicMapType_11569_17347_3251#PolymorphicMapType_11569| (Array T@Ref T@Field_6536_3251 Bool)) (|PolymorphicMapType_11569_17347_3266#PolymorphicMapType_11569| (Array T@Ref T@Field_6536_3266 Bool)) (|PolymorphicMapType_11569_17347_11094#PolymorphicMapType_11569| (Array T@Ref T@Field_6536_11094 Bool)) (|PolymorphicMapType_11569_17347_17348#PolymorphicMapType_11569| (Array T@Ref T@Field_17347_17348 Bool)) (|PolymorphicMapType_11569_17347_35672#PolymorphicMapType_11569| (Array T@Ref T@Field_17360_17365 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11020 0)) (((PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| (Array T@Ref T@Field_11080_53 Bool)) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| (Array T@Ref T@Field_11093_11094 T@Ref)) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| (Array T@Ref T@Field_17347_17348 T@FrameType)) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| (Array T@Ref T@Field_17256_3251 Int)) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| (Array T@Ref T@Field_17360_17365 T@PolymorphicMapType_11569)) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| (Array T@Ref T@Field_6531_6537 T@FrameType)) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| (Array T@Ref T@Field_6531_17365 T@PolymorphicMapType_11569)) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| (Array T@Ref T@Field_6536_3251 Int)) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| (Array T@Ref T@Field_6536_3266 Bool)) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| (Array T@Ref T@Field_6536_11094 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_11080_53)
(declare-fun f_7 () T@Field_17256_3251)
(declare-fun g () T@Field_11080_53)
(declare-fun succHeap (T@PolymorphicMapType_11020 T@PolymorphicMapType_11020) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11020 T@PolymorphicMapType_11020) Bool)
(declare-fun state (T@PolymorphicMapType_11020 T@PolymorphicMapType_11041) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11041) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11569)
(declare-fun P (T@Ref Bool) T@Field_17347_17348)
(declare-fun IsPredicateField_6536_6537 (T@Field_17347_17348) Bool)
(declare-fun |P#trigger_6536| (T@PolymorphicMapType_11020 T@Field_17347_17348) Bool)
(declare-fun |P#everUsed_6536| (T@Field_17347_17348) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |P#sm| (T@Ref Bool) T@Field_17360_17365)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11020 T@PolymorphicMapType_11020 T@PolymorphicMapType_11041) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6536 (T@Field_17347_17348) T@Field_17360_17365)
(declare-fun HasDirectPerm_6536_6537 (T@PolymorphicMapType_11041 T@Ref T@Field_17347_17348) Bool)
(declare-fun IsPredicateField_6531_33164 (T@Field_6531_6537) Bool)
(declare-fun PredicateMaskField_6531 (T@Field_6531_6537) T@Field_6531_17365)
(declare-fun HasDirectPerm_6531_6537 (T@PolymorphicMapType_11041 T@Ref T@Field_6531_6537) Bool)
(declare-fun IsWandField_6536_36837 (T@Field_17347_17348) Bool)
(declare-fun WandMaskField_6536 (T@Field_17347_17348) T@Field_17360_17365)
(declare-fun IsWandField_6531_36480 (T@Field_6531_6537) Bool)
(declare-fun WandMaskField_6531 (T@Field_6531_6537) T@Field_6531_17365)
(declare-fun dummyHeap () T@PolymorphicMapType_11020)
(declare-fun ZeroMask () T@PolymorphicMapType_11041)
(declare-fun InsidePredicate_17347_17347 (T@Field_17347_17348 T@FrameType T@Field_17347_17348 T@FrameType) Bool)
(declare-fun InsidePredicate_11080_11080 (T@Field_6531_6537 T@FrameType T@Field_6531_6537 T@FrameType) Bool)
(declare-fun IsPredicateField_6531_3251 (T@Field_17256_3251) Bool)
(declare-fun IsWandField_6531_3251 (T@Field_17256_3251) Bool)
(declare-fun IsPredicateField_6533_3266 (T@Field_11080_53) Bool)
(declare-fun IsWandField_6533_3266 (T@Field_11080_53) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6536_43743 (T@Field_17360_17365) Bool)
(declare-fun IsWandField_6536_43759 (T@Field_17360_17365) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6536_11094 (T@Field_6536_11094) Bool)
(declare-fun IsWandField_6536_11094 (T@Field_6536_11094) Bool)
(declare-fun IsPredicateField_6536_3266 (T@Field_6536_3266) Bool)
(declare-fun IsWandField_6536_3266 (T@Field_6536_3266) Bool)
(declare-fun IsPredicateField_6536_3251 (T@Field_6536_3251) Bool)
(declare-fun IsWandField_6536_3251 (T@Field_6536_3251) Bool)
(declare-fun IsPredicateField_6531_42912 (T@Field_6531_17365) Bool)
(declare-fun IsWandField_6531_42928 (T@Field_6531_17365) Bool)
(declare-fun IsPredicateField_6531_11094 (T@Field_11093_11094) Bool)
(declare-fun IsWandField_6531_11094 (T@Field_11093_11094) Bool)
(declare-fun HasDirectPerm_6536_32919 (T@PolymorphicMapType_11041 T@Ref T@Field_17360_17365) Bool)
(declare-fun HasDirectPerm_6536_11094 (T@PolymorphicMapType_11041 T@Ref T@Field_6536_11094) Bool)
(declare-fun HasDirectPerm_6536_3266 (T@PolymorphicMapType_11041 T@Ref T@Field_6536_3266) Bool)
(declare-fun HasDirectPerm_6536_3251 (T@PolymorphicMapType_11041 T@Ref T@Field_6536_3251) Bool)
(declare-fun HasDirectPerm_6531_31778 (T@PolymorphicMapType_11041 T@Ref T@Field_6531_17365) Bool)
(declare-fun HasDirectPerm_6531_11094 (T@PolymorphicMapType_11041 T@Ref T@Field_11093_11094) Bool)
(declare-fun HasDirectPerm_6533_3266 (T@PolymorphicMapType_11041 T@Ref T@Field_11080_53) Bool)
(declare-fun HasDirectPerm_6531_3251 (T@PolymorphicMapType_11041 T@Ref T@Field_17256_3251) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11041 T@PolymorphicMapType_11041 T@PolymorphicMapType_11041) Bool)
(declare-fun getPredWandId_6536_6537 (T@Field_17347_17348) Int)
(declare-fun InsidePredicate_17347_11080 (T@Field_17347_17348 T@FrameType T@Field_6531_6537 T@FrameType) Bool)
(declare-fun InsidePredicate_11080_17347 (T@Field_6531_6537 T@FrameType T@Field_17347_17348 T@FrameType) Bool)
(assert (distinct $allocated g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_11020) (Heap1 T@PolymorphicMapType_11020) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11020) (Mask T@PolymorphicMapType_11041) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11020) (Heap1@@0 T@PolymorphicMapType_11020) (Heap2 T@PolymorphicMapType_11020) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17360_17365) ) (!  (not (select (|PolymorphicMapType_11569_17347_35672#PolymorphicMapType_11569| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11569_17347_35672#PolymorphicMapType_11569| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17347_17348) ) (!  (not (select (|PolymorphicMapType_11569_17347_17348#PolymorphicMapType_11569| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11569_17347_17348#PolymorphicMapType_11569| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6536_11094) ) (!  (not (select (|PolymorphicMapType_11569_17347_11094#PolymorphicMapType_11569| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11569_17347_11094#PolymorphicMapType_11569| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6536_3266) ) (!  (not (select (|PolymorphicMapType_11569_17347_3266#PolymorphicMapType_11569| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11569_17347_3266#PolymorphicMapType_11569| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6536_3251) ) (!  (not (select (|PolymorphicMapType_11569_17347_3251#PolymorphicMapType_11569| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11569_17347_3251#PolymorphicMapType_11569| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6531_17365) ) (!  (not (select (|PolymorphicMapType_11569_6531_34624#PolymorphicMapType_11569| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11569_6531_34624#PolymorphicMapType_11569| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_6531_6537) ) (!  (not (select (|PolymorphicMapType_11569_6531_17348#PolymorphicMapType_11569| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11569_6531_17348#PolymorphicMapType_11569| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11093_11094) ) (!  (not (select (|PolymorphicMapType_11569_6531_11094#PolymorphicMapType_11569| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11569_6531_11094#PolymorphicMapType_11569| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_11080_53) ) (!  (not (select (|PolymorphicMapType_11569_6533_3266#PolymorphicMapType_11569| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11569_6533_3266#PolymorphicMapType_11569| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_17256_3251) ) (!  (not (select (|PolymorphicMapType_11569_6531_3251#PolymorphicMapType_11569| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11569_6531_3251#PolymorphicMapType_11569| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((x T@Ref) (b_24 Bool) ) (! (IsPredicateField_6536_6537 (P x b_24))
 :qid |stdinbpl.407:15|
 :skolemid |83|
 :pattern ( (P x b_24))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11020) (x@@0 T@Ref) (b_24@@0 Bool) ) (! (|P#everUsed_6536| (P x@@0 b_24@@0))
 :qid |stdinbpl.426:15|
 :skolemid |87|
 :pattern ( (|P#trigger_6536| Heap@@0 (P x@@0 b_24@@0)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.291:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((x@@1 T@Ref) (b_24@@1 Bool) (x2 T@Ref) (b2 Bool) ) (!  (=> (= (P x@@1 b_24@@1) (P x2 b2)) (and (= x@@1 x2) (= b_24@@1 b2)))
 :qid |stdinbpl.417:15|
 :skolemid |85|
 :pattern ( (P x@@1 b_24@@1) (P x2 b2))
)))
(assert (forall ((x@@2 T@Ref) (b_24@@2 Bool) (x2@@0 T@Ref) (b2@@0 Bool) ) (!  (=> (= (|P#sm| x@@2 b_24@@2) (|P#sm| x2@@0 b2@@0)) (and (= x@@2 x2@@0) (= b_24@@2 b2@@0)))
 :qid |stdinbpl.421:15|
 :skolemid |86|
 :pattern ( (|P#sm| x@@2 b_24@@2) (|P#sm| x2@@0 b2@@0))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.294:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11020) (ExhaleHeap T@PolymorphicMapType_11020) (Mask@@0 T@PolymorphicMapType_11041) (pm_f_5 T@Field_17347_17348) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6536_6537 Mask@@0 null pm_f_5) (IsPredicateField_6536_6537 pm_f_5)) (= (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@1) null (PredicateMaskField_6536 pm_f_5)) (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| ExhaleHeap) null (PredicateMaskField_6536 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_6536_6537 pm_f_5) (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| ExhaleHeap) null (PredicateMaskField_6536 pm_f_5)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11020) (ExhaleHeap@@0 T@PolymorphicMapType_11020) (Mask@@1 T@PolymorphicMapType_11041) (pm_f_5@@0 T@Field_6531_6537) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6531_6537 Mask@@1 null pm_f_5@@0) (IsPredicateField_6531_33164 pm_f_5@@0)) (= (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@2) null (PredicateMaskField_6531 pm_f_5@@0)) (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| ExhaleHeap@@0) null (PredicateMaskField_6531 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6531_33164 pm_f_5@@0) (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| ExhaleHeap@@0) null (PredicateMaskField_6531 pm_f_5@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11020) (ExhaleHeap@@1 T@PolymorphicMapType_11020) (Mask@@2 T@PolymorphicMapType_11041) (pm_f_5@@1 T@Field_17347_17348) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6536_6537 Mask@@2 null pm_f_5@@1) (IsWandField_6536_36837 pm_f_5@@1)) (= (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@3) null (WandMaskField_6536 pm_f_5@@1)) (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| ExhaleHeap@@1) null (WandMaskField_6536 pm_f_5@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_6536_36837 pm_f_5@@1) (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| ExhaleHeap@@1) null (WandMaskField_6536 pm_f_5@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11020) (ExhaleHeap@@2 T@PolymorphicMapType_11020) (Mask@@3 T@PolymorphicMapType_11041) (pm_f_5@@2 T@Field_6531_6537) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6531_6537 Mask@@3 null pm_f_5@@2) (IsWandField_6531_36480 pm_f_5@@2)) (= (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@4) null (WandMaskField_6531 pm_f_5@@2)) (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| ExhaleHeap@@2) null (WandMaskField_6531 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_6531_36480 pm_f_5@@2) (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| ExhaleHeap@@2) null (WandMaskField_6531 pm_f_5@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11020) (ExhaleHeap@@3 T@PolymorphicMapType_11020) (Mask@@4 T@PolymorphicMapType_11041) (pm_f_5@@3 T@Field_17347_17348) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6536_6537 Mask@@4 null pm_f_5@@3) (IsPredicateField_6536_6537 pm_f_5@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_17256_3251) ) (!  (=> (select (|PolymorphicMapType_11569_6531_3251#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@5) null (PredicateMaskField_6536 pm_f_5@@3))) o2_5 f_16) (= (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@5) o2_5 f_16) (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_11080_53) ) (!  (=> (select (|PolymorphicMapType_11569_6533_3266#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@5) null (PredicateMaskField_6536 pm_f_5@@3))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@5) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_11093_11094) ) (!  (=> (select (|PolymorphicMapType_11569_6531_11094#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@5) null (PredicateMaskField_6536 pm_f_5@@3))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@5) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_6531_6537) ) (!  (=> (select (|PolymorphicMapType_11569_6531_17348#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@5) null (PredicateMaskField_6536 pm_f_5@@3))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@5) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_6531_17365) ) (!  (=> (select (|PolymorphicMapType_11569_6531_34624#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@5) null (PredicateMaskField_6536 pm_f_5@@3))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@5) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@3 f_16@@3))
))) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_6536_3251) ) (!  (=> (select (|PolymorphicMapType_11569_17347_3251#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@5) null (PredicateMaskField_6536 pm_f_5@@3))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@5) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_6536_3266) ) (!  (=> (select (|PolymorphicMapType_11569_17347_3266#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@5) null (PredicateMaskField_6536 pm_f_5@@3))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@5) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_6536_11094) ) (!  (=> (select (|PolymorphicMapType_11569_17347_11094#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@5) null (PredicateMaskField_6536 pm_f_5@@3))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@5) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@6 f_16@@6))
))) (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_17347_17348) ) (!  (=> (select (|PolymorphicMapType_11569_17347_17348#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@5) null (PredicateMaskField_6536 pm_f_5@@3))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@5) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@7 f_16@@7))
))) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_17360_17365) ) (!  (=> (select (|PolymorphicMapType_11569_17347_35672#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@5) null (PredicateMaskField_6536 pm_f_5@@3))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@5) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| ExhaleHeap@@3) o2_5@@8 f_16@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_6536_6537 pm_f_5@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11020) (ExhaleHeap@@4 T@PolymorphicMapType_11020) (Mask@@5 T@PolymorphicMapType_11041) (pm_f_5@@4 T@Field_6531_6537) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_6531_6537 Mask@@5 null pm_f_5@@4) (IsPredicateField_6531_33164 pm_f_5@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@9 T@Ref) (f_16@@9 T@Field_17256_3251) ) (!  (=> (select (|PolymorphicMapType_11569_6531_3251#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@6) null (PredicateMaskField_6531 pm_f_5@@4))) o2_5@@9 f_16@@9) (= (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@6) o2_5@@9 f_16@@9) (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@9 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@9 f_16@@9))
)) (forall ((o2_5@@10 T@Ref) (f_16@@10 T@Field_11080_53) ) (!  (=> (select (|PolymorphicMapType_11569_6533_3266#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@6) null (PredicateMaskField_6531 pm_f_5@@4))) o2_5@@10 f_16@@10) (= (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@6) o2_5@@10 f_16@@10) (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@10 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@10 f_16@@10))
))) (forall ((o2_5@@11 T@Ref) (f_16@@11 T@Field_11093_11094) ) (!  (=> (select (|PolymorphicMapType_11569_6531_11094#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@6) null (PredicateMaskField_6531 pm_f_5@@4))) o2_5@@11 f_16@@11) (= (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@6) o2_5@@11 f_16@@11) (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@11 f_16@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@11 f_16@@11))
))) (forall ((o2_5@@12 T@Ref) (f_16@@12 T@Field_6531_6537) ) (!  (=> (select (|PolymorphicMapType_11569_6531_17348#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@6) null (PredicateMaskField_6531 pm_f_5@@4))) o2_5@@12 f_16@@12) (= (select (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@6) o2_5@@12 f_16@@12) (select (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@12 f_16@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@12 f_16@@12))
))) (forall ((o2_5@@13 T@Ref) (f_16@@13 T@Field_6531_17365) ) (!  (=> (select (|PolymorphicMapType_11569_6531_34624#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@6) null (PredicateMaskField_6531 pm_f_5@@4))) o2_5@@13 f_16@@13) (= (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@6) o2_5@@13 f_16@@13) (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@13 f_16@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@13 f_16@@13))
))) (forall ((o2_5@@14 T@Ref) (f_16@@14 T@Field_6536_3251) ) (!  (=> (select (|PolymorphicMapType_11569_17347_3251#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@6) null (PredicateMaskField_6531 pm_f_5@@4))) o2_5@@14 f_16@@14) (= (select (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@6) o2_5@@14 f_16@@14) (select (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@14 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@14 f_16@@14))
))) (forall ((o2_5@@15 T@Ref) (f_16@@15 T@Field_6536_3266) ) (!  (=> (select (|PolymorphicMapType_11569_17347_3266#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@6) null (PredicateMaskField_6531 pm_f_5@@4))) o2_5@@15 f_16@@15) (= (select (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@6) o2_5@@15 f_16@@15) (select (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@15 f_16@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@15 f_16@@15))
))) (forall ((o2_5@@16 T@Ref) (f_16@@16 T@Field_6536_11094) ) (!  (=> (select (|PolymorphicMapType_11569_17347_11094#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@6) null (PredicateMaskField_6531 pm_f_5@@4))) o2_5@@16 f_16@@16) (= (select (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@6) o2_5@@16 f_16@@16) (select (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@16 f_16@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@16 f_16@@16))
))) (forall ((o2_5@@17 T@Ref) (f_16@@17 T@Field_17347_17348) ) (!  (=> (select (|PolymorphicMapType_11569_17347_17348#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@6) null (PredicateMaskField_6531 pm_f_5@@4))) o2_5@@17 f_16@@17) (= (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@6) o2_5@@17 f_16@@17) (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@17 f_16@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@17 f_16@@17))
))) (forall ((o2_5@@18 T@Ref) (f_16@@18 T@Field_17360_17365) ) (!  (=> (select (|PolymorphicMapType_11569_17347_35672#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@6) null (PredicateMaskField_6531 pm_f_5@@4))) o2_5@@18 f_16@@18) (= (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@6) o2_5@@18 f_16@@18) (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@18 f_16@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| ExhaleHeap@@4) o2_5@@18 f_16@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_6531_33164 pm_f_5@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11020) (ExhaleHeap@@5 T@PolymorphicMapType_11020) (Mask@@6 T@PolymorphicMapType_11041) (pm_f_5@@5 T@Field_17347_17348) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_6536_6537 Mask@@6 null pm_f_5@@5) (IsWandField_6536_36837 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@19 T@Ref) (f_16@@19 T@Field_17256_3251) ) (!  (=> (select (|PolymorphicMapType_11569_6531_3251#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@7) null (WandMaskField_6536 pm_f_5@@5))) o2_5@@19 f_16@@19) (= (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@7) o2_5@@19 f_16@@19) (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@19 f_16@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@19 f_16@@19))
)) (forall ((o2_5@@20 T@Ref) (f_16@@20 T@Field_11080_53) ) (!  (=> (select (|PolymorphicMapType_11569_6533_3266#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@7) null (WandMaskField_6536 pm_f_5@@5))) o2_5@@20 f_16@@20) (= (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@7) o2_5@@20 f_16@@20) (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@20 f_16@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@20 f_16@@20))
))) (forall ((o2_5@@21 T@Ref) (f_16@@21 T@Field_11093_11094) ) (!  (=> (select (|PolymorphicMapType_11569_6531_11094#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@7) null (WandMaskField_6536 pm_f_5@@5))) o2_5@@21 f_16@@21) (= (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@7) o2_5@@21 f_16@@21) (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@21 f_16@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@21 f_16@@21))
))) (forall ((o2_5@@22 T@Ref) (f_16@@22 T@Field_6531_6537) ) (!  (=> (select (|PolymorphicMapType_11569_6531_17348#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@7) null (WandMaskField_6536 pm_f_5@@5))) o2_5@@22 f_16@@22) (= (select (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@7) o2_5@@22 f_16@@22) (select (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@22 f_16@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@22 f_16@@22))
))) (forall ((o2_5@@23 T@Ref) (f_16@@23 T@Field_6531_17365) ) (!  (=> (select (|PolymorphicMapType_11569_6531_34624#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@7) null (WandMaskField_6536 pm_f_5@@5))) o2_5@@23 f_16@@23) (= (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@7) o2_5@@23 f_16@@23) (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@23 f_16@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@23 f_16@@23))
))) (forall ((o2_5@@24 T@Ref) (f_16@@24 T@Field_6536_3251) ) (!  (=> (select (|PolymorphicMapType_11569_17347_3251#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@7) null (WandMaskField_6536 pm_f_5@@5))) o2_5@@24 f_16@@24) (= (select (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@7) o2_5@@24 f_16@@24) (select (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@24 f_16@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@24 f_16@@24))
))) (forall ((o2_5@@25 T@Ref) (f_16@@25 T@Field_6536_3266) ) (!  (=> (select (|PolymorphicMapType_11569_17347_3266#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@7) null (WandMaskField_6536 pm_f_5@@5))) o2_5@@25 f_16@@25) (= (select (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@7) o2_5@@25 f_16@@25) (select (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@25 f_16@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@25 f_16@@25))
))) (forall ((o2_5@@26 T@Ref) (f_16@@26 T@Field_6536_11094) ) (!  (=> (select (|PolymorphicMapType_11569_17347_11094#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@7) null (WandMaskField_6536 pm_f_5@@5))) o2_5@@26 f_16@@26) (= (select (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@7) o2_5@@26 f_16@@26) (select (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@26 f_16@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@26 f_16@@26))
))) (forall ((o2_5@@27 T@Ref) (f_16@@27 T@Field_17347_17348) ) (!  (=> (select (|PolymorphicMapType_11569_17347_17348#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@7) null (WandMaskField_6536 pm_f_5@@5))) o2_5@@27 f_16@@27) (= (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@7) o2_5@@27 f_16@@27) (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@27 f_16@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@27 f_16@@27))
))) (forall ((o2_5@@28 T@Ref) (f_16@@28 T@Field_17360_17365) ) (!  (=> (select (|PolymorphicMapType_11569_17347_35672#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@7) null (WandMaskField_6536 pm_f_5@@5))) o2_5@@28 f_16@@28) (= (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@7) o2_5@@28 f_16@@28) (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@28 f_16@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| ExhaleHeap@@5) o2_5@@28 f_16@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_6536_36837 pm_f_5@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11020) (ExhaleHeap@@6 T@PolymorphicMapType_11020) (Mask@@7 T@PolymorphicMapType_11041) (pm_f_5@@6 T@Field_6531_6537) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_6531_6537 Mask@@7 null pm_f_5@@6) (IsWandField_6531_36480 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_16@@29 T@Field_17256_3251) ) (!  (=> (select (|PolymorphicMapType_11569_6531_3251#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@8) null (WandMaskField_6531 pm_f_5@@6))) o2_5@@29 f_16@@29) (= (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@8) o2_5@@29 f_16@@29) (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@29 f_16@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@29 f_16@@29))
)) (forall ((o2_5@@30 T@Ref) (f_16@@30 T@Field_11080_53) ) (!  (=> (select (|PolymorphicMapType_11569_6533_3266#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@8) null (WandMaskField_6531 pm_f_5@@6))) o2_5@@30 f_16@@30) (= (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@8) o2_5@@30 f_16@@30) (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@30 f_16@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@30 f_16@@30))
))) (forall ((o2_5@@31 T@Ref) (f_16@@31 T@Field_11093_11094) ) (!  (=> (select (|PolymorphicMapType_11569_6531_11094#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@8) null (WandMaskField_6531 pm_f_5@@6))) o2_5@@31 f_16@@31) (= (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@8) o2_5@@31 f_16@@31) (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@31 f_16@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@31 f_16@@31))
))) (forall ((o2_5@@32 T@Ref) (f_16@@32 T@Field_6531_6537) ) (!  (=> (select (|PolymorphicMapType_11569_6531_17348#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@8) null (WandMaskField_6531 pm_f_5@@6))) o2_5@@32 f_16@@32) (= (select (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@8) o2_5@@32 f_16@@32) (select (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@32 f_16@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@32 f_16@@32))
))) (forall ((o2_5@@33 T@Ref) (f_16@@33 T@Field_6531_17365) ) (!  (=> (select (|PolymorphicMapType_11569_6531_34624#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@8) null (WandMaskField_6531 pm_f_5@@6))) o2_5@@33 f_16@@33) (= (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@8) o2_5@@33 f_16@@33) (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@33 f_16@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@33 f_16@@33))
))) (forall ((o2_5@@34 T@Ref) (f_16@@34 T@Field_6536_3251) ) (!  (=> (select (|PolymorphicMapType_11569_17347_3251#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@8) null (WandMaskField_6531 pm_f_5@@6))) o2_5@@34 f_16@@34) (= (select (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@8) o2_5@@34 f_16@@34) (select (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@34 f_16@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@34 f_16@@34))
))) (forall ((o2_5@@35 T@Ref) (f_16@@35 T@Field_6536_3266) ) (!  (=> (select (|PolymorphicMapType_11569_17347_3266#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@8) null (WandMaskField_6531 pm_f_5@@6))) o2_5@@35 f_16@@35) (= (select (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@8) o2_5@@35 f_16@@35) (select (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@35 f_16@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@35 f_16@@35))
))) (forall ((o2_5@@36 T@Ref) (f_16@@36 T@Field_6536_11094) ) (!  (=> (select (|PolymorphicMapType_11569_17347_11094#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@8) null (WandMaskField_6531 pm_f_5@@6))) o2_5@@36 f_16@@36) (= (select (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@8) o2_5@@36 f_16@@36) (select (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@36 f_16@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@36 f_16@@36))
))) (forall ((o2_5@@37 T@Ref) (f_16@@37 T@Field_17347_17348) ) (!  (=> (select (|PolymorphicMapType_11569_17347_17348#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@8) null (WandMaskField_6531 pm_f_5@@6))) o2_5@@37 f_16@@37) (= (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@8) o2_5@@37 f_16@@37) (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@37 f_16@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@37 f_16@@37))
))) (forall ((o2_5@@38 T@Ref) (f_16@@38 T@Field_17360_17365) ) (!  (=> (select (|PolymorphicMapType_11569_17347_35672#PolymorphicMapType_11569| (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@8) null (WandMaskField_6531 pm_f_5@@6))) o2_5@@38 f_16@@38) (= (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@8) o2_5@@38 f_16@@38) (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@38 f_16@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| ExhaleHeap@@6) o2_5@@38 f_16@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_6531_36480 pm_f_5@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11020) (ExhaleHeap@@7 T@PolymorphicMapType_11020) (Mask@@8 T@PolymorphicMapType_11041) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@9) o_12 $allocated) (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_17347_17348) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_17347_17347 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17347_17347 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_6531_6537) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_11080_11080 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11080_11080 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_6531_3251 f_7)))
(assert  (not (IsWandField_6531_3251 f_7)))
(assert  (not (IsPredicateField_6533_3266 g)))
(assert  (not (IsWandField_6533_3266 g)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11020) (ExhaleHeap@@8 T@PolymorphicMapType_11020) (Mask@@9 T@PolymorphicMapType_11041) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11041) (o_2@@9 T@Ref) (f_4@@9 T@Field_17360_17365) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6536_43743 f_4@@9))) (not (IsWandField_6536_43759 f_4@@9))) (<= (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11041) (o_2@@10 T@Ref) (f_4@@10 T@Field_6536_11094) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6536_11094 f_4@@10))) (not (IsWandField_6536_11094 f_4@@10))) (<= (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11041) (o_2@@11 T@Ref) (f_4@@11 T@Field_17347_17348) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6536_6537 f_4@@11))) (not (IsWandField_6536_36837 f_4@@11))) (<= (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11041) (o_2@@12 T@Ref) (f_4@@12 T@Field_6536_3266) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6536_3266 f_4@@12))) (not (IsWandField_6536_3266 f_4@@12))) (<= (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_11041) (o_2@@13 T@Ref) (f_4@@13 T@Field_6536_3251) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6536_3251 f_4@@13))) (not (IsWandField_6536_3251 f_4@@13))) (<= (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_11041) (o_2@@14 T@Ref) (f_4@@14 T@Field_6531_17365) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6531_42912 f_4@@14))) (not (IsWandField_6531_42928 f_4@@14))) (<= (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_11041) (o_2@@15 T@Ref) (f_4@@15 T@Field_11093_11094) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6531_11094 f_4@@15))) (not (IsWandField_6531_11094 f_4@@15))) (<= (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_11041) (o_2@@16 T@Ref) (f_4@@16 T@Field_6531_6537) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6531_33164 f_4@@16))) (not (IsWandField_6531_36480 f_4@@16))) (<= (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_11041) (o_2@@17 T@Ref) (f_4@@17 T@Field_11080_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6533_3266 f_4@@17))) (not (IsWandField_6533_3266 f_4@@17))) (<= (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_11041) (o_2@@18 T@Ref) (f_4@@18 T@Field_17256_3251) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6531_3251 f_4@@18))) (not (IsWandField_6531_3251 f_4@@18))) (<= (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_11041) (o_2@@19 T@Ref) (f_4@@19 T@Field_17360_17365) ) (! (= (HasDirectPerm_6536_32919 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6536_32919 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_11041) (o_2@@20 T@Ref) (f_4@@20 T@Field_6536_11094) ) (! (= (HasDirectPerm_6536_11094 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6536_11094 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_11041) (o_2@@21 T@Ref) (f_4@@21 T@Field_17347_17348) ) (! (= (HasDirectPerm_6536_6537 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6536_6537 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_11041) (o_2@@22 T@Ref) (f_4@@22 T@Field_6536_3266) ) (! (= (HasDirectPerm_6536_3266 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6536_3266 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_11041) (o_2@@23 T@Ref) (f_4@@23 T@Field_6536_3251) ) (! (= (HasDirectPerm_6536_3251 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6536_3251 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_11041) (o_2@@24 T@Ref) (f_4@@24 T@Field_6531_17365) ) (! (= (HasDirectPerm_6531_31778 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6531_31778 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_11041) (o_2@@25 T@Ref) (f_4@@25 T@Field_11093_11094) ) (! (= (HasDirectPerm_6531_11094 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6531_11094 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_11041) (o_2@@26 T@Ref) (f_4@@26 T@Field_6531_6537) ) (! (= (HasDirectPerm_6531_6537 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6531_6537 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_11041) (o_2@@27 T@Ref) (f_4@@27 T@Field_11080_53) ) (! (= (HasDirectPerm_6533_3266 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6533_3266 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_11041) (o_2@@28 T@Ref) (f_4@@28 T@Field_17256_3251) ) (! (= (HasDirectPerm_6531_3251 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6531_3251 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11020) (ExhaleHeap@@9 T@PolymorphicMapType_11020) (Mask@@30 T@PolymorphicMapType_11041) (o_12@@0 T@Ref) (f_16@@39 T@Field_17360_17365) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_6536_32919 Mask@@30 o_12@@0 f_16@@39) (= (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@11) o_12@@0 f_16@@39) (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| ExhaleHeap@@9) o_12@@0 f_16@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| ExhaleHeap@@9) o_12@@0 f_16@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11020) (ExhaleHeap@@10 T@PolymorphicMapType_11020) (Mask@@31 T@PolymorphicMapType_11041) (o_12@@1 T@Ref) (f_16@@40 T@Field_6536_11094) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_6536_11094 Mask@@31 o_12@@1 f_16@@40) (= (select (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@12) o_12@@1 f_16@@40) (select (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| ExhaleHeap@@10) o_12@@1 f_16@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| ExhaleHeap@@10) o_12@@1 f_16@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11020) (ExhaleHeap@@11 T@PolymorphicMapType_11020) (Mask@@32 T@PolymorphicMapType_11041) (o_12@@2 T@Ref) (f_16@@41 T@Field_17347_17348) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_6536_6537 Mask@@32 o_12@@2 f_16@@41) (= (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@13) o_12@@2 f_16@@41) (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| ExhaleHeap@@11) o_12@@2 f_16@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| ExhaleHeap@@11) o_12@@2 f_16@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11020) (ExhaleHeap@@12 T@PolymorphicMapType_11020) (Mask@@33 T@PolymorphicMapType_11041) (o_12@@3 T@Ref) (f_16@@42 T@Field_6536_3266) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_6536_3266 Mask@@33 o_12@@3 f_16@@42) (= (select (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@14) o_12@@3 f_16@@42) (select (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| ExhaleHeap@@12) o_12@@3 f_16@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| ExhaleHeap@@12) o_12@@3 f_16@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11020) (ExhaleHeap@@13 T@PolymorphicMapType_11020) (Mask@@34 T@PolymorphicMapType_11041) (o_12@@4 T@Ref) (f_16@@43 T@Field_6536_3251) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_6536_3251 Mask@@34 o_12@@4 f_16@@43) (= (select (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@15) o_12@@4 f_16@@43) (select (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| ExhaleHeap@@13) o_12@@4 f_16@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| ExhaleHeap@@13) o_12@@4 f_16@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11020) (ExhaleHeap@@14 T@PolymorphicMapType_11020) (Mask@@35 T@PolymorphicMapType_11041) (o_12@@5 T@Ref) (f_16@@44 T@Field_6531_17365) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_6531_31778 Mask@@35 o_12@@5 f_16@@44) (= (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@16) o_12@@5 f_16@@44) (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| ExhaleHeap@@14) o_12@@5 f_16@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| ExhaleHeap@@14) o_12@@5 f_16@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11020) (ExhaleHeap@@15 T@PolymorphicMapType_11020) (Mask@@36 T@PolymorphicMapType_11041) (o_12@@6 T@Ref) (f_16@@45 T@Field_11093_11094) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_6531_11094 Mask@@36 o_12@@6 f_16@@45) (= (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@17) o_12@@6 f_16@@45) (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| ExhaleHeap@@15) o_12@@6 f_16@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| ExhaleHeap@@15) o_12@@6 f_16@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11020) (ExhaleHeap@@16 T@PolymorphicMapType_11020) (Mask@@37 T@PolymorphicMapType_11041) (o_12@@7 T@Ref) (f_16@@46 T@Field_6531_6537) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_6531_6537 Mask@@37 o_12@@7 f_16@@46) (= (select (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@18) o_12@@7 f_16@@46) (select (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| ExhaleHeap@@16) o_12@@7 f_16@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| ExhaleHeap@@16) o_12@@7 f_16@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11020) (ExhaleHeap@@17 T@PolymorphicMapType_11020) (Mask@@38 T@PolymorphicMapType_11041) (o_12@@8 T@Ref) (f_16@@47 T@Field_11080_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_6533_3266 Mask@@38 o_12@@8 f_16@@47) (= (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@19) o_12@@8 f_16@@47) (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| ExhaleHeap@@17) o_12@@8 f_16@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| ExhaleHeap@@17) o_12@@8 f_16@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11020) (ExhaleHeap@@18 T@PolymorphicMapType_11020) (Mask@@39 T@PolymorphicMapType_11041) (o_12@@9 T@Ref) (f_16@@48 T@Field_17256_3251) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_6531_3251 Mask@@39 o_12@@9 f_16@@48) (= (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@20) o_12@@9 f_16@@48) (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| ExhaleHeap@@18) o_12@@9 f_16@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| ExhaleHeap@@18) o_12@@9 f_16@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_17360_17365) ) (! (= (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_6536_11094) ) (! (= (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_17347_17348) ) (! (= (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_6536_3266) ) (! (= (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_6536_3251) ) (! (= (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_6531_17365) ) (! (= (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_11093_11094) ) (! (= (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_6531_6537) ) (! (= (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_11080_53) ) (! (= (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_17256_3251) ) (! (= (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11041) (SummandMask1 T@PolymorphicMapType_11041) (SummandMask2 T@PolymorphicMapType_11041) (o_2@@39 T@Ref) (f_4@@39 T@Field_17360_17365) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11041) (SummandMask1@@0 T@PolymorphicMapType_11041) (SummandMask2@@0 T@PolymorphicMapType_11041) (o_2@@40 T@Ref) (f_4@@40 T@Field_6536_11094) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11041) (SummandMask1@@1 T@PolymorphicMapType_11041) (SummandMask2@@1 T@PolymorphicMapType_11041) (o_2@@41 T@Ref) (f_4@@41 T@Field_17347_17348) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11041) (SummandMask1@@2 T@PolymorphicMapType_11041) (SummandMask2@@2 T@PolymorphicMapType_11041) (o_2@@42 T@Ref) (f_4@@42 T@Field_6536_3266) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11041) (SummandMask1@@3 T@PolymorphicMapType_11041) (SummandMask2@@3 T@PolymorphicMapType_11041) (o_2@@43 T@Ref) (f_4@@43 T@Field_6536_3251) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_11041) (SummandMask1@@4 T@PolymorphicMapType_11041) (SummandMask2@@4 T@PolymorphicMapType_11041) (o_2@@44 T@Ref) (f_4@@44 T@Field_6531_17365) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_11041) (SummandMask1@@5 T@PolymorphicMapType_11041) (SummandMask2@@5 T@PolymorphicMapType_11041) (o_2@@45 T@Ref) (f_4@@45 T@Field_11093_11094) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_11041) (SummandMask1@@6 T@PolymorphicMapType_11041) (SummandMask2@@6 T@PolymorphicMapType_11041) (o_2@@46 T@Ref) (f_4@@46 T@Field_6531_6537) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_11041) (SummandMask1@@7 T@PolymorphicMapType_11041) (SummandMask2@@7 T@PolymorphicMapType_11041) (o_2@@47 T@Ref) (f_4@@47 T@Field_11080_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_11041) (SummandMask1@@8 T@PolymorphicMapType_11041) (SummandMask2@@8 T@PolymorphicMapType_11041) (o_2@@48 T@Ref) (f_4@@48 T@Field_17256_3251) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((x@@3 T@Ref) (b_24@@3 Bool) ) (! (= (getPredWandId_6536_6537 (P x@@3 b_24@@3)) 0)
 :qid |stdinbpl.411:15|
 :skolemid |84|
 :pattern ( (P x@@3 b_24@@3))
)))
(assert (forall ((x@@4 T@Ref) (b_24@@4 Bool) ) (! (= (PredicateMaskField_6536 (P x@@4 b_24@@4)) (|P#sm| x@@4 b_24@@4))
 :qid |stdinbpl.403:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_6536 (P x@@4 b_24@@4)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11020) (o_11 T@Ref) (f_17 T@Field_17360_17365) (v T@PolymorphicMapType_11569) ) (! (succHeap Heap@@21 (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@21) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@21) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@21) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@21) (store (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@21) o_11 f_17 v) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@21) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@21) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@21) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@21) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@21) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@21) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@21) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@21) (store (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@21) o_11 f_17 v) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@21) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@21) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@21) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@21) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11020) (o_11@@0 T@Ref) (f_17@@0 T@Field_6536_3251) (v@@0 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@22) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@22) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@22) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@22) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@22) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@22) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@22) (store (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@22) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@22) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@22) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@22) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@22) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@22) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@22) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@22) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@22) (store (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@22) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@22) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11020) (o_11@@1 T@Ref) (f_17@@1 T@Field_17347_17348) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@23) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@23) (store (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@23) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@23) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@23) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@23) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@23) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@23) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@23) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@23) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@23) (store (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@23) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@23) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@23) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@23) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@23) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@23) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@23) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11020) (o_11@@2 T@Ref) (f_17@@2 T@Field_6536_11094) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@24) (store (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@24) o_11@@2 f_17@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@24) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@24) (store (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@24) o_11@@2 f_17@@2 v@@2)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11020) (o_11@@3 T@Ref) (f_17@@3 T@Field_6536_3266) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@25) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@25) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@25) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@25) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@25) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@25) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@25) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@25) (store (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@25) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@25) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@25) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@25) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@25) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@25) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@25) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@25) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@25) (store (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@25) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11020) (o_11@@4 T@Ref) (f_17@@4 T@Field_6531_17365) (v@@4 T@PolymorphicMapType_11569) ) (! (succHeap Heap@@26 (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@26) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@26) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@26) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@26) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@26) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@26) (store (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@26) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@26) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@26) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@26) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@26) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@26) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@26) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@26) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@26) (store (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@26) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@26) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@26) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11020) (o_11@@5 T@Ref) (f_17@@5 T@Field_17256_3251) (v@@5 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@27) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@27) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@27) (store (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@27) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@27) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@27) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@27) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@27) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@27) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@27) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@27) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@27) (store (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@27) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@27) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@27) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@27) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@27) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@27) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11020) (o_11@@6 T@Ref) (f_17@@6 T@Field_6531_6537) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@28) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@28) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@28) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@28) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@28) (store (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@28) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@28) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@28) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@28) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@28) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@28) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@28) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@28) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@28) (store (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@28) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@28) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@28) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@28) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11020) (o_11@@7 T@Ref) (f_17@@7 T@Field_11093_11094) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@29) (store (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@29) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@29) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@29) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@29) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@29) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@29) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@29) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@29) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@29) (store (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@29) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@29) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@29) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@29) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@29) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@29) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@29) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@29) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11020) (o_11@@8 T@Ref) (f_17@@8 T@Field_11080_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_11020 (store (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@30) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11020 (store (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@30) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@30) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@30)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.289:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.290:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_11@@9 T@Ref) (f_10 T@Field_11093_11094) (Heap@@31 T@PolymorphicMapType_11020) ) (!  (=> (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@31) o_11@@9 $allocated) (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@31) (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@31) o_11@@9 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@31) o_11@@9 f_10))
)))
(assert (forall ((p@@2 T@Field_17347_17348) (v_1@@1 T@FrameType) (q T@Field_17347_17348) (w@@1 T@FrameType) (r T@Field_17347_17348) (u T@FrameType) ) (!  (=> (and (InsidePredicate_17347_17347 p@@2 v_1@@1 q w@@1) (InsidePredicate_17347_17347 q w@@1 r u)) (InsidePredicate_17347_17347 p@@2 v_1@@1 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17347_17347 p@@2 v_1@@1 q w@@1) (InsidePredicate_17347_17347 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_17347_17348) (v_1@@2 T@FrameType) (q@@0 T@Field_17347_17348) (w@@2 T@FrameType) (r@@0 T@Field_6531_6537) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_17347_17347 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_17347_11080 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_17347_11080 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17347_17347 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_17347_11080 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_17347_17348) (v_1@@3 T@FrameType) (q@@1 T@Field_6531_6537) (w@@3 T@FrameType) (r@@1 T@Field_17347_17348) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_17347_11080 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_11080_17347 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_17347_17347 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17347_11080 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_11080_17347 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_17347_17348) (v_1@@4 T@FrameType) (q@@2 T@Field_6531_6537) (w@@4 T@FrameType) (r@@2 T@Field_6531_6537) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_17347_11080 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_11080_11080 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_17347_11080 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17347_11080 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_11080_11080 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_6531_6537) (v_1@@5 T@FrameType) (q@@3 T@Field_17347_17348) (w@@5 T@FrameType) (r@@3 T@Field_17347_17348) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_11080_17347 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_17347_17347 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_11080_17347 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11080_17347 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_17347_17347 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_6531_6537) (v_1@@6 T@FrameType) (q@@4 T@Field_17347_17348) (w@@6 T@FrameType) (r@@4 T@Field_6531_6537) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_11080_17347 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_17347_11080 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_11080_11080 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11080_17347 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_17347_11080 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_6531_6537) (v_1@@7 T@FrameType) (q@@5 T@Field_6531_6537) (w@@7 T@FrameType) (r@@5 T@Field_17347_17348) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_11080_11080 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_11080_17347 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_11080_17347 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11080_11080 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_11080_17347 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_6531_6537) (v_1@@8 T@FrameType) (q@@6 T@Field_6531_6537) (w@@8 T@FrameType) (r@@6 T@Field_6531_6537) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_11080_11080 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_11080_11080 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_11080_11080 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11080_11080 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_11080_11080 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.295:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun b_24@@5 () Bool)
(declare-fun x@@5 () T@Ref)
(declare-fun PostMask@1 () T@PolymorphicMapType_11041)
(declare-fun PostHeap@0 () T@PolymorphicMapType_11020)
(declare-fun PostMask@2 () T@PolymorphicMapType_11041)
(declare-fun PostMask@0 () T@PolymorphicMapType_11041)
(declare-fun Mask@5 () T@PolymorphicMapType_11041)
(declare-fun Mask@3 () T@PolymorphicMapType_11041)
(declare-fun Heap@4 () T@PolymorphicMapType_11020)
(declare-fun Mask@6 () T@PolymorphicMapType_11041)
(declare-fun Mask@4 () T@PolymorphicMapType_11041)
(declare-fun Heap@3 () T@PolymorphicMapType_11020)
(declare-fun Heap@1 () T@PolymorphicMapType_11020)
(declare-fun Heap@2 () T@PolymorphicMapType_11020)
(declare-fun Mask@2 () T@PolymorphicMapType_11041)
(declare-fun Mask@0 () T@PolymorphicMapType_11041)
(declare-fun Mask@1 () T@PolymorphicMapType_11041)
(declare-fun Heap@@32 () T@PolymorphicMapType_11020)
(declare-fun Heap@0 () T@PolymorphicMapType_11020)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun QPMask@0 () T@PolymorphicMapType_11041)
(declare-fun FrameFragment_9083 (T@FrameType) T@FrameType)
(declare-fun FrameFragment_3251 (Int) T@FrameType)
(declare-fun FrameFragment_3266 (Bool) T@FrameType)
(declare-fun neverTriggered1 (T@Ref) Bool)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun invRecv1 (T@Ref Bool) T@Ref)
(declare-fun qpRange1 (T@Ref Bool) Bool)
(declare-fun getPredWandId_6531_3251 (T@Field_17256_3251) Int)
(declare-fun getPredWandId_6531_3266 (T@Field_11080_53) Int)
(declare-fun getPredWandId_6531_6537 (T@Field_6531_6537) Int)
(declare-fun getPredWandId_6531_11094 (T@Field_11093_11094) Int)
(declare-fun getPredWandId_6531_49372 (T@Field_6531_17365) Int)
(declare-fun getPredWandId_6536_3251 (T@Field_6536_3251) Int)
(declare-fun getPredWandId_6536_3266 (T@Field_6536_3266) Int)
(declare-fun getPredWandId_6536_11094 (T@Field_6536_11094) Int)
(declare-fun getPredWandId_6536_50181 (T@Field_17360_17365) Int)
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
 (=> (= (ControlFlow 0 0) 39) (let ((anon6_correct true))
(let ((anon27_Else_correct  (=> (and (and (not b_24@@5) (not (= x@@5 null))) (and (= PostMask@1 (PolymorphicMapType_11041 (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| ZeroMask) (store (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| ZeroMask) x@@5 g (+ (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| ZeroMask) x@@5 g) FullPerm)) (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| ZeroMask) (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| ZeroMask) (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| ZeroMask) (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| ZeroMask) (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| ZeroMask) (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| ZeroMask) (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| ZeroMask) (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| ZeroMask))) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (HasDirectPerm_6533_3266 PostMask@1 x@@5 g)) (=> (HasDirectPerm_6533_3266 PostMask@1 x@@5 g) (=> (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| PostHeap@0) x@@5 g) (=> (and (= PostMask@2 PostMask@1) (= (ControlFlow 0 33) 30)) anon6_correct)))))))
(let ((anon27_Then_correct  (=> (and (and b_24@@5 (not (= x@@5 null))) (and (= PostMask@0 (PolymorphicMapType_11041 (store (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| ZeroMask) x@@5 f_7 (+ (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| ZeroMask) x@@5 f_7) FullPerm)) (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| ZeroMask) (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| ZeroMask) (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| ZeroMask) (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| ZeroMask) (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| ZeroMask) (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| ZeroMask) (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| ZeroMask) (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| ZeroMask) (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| ZeroMask))) (state PostHeap@0 PostMask@0))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (HasDirectPerm_6531_3251 PostMask@0 x@@5 f_7)) (=> (HasDirectPerm_6531_3251 PostMask@0 x@@5 f_7) (=> (= (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| PostHeap@0) x@@5 f_7) 0) (=> (and (= PostMask@2 PostMask@0) (= (ControlFlow 0 31) 30)) anon6_correct)))))))
(let ((anon26_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 35) 31) anon27_Then_correct) (=> (= (ControlFlow 0 35) 33) anon27_Else_correct)))))
(let ((anon24_correct true))
(let ((anon20_correct  (=> (= Mask@5 (PolymorphicMapType_11041 (store (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| Mask@3) x@@5 f_7 (- (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| Mask@3) x@@5 f_7) FullPerm)) (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| Mask@3) (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| Mask@3) (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| Mask@3) (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| Mask@3) (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| Mask@3) (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| Mask@3) (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| Mask@3) (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| Mask@3) (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| Mask@3))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (= (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@4) x@@5 f_7) 0)) (=> (= (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@4) x@@5 f_7) 0) (=> (and (= Mask@6 Mask@5) (= (ControlFlow 0 9) 2)) anon24_correct))))))
(let ((anon33_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 13) 9)) anon20_correct)))
(let ((anon33_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (<= FullPerm (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| Mask@3) x@@5 f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| Mask@3) x@@5 f_7)) (=> (= (ControlFlow 0 11) 9) anon20_correct))))))
(let ((anon32_Then_correct  (=> b_24@@5 (and (=> (= (ControlFlow 0 14) 11) anon33_Then_correct) (=> (= (ControlFlow 0 14) 13) anon33_Else_correct)))))
(let ((anon23_correct  (=> (= Mask@4 (PolymorphicMapType_11041 (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| Mask@3) (store (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| Mask@3) x@@5 g (- (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| Mask@3) x@@5 g) FullPerm)) (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| Mask@3) (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| Mask@3) (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| Mask@3) (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| Mask@3) (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| Mask@3) (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| Mask@3) (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| Mask@3) (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| Mask@3))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@4) x@@5 g)) (=> (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@4) x@@5 g) (=> (and (= Mask@6 Mask@4) (= (ControlFlow 0 3) 2)) anon24_correct))))))
(let ((anon34_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 7) 3)) anon23_correct)))
(let ((anon34_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= FullPerm (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| Mask@3) x@@5 g))) (=> (<= FullPerm (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| Mask@3) x@@5 g)) (=> (= (ControlFlow 0 5) 3) anon23_correct))))))
(let ((anon32_Else_correct  (=> (not b_24@@5) (and (=> (= (ControlFlow 0 8) 5) anon34_Then_correct) (=> (= (ControlFlow 0 8) 7) anon34_Else_correct)))))
(let ((anon17_correct  (=> (state Heap@4 Mask@3) (and (=> (= (ControlFlow 0 15) 14) anon32_Then_correct) (=> (= (ControlFlow 0 15) 8) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (not b_24@@5) (and (=> (= (ControlFlow 0 18) (- 0 19)) (= FullPerm (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| Mask@3) x@@5 g))) (=> (= FullPerm (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| Mask@3) x@@5 g)) (=> (and (and (= Heap@3 (PolymorphicMapType_11020 (store (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@1) x@@5 g true) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@1) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@1) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@1) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@1) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@1) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@1) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@1) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@1) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@1))) (state Heap@3 Mask@3)) (and (= Heap@4 Heap@3) (= (ControlFlow 0 18) 15))) anon17_correct))))))
(let ((anon31_Then_correct  (=> b_24@@5 (and (=> (= (ControlFlow 0 16) (- 0 17)) (= FullPerm (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| Mask@3) x@@5 f_7))) (=> (= FullPerm (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| Mask@3) x@@5 f_7)) (=> (and (and (= Heap@2 (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@1) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@1) (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@1) (store (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@1) x@@5 f_7 0) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@1) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@1) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@1) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@1) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@1) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@1))) (state Heap@2 Mask@3)) (and (= Heap@4 Heap@2) (= (ControlFlow 0 16) 15))) anon17_correct))))))
(let ((anon14_correct  (=> (and (state Heap@1 Mask@3) (state Heap@1 Mask@3)) (and (=> (= (ControlFlow 0 20) 16) anon31_Then_correct) (=> (= (ControlFlow 0 20) 18) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (and (not b_24@@5) (not (= x@@5 null))) (=> (and (and (= Mask@2 (PolymorphicMapType_11041 (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| Mask@0) (store (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| Mask@0) x@@5 g (+ (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| Mask@0) x@@5 g) FullPerm)) (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| Mask@0) (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| Mask@0) (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| Mask@0) (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| Mask@0) (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| Mask@0) (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| Mask@0) (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| Mask@0) (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| Mask@0))) (state Heap@1 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 22) 20))) anon14_correct))))
(let ((anon30_Then_correct  (=> (and b_24@@5 (not (= x@@5 null))) (=> (and (and (= Mask@1 (PolymorphicMapType_11041 (store (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| Mask@0) x@@5 f_7 (+ (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| Mask@0) x@@5 f_7) FullPerm)) (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| Mask@0) (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| Mask@0) (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| Mask@0) (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| Mask@0) (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| Mask@0) (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| Mask@0) (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| Mask@0) (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| Mask@0) (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| Mask@0))) (state Heap@1 Mask@1)) (and (= Mask@3 Mask@1) (= (ControlFlow 0 21) 20))) anon14_correct))))
(let ((anon29_Else_correct  (=> (and (HasDirectPerm_6536_6537 Mask@0 null (P x@@5 b_24@@5)) (= Heap@1 Heap@@32)) (and (=> (= (ControlFlow 0 24) 21) anon30_Then_correct) (=> (= (ControlFlow 0 24) 22) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (not (HasDirectPerm_6536_6537 Mask@0 null (P x@@5 b_24@@5))) (=> (and (= Heap@0 (PolymorphicMapType_11020 (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@32) (|PolymorphicMapType_11020_6237_6238#PolymorphicMapType_11020| Heap@@32) (store (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@32) null (P x@@5 b_24@@5) newVersion@0) (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@32) (|PolymorphicMapType_11020_6540_25051#PolymorphicMapType_11020| Heap@@32) (|PolymorphicMapType_11020_6531_6537#PolymorphicMapType_11020| Heap@@32) (|PolymorphicMapType_11020_6531_31820#PolymorphicMapType_11020| Heap@@32) (|PolymorphicMapType_11020_6536_3251#PolymorphicMapType_11020| Heap@@32) (|PolymorphicMapType_11020_6536_3266#PolymorphicMapType_11020| Heap@@32) (|PolymorphicMapType_11020_6536_11094#PolymorphicMapType_11020| Heap@@32))) (= Heap@1 Heap@0)) (and (=> (= (ControlFlow 0 23) 21) anon30_Then_correct) (=> (= (ControlFlow 0 23) 22) anon30_Else_correct))))))
(let ((anon9_correct  (=> (= Mask@0 (PolymorphicMapType_11041 (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| QPMask@0) (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| QPMask@0) (store (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| QPMask@0) null (P x@@5 b_24@@5) (- (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| QPMask@0) null (P x@@5 b_24@@5)) FullPerm)) (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| QPMask@0) (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| QPMask@0) (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| QPMask@0) (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| QPMask@0) (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| QPMask@0) (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| QPMask@0) (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| QPMask@0))) (and (=> (= (ControlFlow 0 25) 23) anon29_Then_correct) (=> (= (ControlFlow 0 25) 24) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 28) 25)) anon9_correct)))
(let ((anon28_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (<= FullPerm (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| QPMask@0) null (P x@@5 b_24@@5)))) (=> (<= FullPerm (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| QPMask@0) null (P x@@5 b_24@@5))) (=> (= (ControlFlow 0 26) 25) anon9_correct))))))
(let ((anon26_Else_correct  (=> (and (|P#trigger_6536| Heap@@32 (P x@@5 b_24@@5)) (= (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@32) null (P x@@5 b_24@@5)) (FrameFragment_9083 (ite b_24@@5 (FrameFragment_3251 (select (|PolymorphicMapType_11020_6531_3251#PolymorphicMapType_11020| Heap@@32) x@@5 f_7)) (FrameFragment_3266 (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@32) x@@5 g)))))) (and (=> (= (ControlFlow 0 29) 26) anon28_Then_correct) (=> (= (ControlFlow 0 29) 28) anon28_Else_correct)))))
(let ((anon25_Else_correct  (and (=> (= (ControlFlow 0 36) (- 0 37)) (forall ((y_1 T@Ref) (y_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= y_1 y_1_1)) (select xs y_1)) (select xs y_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= y_1 y_1_1)) (= b_24@@5  (not b_24@@5))))
 :qid |stdinbpl.493:17|
 :skolemid |88|
 :pattern ( (neverTriggered1 y_1) (neverTriggered1 y_1_1))
))) (=> (forall ((y_1@@0 T@Ref) (y_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= y_1@@0 y_1_1@@0)) (select xs y_1@@0)) (select xs y_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= y_1@@0 y_1_1@@0)) (= b_24@@5  (not b_24@@5))))
 :qid |stdinbpl.493:17|
 :skolemid |88|
 :pattern ( (neverTriggered1 y_1@@0) (neverTriggered1 y_1_1@@0))
)) (=> (forall ((y_1@@1 T@Ref) ) (!  (=> (and (select xs y_1@@1) (< NoPerm FullPerm)) (and (= (invRecv1 y_1@@1 b_24@@5) y_1@@1) (qpRange1 y_1@@1 b_24@@5)))
 :qid |stdinbpl.499:22|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_11020_6536_6537#PolymorphicMapType_11020| Heap@@32) null (P y_1@@1 b_24@@5)))
 :pattern ( (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| ZeroMask) null (P y_1@@1 b_24@@5)))
 :pattern ( (select xs y_1@@1))
)) (=> (and (forall ((x_1_1_1 T@Ref) (b_1_1_1 Bool) ) (!  (=> (and (and (select xs (invRecv1 x_1_1_1 b_1_1_1)) (< NoPerm FullPerm)) (qpRange1 x_1_1_1 b_1_1_1)) (and (= (invRecv1 x_1_1_1 b_1_1_1) x_1_1_1) (= b_24@@5 b_1_1_1)))
 :qid |stdinbpl.503:22|
 :skolemid |90|
 :pattern ( (invRecv1 x_1_1_1 b_1_1_1))
)) (forall ((x_1_1_1@@0 T@Ref) (b_1_1_1@@0 Bool) ) (!  (=> (and (and (select xs (invRecv1 x_1_1_1@@0 b_1_1_1@@0)) (< NoPerm FullPerm)) (qpRange1 x_1_1_1@@0 b_1_1_1@@0)) (and (=> (< NoPerm FullPerm) (and (= (invRecv1 x_1_1_1@@0 b_1_1_1@@0) x_1_1_1@@0) (= b_24@@5 b_1_1_1@@0))) (= (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| QPMask@0) null (P x_1_1_1@@0 b_1_1_1@@0)) (+ (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| ZeroMask) null (P x_1_1_1@@0 b_1_1_1@@0)) FullPerm))))
 :qid |stdinbpl.509:22|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| QPMask@0) null (P x_1_1_1@@0 b_1_1_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_17256_3251) ) (!  (=> (or (or (not (= o_4 null)) (not (IsPredicateField_6531_3251 f_5))) (not (= (getPredWandId_6531_3251 f_5) 0))) (= (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| ZeroMask) o_4 f_5) (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| QPMask@0) o_4 f_5)))
 :qid |stdinbpl.515:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| ZeroMask) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_11041_6531_3251#PolymorphicMapType_11041| QPMask@0) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_11080_53) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsPredicateField_6533_3266 f_5@@0))) (not (= (getPredWandId_6531_3266 f_5@@0) 0))) (= (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| ZeroMask) o_4@@0 f_5@@0) (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| QPMask@0) o_4@@0 f_5@@0)))
 :qid |stdinbpl.515:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| ZeroMask) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_11041_6533_3266#PolymorphicMapType_11041| QPMask@0) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_6531_6537) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsPredicateField_6531_33164 f_5@@1))) (not (= (getPredWandId_6531_6537 f_5@@1) 0))) (= (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| ZeroMask) o_4@@1 f_5@@1) (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| QPMask@0) o_4@@1 f_5@@1)))
 :qid |stdinbpl.515:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| ZeroMask) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_11041_6531_6537#PolymorphicMapType_11041| QPMask@0) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_11093_11094) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsPredicateField_6531_11094 f_5@@2))) (not (= (getPredWandId_6531_11094 f_5@@2) 0))) (= (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| ZeroMask) o_4@@2 f_5@@2) (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| QPMask@0) o_4@@2 f_5@@2)))
 :qid |stdinbpl.515:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| ZeroMask) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_11041_6531_11094#PolymorphicMapType_11041| QPMask@0) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_6531_17365) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsPredicateField_6531_42912 f_5@@3))) (not (= (getPredWandId_6531_49372 f_5@@3) 0))) (= (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| ZeroMask) o_4@@3 f_5@@3) (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| QPMask@0) o_4@@3 f_5@@3)))
 :qid |stdinbpl.515:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| ZeroMask) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_11041_6531_41054#PolymorphicMapType_11041| QPMask@0) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_6536_3251) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsPredicateField_6536_3251 f_5@@4))) (not (= (getPredWandId_6536_3251 f_5@@4) 0))) (= (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| ZeroMask) o_4@@4 f_5@@4) (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| QPMask@0) o_4@@4 f_5@@4)))
 :qid |stdinbpl.515:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| ZeroMask) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_11041_6536_3251#PolymorphicMapType_11041| QPMask@0) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_6536_3266) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsPredicateField_6536_3266 f_5@@5))) (not (= (getPredWandId_6536_3266 f_5@@5) 0))) (= (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| ZeroMask) o_4@@5 f_5@@5) (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| QPMask@0) o_4@@5 f_5@@5)))
 :qid |stdinbpl.515:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| ZeroMask) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_11041_6536_3266#PolymorphicMapType_11041| QPMask@0) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_17347_17348) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsPredicateField_6536_6537 f_5@@6))) (not (= (getPredWandId_6536_6537 f_5@@6) 0))) (= (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| ZeroMask) o_4@@6 f_5@@6) (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| QPMask@0) o_4@@6 f_5@@6)))
 :qid |stdinbpl.515:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| ZeroMask) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| QPMask@0) o_4@@6 f_5@@6))
))) (forall ((o_4@@7 T@Ref) (f_5@@7 T@Field_6536_11094) ) (!  (=> (or (or (not (= o_4@@7 null)) (not (IsPredicateField_6536_11094 f_5@@7))) (not (= (getPredWandId_6536_11094 f_5@@7) 0))) (= (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| ZeroMask) o_4@@7 f_5@@7) (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| QPMask@0) o_4@@7 f_5@@7)))
 :qid |stdinbpl.515:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| ZeroMask) o_4@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_11041_6536_11094#PolymorphicMapType_11041| QPMask@0) o_4@@7 f_5@@7))
))) (forall ((o_4@@8 T@Ref) (f_5@@8 T@Field_17360_17365) ) (!  (=> (or (or (not (= o_4@@8 null)) (not (IsPredicateField_6536_43743 f_5@@8))) (not (= (getPredWandId_6536_50181 f_5@@8) 0))) (= (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| ZeroMask) o_4@@8 f_5@@8) (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| QPMask@0) o_4@@8 f_5@@8)))
 :qid |stdinbpl.515:29|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| ZeroMask) o_4@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_11041_6536_41465#PolymorphicMapType_11041| QPMask@0) o_4@@8 f_5@@8))
))) (forall ((x_1_1_1@@1 T@Ref) (b_1_1_1@@1 Bool) ) (!  (=> (not (and (and (select xs (invRecv1 x_1_1_1@@1 b_1_1_1@@1)) (< NoPerm FullPerm)) (qpRange1 x_1_1_1@@1 b_1_1_1@@1))) (= (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| QPMask@0) null (P x_1_1_1@@1 b_1_1_1@@1)) (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| ZeroMask) null (P x_1_1_1@@1 b_1_1_1@@1))))
 :qid |stdinbpl.519:22|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_11041_6536_6537#PolymorphicMapType_11041| QPMask@0) null (P x_1_1_1@@1 b_1_1_1@@1)))
))) (and (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (select xs x@@5) (state Heap@@32 QPMask@0)))) (and (=> (= (ControlFlow 0 36) 35) anon26_Then_correct) (=> (= (ControlFlow 0 36) 29) anon26_Else_correct)))))))))
(let ((anon25_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_11020_6234_53#PolymorphicMapType_11020| Heap@@32) x@@5 $allocated)) (and (=> (= (ControlFlow 0 38) 1) anon25_Then_correct) (=> (= (ControlFlow 0 38) 36) anon25_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 39) 38) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid