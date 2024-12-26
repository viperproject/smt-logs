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
(declare-sort T@Field_4284_53 0)
(declare-sort T@Field_4297_4298 0)
(declare-sort T@Field_7615_1245 0)
(declare-sort T@Field_8158_8159 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_4284_8159 0)
(declare-sort T@Field_4284_8176 0)
(declare-sort T@Field_8158_53 0)
(declare-sort T@Field_8158_4298 0)
(declare-sort T@Field_8158_1245 0)
(declare-sort T@Field_8171_8176 0)
(declare-datatypes ((T@PolymorphicMapType_4245 0)) (((PolymorphicMapType_4245 (|PolymorphicMapType_4245_2544_2545#PolymorphicMapType_4245| (Array T@Ref T@Field_8158_8159 Real)) (|PolymorphicMapType_4245_2517_1245#PolymorphicMapType_4245| (Array T@Ref T@Field_7615_1245 Real)) (|PolymorphicMapType_4245_2544_1245#PolymorphicMapType_4245| (Array T@Ref T@Field_8158_1245 Real)) (|PolymorphicMapType_4245_2544_53#PolymorphicMapType_4245| (Array T@Ref T@Field_8158_53 Real)) (|PolymorphicMapType_4245_2544_4298#PolymorphicMapType_4245| (Array T@Ref T@Field_8158_4298 Real)) (|PolymorphicMapType_4245_2544_21739#PolymorphicMapType_4245| (Array T@Ref T@Field_8171_8176 Real)) (|PolymorphicMapType_4245_2517_2545#PolymorphicMapType_4245| (Array T@Ref T@Field_4284_8159 Real)) (|PolymorphicMapType_4245_2517_53#PolymorphicMapType_4245| (Array T@Ref T@Field_4284_53 Real)) (|PolymorphicMapType_4245_2517_4298#PolymorphicMapType_4245| (Array T@Ref T@Field_4297_4298 Real)) (|PolymorphicMapType_4245_2517_22153#PolymorphicMapType_4245| (Array T@Ref T@Field_4284_8176 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4773 0)) (((PolymorphicMapType_4773 (|PolymorphicMapType_4773_4284_53#PolymorphicMapType_4773| (Array T@Ref T@Field_4284_53 Bool)) (|PolymorphicMapType_4773_4284_4298#PolymorphicMapType_4773| (Array T@Ref T@Field_4297_4298 Bool)) (|PolymorphicMapType_4773_4284_1245#PolymorphicMapType_4773| (Array T@Ref T@Field_7615_1245 Bool)) (|PolymorphicMapType_4773_4284_8159#PolymorphicMapType_4773| (Array T@Ref T@Field_4284_8159 Bool)) (|PolymorphicMapType_4773_4284_15300#PolymorphicMapType_4773| (Array T@Ref T@Field_4284_8176 Bool)) (|PolymorphicMapType_4773_8158_53#PolymorphicMapType_4773| (Array T@Ref T@Field_8158_53 Bool)) (|PolymorphicMapType_4773_8158_4298#PolymorphicMapType_4773| (Array T@Ref T@Field_8158_4298 Bool)) (|PolymorphicMapType_4773_8158_1245#PolymorphicMapType_4773| (Array T@Ref T@Field_8158_1245 Bool)) (|PolymorphicMapType_4773_8158_8159#PolymorphicMapType_4773| (Array T@Ref T@Field_8158_8159 Bool)) (|PolymorphicMapType_4773_8158_16348#PolymorphicMapType_4773| (Array T@Ref T@Field_8171_8176 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4224 0)) (((PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| (Array T@Ref T@Field_4284_53 Bool)) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| (Array T@Ref T@Field_4297_4298 T@Ref)) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| (Array T@Ref T@Field_7615_1245 Int)) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| (Array T@Ref T@Field_8158_8159 T@FrameType)) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| (Array T@Ref T@Field_4284_8159 T@FrameType)) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| (Array T@Ref T@Field_4284_8176 T@PolymorphicMapType_4773)) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| (Array T@Ref T@Field_8158_53 Bool)) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| (Array T@Ref T@Field_8158_4298 T@Ref)) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| (Array T@Ref T@Field_8158_1245 Int)) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| (Array T@Ref T@Field_8171_8176 T@PolymorphicMapType_4773)) ) ) ))
(declare-fun $allocated () T@Field_4284_53)
(declare-fun val () T@Field_7615_1245)
(declare-fun succHeap (T@PolymorphicMapType_4224 T@PolymorphicMapType_4224) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4224 T@PolymorphicMapType_4224) Bool)
(declare-fun state (T@PolymorphicMapType_4224 T@PolymorphicMapType_4245) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4245) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4773)
(declare-fun P (T@Ref Int) T@Field_8158_8159)
(declare-fun IsPredicateField_2544_2545 (T@Field_8158_8159) Bool)
(declare-fun |loc'| (T@PolymorphicMapType_4224 T@Ref Int) T@Ref)
(declare-fun dummyFunction_2538 (T@Ref) Bool)
(declare-fun |loc#triggerStateless| (T@Ref Int) T@Ref)
(declare-fun |P#trigger_2544| (T@PolymorphicMapType_4224 T@Field_8158_8159) Bool)
(declare-fun |P#everUsed_2544| (T@Field_8158_8159) Bool)
(declare-fun |loc#frame| (T@FrameType T@Ref Int) T@Ref)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4224 T@PolymorphicMapType_4224 T@PolymorphicMapType_4245) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2544 (T@Field_8158_8159) T@Field_8171_8176)
(declare-fun HasDirectPerm_8158_8159 (T@PolymorphicMapType_4245 T@Ref T@Field_8158_8159) Bool)
(declare-fun IsPredicateField_4284_13816 (T@Field_4284_8159) Bool)
(declare-fun PredicateMaskField_4284 (T@Field_4284_8159) T@Field_4284_8176)
(declare-fun HasDirectPerm_4284_8159 (T@PolymorphicMapType_4245 T@Ref T@Field_4284_8159) Bool)
(declare-fun IsWandField_8158_17513 (T@Field_8158_8159) Bool)
(declare-fun WandMaskField_8158 (T@Field_8158_8159) T@Field_8171_8176)
(declare-fun IsWandField_4284_17156 (T@Field_4284_8159) Bool)
(declare-fun WandMaskField_4284 (T@Field_4284_8159) T@Field_4284_8176)
(declare-fun |P#sm| (T@Ref Int) T@Field_8171_8176)
(declare-fun dummyHeap () T@PolymorphicMapType_4224)
(declare-fun ZeroMask () T@PolymorphicMapType_4245)
(declare-fun InsidePredicate_8158_8158 (T@Field_8158_8159 T@FrameType T@Field_8158_8159 T@FrameType) Bool)
(declare-fun InsidePredicate_4284_4284 (T@Field_4284_8159 T@FrameType T@Field_4284_8159 T@FrameType) Bool)
(declare-fun IsPredicateField_2517_1245 (T@Field_7615_1245) Bool)
(declare-fun IsWandField_2517_1245 (T@Field_7615_1245) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2517_24445 (T@Field_4284_8176) Bool)
(declare-fun IsWandField_2517_24461 (T@Field_4284_8176) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2517_4298 (T@Field_4297_4298) Bool)
(declare-fun IsWandField_2517_4298 (T@Field_4297_4298) Bool)
(declare-fun IsPredicateField_2517_53 (T@Field_4284_53) Bool)
(declare-fun IsWandField_2517_53 (T@Field_4284_53) Bool)
(declare-fun IsPredicateField_2544_23628 (T@Field_8171_8176) Bool)
(declare-fun IsWandField_2544_23644 (T@Field_8171_8176) Bool)
(declare-fun IsPredicateField_2544_4298 (T@Field_8158_4298) Bool)
(declare-fun IsWandField_2544_4298 (T@Field_8158_4298) Bool)
(declare-fun IsPredicateField_2544_53 (T@Field_8158_53) Bool)
(declare-fun IsWandField_2544_53 (T@Field_8158_53) Bool)
(declare-fun IsPredicateField_2544_1245 (T@Field_8158_1245) Bool)
(declare-fun IsWandField_2544_1245 (T@Field_8158_1245) Bool)
(declare-fun HasDirectPerm_8158_13528 (T@PolymorphicMapType_4245 T@Ref T@Field_8171_8176) Bool)
(declare-fun HasDirectPerm_8158_1245 (T@PolymorphicMapType_4245 T@Ref T@Field_8158_1245) Bool)
(declare-fun HasDirectPerm_8158_4298 (T@PolymorphicMapType_4245 T@Ref T@Field_8158_4298) Bool)
(declare-fun HasDirectPerm_8158_53 (T@PolymorphicMapType_4245 T@Ref T@Field_8158_53) Bool)
(declare-fun HasDirectPerm_4284_12367 (T@PolymorphicMapType_4245 T@Ref T@Field_4284_8176) Bool)
(declare-fun HasDirectPerm_4284_1245 (T@PolymorphicMapType_4245 T@Ref T@Field_7615_1245) Bool)
(declare-fun HasDirectPerm_4284_4298 (T@PolymorphicMapType_4245 T@Ref T@Field_4297_4298) Bool)
(declare-fun HasDirectPerm_4284_53 (T@PolymorphicMapType_4245 T@Ref T@Field_4284_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun loc_1 (T@PolymorphicMapType_4224 T@Ref Int) T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_4245 T@PolymorphicMapType_4245 T@PolymorphicMapType_4245) Bool)
(declare-fun getPredWandId_2544_2545 (T@Field_8158_8159) Int)
(declare-fun InsidePredicate_8158_4284 (T@Field_8158_8159 T@FrameType T@Field_4284_8159 T@FrameType) Bool)
(declare-fun InsidePredicate_4284_8158 (T@Field_4284_8159 T@FrameType T@Field_8158_8159 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4224) (Heap1 T@PolymorphicMapType_4224) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4224) (Mask T@PolymorphicMapType_4245) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4224) (Heap1@@0 T@PolymorphicMapType_4224) (Heap2 T@PolymorphicMapType_4224) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8171_8176) ) (!  (not (select (|PolymorphicMapType_4773_8158_16348#PolymorphicMapType_4773| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4773_8158_16348#PolymorphicMapType_4773| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8158_8159) ) (!  (not (select (|PolymorphicMapType_4773_8158_8159#PolymorphicMapType_4773| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4773_8158_8159#PolymorphicMapType_4773| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8158_1245) ) (!  (not (select (|PolymorphicMapType_4773_8158_1245#PolymorphicMapType_4773| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4773_8158_1245#PolymorphicMapType_4773| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8158_4298) ) (!  (not (select (|PolymorphicMapType_4773_8158_4298#PolymorphicMapType_4773| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4773_8158_4298#PolymorphicMapType_4773| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8158_53) ) (!  (not (select (|PolymorphicMapType_4773_8158_53#PolymorphicMapType_4773| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4773_8158_53#PolymorphicMapType_4773| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4284_8176) ) (!  (not (select (|PolymorphicMapType_4773_4284_15300#PolymorphicMapType_4773| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4773_4284_15300#PolymorphicMapType_4773| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4284_8159) ) (!  (not (select (|PolymorphicMapType_4773_4284_8159#PolymorphicMapType_4773| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4773_4284_8159#PolymorphicMapType_4773| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7615_1245) ) (!  (not (select (|PolymorphicMapType_4773_4284_1245#PolymorphicMapType_4773| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4773_4284_1245#PolymorphicMapType_4773| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_4297_4298) ) (!  (not (select (|PolymorphicMapType_4773_4284_4298#PolymorphicMapType_4773| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4773_4284_4298#PolymorphicMapType_4773| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_4284_53) ) (!  (not (select (|PolymorphicMapType_4773_4284_53#PolymorphicMapType_4773| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4773_4284_53#PolymorphicMapType_4773| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((s_2 T@Ref) (i Int) ) (! (IsPredicateField_2544_2545 (P s_2 i))
 :qid |stdinbpl.258:15|
 :skolemid |26|
 :pattern ( (P s_2 i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4224) (a_2 T@Ref) (i@@0 Int) ) (! (dummyFunction_2538 (|loc#triggerStateless| a_2 i@@0))
 :qid |stdinbpl.216:15|
 :skolemid |23|
 :pattern ( (|loc'| Heap@@0 a_2 i@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4224) (s_2@@0 T@Ref) (i@@1 Int) ) (! (|P#everUsed_2544| (P s_2@@0 i@@1))
 :qid |stdinbpl.277:15|
 :skolemid |30|
 :pattern ( (|P#trigger_2544| Heap@@1 (P s_2@@0 i@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4224) (Mask@@0 T@PolymorphicMapType_4245) (a_2@@0 T@Ref) (i@@2 Int) ) (!  (=> (state Heap@@2 Mask@@0) (= (|loc'| Heap@@2 a_2@@0 i@@2) (|loc#frame| EmptyFrame a_2@@0 i@@2)))
 :qid |stdinbpl.223:15|
 :skolemid |24|
 :pattern ( (state Heap@@2 Mask@@0) (|loc'| Heap@@2 a_2@@0 i@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4224) (ExhaleHeap T@PolymorphicMapType_4224) (Mask@@1 T@PolymorphicMapType_4245) (pm_f_5 T@Field_8158_8159) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_8158_8159 Mask@@1 null pm_f_5) (IsPredicateField_2544_2545 pm_f_5)) (= (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@3) null (PredicateMaskField_2544 pm_f_5)) (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| ExhaleHeap) null (PredicateMaskField_2544 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (IsPredicateField_2544_2545 pm_f_5) (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| ExhaleHeap) null (PredicateMaskField_2544 pm_f_5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4224) (ExhaleHeap@@0 T@PolymorphicMapType_4224) (Mask@@2 T@PolymorphicMapType_4245) (pm_f_5@@0 T@Field_4284_8159) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_4284_8159 Mask@@2 null pm_f_5@@0) (IsPredicateField_4284_13816 pm_f_5@@0)) (= (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@4) null (PredicateMaskField_4284 pm_f_5@@0)) (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| ExhaleHeap@@0) null (PredicateMaskField_4284 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (IsPredicateField_4284_13816 pm_f_5@@0) (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| ExhaleHeap@@0) null (PredicateMaskField_4284 pm_f_5@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4224) (ExhaleHeap@@1 T@PolymorphicMapType_4224) (Mask@@3 T@PolymorphicMapType_4245) (pm_f_5@@1 T@Field_8158_8159) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_8158_8159 Mask@@3 null pm_f_5@@1) (IsWandField_8158_17513 pm_f_5@@1)) (= (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@5) null (WandMaskField_8158 pm_f_5@@1)) (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| ExhaleHeap@@1) null (WandMaskField_8158 pm_f_5@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (IsWandField_8158_17513 pm_f_5@@1) (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| ExhaleHeap@@1) null (WandMaskField_8158 pm_f_5@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4224) (ExhaleHeap@@2 T@PolymorphicMapType_4224) (Mask@@4 T@PolymorphicMapType_4245) (pm_f_5@@2 T@Field_4284_8159) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_4284_8159 Mask@@4 null pm_f_5@@2) (IsWandField_4284_17156 pm_f_5@@2)) (= (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@6) null (WandMaskField_4284 pm_f_5@@2)) (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| ExhaleHeap@@2) null (WandMaskField_4284 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (IsWandField_4284_17156 pm_f_5@@2) (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| ExhaleHeap@@2) null (WandMaskField_4284 pm_f_5@@2)))
)))
(assert (forall ((s_2@@1 T@Ref) (i@@3 Int) (s2 T@Ref) (i2_1 Int) ) (!  (=> (= (P s_2@@1 i@@3) (P s2 i2_1)) (and (= s_2@@1 s2) (= i@@3 i2_1)))
 :qid |stdinbpl.268:15|
 :skolemid |28|
 :pattern ( (P s_2@@1 i@@3) (P s2 i2_1))
)))
(assert (forall ((s_2@@2 T@Ref) (i@@4 Int) (s2@@0 T@Ref) (i2_1@@0 Int) ) (!  (=> (= (|P#sm| s_2@@2 i@@4) (|P#sm| s2@@0 i2_1@@0)) (and (= s_2@@2 s2@@0) (= i@@4 i2_1@@0)))
 :qid |stdinbpl.272:15|
 :skolemid |29|
 :pattern ( (|P#sm| s_2@@2 i@@4) (|P#sm| s2@@0 i2_1@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4224) (ExhaleHeap@@3 T@PolymorphicMapType_4224) (Mask@@5 T@PolymorphicMapType_4245) (pm_f_5@@3 T@Field_8158_8159) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_8158_8159 Mask@@5 null pm_f_5@@3) (IsPredicateField_2544_2545 pm_f_5@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_4284_53) ) (!  (=> (select (|PolymorphicMapType_4773_4284_53#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@7) null (PredicateMaskField_2544 pm_f_5@@3))) o2_5 f_16) (= (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@7) o2_5 f_16) (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_4297_4298) ) (!  (=> (select (|PolymorphicMapType_4773_4284_4298#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@7) null (PredicateMaskField_2544 pm_f_5@@3))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@7) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_7615_1245) ) (!  (=> (select (|PolymorphicMapType_4773_4284_1245#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@7) null (PredicateMaskField_2544 pm_f_5@@3))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@7) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_4284_8159) ) (!  (=> (select (|PolymorphicMapType_4773_4284_8159#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@7) null (PredicateMaskField_2544 pm_f_5@@3))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@7) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_4284_8176) ) (!  (=> (select (|PolymorphicMapType_4773_4284_15300#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@7) null (PredicateMaskField_2544 pm_f_5@@3))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@7) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@3 f_16@@3))
))) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_8158_53) ) (!  (=> (select (|PolymorphicMapType_4773_8158_53#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@7) null (PredicateMaskField_2544 pm_f_5@@3))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@7) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_8158_4298) ) (!  (=> (select (|PolymorphicMapType_4773_8158_4298#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@7) null (PredicateMaskField_2544 pm_f_5@@3))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@7) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_8158_1245) ) (!  (=> (select (|PolymorphicMapType_4773_8158_1245#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@7) null (PredicateMaskField_2544 pm_f_5@@3))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@7) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@6 f_16@@6))
))) (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_8158_8159) ) (!  (=> (select (|PolymorphicMapType_4773_8158_8159#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@7) null (PredicateMaskField_2544 pm_f_5@@3))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@7) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@7 f_16@@7))
))) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_8171_8176) ) (!  (=> (select (|PolymorphicMapType_4773_8158_16348#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@7) null (PredicateMaskField_2544 pm_f_5@@3))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@7) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| ExhaleHeap@@3) o2_5@@8 f_16@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (IsPredicateField_2544_2545 pm_f_5@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4224) (ExhaleHeap@@4 T@PolymorphicMapType_4224) (Mask@@6 T@PolymorphicMapType_4245) (pm_f_5@@4 T@Field_4284_8159) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_4284_8159 Mask@@6 null pm_f_5@@4) (IsPredicateField_4284_13816 pm_f_5@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@9 T@Ref) (f_16@@9 T@Field_4284_53) ) (!  (=> (select (|PolymorphicMapType_4773_4284_53#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@8) null (PredicateMaskField_4284 pm_f_5@@4))) o2_5@@9 f_16@@9) (= (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@8) o2_5@@9 f_16@@9) (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@9 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@9 f_16@@9))
)) (forall ((o2_5@@10 T@Ref) (f_16@@10 T@Field_4297_4298) ) (!  (=> (select (|PolymorphicMapType_4773_4284_4298#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@8) null (PredicateMaskField_4284 pm_f_5@@4))) o2_5@@10 f_16@@10) (= (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@8) o2_5@@10 f_16@@10) (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@10 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@10 f_16@@10))
))) (forall ((o2_5@@11 T@Ref) (f_16@@11 T@Field_7615_1245) ) (!  (=> (select (|PolymorphicMapType_4773_4284_1245#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@8) null (PredicateMaskField_4284 pm_f_5@@4))) o2_5@@11 f_16@@11) (= (select (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@8) o2_5@@11 f_16@@11) (select (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@11 f_16@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@11 f_16@@11))
))) (forall ((o2_5@@12 T@Ref) (f_16@@12 T@Field_4284_8159) ) (!  (=> (select (|PolymorphicMapType_4773_4284_8159#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@8) null (PredicateMaskField_4284 pm_f_5@@4))) o2_5@@12 f_16@@12) (= (select (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@8) o2_5@@12 f_16@@12) (select (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@12 f_16@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@12 f_16@@12))
))) (forall ((o2_5@@13 T@Ref) (f_16@@13 T@Field_4284_8176) ) (!  (=> (select (|PolymorphicMapType_4773_4284_15300#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@8) null (PredicateMaskField_4284 pm_f_5@@4))) o2_5@@13 f_16@@13) (= (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@8) o2_5@@13 f_16@@13) (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@13 f_16@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@13 f_16@@13))
))) (forall ((o2_5@@14 T@Ref) (f_16@@14 T@Field_8158_53) ) (!  (=> (select (|PolymorphicMapType_4773_8158_53#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@8) null (PredicateMaskField_4284 pm_f_5@@4))) o2_5@@14 f_16@@14) (= (select (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@8) o2_5@@14 f_16@@14) (select (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@14 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@14 f_16@@14))
))) (forall ((o2_5@@15 T@Ref) (f_16@@15 T@Field_8158_4298) ) (!  (=> (select (|PolymorphicMapType_4773_8158_4298#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@8) null (PredicateMaskField_4284 pm_f_5@@4))) o2_5@@15 f_16@@15) (= (select (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@8) o2_5@@15 f_16@@15) (select (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@15 f_16@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@15 f_16@@15))
))) (forall ((o2_5@@16 T@Ref) (f_16@@16 T@Field_8158_1245) ) (!  (=> (select (|PolymorphicMapType_4773_8158_1245#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@8) null (PredicateMaskField_4284 pm_f_5@@4))) o2_5@@16 f_16@@16) (= (select (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@8) o2_5@@16 f_16@@16) (select (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@16 f_16@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@16 f_16@@16))
))) (forall ((o2_5@@17 T@Ref) (f_16@@17 T@Field_8158_8159) ) (!  (=> (select (|PolymorphicMapType_4773_8158_8159#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@8) null (PredicateMaskField_4284 pm_f_5@@4))) o2_5@@17 f_16@@17) (= (select (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@8) o2_5@@17 f_16@@17) (select (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@17 f_16@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@17 f_16@@17))
))) (forall ((o2_5@@18 T@Ref) (f_16@@18 T@Field_8171_8176) ) (!  (=> (select (|PolymorphicMapType_4773_8158_16348#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@8) null (PredicateMaskField_4284 pm_f_5@@4))) o2_5@@18 f_16@@18) (= (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@8) o2_5@@18 f_16@@18) (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@18 f_16@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| ExhaleHeap@@4) o2_5@@18 f_16@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (IsPredicateField_4284_13816 pm_f_5@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4224) (ExhaleHeap@@5 T@PolymorphicMapType_4224) (Mask@@7 T@PolymorphicMapType_4245) (pm_f_5@@5 T@Field_8158_8159) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_8158_8159 Mask@@7 null pm_f_5@@5) (IsWandField_8158_17513 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@19 T@Ref) (f_16@@19 T@Field_4284_53) ) (!  (=> (select (|PolymorphicMapType_4773_4284_53#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@9) null (WandMaskField_8158 pm_f_5@@5))) o2_5@@19 f_16@@19) (= (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@9) o2_5@@19 f_16@@19) (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@19 f_16@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@19 f_16@@19))
)) (forall ((o2_5@@20 T@Ref) (f_16@@20 T@Field_4297_4298) ) (!  (=> (select (|PolymorphicMapType_4773_4284_4298#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@9) null (WandMaskField_8158 pm_f_5@@5))) o2_5@@20 f_16@@20) (= (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@9) o2_5@@20 f_16@@20) (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@20 f_16@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@20 f_16@@20))
))) (forall ((o2_5@@21 T@Ref) (f_16@@21 T@Field_7615_1245) ) (!  (=> (select (|PolymorphicMapType_4773_4284_1245#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@9) null (WandMaskField_8158 pm_f_5@@5))) o2_5@@21 f_16@@21) (= (select (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@9) o2_5@@21 f_16@@21) (select (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@21 f_16@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@21 f_16@@21))
))) (forall ((o2_5@@22 T@Ref) (f_16@@22 T@Field_4284_8159) ) (!  (=> (select (|PolymorphicMapType_4773_4284_8159#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@9) null (WandMaskField_8158 pm_f_5@@5))) o2_5@@22 f_16@@22) (= (select (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@9) o2_5@@22 f_16@@22) (select (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@22 f_16@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@22 f_16@@22))
))) (forall ((o2_5@@23 T@Ref) (f_16@@23 T@Field_4284_8176) ) (!  (=> (select (|PolymorphicMapType_4773_4284_15300#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@9) null (WandMaskField_8158 pm_f_5@@5))) o2_5@@23 f_16@@23) (= (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@9) o2_5@@23 f_16@@23) (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@23 f_16@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@23 f_16@@23))
))) (forall ((o2_5@@24 T@Ref) (f_16@@24 T@Field_8158_53) ) (!  (=> (select (|PolymorphicMapType_4773_8158_53#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@9) null (WandMaskField_8158 pm_f_5@@5))) o2_5@@24 f_16@@24) (= (select (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@9) o2_5@@24 f_16@@24) (select (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@24 f_16@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@24 f_16@@24))
))) (forall ((o2_5@@25 T@Ref) (f_16@@25 T@Field_8158_4298) ) (!  (=> (select (|PolymorphicMapType_4773_8158_4298#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@9) null (WandMaskField_8158 pm_f_5@@5))) o2_5@@25 f_16@@25) (= (select (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@9) o2_5@@25 f_16@@25) (select (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@25 f_16@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@25 f_16@@25))
))) (forall ((o2_5@@26 T@Ref) (f_16@@26 T@Field_8158_1245) ) (!  (=> (select (|PolymorphicMapType_4773_8158_1245#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@9) null (WandMaskField_8158 pm_f_5@@5))) o2_5@@26 f_16@@26) (= (select (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@9) o2_5@@26 f_16@@26) (select (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@26 f_16@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@26 f_16@@26))
))) (forall ((o2_5@@27 T@Ref) (f_16@@27 T@Field_8158_8159) ) (!  (=> (select (|PolymorphicMapType_4773_8158_8159#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@9) null (WandMaskField_8158 pm_f_5@@5))) o2_5@@27 f_16@@27) (= (select (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@9) o2_5@@27 f_16@@27) (select (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@27 f_16@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@27 f_16@@27))
))) (forall ((o2_5@@28 T@Ref) (f_16@@28 T@Field_8171_8176) ) (!  (=> (select (|PolymorphicMapType_4773_8158_16348#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@9) null (WandMaskField_8158 pm_f_5@@5))) o2_5@@28 f_16@@28) (= (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@9) o2_5@@28 f_16@@28) (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@28 f_16@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| ExhaleHeap@@5) o2_5@@28 f_16@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (IsWandField_8158_17513 pm_f_5@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4224) (ExhaleHeap@@6 T@PolymorphicMapType_4224) (Mask@@8 T@PolymorphicMapType_4245) (pm_f_5@@6 T@Field_4284_8159) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_4284_8159 Mask@@8 null pm_f_5@@6) (IsWandField_4284_17156 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_16@@29 T@Field_4284_53) ) (!  (=> (select (|PolymorphicMapType_4773_4284_53#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@10) null (WandMaskField_4284 pm_f_5@@6))) o2_5@@29 f_16@@29) (= (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@10) o2_5@@29 f_16@@29) (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@29 f_16@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@29 f_16@@29))
)) (forall ((o2_5@@30 T@Ref) (f_16@@30 T@Field_4297_4298) ) (!  (=> (select (|PolymorphicMapType_4773_4284_4298#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@10) null (WandMaskField_4284 pm_f_5@@6))) o2_5@@30 f_16@@30) (= (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@10) o2_5@@30 f_16@@30) (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@30 f_16@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@30 f_16@@30))
))) (forall ((o2_5@@31 T@Ref) (f_16@@31 T@Field_7615_1245) ) (!  (=> (select (|PolymorphicMapType_4773_4284_1245#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@10) null (WandMaskField_4284 pm_f_5@@6))) o2_5@@31 f_16@@31) (= (select (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@10) o2_5@@31 f_16@@31) (select (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@31 f_16@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@31 f_16@@31))
))) (forall ((o2_5@@32 T@Ref) (f_16@@32 T@Field_4284_8159) ) (!  (=> (select (|PolymorphicMapType_4773_4284_8159#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@10) null (WandMaskField_4284 pm_f_5@@6))) o2_5@@32 f_16@@32) (= (select (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@10) o2_5@@32 f_16@@32) (select (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@32 f_16@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@32 f_16@@32))
))) (forall ((o2_5@@33 T@Ref) (f_16@@33 T@Field_4284_8176) ) (!  (=> (select (|PolymorphicMapType_4773_4284_15300#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@10) null (WandMaskField_4284 pm_f_5@@6))) o2_5@@33 f_16@@33) (= (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@10) o2_5@@33 f_16@@33) (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@33 f_16@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@33 f_16@@33))
))) (forall ((o2_5@@34 T@Ref) (f_16@@34 T@Field_8158_53) ) (!  (=> (select (|PolymorphicMapType_4773_8158_53#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@10) null (WandMaskField_4284 pm_f_5@@6))) o2_5@@34 f_16@@34) (= (select (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@10) o2_5@@34 f_16@@34) (select (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@34 f_16@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@34 f_16@@34))
))) (forall ((o2_5@@35 T@Ref) (f_16@@35 T@Field_8158_4298) ) (!  (=> (select (|PolymorphicMapType_4773_8158_4298#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@10) null (WandMaskField_4284 pm_f_5@@6))) o2_5@@35 f_16@@35) (= (select (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@10) o2_5@@35 f_16@@35) (select (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@35 f_16@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@35 f_16@@35))
))) (forall ((o2_5@@36 T@Ref) (f_16@@36 T@Field_8158_1245) ) (!  (=> (select (|PolymorphicMapType_4773_8158_1245#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@10) null (WandMaskField_4284 pm_f_5@@6))) o2_5@@36 f_16@@36) (= (select (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@10) o2_5@@36 f_16@@36) (select (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@36 f_16@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@36 f_16@@36))
))) (forall ((o2_5@@37 T@Ref) (f_16@@37 T@Field_8158_8159) ) (!  (=> (select (|PolymorphicMapType_4773_8158_8159#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@10) null (WandMaskField_4284 pm_f_5@@6))) o2_5@@37 f_16@@37) (= (select (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@10) o2_5@@37 f_16@@37) (select (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@37 f_16@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@37 f_16@@37))
))) (forall ((o2_5@@38 T@Ref) (f_16@@38 T@Field_8171_8176) ) (!  (=> (select (|PolymorphicMapType_4773_8158_16348#PolymorphicMapType_4773| (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@10) null (WandMaskField_4284 pm_f_5@@6))) o2_5@@38 f_16@@38) (= (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@10) o2_5@@38 f_16@@38) (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@38 f_16@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| ExhaleHeap@@6) o2_5@@38 f_16@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (IsWandField_4284_17156 pm_f_5@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4224) (ExhaleHeap@@7 T@PolymorphicMapType_4224) (Mask@@9 T@PolymorphicMapType_4245) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@11) o_12 $allocated) (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_8158_8159) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8158_8158 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8158_8158 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4284_8159) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4284_4284 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4284_4284 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_2517_1245 val)))
(assert  (not (IsWandField_2517_1245 val)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4224) (ExhaleHeap@@8 T@PolymorphicMapType_4224) (Mask@@10 T@PolymorphicMapType_4245) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4245) (o_2@@9 T@Ref) (f_4@@9 T@Field_4284_8176) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_4245_2517_22153#PolymorphicMapType_4245| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_2517_24445 f_4@@9))) (not (IsWandField_2517_24461 f_4@@9))) (<= (select (|PolymorphicMapType_4245_2517_22153#PolymorphicMapType_4245| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_4245_2517_22153#PolymorphicMapType_4245| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4245) (o_2@@10 T@Ref) (f_4@@10 T@Field_4297_4298) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_4245_2517_4298#PolymorphicMapType_4245| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_2517_4298 f_4@@10))) (not (IsWandField_2517_4298 f_4@@10))) (<= (select (|PolymorphicMapType_4245_2517_4298#PolymorphicMapType_4245| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_4245_2517_4298#PolymorphicMapType_4245| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4245) (o_2@@11 T@Ref) (f_4@@11 T@Field_4284_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_4245_2517_53#PolymorphicMapType_4245| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_2517_53 f_4@@11))) (not (IsWandField_2517_53 f_4@@11))) (<= (select (|PolymorphicMapType_4245_2517_53#PolymorphicMapType_4245| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_4245_2517_53#PolymorphicMapType_4245| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4245) (o_2@@12 T@Ref) (f_4@@12 T@Field_7615_1245) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_4245_2517_1245#PolymorphicMapType_4245| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2517_1245 f_4@@12))) (not (IsWandField_2517_1245 f_4@@12))) (<= (select (|PolymorphicMapType_4245_2517_1245#PolymorphicMapType_4245| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_4245_2517_1245#PolymorphicMapType_4245| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4245) (o_2@@13 T@Ref) (f_4@@13 T@Field_4284_8159) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4245_2517_2545#PolymorphicMapType_4245| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4284_13816 f_4@@13))) (not (IsWandField_4284_17156 f_4@@13))) (<= (select (|PolymorphicMapType_4245_2517_2545#PolymorphicMapType_4245| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4245_2517_2545#PolymorphicMapType_4245| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4245) (o_2@@14 T@Ref) (f_4@@14 T@Field_8171_8176) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_4245_2544_21739#PolymorphicMapType_4245| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2544_23628 f_4@@14))) (not (IsWandField_2544_23644 f_4@@14))) (<= (select (|PolymorphicMapType_4245_2544_21739#PolymorphicMapType_4245| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_4245_2544_21739#PolymorphicMapType_4245| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4245) (o_2@@15 T@Ref) (f_4@@15 T@Field_8158_4298) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_4245_2544_4298#PolymorphicMapType_4245| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2544_4298 f_4@@15))) (not (IsWandField_2544_4298 f_4@@15))) (<= (select (|PolymorphicMapType_4245_2544_4298#PolymorphicMapType_4245| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_4245_2544_4298#PolymorphicMapType_4245| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4245) (o_2@@16 T@Ref) (f_4@@16 T@Field_8158_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_4245_2544_53#PolymorphicMapType_4245| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2544_53 f_4@@16))) (not (IsWandField_2544_53 f_4@@16))) (<= (select (|PolymorphicMapType_4245_2544_53#PolymorphicMapType_4245| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_4245_2544_53#PolymorphicMapType_4245| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4245) (o_2@@17 T@Ref) (f_4@@17 T@Field_8158_1245) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_4245_2544_1245#PolymorphicMapType_4245| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_2544_1245 f_4@@17))) (not (IsWandField_2544_1245 f_4@@17))) (<= (select (|PolymorphicMapType_4245_2544_1245#PolymorphicMapType_4245| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_4245_2544_1245#PolymorphicMapType_4245| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4245) (o_2@@18 T@Ref) (f_4@@18 T@Field_8158_8159) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_4245_2544_2545#PolymorphicMapType_4245| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_2544_2545 f_4@@18))) (not (IsWandField_8158_17513 f_4@@18))) (<= (select (|PolymorphicMapType_4245_2544_2545#PolymorphicMapType_4245| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_4245_2544_2545#PolymorphicMapType_4245| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4245) (o_2@@19 T@Ref) (f_4@@19 T@Field_8171_8176) ) (! (= (HasDirectPerm_8158_13528 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_4245_2544_21739#PolymorphicMapType_4245| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8158_13528 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4245) (o_2@@20 T@Ref) (f_4@@20 T@Field_8158_8159) ) (! (= (HasDirectPerm_8158_8159 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_4245_2544_2545#PolymorphicMapType_4245| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8158_8159 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4245) (o_2@@21 T@Ref) (f_4@@21 T@Field_8158_1245) ) (! (= (HasDirectPerm_8158_1245 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_4245_2544_1245#PolymorphicMapType_4245| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8158_1245 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4245) (o_2@@22 T@Ref) (f_4@@22 T@Field_8158_4298) ) (! (= (HasDirectPerm_8158_4298 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_4245_2544_4298#PolymorphicMapType_4245| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8158_4298 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4245) (o_2@@23 T@Ref) (f_4@@23 T@Field_8158_53) ) (! (= (HasDirectPerm_8158_53 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_4245_2544_53#PolymorphicMapType_4245| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8158_53 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_4245) (o_2@@24 T@Ref) (f_4@@24 T@Field_4284_8176) ) (! (= (HasDirectPerm_4284_12367 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_4245_2517_22153#PolymorphicMapType_4245| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4284_12367 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_4245) (o_2@@25 T@Ref) (f_4@@25 T@Field_4284_8159) ) (! (= (HasDirectPerm_4284_8159 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_4245_2517_2545#PolymorphicMapType_4245| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4284_8159 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_4245) (o_2@@26 T@Ref) (f_4@@26 T@Field_7615_1245) ) (! (= (HasDirectPerm_4284_1245 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_4245_2517_1245#PolymorphicMapType_4245| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4284_1245 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_4245) (o_2@@27 T@Ref) (f_4@@27 T@Field_4297_4298) ) (! (= (HasDirectPerm_4284_4298 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_4245_2517_4298#PolymorphicMapType_4245| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4284_4298 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_4245) (o_2@@28 T@Ref) (f_4@@28 T@Field_4284_53) ) (! (= (HasDirectPerm_4284_53 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_4245_2517_53#PolymorphicMapType_4245| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4284_53 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4224) (ExhaleHeap@@9 T@PolymorphicMapType_4224) (Mask@@31 T@PolymorphicMapType_4245) (o_12@@0 T@Ref) (f_16@@39 T@Field_8171_8176) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_8158_13528 Mask@@31 o_12@@0 f_16@@39) (= (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@13) o_12@@0 f_16@@39) (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| ExhaleHeap@@9) o_12@@0 f_16@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| ExhaleHeap@@9) o_12@@0 f_16@@39))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4224) (ExhaleHeap@@10 T@PolymorphicMapType_4224) (Mask@@32 T@PolymorphicMapType_4245) (o_12@@1 T@Ref) (f_16@@40 T@Field_8158_8159) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_8158_8159 Mask@@32 o_12@@1 f_16@@40) (= (select (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@14) o_12@@1 f_16@@40) (select (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| ExhaleHeap@@10) o_12@@1 f_16@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| ExhaleHeap@@10) o_12@@1 f_16@@40))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4224) (ExhaleHeap@@11 T@PolymorphicMapType_4224) (Mask@@33 T@PolymorphicMapType_4245) (o_12@@2 T@Ref) (f_16@@41 T@Field_8158_1245) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_8158_1245 Mask@@33 o_12@@2 f_16@@41) (= (select (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@15) o_12@@2 f_16@@41) (select (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| ExhaleHeap@@11) o_12@@2 f_16@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| ExhaleHeap@@11) o_12@@2 f_16@@41))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4224) (ExhaleHeap@@12 T@PolymorphicMapType_4224) (Mask@@34 T@PolymorphicMapType_4245) (o_12@@3 T@Ref) (f_16@@42 T@Field_8158_4298) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_8158_4298 Mask@@34 o_12@@3 f_16@@42) (= (select (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@16) o_12@@3 f_16@@42) (select (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| ExhaleHeap@@12) o_12@@3 f_16@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| ExhaleHeap@@12) o_12@@3 f_16@@42))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4224) (ExhaleHeap@@13 T@PolymorphicMapType_4224) (Mask@@35 T@PolymorphicMapType_4245) (o_12@@4 T@Ref) (f_16@@43 T@Field_8158_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_8158_53 Mask@@35 o_12@@4 f_16@@43) (= (select (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@17) o_12@@4 f_16@@43) (select (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| ExhaleHeap@@13) o_12@@4 f_16@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| ExhaleHeap@@13) o_12@@4 f_16@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4224) (ExhaleHeap@@14 T@PolymorphicMapType_4224) (Mask@@36 T@PolymorphicMapType_4245) (o_12@@5 T@Ref) (f_16@@44 T@Field_4284_8176) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_4284_12367 Mask@@36 o_12@@5 f_16@@44) (= (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@18) o_12@@5 f_16@@44) (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| ExhaleHeap@@14) o_12@@5 f_16@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| ExhaleHeap@@14) o_12@@5 f_16@@44))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4224) (ExhaleHeap@@15 T@PolymorphicMapType_4224) (Mask@@37 T@PolymorphicMapType_4245) (o_12@@6 T@Ref) (f_16@@45 T@Field_4284_8159) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_4284_8159 Mask@@37 o_12@@6 f_16@@45) (= (select (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@19) o_12@@6 f_16@@45) (select (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| ExhaleHeap@@15) o_12@@6 f_16@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| ExhaleHeap@@15) o_12@@6 f_16@@45))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4224) (ExhaleHeap@@16 T@PolymorphicMapType_4224) (Mask@@38 T@PolymorphicMapType_4245) (o_12@@7 T@Ref) (f_16@@46 T@Field_7615_1245) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_4284_1245 Mask@@38 o_12@@7 f_16@@46) (= (select (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@20) o_12@@7 f_16@@46) (select (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| ExhaleHeap@@16) o_12@@7 f_16@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| ExhaleHeap@@16) o_12@@7 f_16@@46))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4224) (ExhaleHeap@@17 T@PolymorphicMapType_4224) (Mask@@39 T@PolymorphicMapType_4245) (o_12@@8 T@Ref) (f_16@@47 T@Field_4297_4298) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_4284_4298 Mask@@39 o_12@@8 f_16@@47) (= (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@21) o_12@@8 f_16@@47) (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| ExhaleHeap@@17) o_12@@8 f_16@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| ExhaleHeap@@17) o_12@@8 f_16@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4224) (ExhaleHeap@@18 T@PolymorphicMapType_4224) (Mask@@40 T@PolymorphicMapType_4245) (o_12@@9 T@Ref) (f_16@@48 T@Field_4284_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_4284_53 Mask@@40 o_12@@9 f_16@@48) (= (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@22) o_12@@9 f_16@@48) (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| ExhaleHeap@@18) o_12@@9 f_16@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| ExhaleHeap@@18) o_12@@9 f_16@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_4284_8176) ) (! (= (select (|PolymorphicMapType_4245_2517_22153#PolymorphicMapType_4245| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4245_2517_22153#PolymorphicMapType_4245| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_4297_4298) ) (! (= (select (|PolymorphicMapType_4245_2517_4298#PolymorphicMapType_4245| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4245_2517_4298#PolymorphicMapType_4245| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_4284_53) ) (! (= (select (|PolymorphicMapType_4245_2517_53#PolymorphicMapType_4245| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4245_2517_53#PolymorphicMapType_4245| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_7615_1245) ) (! (= (select (|PolymorphicMapType_4245_2517_1245#PolymorphicMapType_4245| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4245_2517_1245#PolymorphicMapType_4245| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_4284_8159) ) (! (= (select (|PolymorphicMapType_4245_2517_2545#PolymorphicMapType_4245| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4245_2517_2545#PolymorphicMapType_4245| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_8171_8176) ) (! (= (select (|PolymorphicMapType_4245_2544_21739#PolymorphicMapType_4245| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4245_2544_21739#PolymorphicMapType_4245| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_8158_4298) ) (! (= (select (|PolymorphicMapType_4245_2544_4298#PolymorphicMapType_4245| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4245_2544_4298#PolymorphicMapType_4245| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_8158_53) ) (! (= (select (|PolymorphicMapType_4245_2544_53#PolymorphicMapType_4245| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4245_2544_53#PolymorphicMapType_4245| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_8158_1245) ) (! (= (select (|PolymorphicMapType_4245_2544_1245#PolymorphicMapType_4245| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4245_2544_1245#PolymorphicMapType_4245| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_8158_8159) ) (! (= (select (|PolymorphicMapType_4245_2544_2545#PolymorphicMapType_4245| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4245_2544_2545#PolymorphicMapType_4245| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4224) (a_2@@1 T@Ref) (i@@5 Int) ) (!  (and (= (loc_1 Heap@@23 a_2@@1 i@@5) (|loc'| Heap@@23 a_2@@1 i@@5)) (dummyFunction_2538 (|loc#triggerStateless| a_2@@1 i@@5)))
 :qid |stdinbpl.212:15|
 :skolemid |22|
 :pattern ( (loc_1 Heap@@23 a_2@@1 i@@5))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4245) (SummandMask1 T@PolymorphicMapType_4245) (SummandMask2 T@PolymorphicMapType_4245) (o_2@@39 T@Ref) (f_4@@39 T@Field_4284_8176) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4245_2517_22153#PolymorphicMapType_4245| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_4245_2517_22153#PolymorphicMapType_4245| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_4245_2517_22153#PolymorphicMapType_4245| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4245_2517_22153#PolymorphicMapType_4245| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4245_2517_22153#PolymorphicMapType_4245| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4245_2517_22153#PolymorphicMapType_4245| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4245) (SummandMask1@@0 T@PolymorphicMapType_4245) (SummandMask2@@0 T@PolymorphicMapType_4245) (o_2@@40 T@Ref) (f_4@@40 T@Field_4297_4298) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4245_2517_4298#PolymorphicMapType_4245| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_4245_2517_4298#PolymorphicMapType_4245| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_4245_2517_4298#PolymorphicMapType_4245| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4245_2517_4298#PolymorphicMapType_4245| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4245_2517_4298#PolymorphicMapType_4245| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4245_2517_4298#PolymorphicMapType_4245| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4245) (SummandMask1@@1 T@PolymorphicMapType_4245) (SummandMask2@@1 T@PolymorphicMapType_4245) (o_2@@41 T@Ref) (f_4@@41 T@Field_4284_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4245_2517_53#PolymorphicMapType_4245| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_4245_2517_53#PolymorphicMapType_4245| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_4245_2517_53#PolymorphicMapType_4245| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4245_2517_53#PolymorphicMapType_4245| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4245_2517_53#PolymorphicMapType_4245| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4245_2517_53#PolymorphicMapType_4245| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4245) (SummandMask1@@2 T@PolymorphicMapType_4245) (SummandMask2@@2 T@PolymorphicMapType_4245) (o_2@@42 T@Ref) (f_4@@42 T@Field_7615_1245) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4245_2517_1245#PolymorphicMapType_4245| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_4245_2517_1245#PolymorphicMapType_4245| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_4245_2517_1245#PolymorphicMapType_4245| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4245_2517_1245#PolymorphicMapType_4245| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4245_2517_1245#PolymorphicMapType_4245| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4245_2517_1245#PolymorphicMapType_4245| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4245) (SummandMask1@@3 T@PolymorphicMapType_4245) (SummandMask2@@3 T@PolymorphicMapType_4245) (o_2@@43 T@Ref) (f_4@@43 T@Field_4284_8159) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4245_2517_2545#PolymorphicMapType_4245| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_4245_2517_2545#PolymorphicMapType_4245| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_4245_2517_2545#PolymorphicMapType_4245| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4245_2517_2545#PolymorphicMapType_4245| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4245_2517_2545#PolymorphicMapType_4245| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4245_2517_2545#PolymorphicMapType_4245| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4245) (SummandMask1@@4 T@PolymorphicMapType_4245) (SummandMask2@@4 T@PolymorphicMapType_4245) (o_2@@44 T@Ref) (f_4@@44 T@Field_8171_8176) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4245_2544_21739#PolymorphicMapType_4245| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_4245_2544_21739#PolymorphicMapType_4245| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_4245_2544_21739#PolymorphicMapType_4245| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4245_2544_21739#PolymorphicMapType_4245| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4245_2544_21739#PolymorphicMapType_4245| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4245_2544_21739#PolymorphicMapType_4245| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4245) (SummandMask1@@5 T@PolymorphicMapType_4245) (SummandMask2@@5 T@PolymorphicMapType_4245) (o_2@@45 T@Ref) (f_4@@45 T@Field_8158_4298) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4245_2544_4298#PolymorphicMapType_4245| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_4245_2544_4298#PolymorphicMapType_4245| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_4245_2544_4298#PolymorphicMapType_4245| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4245_2544_4298#PolymorphicMapType_4245| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4245_2544_4298#PolymorphicMapType_4245| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4245_2544_4298#PolymorphicMapType_4245| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4245) (SummandMask1@@6 T@PolymorphicMapType_4245) (SummandMask2@@6 T@PolymorphicMapType_4245) (o_2@@46 T@Ref) (f_4@@46 T@Field_8158_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4245_2544_53#PolymorphicMapType_4245| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_4245_2544_53#PolymorphicMapType_4245| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_4245_2544_53#PolymorphicMapType_4245| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4245_2544_53#PolymorphicMapType_4245| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4245_2544_53#PolymorphicMapType_4245| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4245_2544_53#PolymorphicMapType_4245| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_4245) (SummandMask1@@7 T@PolymorphicMapType_4245) (SummandMask2@@7 T@PolymorphicMapType_4245) (o_2@@47 T@Ref) (f_4@@47 T@Field_8158_1245) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_4245_2544_1245#PolymorphicMapType_4245| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_4245_2544_1245#PolymorphicMapType_4245| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_4245_2544_1245#PolymorphicMapType_4245| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4245_2544_1245#PolymorphicMapType_4245| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4245_2544_1245#PolymorphicMapType_4245| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4245_2544_1245#PolymorphicMapType_4245| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_4245) (SummandMask1@@8 T@PolymorphicMapType_4245) (SummandMask2@@8 T@PolymorphicMapType_4245) (o_2@@48 T@Ref) (f_4@@48 T@Field_8158_8159) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_4245_2544_2545#PolymorphicMapType_4245| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_4245_2544_2545#PolymorphicMapType_4245| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_4245_2544_2545#PolymorphicMapType_4245| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4245_2544_2545#PolymorphicMapType_4245| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4245_2544_2545#PolymorphicMapType_4245| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4245_2544_2545#PolymorphicMapType_4245| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((s_2@@3 T@Ref) (i@@6 Int) ) (! (= (getPredWandId_2544_2545 (P s_2@@3 i@@6)) 0)
 :qid |stdinbpl.262:15|
 :skolemid |27|
 :pattern ( (P s_2@@3 i@@6))
)))
(assert (forall ((s_2@@4 T@Ref) (i@@7 Int) ) (! (= (PredicateMaskField_2544 (P s_2@@4 i@@7)) (|P#sm| s_2@@4 i@@7))
 :qid |stdinbpl.254:15|
 :skolemid |25|
 :pattern ( (PredicateMaskField_2544 (P s_2@@4 i@@7)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4224) (o_11 T@Ref) (f_17 T@Field_8171_8176) (v T@PolymorphicMapType_4773) ) (! (succHeap Heap@@24 (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@24) (store (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@24) o_11 f_17 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@24) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@24) (store (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@24) o_11 f_17 v)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4224) (o_11@@0 T@Ref) (f_17@@0 T@Field_8158_8159) (v@@0 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@25) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@25) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@25) (store (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@25) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@25) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@25) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@25) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@25) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@25) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@25) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@25) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@25) (store (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@25) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@25) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@25) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@25) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@25) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@25) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4224) (o_11@@1 T@Ref) (f_17@@1 T@Field_8158_1245) (v@@1 Int) ) (! (succHeap Heap@@26 (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@26) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@26) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@26) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@26) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@26) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@26) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@26) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@26) (store (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@26) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@26) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@26) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@26) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@26) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@26) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@26) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@26) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@26) (store (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@26) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4224) (o_11@@2 T@Ref) (f_17@@2 T@Field_8158_4298) (v@@2 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@27) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@27) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@27) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@27) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@27) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@27) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@27) (store (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@27) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@27) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@27) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@27) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@27) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@27) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@27) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@27) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@27) (store (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@27) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@27) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4224) (o_11@@3 T@Ref) (f_17@@3 T@Field_8158_53) (v@@3 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@28) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@28) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@28) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@28) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@28) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@28) (store (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@28) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@28) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@28) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@28) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@28) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@28) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@28) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@28) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@28) (store (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@28) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@28) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@28) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4224) (o_11@@4 T@Ref) (f_17@@4 T@Field_4284_8176) (v@@4 T@PolymorphicMapType_4773) ) (! (succHeap Heap@@29 (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@29) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@29) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@29) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@29) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@29) (store (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@29) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@29) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@29) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@29) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@29) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@29) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@29) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@29) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@29) (store (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@29) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@29) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@29) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@29) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4224) (o_11@@5 T@Ref) (f_17@@5 T@Field_4284_8159) (v@@5 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@30) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@30) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@30) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@30) (store (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@30) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@30) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@30) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@30) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@30) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@30) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@30) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@30) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@30) (store (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@30) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@30) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@30) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@30) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@30) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_4224) (o_11@@6 T@Ref) (f_17@@6 T@Field_7615_1245) (v@@6 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@31) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@31) (store (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@31) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@31) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@31) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@31) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@31) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@31) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@31) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@31) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@31) (store (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@31) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@31) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@31) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@31) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@31) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@31) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@31) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_4224) (o_11@@7 T@Ref) (f_17@@7 T@Field_4297_4298) (v@@7 T@Ref) ) (! (succHeap Heap@@32 (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@32) (store (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@32) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@32) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@32) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@32) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@32) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@32) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@32) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@32) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4224 (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@32) (store (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@32) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@32) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@32) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@32) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@32) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@32) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@32) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@32) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_4224) (o_11@@8 T@Ref) (f_17@@8 T@Field_4284_53) (v@@8 Bool) ) (! (succHeap Heap@@33 (PolymorphicMapType_4224 (store (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@33) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4224 (store (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@33) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_2517_1245#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_2544_2545#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_4284_8159#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_4284_12409#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_8158_53#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_8158_4298#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_8158_1245#PolymorphicMapType_4224| Heap@@33) (|PolymorphicMapType_4224_8158_13570#PolymorphicMapType_4224| Heap@@33)))
)))
(assert (forall ((o_11@@9 T@Ref) (f_10 T@Field_4297_4298) (Heap@@34 T@PolymorphicMapType_4224) ) (!  (=> (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@34) o_11@@9 $allocated) (select (|PolymorphicMapType_4224_2385_53#PolymorphicMapType_4224| Heap@@34) (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@34) o_11@@9 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4224_2388_2389#PolymorphicMapType_4224| Heap@@34) o_11@@9 f_10))
)))
(assert (forall ((p@@2 T@Field_8158_8159) (v_1@@1 T@FrameType) (q T@Field_8158_8159) (w@@1 T@FrameType) (r T@Field_8158_8159) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8158_8158 p@@2 v_1@@1 q w@@1) (InsidePredicate_8158_8158 q w@@1 r u)) (InsidePredicate_8158_8158 p@@2 v_1@@1 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8158_8158 p@@2 v_1@@1 q w@@1) (InsidePredicate_8158_8158 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_8158_8159) (v_1@@2 T@FrameType) (q@@0 T@Field_8158_8159) (w@@2 T@FrameType) (r@@0 T@Field_4284_8159) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8158_8158 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8158_4284 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_8158_4284 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8158_8158 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8158_4284 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_8158_8159) (v_1@@3 T@FrameType) (q@@1 T@Field_4284_8159) (w@@3 T@FrameType) (r@@1 T@Field_8158_8159) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8158_4284 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4284_8158 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_8158_8158 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8158_4284 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4284_8158 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_8158_8159) (v_1@@4 T@FrameType) (q@@2 T@Field_4284_8159) (w@@4 T@FrameType) (r@@2 T@Field_4284_8159) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8158_4284 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4284_4284 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_8158_4284 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8158_4284 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4284_4284 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4284_8159) (v_1@@5 T@FrameType) (q@@3 T@Field_8158_8159) (w@@5 T@FrameType) (r@@3 T@Field_8158_8159) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4284_8158 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8158_8158 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4284_8158 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4284_8158 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8158_8158 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4284_8159) (v_1@@6 T@FrameType) (q@@4 T@Field_8158_8159) (w@@6 T@FrameType) (r@@4 T@Field_4284_8159) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4284_8158 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8158_4284 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4284_4284 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4284_8158 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8158_4284 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4284_8159) (v_1@@7 T@FrameType) (q@@5 T@Field_4284_8159) (w@@7 T@FrameType) (r@@5 T@Field_8158_8159) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4284_4284 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4284_8158 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4284_8158 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4284_4284 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4284_8158 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4284_8159) (v_1@@8 T@FrameType) (q@@6 T@Field_4284_8159) (w@@8 T@FrameType) (r@@6 T@Field_4284_8159) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4284_4284 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4284_4284 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4284_4284 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4284_4284 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4284_4284 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |loc#definedness|)
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
