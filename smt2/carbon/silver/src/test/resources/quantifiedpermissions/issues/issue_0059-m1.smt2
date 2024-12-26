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
(declare-sort T@Field_8455_53 0)
(declare-sort T@Field_8468_8469 0)
(declare-sort T@Field_14635_3259 0)
(declare-sort T@Field_14683_14684 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14697_14702 0)
(declare-sort T@Field_5205_3259 0)
(declare-sort T@Field_5205_53 0)
(declare-sort T@Field_5205_8469 0)
(declare-sort T@Field_5200_5206 0)
(declare-sort T@Field_5200_14702 0)
(declare-datatypes ((T@PolymorphicMapType_8416 0)) (((PolymorphicMapType_8416 (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| (Array T@Ref T@Field_14635_3259 Real)) (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| (Array T@Ref T@Field_14683_14684 Real)) (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| (Array T@Ref T@Field_5200_5206 Real)) (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| (Array T@Ref T@Field_8455_53 Real)) (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| (Array T@Ref T@Field_8468_8469 Real)) (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| (Array T@Ref T@Field_5200_14702 Real)) (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| (Array T@Ref T@Field_5205_3259 Real)) (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| (Array T@Ref T@Field_5205_53 Real)) (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| (Array T@Ref T@Field_5205_8469 Real)) (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| (Array T@Ref T@Field_14697_14702 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8944 0)) (((PolymorphicMapType_8944 (|PolymorphicMapType_8944_5200_3259#PolymorphicMapType_8944| (Array T@Ref T@Field_14635_3259 Bool)) (|PolymorphicMapType_8944_5200_53#PolymorphicMapType_8944| (Array T@Ref T@Field_8455_53 Bool)) (|PolymorphicMapType_8944_5200_8469#PolymorphicMapType_8944| (Array T@Ref T@Field_8468_8469 Bool)) (|PolymorphicMapType_8944_5200_14684#PolymorphicMapType_8944| (Array T@Ref T@Field_5200_5206 Bool)) (|PolymorphicMapType_8944_5200_25481#PolymorphicMapType_8944| (Array T@Ref T@Field_5200_14702 Bool)) (|PolymorphicMapType_8944_14683_3259#PolymorphicMapType_8944| (Array T@Ref T@Field_5205_3259 Bool)) (|PolymorphicMapType_8944_14683_53#PolymorphicMapType_8944| (Array T@Ref T@Field_5205_53 Bool)) (|PolymorphicMapType_8944_14683_8469#PolymorphicMapType_8944| (Array T@Ref T@Field_5205_8469 Bool)) (|PolymorphicMapType_8944_14683_14684#PolymorphicMapType_8944| (Array T@Ref T@Field_14683_14684 Bool)) (|PolymorphicMapType_8944_14683_26529#PolymorphicMapType_8944| (Array T@Ref T@Field_14697_14702 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8395 0)) (((PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| (Array T@Ref T@Field_8455_53 Bool)) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| (Array T@Ref T@Field_8468_8469 T@Ref)) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| (Array T@Ref T@Field_14635_3259 Int)) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| (Array T@Ref T@Field_14683_14684 T@FrameType)) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| (Array T@Ref T@Field_14697_14702 T@PolymorphicMapType_8944)) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| (Array T@Ref T@Field_5205_3259 Int)) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| (Array T@Ref T@Field_5205_53 Bool)) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| (Array T@Ref T@Field_5205_8469 T@Ref)) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| (Array T@Ref T@Field_5200_5206 T@FrameType)) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| (Array T@Ref T@Field_5200_14702 T@PolymorphicMapType_8944)) ) ) ))
(declare-fun $allocated () T@Field_8455_53)
(declare-fun f_7 () T@Field_14635_3259)
(declare-fun succHeap (T@PolymorphicMapType_8395 T@PolymorphicMapType_8395) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8395 T@PolymorphicMapType_8395) Bool)
(declare-fun state (T@PolymorphicMapType_8395 T@PolymorphicMapType_8416) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8416) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8944)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun inv ((Array T@Ref Bool)) T@Field_14683_14684)
(declare-fun IsPredicateField_5205_5206 (T@Field_14683_14684) Bool)
(declare-fun |inv#trigger_5205| (T@PolymorphicMapType_8395 T@Field_14683_14684) Bool)
(declare-fun |inv#everUsed_5205| (T@Field_14683_14684) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8395 T@PolymorphicMapType_8395 T@PolymorphicMapType_8416) Bool)
(declare-fun IsPredicateField_5200_24334 (T@Field_5200_5206) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5200 (T@Field_5200_5206) T@Field_5200_14702)
(declare-fun HasDirectPerm_5200_5206 (T@PolymorphicMapType_8416 T@Ref T@Field_5200_5206) Bool)
(declare-fun PredicateMaskField_5205 (T@Field_14683_14684) T@Field_14697_14702)
(declare-fun HasDirectPerm_5205_5206 (T@PolymorphicMapType_8416 T@Ref T@Field_14683_14684) Bool)
(declare-fun IsWandField_5200_27694 (T@Field_5200_5206) Bool)
(declare-fun WandMaskField_5200 (T@Field_5200_5206) T@Field_5200_14702)
(declare-fun IsWandField_5205_27337 (T@Field_14683_14684) Bool)
(declare-fun WandMaskField_5205 (T@Field_14683_14684) T@Field_14697_14702)
(declare-fun |inv#sm| ((Array T@Ref Bool)) T@Field_14697_14702)
(declare-fun dummyHeap () T@PolymorphicMapType_8395)
(declare-fun ZeroMask () T@PolymorphicMapType_8416)
(declare-fun InsidePredicate_14683_14683 (T@Field_14683_14684 T@FrameType T@Field_14683_14684 T@FrameType) Bool)
(declare-fun InsidePredicate_8455_8455 (T@Field_5200_5206 T@FrameType T@Field_5200_5206 T@FrameType) Bool)
(declare-fun IsPredicateField_5200_3259 (T@Field_14635_3259) Bool)
(declare-fun IsWandField_5200_3259 (T@Field_14635_3259) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5205_34626 (T@Field_14697_14702) Bool)
(declare-fun IsWandField_5205_34642 (T@Field_14697_14702) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5205_8469 (T@Field_5205_8469) Bool)
(declare-fun IsWandField_5205_8469 (T@Field_5205_8469) Bool)
(declare-fun IsPredicateField_5205_53 (T@Field_5205_53) Bool)
(declare-fun IsWandField_5205_53 (T@Field_5205_53) Bool)
(declare-fun IsPredicateField_5205_3259 (T@Field_5205_3259) Bool)
(declare-fun IsWandField_5205_3259 (T@Field_5205_3259) Bool)
(declare-fun IsPredicateField_5200_33795 (T@Field_5200_14702) Bool)
(declare-fun IsWandField_5200_33811 (T@Field_5200_14702) Bool)
(declare-fun IsPredicateField_5200_8469 (T@Field_8468_8469) Bool)
(declare-fun IsWandField_5200_8469 (T@Field_8468_8469) Bool)
(declare-fun IsPredicateField_5200_53 (T@Field_8455_53) Bool)
(declare-fun IsWandField_5200_53 (T@Field_8455_53) Bool)
(declare-fun HasDirectPerm_5200_23721 (T@PolymorphicMapType_8416 T@Ref T@Field_5200_14702) Bool)
(declare-fun HasDirectPerm_5200_8469 (T@PolymorphicMapType_8416 T@Ref T@Field_8468_8469) Bool)
(declare-fun HasDirectPerm_5200_53 (T@PolymorphicMapType_8416 T@Ref T@Field_8455_53) Bool)
(declare-fun HasDirectPerm_5200_3259 (T@PolymorphicMapType_8416 T@Ref T@Field_14635_3259) Bool)
(declare-fun HasDirectPerm_5205_22648 (T@PolymorphicMapType_8416 T@Ref T@Field_14697_14702) Bool)
(declare-fun HasDirectPerm_5205_8469 (T@PolymorphicMapType_8416 T@Ref T@Field_5205_8469) Bool)
(declare-fun HasDirectPerm_5205_53 (T@PolymorphicMapType_8416 T@Ref T@Field_5205_53) Bool)
(declare-fun HasDirectPerm_5205_3259 (T@PolymorphicMapType_8416 T@Ref T@Field_5205_3259) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8416 T@PolymorphicMapType_8416 T@PolymorphicMapType_8416) Bool)
(declare-fun getPredWandId_5205_5206 (T@Field_14683_14684) Int)
(declare-fun |inv#condqp1| (T@PolymorphicMapType_8395 (Array T@Ref Bool)) Int)
(declare-fun |sk_inv#condqp1| (Int Int) T@Ref)
(declare-fun InsidePredicate_14683_8455 (T@Field_14683_14684 T@FrameType T@Field_5200_5206 T@FrameType) Bool)
(declare-fun InsidePredicate_8455_14683 (T@Field_5200_5206 T@FrameType T@Field_14683_14684 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_8395) (Heap1 T@PolymorphicMapType_8395) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8395) (Mask T@PolymorphicMapType_8416) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8395) (Heap1@@0 T@PolymorphicMapType_8395) (Heap2 T@PolymorphicMapType_8395) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_14697_14702) ) (!  (not (select (|PolymorphicMapType_8944_14683_26529#PolymorphicMapType_8944| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_14683_26529#PolymorphicMapType_8944| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14683_14684) ) (!  (not (select (|PolymorphicMapType_8944_14683_14684#PolymorphicMapType_8944| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_14683_14684#PolymorphicMapType_8944| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5205_8469) ) (!  (not (select (|PolymorphicMapType_8944_14683_8469#PolymorphicMapType_8944| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_14683_8469#PolymorphicMapType_8944| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5205_53) ) (!  (not (select (|PolymorphicMapType_8944_14683_53#PolymorphicMapType_8944| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_14683_53#PolymorphicMapType_8944| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5205_3259) ) (!  (not (select (|PolymorphicMapType_8944_14683_3259#PolymorphicMapType_8944| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_14683_3259#PolymorphicMapType_8944| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5200_14702) ) (!  (not (select (|PolymorphicMapType_8944_5200_25481#PolymorphicMapType_8944| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_5200_25481#PolymorphicMapType_8944| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5200_5206) ) (!  (not (select (|PolymorphicMapType_8944_5200_14684#PolymorphicMapType_8944| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_5200_14684#PolymorphicMapType_8944| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8468_8469) ) (!  (not (select (|PolymorphicMapType_8944_5200_8469#PolymorphicMapType_8944| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_5200_8469#PolymorphicMapType_8944| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8455_53) ) (!  (not (select (|PolymorphicMapType_8944_5200_53#PolymorphicMapType_8944| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_5200_53#PolymorphicMapType_8944| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_14635_3259) ) (!  (not (select (|PolymorphicMapType_8944_5200_3259#PolymorphicMapType_8944| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8944_5200_3259#PolymorphicMapType_8944| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.294:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s_2 (Array T@Ref Bool)) ) (! (IsPredicateField_5205_5206 (inv s_2))
 :qid |stdinbpl.407:15|
 :skolemid |83|
 :pattern ( (inv s_2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8395) (s_2@@0 (Array T@Ref Bool)) ) (! (|inv#everUsed_5205| (inv s_2@@0))
 :qid |stdinbpl.426:15|
 :skolemid |87|
 :pattern ( (|inv#trigger_5205| Heap@@0 (inv s_2@@0)))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.297:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8395) (ExhaleHeap T@PolymorphicMapType_8395) (Mask@@0 T@PolymorphicMapType_8416) (pm_f_9 T@Field_5200_5206) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5200_5206 Mask@@0 null pm_f_9) (IsPredicateField_5200_24334 pm_f_9)) (= (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@1) null (PredicateMaskField_5200 pm_f_9)) (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| ExhaleHeap) null (PredicateMaskField_5200 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_5200_24334 pm_f_9) (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| ExhaleHeap) null (PredicateMaskField_5200 pm_f_9)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8395) (ExhaleHeap@@0 T@PolymorphicMapType_8395) (Mask@@1 T@PolymorphicMapType_8416) (pm_f_9@@0 T@Field_14683_14684) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5205_5206 Mask@@1 null pm_f_9@@0) (IsPredicateField_5205_5206 pm_f_9@@0)) (= (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@2) null (PredicateMaskField_5205 pm_f_9@@0)) (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| ExhaleHeap@@0) null (PredicateMaskField_5205 pm_f_9@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_5205_5206 pm_f_9@@0) (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| ExhaleHeap@@0) null (PredicateMaskField_5205 pm_f_9@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8395) (ExhaleHeap@@1 T@PolymorphicMapType_8395) (Mask@@2 T@PolymorphicMapType_8416) (pm_f_9@@1 T@Field_5200_5206) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5200_5206 Mask@@2 null pm_f_9@@1) (IsWandField_5200_27694 pm_f_9@@1)) (= (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@3) null (WandMaskField_5200 pm_f_9@@1)) (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| ExhaleHeap@@1) null (WandMaskField_5200 pm_f_9@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_5200_27694 pm_f_9@@1) (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| ExhaleHeap@@1) null (WandMaskField_5200 pm_f_9@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8395) (ExhaleHeap@@2 T@PolymorphicMapType_8395) (Mask@@3 T@PolymorphicMapType_8416) (pm_f_9@@2 T@Field_14683_14684) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5205_5206 Mask@@3 null pm_f_9@@2) (IsWandField_5205_27337 pm_f_9@@2)) (= (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@4) null (WandMaskField_5205 pm_f_9@@2)) (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| ExhaleHeap@@2) null (WandMaskField_5205 pm_f_9@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_5205_27337 pm_f_9@@2) (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| ExhaleHeap@@2) null (WandMaskField_5205 pm_f_9@@2)))
)))
(assert (forall ((s_2@@1 (Array T@Ref Bool)) (s2 (Array T@Ref Bool)) ) (!  (=> (= (inv s_2@@1) (inv s2)) (= s_2@@1 s2))
 :qid |stdinbpl.417:15|
 :skolemid |85|
 :pattern ( (inv s_2@@1) (inv s2))
)))
(assert (forall ((s_2@@2 (Array T@Ref Bool)) (s2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|inv#sm| s_2@@2) (|inv#sm| s2@@0)) (= s_2@@2 s2@@0))
 :qid |stdinbpl.421:15|
 :skolemid |86|
 :pattern ( (|inv#sm| s_2@@2) (|inv#sm| s2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8395) (ExhaleHeap@@3 T@PolymorphicMapType_8395) (Mask@@4 T@PolymorphicMapType_8416) (pm_f_9@@3 T@Field_5200_5206) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_5200_5206 Mask@@4 null pm_f_9@@3) (IsPredicateField_5200_24334 pm_f_9@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_14635_3259) ) (!  (=> (select (|PolymorphicMapType_8944_5200_3259#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@5) null (PredicateMaskField_5200 pm_f_9@@3))) o2_9 f_24) (= (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@5) o2_9 f_24) (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_8455_53) ) (!  (=> (select (|PolymorphicMapType_8944_5200_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@5) null (PredicateMaskField_5200 pm_f_9@@3))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@5) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_8468_8469) ) (!  (=> (select (|PolymorphicMapType_8944_5200_8469#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@5) null (PredicateMaskField_5200 pm_f_9@@3))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@5) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_5200_5206) ) (!  (=> (select (|PolymorphicMapType_8944_5200_14684#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@5) null (PredicateMaskField_5200 pm_f_9@@3))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@5) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@2 f_24@@2))
))) (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_5200_14702) ) (!  (=> (select (|PolymorphicMapType_8944_5200_25481#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@5) null (PredicateMaskField_5200 pm_f_9@@3))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@5) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@3 f_24@@3))
))) (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_5205_3259) ) (!  (=> (select (|PolymorphicMapType_8944_14683_3259#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@5) null (PredicateMaskField_5200 pm_f_9@@3))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@5) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@4 f_24@@4))
))) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_5205_53) ) (!  (=> (select (|PolymorphicMapType_8944_14683_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@5) null (PredicateMaskField_5200 pm_f_9@@3))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@5) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_5205_8469) ) (!  (=> (select (|PolymorphicMapType_8944_14683_8469#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@5) null (PredicateMaskField_5200 pm_f_9@@3))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@5) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@6 f_24@@6))
))) (forall ((o2_9@@7 T@Ref) (f_24@@7 T@Field_14683_14684) ) (!  (=> (select (|PolymorphicMapType_8944_14683_14684#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@5) null (PredicateMaskField_5200 pm_f_9@@3))) o2_9@@7 f_24@@7) (= (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@5) o2_9@@7 f_24@@7) (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@7 f_24@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@7 f_24@@7))
))) (forall ((o2_9@@8 T@Ref) (f_24@@8 T@Field_14697_14702) ) (!  (=> (select (|PolymorphicMapType_8944_14683_26529#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@5) null (PredicateMaskField_5200 pm_f_9@@3))) o2_9@@8 f_24@@8) (= (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@5) o2_9@@8 f_24@@8) (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@8 f_24@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| ExhaleHeap@@3) o2_9@@8 f_24@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_5200_24334 pm_f_9@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8395) (ExhaleHeap@@4 T@PolymorphicMapType_8395) (Mask@@5 T@PolymorphicMapType_8416) (pm_f_9@@4 T@Field_14683_14684) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_5205_5206 Mask@@5 null pm_f_9@@4) (IsPredicateField_5205_5206 pm_f_9@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_9@@9 T@Ref) (f_24@@9 T@Field_14635_3259) ) (!  (=> (select (|PolymorphicMapType_8944_5200_3259#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@6) null (PredicateMaskField_5205 pm_f_9@@4))) o2_9@@9 f_24@@9) (= (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@6) o2_9@@9 f_24@@9) (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@9 f_24@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@9 f_24@@9))
)) (forall ((o2_9@@10 T@Ref) (f_24@@10 T@Field_8455_53) ) (!  (=> (select (|PolymorphicMapType_8944_5200_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@6) null (PredicateMaskField_5205 pm_f_9@@4))) o2_9@@10 f_24@@10) (= (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@6) o2_9@@10 f_24@@10) (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@10 f_24@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@10 f_24@@10))
))) (forall ((o2_9@@11 T@Ref) (f_24@@11 T@Field_8468_8469) ) (!  (=> (select (|PolymorphicMapType_8944_5200_8469#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@6) null (PredicateMaskField_5205 pm_f_9@@4))) o2_9@@11 f_24@@11) (= (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@6) o2_9@@11 f_24@@11) (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@11 f_24@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@11 f_24@@11))
))) (forall ((o2_9@@12 T@Ref) (f_24@@12 T@Field_5200_5206) ) (!  (=> (select (|PolymorphicMapType_8944_5200_14684#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@6) null (PredicateMaskField_5205 pm_f_9@@4))) o2_9@@12 f_24@@12) (= (select (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@6) o2_9@@12 f_24@@12) (select (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@12 f_24@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@12 f_24@@12))
))) (forall ((o2_9@@13 T@Ref) (f_24@@13 T@Field_5200_14702) ) (!  (=> (select (|PolymorphicMapType_8944_5200_25481#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@6) null (PredicateMaskField_5205 pm_f_9@@4))) o2_9@@13 f_24@@13) (= (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@6) o2_9@@13 f_24@@13) (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@13 f_24@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@13 f_24@@13))
))) (forall ((o2_9@@14 T@Ref) (f_24@@14 T@Field_5205_3259) ) (!  (=> (select (|PolymorphicMapType_8944_14683_3259#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@6) null (PredicateMaskField_5205 pm_f_9@@4))) o2_9@@14 f_24@@14) (= (select (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@6) o2_9@@14 f_24@@14) (select (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@14 f_24@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@14 f_24@@14))
))) (forall ((o2_9@@15 T@Ref) (f_24@@15 T@Field_5205_53) ) (!  (=> (select (|PolymorphicMapType_8944_14683_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@6) null (PredicateMaskField_5205 pm_f_9@@4))) o2_9@@15 f_24@@15) (= (select (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@6) o2_9@@15 f_24@@15) (select (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@15 f_24@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@15 f_24@@15))
))) (forall ((o2_9@@16 T@Ref) (f_24@@16 T@Field_5205_8469) ) (!  (=> (select (|PolymorphicMapType_8944_14683_8469#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@6) null (PredicateMaskField_5205 pm_f_9@@4))) o2_9@@16 f_24@@16) (= (select (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@6) o2_9@@16 f_24@@16) (select (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@16 f_24@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@16 f_24@@16))
))) (forall ((o2_9@@17 T@Ref) (f_24@@17 T@Field_14683_14684) ) (!  (=> (select (|PolymorphicMapType_8944_14683_14684#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@6) null (PredicateMaskField_5205 pm_f_9@@4))) o2_9@@17 f_24@@17) (= (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@6) o2_9@@17 f_24@@17) (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@17 f_24@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@17 f_24@@17))
))) (forall ((o2_9@@18 T@Ref) (f_24@@18 T@Field_14697_14702) ) (!  (=> (select (|PolymorphicMapType_8944_14683_26529#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@6) null (PredicateMaskField_5205 pm_f_9@@4))) o2_9@@18 f_24@@18) (= (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@6) o2_9@@18 f_24@@18) (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@18 f_24@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| ExhaleHeap@@4) o2_9@@18 f_24@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_5205_5206 pm_f_9@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8395) (ExhaleHeap@@5 T@PolymorphicMapType_8395) (Mask@@6 T@PolymorphicMapType_8416) (pm_f_9@@5 T@Field_5200_5206) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_5200_5206 Mask@@6 null pm_f_9@@5) (IsWandField_5200_27694 pm_f_9@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_9@@19 T@Ref) (f_24@@19 T@Field_14635_3259) ) (!  (=> (select (|PolymorphicMapType_8944_5200_3259#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@7) null (WandMaskField_5200 pm_f_9@@5))) o2_9@@19 f_24@@19) (= (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@7) o2_9@@19 f_24@@19) (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@19 f_24@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@19 f_24@@19))
)) (forall ((o2_9@@20 T@Ref) (f_24@@20 T@Field_8455_53) ) (!  (=> (select (|PolymorphicMapType_8944_5200_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@7) null (WandMaskField_5200 pm_f_9@@5))) o2_9@@20 f_24@@20) (= (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@7) o2_9@@20 f_24@@20) (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@20 f_24@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@20 f_24@@20))
))) (forall ((o2_9@@21 T@Ref) (f_24@@21 T@Field_8468_8469) ) (!  (=> (select (|PolymorphicMapType_8944_5200_8469#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@7) null (WandMaskField_5200 pm_f_9@@5))) o2_9@@21 f_24@@21) (= (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@7) o2_9@@21 f_24@@21) (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@21 f_24@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@21 f_24@@21))
))) (forall ((o2_9@@22 T@Ref) (f_24@@22 T@Field_5200_5206) ) (!  (=> (select (|PolymorphicMapType_8944_5200_14684#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@7) null (WandMaskField_5200 pm_f_9@@5))) o2_9@@22 f_24@@22) (= (select (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@7) o2_9@@22 f_24@@22) (select (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@22 f_24@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@22 f_24@@22))
))) (forall ((o2_9@@23 T@Ref) (f_24@@23 T@Field_5200_14702) ) (!  (=> (select (|PolymorphicMapType_8944_5200_25481#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@7) null (WandMaskField_5200 pm_f_9@@5))) o2_9@@23 f_24@@23) (= (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@7) o2_9@@23 f_24@@23) (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@23 f_24@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@23 f_24@@23))
))) (forall ((o2_9@@24 T@Ref) (f_24@@24 T@Field_5205_3259) ) (!  (=> (select (|PolymorphicMapType_8944_14683_3259#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@7) null (WandMaskField_5200 pm_f_9@@5))) o2_9@@24 f_24@@24) (= (select (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@7) o2_9@@24 f_24@@24) (select (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@24 f_24@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@24 f_24@@24))
))) (forall ((o2_9@@25 T@Ref) (f_24@@25 T@Field_5205_53) ) (!  (=> (select (|PolymorphicMapType_8944_14683_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@7) null (WandMaskField_5200 pm_f_9@@5))) o2_9@@25 f_24@@25) (= (select (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@7) o2_9@@25 f_24@@25) (select (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@25 f_24@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@25 f_24@@25))
))) (forall ((o2_9@@26 T@Ref) (f_24@@26 T@Field_5205_8469) ) (!  (=> (select (|PolymorphicMapType_8944_14683_8469#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@7) null (WandMaskField_5200 pm_f_9@@5))) o2_9@@26 f_24@@26) (= (select (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@7) o2_9@@26 f_24@@26) (select (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@26 f_24@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@26 f_24@@26))
))) (forall ((o2_9@@27 T@Ref) (f_24@@27 T@Field_14683_14684) ) (!  (=> (select (|PolymorphicMapType_8944_14683_14684#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@7) null (WandMaskField_5200 pm_f_9@@5))) o2_9@@27 f_24@@27) (= (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@7) o2_9@@27 f_24@@27) (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@27 f_24@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@27 f_24@@27))
))) (forall ((o2_9@@28 T@Ref) (f_24@@28 T@Field_14697_14702) ) (!  (=> (select (|PolymorphicMapType_8944_14683_26529#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@7) null (WandMaskField_5200 pm_f_9@@5))) o2_9@@28 f_24@@28) (= (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@7) o2_9@@28 f_24@@28) (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@28 f_24@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| ExhaleHeap@@5) o2_9@@28 f_24@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_5200_27694 pm_f_9@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8395) (ExhaleHeap@@6 T@PolymorphicMapType_8395) (Mask@@7 T@PolymorphicMapType_8416) (pm_f_9@@6 T@Field_14683_14684) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_5205_5206 Mask@@7 null pm_f_9@@6) (IsWandField_5205_27337 pm_f_9@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_9@@29 T@Ref) (f_24@@29 T@Field_14635_3259) ) (!  (=> (select (|PolymorphicMapType_8944_5200_3259#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@8) null (WandMaskField_5205 pm_f_9@@6))) o2_9@@29 f_24@@29) (= (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@8) o2_9@@29 f_24@@29) (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@29 f_24@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@29 f_24@@29))
)) (forall ((o2_9@@30 T@Ref) (f_24@@30 T@Field_8455_53) ) (!  (=> (select (|PolymorphicMapType_8944_5200_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@8) null (WandMaskField_5205 pm_f_9@@6))) o2_9@@30 f_24@@30) (= (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@8) o2_9@@30 f_24@@30) (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@30 f_24@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@30 f_24@@30))
))) (forall ((o2_9@@31 T@Ref) (f_24@@31 T@Field_8468_8469) ) (!  (=> (select (|PolymorphicMapType_8944_5200_8469#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@8) null (WandMaskField_5205 pm_f_9@@6))) o2_9@@31 f_24@@31) (= (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@8) o2_9@@31 f_24@@31) (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@31 f_24@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@31 f_24@@31))
))) (forall ((o2_9@@32 T@Ref) (f_24@@32 T@Field_5200_5206) ) (!  (=> (select (|PolymorphicMapType_8944_5200_14684#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@8) null (WandMaskField_5205 pm_f_9@@6))) o2_9@@32 f_24@@32) (= (select (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@8) o2_9@@32 f_24@@32) (select (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@32 f_24@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@32 f_24@@32))
))) (forall ((o2_9@@33 T@Ref) (f_24@@33 T@Field_5200_14702) ) (!  (=> (select (|PolymorphicMapType_8944_5200_25481#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@8) null (WandMaskField_5205 pm_f_9@@6))) o2_9@@33 f_24@@33) (= (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@8) o2_9@@33 f_24@@33) (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@33 f_24@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@33 f_24@@33))
))) (forall ((o2_9@@34 T@Ref) (f_24@@34 T@Field_5205_3259) ) (!  (=> (select (|PolymorphicMapType_8944_14683_3259#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@8) null (WandMaskField_5205 pm_f_9@@6))) o2_9@@34 f_24@@34) (= (select (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@8) o2_9@@34 f_24@@34) (select (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@34 f_24@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@34 f_24@@34))
))) (forall ((o2_9@@35 T@Ref) (f_24@@35 T@Field_5205_53) ) (!  (=> (select (|PolymorphicMapType_8944_14683_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@8) null (WandMaskField_5205 pm_f_9@@6))) o2_9@@35 f_24@@35) (= (select (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@8) o2_9@@35 f_24@@35) (select (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@35 f_24@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@35 f_24@@35))
))) (forall ((o2_9@@36 T@Ref) (f_24@@36 T@Field_5205_8469) ) (!  (=> (select (|PolymorphicMapType_8944_14683_8469#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@8) null (WandMaskField_5205 pm_f_9@@6))) o2_9@@36 f_24@@36) (= (select (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@8) o2_9@@36 f_24@@36) (select (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@36 f_24@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@36 f_24@@36))
))) (forall ((o2_9@@37 T@Ref) (f_24@@37 T@Field_14683_14684) ) (!  (=> (select (|PolymorphicMapType_8944_14683_14684#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@8) null (WandMaskField_5205 pm_f_9@@6))) o2_9@@37 f_24@@37) (= (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@8) o2_9@@37 f_24@@37) (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@37 f_24@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@37 f_24@@37))
))) (forall ((o2_9@@38 T@Ref) (f_24@@38 T@Field_14697_14702) ) (!  (=> (select (|PolymorphicMapType_8944_14683_26529#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@8) null (WandMaskField_5205 pm_f_9@@6))) o2_9@@38 f_24@@38) (= (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@8) o2_9@@38 f_24@@38) (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@38 f_24@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| ExhaleHeap@@6) o2_9@@38 f_24@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_5205_27337 pm_f_9@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8395) (ExhaleHeap@@7 T@PolymorphicMapType_8395) (Mask@@8 T@PolymorphicMapType_8416) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@9) o_27 $allocated) (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| ExhaleHeap@@7) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| ExhaleHeap@@7) o_27 $allocated))
)))
(assert (forall ((p T@Field_14683_14684) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_14683_14683 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14683_14683 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_5200_5206) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8455_8455 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8455_8455 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_5200_3259 f_7)))
(assert  (not (IsWandField_5200_3259 f_7)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8395) (ExhaleHeap@@8 T@PolymorphicMapType_8395) (Mask@@9 T@PolymorphicMapType_8416) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8416) (o_2@@9 T@Ref) (f_4@@9 T@Field_14697_14702) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5205_34626 f_4@@9))) (not (IsWandField_5205_34642 f_4@@9))) (<= (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8416) (o_2@@10 T@Ref) (f_4@@10 T@Field_5205_8469) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5205_8469 f_4@@10))) (not (IsWandField_5205_8469 f_4@@10))) (<= (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8416) (o_2@@11 T@Ref) (f_4@@11 T@Field_5205_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5205_53 f_4@@11))) (not (IsWandField_5205_53 f_4@@11))) (<= (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8416) (o_2@@12 T@Ref) (f_4@@12 T@Field_14683_14684) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5205_5206 f_4@@12))) (not (IsWandField_5205_27337 f_4@@12))) (<= (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8416) (o_2@@13 T@Ref) (f_4@@13 T@Field_5205_3259) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5205_3259 f_4@@13))) (not (IsWandField_5205_3259 f_4@@13))) (<= (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8416) (o_2@@14 T@Ref) (f_4@@14 T@Field_5200_14702) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5200_33795 f_4@@14))) (not (IsWandField_5200_33811 f_4@@14))) (<= (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8416) (o_2@@15 T@Ref) (f_4@@15 T@Field_8468_8469) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5200_8469 f_4@@15))) (not (IsWandField_5200_8469 f_4@@15))) (<= (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8416) (o_2@@16 T@Ref) (f_4@@16 T@Field_8455_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5200_53 f_4@@16))) (not (IsWandField_5200_53 f_4@@16))) (<= (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8416) (o_2@@17 T@Ref) (f_4@@17 T@Field_5200_5206) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5200_24334 f_4@@17))) (not (IsWandField_5200_27694 f_4@@17))) (<= (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8416) (o_2@@18 T@Ref) (f_4@@18 T@Field_14635_3259) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5200_3259 f_4@@18))) (not (IsWandField_5200_3259 f_4@@18))) (<= (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8416) (o_2@@19 T@Ref) (f_4@@19 T@Field_5200_14702) ) (! (= (HasDirectPerm_5200_23721 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5200_23721 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8416) (o_2@@20 T@Ref) (f_4@@20 T@Field_8468_8469) ) (! (= (HasDirectPerm_5200_8469 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5200_8469 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8416) (o_2@@21 T@Ref) (f_4@@21 T@Field_8455_53) ) (! (= (HasDirectPerm_5200_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5200_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8416) (o_2@@22 T@Ref) (f_4@@22 T@Field_14635_3259) ) (! (= (HasDirectPerm_5200_3259 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5200_3259 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8416) (o_2@@23 T@Ref) (f_4@@23 T@Field_5200_5206) ) (! (= (HasDirectPerm_5200_5206 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5200_5206 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8416) (o_2@@24 T@Ref) (f_4@@24 T@Field_14697_14702) ) (! (= (HasDirectPerm_5205_22648 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5205_22648 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_8416) (o_2@@25 T@Ref) (f_4@@25 T@Field_5205_8469) ) (! (= (HasDirectPerm_5205_8469 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5205_8469 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_8416) (o_2@@26 T@Ref) (f_4@@26 T@Field_5205_53) ) (! (= (HasDirectPerm_5205_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5205_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_8416) (o_2@@27 T@Ref) (f_4@@27 T@Field_5205_3259) ) (! (= (HasDirectPerm_5205_3259 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5205_3259 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_8416) (o_2@@28 T@Ref) (f_4@@28 T@Field_14683_14684) ) (! (= (HasDirectPerm_5205_5206 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5205_5206 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8395) (ExhaleHeap@@9 T@PolymorphicMapType_8395) (Mask@@30 T@PolymorphicMapType_8416) (o_27@@0 T@Ref) (f_24@@39 T@Field_5200_14702) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_5200_23721 Mask@@30 o_27@@0 f_24@@39) (= (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@11) o_27@@0 f_24@@39) (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| ExhaleHeap@@9) o_27@@0 f_24@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| ExhaleHeap@@9) o_27@@0 f_24@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8395) (ExhaleHeap@@10 T@PolymorphicMapType_8395) (Mask@@31 T@PolymorphicMapType_8416) (o_27@@1 T@Ref) (f_24@@40 T@Field_8468_8469) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_5200_8469 Mask@@31 o_27@@1 f_24@@40) (= (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@12) o_27@@1 f_24@@40) (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| ExhaleHeap@@10) o_27@@1 f_24@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| ExhaleHeap@@10) o_27@@1 f_24@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8395) (ExhaleHeap@@11 T@PolymorphicMapType_8395) (Mask@@32 T@PolymorphicMapType_8416) (o_27@@2 T@Ref) (f_24@@41 T@Field_8455_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_5200_53 Mask@@32 o_27@@2 f_24@@41) (= (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@13) o_27@@2 f_24@@41) (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| ExhaleHeap@@11) o_27@@2 f_24@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| ExhaleHeap@@11) o_27@@2 f_24@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8395) (ExhaleHeap@@12 T@PolymorphicMapType_8395) (Mask@@33 T@PolymorphicMapType_8416) (o_27@@3 T@Ref) (f_24@@42 T@Field_14635_3259) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_5200_3259 Mask@@33 o_27@@3 f_24@@42) (= (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@14) o_27@@3 f_24@@42) (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| ExhaleHeap@@12) o_27@@3 f_24@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| ExhaleHeap@@12) o_27@@3 f_24@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8395) (ExhaleHeap@@13 T@PolymorphicMapType_8395) (Mask@@34 T@PolymorphicMapType_8416) (o_27@@4 T@Ref) (f_24@@43 T@Field_5200_5206) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_5200_5206 Mask@@34 o_27@@4 f_24@@43) (= (select (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@15) o_27@@4 f_24@@43) (select (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| ExhaleHeap@@13) o_27@@4 f_24@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| ExhaleHeap@@13) o_27@@4 f_24@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8395) (ExhaleHeap@@14 T@PolymorphicMapType_8395) (Mask@@35 T@PolymorphicMapType_8416) (o_27@@5 T@Ref) (f_24@@44 T@Field_14697_14702) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_5205_22648 Mask@@35 o_27@@5 f_24@@44) (= (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@16) o_27@@5 f_24@@44) (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| ExhaleHeap@@14) o_27@@5 f_24@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| ExhaleHeap@@14) o_27@@5 f_24@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8395) (ExhaleHeap@@15 T@PolymorphicMapType_8395) (Mask@@36 T@PolymorphicMapType_8416) (o_27@@6 T@Ref) (f_24@@45 T@Field_5205_8469) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_5205_8469 Mask@@36 o_27@@6 f_24@@45) (= (select (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@17) o_27@@6 f_24@@45) (select (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| ExhaleHeap@@15) o_27@@6 f_24@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| ExhaleHeap@@15) o_27@@6 f_24@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8395) (ExhaleHeap@@16 T@PolymorphicMapType_8395) (Mask@@37 T@PolymorphicMapType_8416) (o_27@@7 T@Ref) (f_24@@46 T@Field_5205_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_5205_53 Mask@@37 o_27@@7 f_24@@46) (= (select (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@18) o_27@@7 f_24@@46) (select (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| ExhaleHeap@@16) o_27@@7 f_24@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| ExhaleHeap@@16) o_27@@7 f_24@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8395) (ExhaleHeap@@17 T@PolymorphicMapType_8395) (Mask@@38 T@PolymorphicMapType_8416) (o_27@@8 T@Ref) (f_24@@47 T@Field_5205_3259) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_5205_3259 Mask@@38 o_27@@8 f_24@@47) (= (select (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@19) o_27@@8 f_24@@47) (select (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| ExhaleHeap@@17) o_27@@8 f_24@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| ExhaleHeap@@17) o_27@@8 f_24@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8395) (ExhaleHeap@@18 T@PolymorphicMapType_8395) (Mask@@39 T@PolymorphicMapType_8416) (o_27@@9 T@Ref) (f_24@@48 T@Field_14683_14684) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_5205_5206 Mask@@39 o_27@@9 f_24@@48) (= (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@20) o_27@@9 f_24@@48) (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| ExhaleHeap@@18) o_27@@9 f_24@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| ExhaleHeap@@18) o_27@@9 f_24@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_14697_14702) ) (! (= (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_5205_8469) ) (! (= (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_5205_53) ) (! (= (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_14683_14684) ) (! (= (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_5205_3259) ) (! (= (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_5200_14702) ) (! (= (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_8468_8469) ) (! (= (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_8455_53) ) (! (= (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_5200_5206) ) (! (= (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_14635_3259) ) (! (= (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8416) (SummandMask1 T@PolymorphicMapType_8416) (SummandMask2 T@PolymorphicMapType_8416) (o_2@@39 T@Ref) (f_4@@39 T@Field_14697_14702) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8416) (SummandMask1@@0 T@PolymorphicMapType_8416) (SummandMask2@@0 T@PolymorphicMapType_8416) (o_2@@40 T@Ref) (f_4@@40 T@Field_5205_8469) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8416) (SummandMask1@@1 T@PolymorphicMapType_8416) (SummandMask2@@1 T@PolymorphicMapType_8416) (o_2@@41 T@Ref) (f_4@@41 T@Field_5205_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8416) (SummandMask1@@2 T@PolymorphicMapType_8416) (SummandMask2@@2 T@PolymorphicMapType_8416) (o_2@@42 T@Ref) (f_4@@42 T@Field_14683_14684) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8416) (SummandMask1@@3 T@PolymorphicMapType_8416) (SummandMask2@@3 T@PolymorphicMapType_8416) (o_2@@43 T@Ref) (f_4@@43 T@Field_5205_3259) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8416) (SummandMask1@@4 T@PolymorphicMapType_8416) (SummandMask2@@4 T@PolymorphicMapType_8416) (o_2@@44 T@Ref) (f_4@@44 T@Field_5200_14702) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8416) (SummandMask1@@5 T@PolymorphicMapType_8416) (SummandMask2@@5 T@PolymorphicMapType_8416) (o_2@@45 T@Ref) (f_4@@45 T@Field_8468_8469) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8416) (SummandMask1@@6 T@PolymorphicMapType_8416) (SummandMask2@@6 T@PolymorphicMapType_8416) (o_2@@46 T@Ref) (f_4@@46 T@Field_8455_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_8416) (SummandMask1@@7 T@PolymorphicMapType_8416) (SummandMask2@@7 T@PolymorphicMapType_8416) (o_2@@47 T@Ref) (f_4@@47 T@Field_5200_5206) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_8416) (SummandMask1@@8 T@PolymorphicMapType_8416) (SummandMask2@@8 T@PolymorphicMapType_8416) (o_2@@48 T@Ref) (f_4@@48 T@Field_14635_3259) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((s_2@@3 (Array T@Ref Bool)) ) (! (= (getPredWandId_5205_5206 (inv s_2@@3)) 0)
 :qid |stdinbpl.411:15|
 :skolemid |84|
 :pattern ( (inv s_2@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8395) (o_20 T@Ref) (f_31 T@Field_14697_14702) (v T@PolymorphicMapType_8944) ) (! (succHeap Heap@@21 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@21) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@21) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@21) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@21) (store (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@21) o_20 f_31 v) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@21) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@21) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@21) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@21) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@21) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@21) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@21) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@21) (store (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@21) o_20 f_31 v) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@21) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@21) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@21) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@21) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8395) (o_20@@0 T@Ref) (f_31@@0 T@Field_14683_14684) (v@@0 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@22) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@22) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@22) (store (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@22) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@22) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@22) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@22) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@22) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@22) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@22) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@22) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@22) (store (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@22) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@22) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@22) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@22) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@22) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@22) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8395) (o_20@@1 T@Ref) (f_31@@1 T@Field_5205_3259) (v@@1 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@23) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@23) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@23) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@23) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@23) (store (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@23) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@23) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@23) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@23) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@23) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@23) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@23) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@23) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@23) (store (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@23) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@23) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@23) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@23) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8395) (o_20@@2 T@Ref) (f_31@@2 T@Field_5205_8469) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@24) (store (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@24) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@24) (store (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@24) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@24) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8395) (o_20@@3 T@Ref) (f_31@@3 T@Field_5205_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@25) (store (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@25) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@25) (store (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@25) o_20@@3 f_31@@3 v@@3) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@25) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8395) (o_20@@4 T@Ref) (f_31@@4 T@Field_5200_14702) (v@@4 T@PolymorphicMapType_8944) ) (! (succHeap Heap@@26 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@26) (store (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@26) o_20@@4 f_31@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@26) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@26) (store (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@26) o_20@@4 f_31@@4 v@@4)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_8395) (o_20@@5 T@Ref) (f_31@@5 T@Field_5200_5206) (v@@5 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@27) (store (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@27) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@27) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@27) (store (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@27) o_20@@5 f_31@@5 v@@5) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_8395) (o_20@@6 T@Ref) (f_31@@6 T@Field_14635_3259) (v@@6 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@28) (store (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@28) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@28) (store (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@28) o_20@@6 f_31@@6 v@@6) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@28) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_8395) (o_20@@7 T@Ref) (f_31@@7 T@Field_8468_8469) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@29) (store (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@29) o_20@@7 f_31@@7 v@@7) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@29) (store (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@29) o_20@@7 f_31@@7 v@@7) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@29) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_8395) (o_20@@8 T@Ref) (f_31@@8 T@Field_8455_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_8395 (store (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@30) o_20@@8 f_31@@8 v@@8) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8395 (store (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@30) o_20@@8 f_31@@8 v@@8) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@30) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@30)))
)))
(assert (forall ((s_2@@4 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_5205 (inv s_2@@4)) (|inv#sm| s_2@@4))
 :qid |stdinbpl.403:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_5205 (inv s_2@@4)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.292:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.293:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_8395) (Heap1Heap T@PolymorphicMapType_8395) (s_2@@5 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select s_2@@5 (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap s_2@@5) (|inv#condqp1| Heap1Heap s_2@@5))) (< NoPerm FullPerm))  (and (select s_2@@5 (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap s_2@@5) (|inv#condqp1| Heap1Heap s_2@@5))) (< NoPerm FullPerm))) (=> (and (select s_2@@5 (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap s_2@@5) (|inv#condqp1| Heap1Heap s_2@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap2Heap) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap s_2@@5) (|inv#condqp1| Heap1Heap s_2@@5)) f_7) (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap1Heap) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap s_2@@5) (|inv#condqp1| Heap1Heap s_2@@5)) f_7)))) (= (|inv#condqp1| Heap2Heap s_2@@5) (|inv#condqp1| Heap1Heap s_2@@5)))
 :qid |stdinbpl.437:15|
 :skolemid |88|
 :pattern ( (|inv#condqp1| Heap2Heap s_2@@5) (|inv#condqp1| Heap1Heap s_2@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((o_20@@9 T@Ref) (f_17 T@Field_8468_8469) (Heap@@31 T@PolymorphicMapType_8395) ) (!  (=> (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@31) o_20@@9 $allocated) (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@31) (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@31) o_20@@9 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@31) o_20@@9 f_17))
)))
(assert (forall ((p@@2 T@Field_14683_14684) (v_1@@1 T@FrameType) (q T@Field_14683_14684) (w@@1 T@FrameType) (r T@Field_14683_14684) (u T@FrameType) ) (!  (=> (and (InsidePredicate_14683_14683 p@@2 v_1@@1 q w@@1) (InsidePredicate_14683_14683 q w@@1 r u)) (InsidePredicate_14683_14683 p@@2 v_1@@1 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14683_14683 p@@2 v_1@@1 q w@@1) (InsidePredicate_14683_14683 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_14683_14684) (v_1@@2 T@FrameType) (q@@0 T@Field_14683_14684) (w@@2 T@FrameType) (r@@0 T@Field_5200_5206) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_14683_14683 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14683_8455 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_14683_8455 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14683_14683 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_14683_8455 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_14683_14684) (v_1@@3 T@FrameType) (q@@1 T@Field_5200_5206) (w@@3 T@FrameType) (r@@1 T@Field_14683_14684) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_14683_8455 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8455_14683 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_14683_14683 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14683_8455 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8455_14683 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_14683_14684) (v_1@@4 T@FrameType) (q@@2 T@Field_5200_5206) (w@@4 T@FrameType) (r@@2 T@Field_5200_5206) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_14683_8455 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8455_8455 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_14683_8455 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14683_8455 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8455_8455 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_5200_5206) (v_1@@5 T@FrameType) (q@@3 T@Field_14683_14684) (w@@5 T@FrameType) (r@@3 T@Field_14683_14684) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8455_14683 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14683_14683 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8455_14683 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8455_14683 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_14683_14683 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_5200_5206) (v_1@@6 T@FrameType) (q@@4 T@Field_14683_14684) (w@@6 T@FrameType) (r@@4 T@Field_5200_5206) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8455_14683 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14683_8455 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8455_8455 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8455_14683 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_14683_8455 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_5200_5206) (v_1@@7 T@FrameType) (q@@5 T@Field_5200_5206) (w@@7 T@FrameType) (r@@5 T@Field_14683_14684) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8455_8455 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8455_14683 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8455_14683 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8455_8455 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8455_14683 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_5200_5206) (v_1@@8 T@FrameType) (q@@6 T@Field_5200_5206) (w@@8 T@FrameType) (r@@6 T@Field_5200_5206) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8455_8455 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8455_8455 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8455_8455 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8455_8455 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8455_8455 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.298:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@2 () T@PolymorphicMapType_8416)
(declare-fun this () (Array T@Ref Bool))
(declare-fun newPMask@0 () T@PolymorphicMapType_8944)
(declare-fun Heap@4 () T@PolymorphicMapType_8395)
(declare-fun Heap@5 () T@PolymorphicMapType_8395)
(declare-fun Heap@1 () T@PolymorphicMapType_8395)
(declare-fun Heap@2 () T@PolymorphicMapType_8395)
(declare-fun Heap@3 () T@PolymorphicMapType_8395)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun QPMask@0 () T@PolymorphicMapType_8416)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun Mask@1 () T@PolymorphicMapType_8416)
(declare-fun t_2 () T@Ref)
(declare-fun a_2@0 () Int)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_8416)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun FrameFragment_3461 (Int) T@FrameType)
(declare-fun Heap@@32 () T@PolymorphicMapType_8395)
(declare-fun Heap@0 () T@PolymorphicMapType_8395)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_8416)
(set-info :boogie-vc-id m1)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon10_correct true))
(let ((anon15_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 5) 2)) anon10_correct)))
(let ((anon15_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= FullPerm (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| Mask@2) null (inv this)))) (=> (<= FullPerm (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| Mask@2) null (inv this))) (=> (= (ControlFlow 0 3) 2) anon10_correct))))))
(let ((anon8_correct  (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_25 T@Ref) (f_28 T@Field_14635_3259) ) (!  (=> (select (|PolymorphicMapType_8944_5200_3259#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@4) null (|inv#sm| this))) o_25 f_28) (select (|PolymorphicMapType_8944_5200_3259#PolymorphicMapType_8944| newPMask@0) o_25 f_28))
 :qid |stdinbpl.673:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8944_5200_3259#PolymorphicMapType_8944| newPMask@0) o_25 f_28))
)) (forall ((o_25@@0 T@Ref) (f_28@@0 T@Field_8455_53) ) (!  (=> (select (|PolymorphicMapType_8944_5200_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@4) null (|inv#sm| this))) o_25@@0 f_28@@0) (select (|PolymorphicMapType_8944_5200_53#PolymorphicMapType_8944| newPMask@0) o_25@@0 f_28@@0))
 :qid |stdinbpl.673:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8944_5200_53#PolymorphicMapType_8944| newPMask@0) o_25@@0 f_28@@0))
))) (forall ((o_25@@1 T@Ref) (f_28@@1 T@Field_8468_8469) ) (!  (=> (select (|PolymorphicMapType_8944_5200_8469#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@4) null (|inv#sm| this))) o_25@@1 f_28@@1) (select (|PolymorphicMapType_8944_5200_8469#PolymorphicMapType_8944| newPMask@0) o_25@@1 f_28@@1))
 :qid |stdinbpl.673:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8944_5200_8469#PolymorphicMapType_8944| newPMask@0) o_25@@1 f_28@@1))
))) (forall ((o_25@@2 T@Ref) (f_28@@2 T@Field_5200_5206) ) (!  (=> (select (|PolymorphicMapType_8944_5200_14684#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@4) null (|inv#sm| this))) o_25@@2 f_28@@2) (select (|PolymorphicMapType_8944_5200_14684#PolymorphicMapType_8944| newPMask@0) o_25@@2 f_28@@2))
 :qid |stdinbpl.673:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8944_5200_14684#PolymorphicMapType_8944| newPMask@0) o_25@@2 f_28@@2))
))) (forall ((o_25@@3 T@Ref) (f_28@@3 T@Field_5200_14702) ) (!  (=> (select (|PolymorphicMapType_8944_5200_25481#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@4) null (|inv#sm| this))) o_25@@3 f_28@@3) (select (|PolymorphicMapType_8944_5200_25481#PolymorphicMapType_8944| newPMask@0) o_25@@3 f_28@@3))
 :qid |stdinbpl.673:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8944_5200_25481#PolymorphicMapType_8944| newPMask@0) o_25@@3 f_28@@3))
))) (forall ((o_25@@4 T@Ref) (f_28@@4 T@Field_5205_3259) ) (!  (=> (select (|PolymorphicMapType_8944_14683_3259#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@4) null (|inv#sm| this))) o_25@@4 f_28@@4) (select (|PolymorphicMapType_8944_14683_3259#PolymorphicMapType_8944| newPMask@0) o_25@@4 f_28@@4))
 :qid |stdinbpl.673:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8944_14683_3259#PolymorphicMapType_8944| newPMask@0) o_25@@4 f_28@@4))
))) (forall ((o_25@@5 T@Ref) (f_28@@5 T@Field_5205_53) ) (!  (=> (select (|PolymorphicMapType_8944_14683_53#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@4) null (|inv#sm| this))) o_25@@5 f_28@@5) (select (|PolymorphicMapType_8944_14683_53#PolymorphicMapType_8944| newPMask@0) o_25@@5 f_28@@5))
 :qid |stdinbpl.673:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8944_14683_53#PolymorphicMapType_8944| newPMask@0) o_25@@5 f_28@@5))
))) (forall ((o_25@@6 T@Ref) (f_28@@6 T@Field_5205_8469) ) (!  (=> (select (|PolymorphicMapType_8944_14683_8469#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@4) null (|inv#sm| this))) o_25@@6 f_28@@6) (select (|PolymorphicMapType_8944_14683_8469#PolymorphicMapType_8944| newPMask@0) o_25@@6 f_28@@6))
 :qid |stdinbpl.673:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8944_14683_8469#PolymorphicMapType_8944| newPMask@0) o_25@@6 f_28@@6))
))) (forall ((o_25@@7 T@Ref) (f_28@@7 T@Field_14683_14684) ) (!  (=> (select (|PolymorphicMapType_8944_14683_14684#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@4) null (|inv#sm| this))) o_25@@7 f_28@@7) (select (|PolymorphicMapType_8944_14683_14684#PolymorphicMapType_8944| newPMask@0) o_25@@7 f_28@@7))
 :qid |stdinbpl.673:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8944_14683_14684#PolymorphicMapType_8944| newPMask@0) o_25@@7 f_28@@7))
))) (forall ((o_25@@8 T@Ref) (f_28@@8 T@Field_14697_14702) ) (!  (=> (select (|PolymorphicMapType_8944_14683_26529#PolymorphicMapType_8944| (select (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@4) null (|inv#sm| this))) o_25@@8 f_28@@8) (select (|PolymorphicMapType_8944_14683_26529#PolymorphicMapType_8944| newPMask@0) o_25@@8 f_28@@8))
 :qid |stdinbpl.673:27|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_8944_14683_26529#PolymorphicMapType_8944| newPMask@0) o_25@@8 f_28@@8))
))) (and (and (forall ((x_2_2 T@Ref) ) (!  (=> (select this x_2_2) (select (|PolymorphicMapType_8944_5200_3259#PolymorphicMapType_8944| newPMask@0) x_2_2 f_7))
 :qid |stdinbpl.677:20|
 :skolemid |108|
)) (= Heap@5 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@4) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@4) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@4) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@4) (store (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@4) null (|inv#sm| this) newPMask@0) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@4) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@4) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@4) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@4) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@4)))) (and (state Heap@5 Mask@2) (state Heap@5 Mask@2)))) (and (=> (= (ControlFlow 0 6) 3) anon15_Then_correct) (=> (= (ControlFlow 0 6) 5) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (HasDirectPerm_5205_5206 Mask@2 null (inv this)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 8) 6)) anon8_correct))))
(let ((anon14_Then_correct  (=> (not (HasDirectPerm_5205_5206 Mask@2 null (inv this))) (=> (and (and (= Heap@2 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@1) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@1) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@1) (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@1) (store (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@1) null (|inv#sm| this) ZeroPMask) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@1) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@1) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@1) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@1) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@1))) (= Heap@3 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@2) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@2) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@2) (store (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@2) null (inv this) freshVersion@0) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@2) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@2) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@2) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@2) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@2) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 7) 6))) anon8_correct))))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 9) (- 0 13)) (forall ((x T@Ref) (x_9 T@Ref) ) (!  (=> (and (and (and (and (not (= x x_9)) (select this x)) (select this x_9)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x x_9)))
 :qid |stdinbpl.568:15|
 :skolemid |95|
))) (=> (forall ((x@@0 T@Ref) (x_9@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x@@0 x_9@@0)) (select this x@@0)) (select this x_9@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x@@0 x_9@@0)))
 :qid |stdinbpl.568:15|
 :skolemid |95|
)) (=> (and (and (forall ((x@@1 T@Ref) ) (!  (=> (and (select this x@@1) (< NoPerm FullPerm)) (and (qpRange2 x@@1) (= (invRecv2 x@@1) x@@1)))
 :qid |stdinbpl.574:22|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@1) x@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@0) x@@1 f_7))
 :pattern ( (select this x@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select this (invRecv2 o_4)) (< NoPerm FullPerm)) (qpRange2 o_4)) (= (invRecv2 o_4) o_4))
 :qid |stdinbpl.578:22|
 :skolemid |97|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((x@@2 T@Ref) ) (!  (=> (select this x@@2) (not (= x@@2 null)))
 :qid |stdinbpl.584:22|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@1) x@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@0) x@@2 f_7))
 :pattern ( (select this x@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select this (invRecv2 o_4@@0)) (< NoPerm FullPerm)) (qpRange2 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv2 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| Mask@1) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (select this (invRecv2 o_4@@0)) (< NoPerm FullPerm)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| Mask@1) o_4@@0 f_7))))
 :qid |stdinbpl.590:22|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_8455_53) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| Mask@1) o_4@@1 f_5) (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.594:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| Mask@1) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_8468_8469) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| Mask@1) o_4@@2 f_5@@0) (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.594:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| Mask@1) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_14635_3259) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| Mask@1) o_4@@3 f_5@@1) (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.594:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| Mask@1) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_5200_5206) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| Mask@1) o_4@@4 f_5@@2) (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.594:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| Mask@1) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_5200_14702) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| Mask@1) o_4@@5 f_5@@3) (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.594:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| Mask@1) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| QPMask@0) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_5205_53) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| Mask@1) o_4@@6 f_5@@4) (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| QPMask@0) o_4@@6 f_5@@4)))
 :qid |stdinbpl.594:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| Mask@1) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| QPMask@0) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_5205_8469) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| Mask@1) o_4@@7 f_5@@5) (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| QPMask@0) o_4@@7 f_5@@5)))
 :qid |stdinbpl.594:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| Mask@1) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| QPMask@0) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_5205_3259) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| Mask@1) o_4@@8 f_5@@6) (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| QPMask@0) o_4@@8 f_5@@6)))
 :qid |stdinbpl.594:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| Mask@1) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| QPMask@0) o_4@@8 f_5@@6))
))) (forall ((o_4@@9 T@Ref) (f_5@@7 T@Field_14683_14684) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| Mask@1) o_4@@9 f_5@@7) (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| QPMask@0) o_4@@9 f_5@@7)))
 :qid |stdinbpl.594:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| Mask@1) o_4@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| QPMask@0) o_4@@9 f_5@@7))
))) (forall ((o_4@@10 T@Ref) (f_5@@8 T@Field_14697_14702) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| Mask@1) o_4@@10 f_5@@8) (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| QPMask@0) o_4@@10 f_5@@8)))
 :qid |stdinbpl.594:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| Mask@1) o_4@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| QPMask@0) o_4@@10 f_5@@8))
))) (and (state Heap@1 QPMask@0) (state Heap@1 QPMask@0))) (and (and (state Heap@1 QPMask@0) (select this t_2)) (and (state Heap@1 QPMask@0) (state Heap@1 QPMask@0)))) (and (=> (= (ControlFlow 0 9) (- 0 12)) (HasDirectPerm_5200_3259 QPMask@0 t_2 f_7)) (=> (HasDirectPerm_5200_3259 QPMask@0 t_2 f_7) (=> (and (= a_2@0 (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@1) t_2 f_7)) (state Heap@1 QPMask@0)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select this x_1)) (select this x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.626:17|
 :skolemid |101|
 :pattern ( (neverTriggered3 x_1) (neverTriggered3 x_1_1))
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select this x_1@@0)) (select this x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.626:17|
 :skolemid |101|
 :pattern ( (neverTriggered3 x_1@@0) (neverTriggered3 x_1_1@@0))
)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (forall ((x_1@@1 T@Ref) ) (!  (=> (select this x_1@@1) (>= (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@0) x_1@@1 f_7) FullPerm))
 :qid |stdinbpl.633:17|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@1) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@1) x_1@@1 f_7))
 :pattern ( (select this x_1@@1))
))) (=> (forall ((x_1@@2 T@Ref) ) (!  (=> (select this x_1@@2) (>= (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@0) x_1@@2 f_7) FullPerm))
 :qid |stdinbpl.633:17|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@1) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@1) x_1@@2 f_7))
 :pattern ( (select this x_1@@2))
)) (=> (forall ((x_1@@3 T@Ref) ) (!  (=> (and (select this x_1@@3) (< NoPerm FullPerm)) (and (qpRange3 x_1@@3) (= (invRecv3 x_1@@3) x_1@@3)))
 :qid |stdinbpl.639:22|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@1) x_1@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@1) x_1@@3 f_7))
 :pattern ( (select this x_1@@3))
)) (=> (and (forall ((o_4@@11 T@Ref) ) (!  (=> (and (select this (invRecv3 o_4@@11)) (and (< NoPerm FullPerm) (qpRange3 o_4@@11))) (= (invRecv3 o_4@@11) o_4@@11))
 :qid |stdinbpl.643:22|
 :skolemid |104|
 :pattern ( (invRecv3 o_4@@11))
)) (forall ((o_4@@12 T@Ref) ) (!  (and (=> (and (select this (invRecv3 o_4@@12)) (and (< NoPerm FullPerm) (qpRange3 o_4@@12))) (and (= (invRecv3 o_4@@12) o_4@@12) (= (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@1) o_4@@12 f_7) (- (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@0) o_4@@12 f_7) FullPerm)))) (=> (not (and (select this (invRecv3 o_4@@12)) (and (< NoPerm FullPerm) (qpRange3 o_4@@12)))) (= (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@1) o_4@@12 f_7) (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@0) o_4@@12 f_7))))
 :qid |stdinbpl.649:22|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@1) o_4@@12 f_7))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@13 T@Ref) (f_5@@9 T@Field_8455_53) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| QPMask@0) o_4@@13 f_5@@9) (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| QPMask@1) o_4@@13 f_5@@9)))
 :qid |stdinbpl.655:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| QPMask@1) o_4@@13 f_5@@9))
)) (forall ((o_4@@14 T@Ref) (f_5@@10 T@Field_8468_8469) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| QPMask@0) o_4@@14 f_5@@10) (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| QPMask@1) o_4@@14 f_5@@10)))
 :qid |stdinbpl.655:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| QPMask@1) o_4@@14 f_5@@10))
))) (forall ((o_4@@15 T@Ref) (f_5@@11 T@Field_14635_3259) ) (!  (=> (not (= f_5@@11 f_7)) (= (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@0) o_4@@15 f_5@@11) (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@1) o_4@@15 f_5@@11)))
 :qid |stdinbpl.655:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@1) o_4@@15 f_5@@11))
))) (forall ((o_4@@16 T@Ref) (f_5@@12 T@Field_5200_5206) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| QPMask@0) o_4@@16 f_5@@12) (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| QPMask@1) o_4@@16 f_5@@12)))
 :qid |stdinbpl.655:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| QPMask@1) o_4@@16 f_5@@12))
))) (forall ((o_4@@17 T@Ref) (f_5@@13 T@Field_5200_14702) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| QPMask@0) o_4@@17 f_5@@13) (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| QPMask@1) o_4@@17 f_5@@13)))
 :qid |stdinbpl.655:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| QPMask@1) o_4@@17 f_5@@13))
))) (forall ((o_4@@18 T@Ref) (f_5@@14 T@Field_5205_53) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| QPMask@0) o_4@@18 f_5@@14) (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| QPMask@1) o_4@@18 f_5@@14)))
 :qid |stdinbpl.655:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| QPMask@1) o_4@@18 f_5@@14))
))) (forall ((o_4@@19 T@Ref) (f_5@@15 T@Field_5205_8469) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| QPMask@0) o_4@@19 f_5@@15) (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| QPMask@1) o_4@@19 f_5@@15)))
 :qid |stdinbpl.655:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| QPMask@1) o_4@@19 f_5@@15))
))) (forall ((o_4@@20 T@Ref) (f_5@@16 T@Field_5205_3259) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| QPMask@0) o_4@@20 f_5@@16) (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| QPMask@1) o_4@@20 f_5@@16)))
 :qid |stdinbpl.655:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| QPMask@1) o_4@@20 f_5@@16))
))) (forall ((o_4@@21 T@Ref) (f_5@@17 T@Field_14683_14684) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| QPMask@0) o_4@@21 f_5@@17) (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| QPMask@1) o_4@@21 f_5@@17)))
 :qid |stdinbpl.655:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| QPMask@1) o_4@@21 f_5@@17))
))) (forall ((o_4@@22 T@Ref) (f_5@@18 T@Field_14697_14702) ) (!  (=> true (= (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| QPMask@0) o_4@@22 f_5@@18) (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| QPMask@1) o_4@@22 f_5@@18)))
 :qid |stdinbpl.655:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| QPMask@1) o_4@@22 f_5@@18))
))) (= Mask@2 (PolymorphicMapType_8416 (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| QPMask@1) (store (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| QPMask@1) null (inv this) (+ (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| QPMask@1) null (inv this)) FullPerm)) (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| QPMask@1) (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| QPMask@1) (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| QPMask@1) (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| QPMask@1) (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| QPMask@1) (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| QPMask@1) (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| QPMask@1) (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| QPMask@1)))) (and (and (state Heap@1 Mask@2) (state Heap@1 Mask@2)) (and (|inv#trigger_5205| Heap@1 (inv this)) (= (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@1) null (inv this)) (FrameFragment_3461 (|inv#condqp1| Heap@1 this)))))) (and (=> (= (ControlFlow 0 9) 7) anon14_Then_correct) (=> (= (ControlFlow 0 9) 8) anon14_Else_correct))))))))))))))))))
(let ((anon13_Else_correct  (=> (HasDirectPerm_5205_5206 Mask@1 null (inv this)) (=> (and (= Heap@1 Heap@@32) (= (ControlFlow 0 15) 9)) anon6_correct))))
(let ((anon13_Then_correct  (=> (and (and (not (HasDirectPerm_5205_5206 Mask@1 null (inv this))) (= Heap@0 (PolymorphicMapType_8395 (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_4902_4903#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_5200_3259#PolymorphicMapType_8395| Heap@@32) (store (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@32) null (inv this) newVersion@0) (|PolymorphicMapType_8395_5211_20690#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_5205_3259#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_5205_53#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_5205_8469#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_5200_5206#PolymorphicMapType_8395| Heap@@32) (|PolymorphicMapType_8395_5200_23763#PolymorphicMapType_8395| Heap@@32)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 14) 9))) anon6_correct)))
(let ((anon4_correct  (=> (= Mask@1 (PolymorphicMapType_8416 (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| Mask@0) (store (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| Mask@0) null (inv this) (- (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| Mask@0) null (inv this)) FullPerm)) (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| Mask@0) (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| Mask@0) (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| Mask@0) (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| Mask@0) (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| Mask@0) (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| Mask@0) (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| Mask@0) (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| Mask@0))) (and (=> (= (ControlFlow 0 16) 14) anon13_Then_correct) (=> (= (ControlFlow 0 16) 15) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 19) 16)) anon4_correct)))
(let ((anon12_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (<= FullPerm (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| Mask@0) null (inv this)))) (=> (<= FullPerm (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| Mask@0) null (inv this))) (=> (= (ControlFlow 0 17) 16) anon4_correct))))))
(let ((anon11_Else_correct  (=> (select (|PolymorphicMapType_8395_4899_53#PolymorphicMapType_8395| Heap@@32) t_2 $allocated) (=> (and (|inv#trigger_5205| Heap@@32 (inv this)) (= (select (|PolymorphicMapType_8395_5205_5206#PolymorphicMapType_8395| Heap@@32) null (inv this)) (FrameFragment_3461 (|inv#condqp1| Heap@@32 this)))) (and (=> (= (ControlFlow 0 20) 17) anon12_Then_correct) (=> (= (ControlFlow 0 20) 19) anon12_Else_correct))))))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and (and AssumePermUpperBound (= Mask@0 (PolymorphicMapType_8416 (|PolymorphicMapType_8416_5200_3259#PolymorphicMapType_8416| ZeroMask) (store (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| ZeroMask) null (inv this) (+ (select (|PolymorphicMapType_8416_5205_5206#PolymorphicMapType_8416| ZeroMask) null (inv this)) FullPerm)) (|PolymorphicMapType_8416_5200_5206#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_5200_53#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_5200_8469#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_5200_31923#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_5205_3259#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_5205_53#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_5205_8469#PolymorphicMapType_8416| ZeroMask) (|PolymorphicMapType_8416_5205_32334#PolymorphicMapType_8416| ZeroMask)))) (and (state Heap@@32 Mask@0) (state Heap@@32 Mask@0))) (and (=> (= (ControlFlow 0 21) 1) anon11_Then_correct) (=> (= (ControlFlow 0 21) 20) anon11_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 22) 21) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid