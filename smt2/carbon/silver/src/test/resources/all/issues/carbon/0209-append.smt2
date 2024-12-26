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
(declare-sort T@Field_10446_53 0)
(declare-sort T@Field_10459_10460 0)
(declare-sort T@Field_10446_28091 0)
(declare-sort T@Field_10446_27958 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10407 0)) (((PolymorphicMapType_10407 (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| (Array T@Ref T@Field_10459_10460 Real)) (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| (Array T@Ref T@Field_10446_53 Real)) (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| (Array T@Ref T@Field_10446_27958 Real)) (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| (Array T@Ref T@Field_10446_28091 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10935 0)) (((PolymorphicMapType_10935 (|PolymorphicMapType_10935_10446_53#PolymorphicMapType_10935| (Array T@Ref T@Field_10446_53 Bool)) (|PolymorphicMapType_10935_10446_10460#PolymorphicMapType_10935| (Array T@Ref T@Field_10459_10460 Bool)) (|PolymorphicMapType_10935_10446_27958#PolymorphicMapType_10935| (Array T@Ref T@Field_10446_27958 Bool)) (|PolymorphicMapType_10935_10446_29071#PolymorphicMapType_10935| (Array T@Ref T@Field_10446_28091 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10386 0)) (((PolymorphicMapType_10386 (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| (Array T@Ref T@Field_10446_53 Bool)) (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| (Array T@Ref T@Field_10459_10460 T@Ref)) (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| (Array T@Ref T@Field_10446_28091 T@PolymorphicMapType_10935)) (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| (Array T@Ref T@Field_10446_27958 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10446_53)
(declare-fun next () T@Field_10459_10460)
(declare-fun succHeap (T@PolymorphicMapType_10386 T@PolymorphicMapType_10386) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10386 T@PolymorphicMapType_10386) Bool)
(declare-fun state (T@PolymorphicMapType_10386 T@PolymorphicMapType_10407) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10407) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_10935)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |$$'| (T@PolymorphicMapType_10386 (Array T@Ref Bool)) (Array Int Bool))
(declare-fun dummyFunction_16797 ((Array Int Bool)) Bool)
(declare-fun |$$#triggerStateless| ((Array T@Ref Bool)) (Array Int Bool))
(declare-fun $$ (T@PolymorphicMapType_10386 (Array T@Ref Bool)) (Array Int Bool))
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10386 T@PolymorphicMapType_10386 T@PolymorphicMapType_10407) Bool)
(declare-fun IsPredicateField_10446_28049 (T@Field_10446_27958) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_10446 (T@Field_10446_27958) T@Field_10446_28091)
(declare-fun HasDirectPerm_10446_28022 (T@PolymorphicMapType_10407 T@Ref T@Field_10446_27958) Bool)
(declare-fun IsWandField_10446_29598 (T@Field_10446_27958) Bool)
(declare-fun WandMaskField_10446 (T@Field_10446_27958) T@Field_10446_28091)
(declare-fun dummyHeap () T@PolymorphicMapType_10386)
(declare-fun ZeroMask () T@PolymorphicMapType_10407)
(declare-fun InsidePredicate_10446_10446 (T@Field_10446_27958 T@FrameType T@Field_10446_27958 T@FrameType) Bool)
(declare-fun IsPredicateField_6706_6707 (T@Field_10459_10460) Bool)
(declare-fun IsWandField_6706_6707 (T@Field_10459_10460) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6706_32532 (T@Field_10446_28091) Bool)
(declare-fun IsWandField_6706_32548 (T@Field_10446_28091) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6706_53 (T@Field_10446_53) Bool)
(declare-fun IsWandField_6706_53 (T@Field_10446_53) Bool)
(declare-fun |Set#Equal_3519| ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun HasDirectPerm_10446_32903 (T@PolymorphicMapType_10407 T@Ref T@Field_10446_28091) Bool)
(declare-fun HasDirectPerm_10446_10460 (T@PolymorphicMapType_10407 T@Ref T@Field_10459_10460) Bool)
(declare-fun HasDirectPerm_10446_53 (T@PolymorphicMapType_10407 T@Ref T@Field_10446_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10407 T@PolymorphicMapType_10407 T@PolymorphicMapType_10407) Bool)
(declare-fun |$$#frame| (T@FrameType (Array T@Ref Bool)) (Array Int Bool))
(declare-fun FrameFragment_3649 (Int) T@FrameType)
(declare-fun |$$#condqp1| (T@PolymorphicMapType_10386 (Array T@Ref Bool)) Int)
(declare-fun |sk_$$#condqp1| (Int Int) T@Ref)
(assert (forall ((Heap0 T@PolymorphicMapType_10386) (Heap1 T@PolymorphicMapType_10386) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10386) (Mask T@PolymorphicMapType_10407) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10386) (Heap1@@0 T@PolymorphicMapType_10386) (Heap2 T@PolymorphicMapType_10386) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10446_28091) ) (!  (not (select (|PolymorphicMapType_10935_10446_29071#PolymorphicMapType_10935| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10935_10446_29071#PolymorphicMapType_10935| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10446_27958) ) (!  (not (select (|PolymorphicMapType_10935_10446_27958#PolymorphicMapType_10935| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10935_10446_27958#PolymorphicMapType_10935| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10459_10460) ) (!  (not (select (|PolymorphicMapType_10935_10446_10460#PolymorphicMapType_10935| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10935_10446_10460#PolymorphicMapType_10935| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10446_53) ) (!  (not (select (|PolymorphicMapType_10935_10446_53#PolymorphicMapType_10935| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10935_10446_53#PolymorphicMapType_10935| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.324:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10386) (refs (Array T@Ref Bool)) ) (! (dummyFunction_16797 (|$$#triggerStateless| refs))
 :qid |stdinbpl.447:15|
 :skolemid |83|
 :pattern ( (|$$'| Heap@@0 refs))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10386) (refs@@0 (Array T@Ref Bool)) ) (!  (and (= ($$ Heap@@1 refs@@0) (|$$'| Heap@@1 refs@@0)) (dummyFunction_16797 (|$$#triggerStateless| refs@@0)))
 :qid |stdinbpl.443:15|
 :skolemid |82|
 :pattern ( ($$ Heap@@1 refs@@0))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.327:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10386) (ExhaleHeap T@PolymorphicMapType_10386) (Mask@@0 T@PolymorphicMapType_10407) (pm_f_9 T@Field_10446_27958) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10446_28022 Mask@@0 null pm_f_9) (IsPredicateField_10446_28049 pm_f_9)) (= (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@2) null (PredicateMaskField_10446 pm_f_9)) (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| ExhaleHeap) null (PredicateMaskField_10446 pm_f_9)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_10446_28049 pm_f_9) (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| ExhaleHeap) null (PredicateMaskField_10446 pm_f_9)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10386) (ExhaleHeap@@0 T@PolymorphicMapType_10386) (Mask@@1 T@PolymorphicMapType_10407) (pm_f_9@@0 T@Field_10446_27958) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10446_28022 Mask@@1 null pm_f_9@@0) (IsWandField_10446_29598 pm_f_9@@0)) (= (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@3) null (WandMaskField_10446 pm_f_9@@0)) (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| ExhaleHeap@@0) null (WandMaskField_10446 pm_f_9@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_10446_29598 pm_f_9@@0) (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| ExhaleHeap@@0) null (WandMaskField_10446 pm_f_9@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10386) (ExhaleHeap@@1 T@PolymorphicMapType_10386) (Mask@@2 T@PolymorphicMapType_10407) (pm_f_9@@1 T@Field_10446_27958) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_10446_28022 Mask@@2 null pm_f_9@@1) (IsPredicateField_10446_28049 pm_f_9@@1)) (and (and (and (forall ((o2_9 T@Ref) (f_24 T@Field_10446_53) ) (!  (=> (select (|PolymorphicMapType_10935_10446_53#PolymorphicMapType_10935| (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@4) null (PredicateMaskField_10446 pm_f_9@@1))) o2_9 f_24) (= (select (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@4) o2_9 f_24) (select (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| ExhaleHeap@@1) o2_9 f_24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| ExhaleHeap@@1) o2_9 f_24))
)) (forall ((o2_9@@0 T@Ref) (f_24@@0 T@Field_10459_10460) ) (!  (=> (select (|PolymorphicMapType_10935_10446_10460#PolymorphicMapType_10935| (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@4) null (PredicateMaskField_10446 pm_f_9@@1))) o2_9@@0 f_24@@0) (= (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@4) o2_9@@0 f_24@@0) (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| ExhaleHeap@@1) o2_9@@0 f_24@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| ExhaleHeap@@1) o2_9@@0 f_24@@0))
))) (forall ((o2_9@@1 T@Ref) (f_24@@1 T@Field_10446_27958) ) (!  (=> (select (|PolymorphicMapType_10935_10446_27958#PolymorphicMapType_10935| (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@4) null (PredicateMaskField_10446 pm_f_9@@1))) o2_9@@1 f_24@@1) (= (select (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| Heap@@4) o2_9@@1 f_24@@1) (select (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| ExhaleHeap@@1) o2_9@@1 f_24@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| ExhaleHeap@@1) o2_9@@1 f_24@@1))
))) (forall ((o2_9@@2 T@Ref) (f_24@@2 T@Field_10446_28091) ) (!  (=> (select (|PolymorphicMapType_10935_10446_29071#PolymorphicMapType_10935| (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@4) null (PredicateMaskField_10446 pm_f_9@@1))) o2_9@@2 f_24@@2) (= (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@4) o2_9@@2 f_24@@2) (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| ExhaleHeap@@1) o2_9@@2 f_24@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| ExhaleHeap@@1) o2_9@@2 f_24@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_10446_28049 pm_f_9@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10386) (ExhaleHeap@@2 T@PolymorphicMapType_10386) (Mask@@3 T@PolymorphicMapType_10407) (pm_f_9@@2 T@Field_10446_27958) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_10446_28022 Mask@@3 null pm_f_9@@2) (IsWandField_10446_29598 pm_f_9@@2)) (and (and (and (forall ((o2_9@@3 T@Ref) (f_24@@3 T@Field_10446_53) ) (!  (=> (select (|PolymorphicMapType_10935_10446_53#PolymorphicMapType_10935| (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@5) null (WandMaskField_10446 pm_f_9@@2))) o2_9@@3 f_24@@3) (= (select (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@5) o2_9@@3 f_24@@3) (select (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| ExhaleHeap@@2) o2_9@@3 f_24@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| ExhaleHeap@@2) o2_9@@3 f_24@@3))
)) (forall ((o2_9@@4 T@Ref) (f_24@@4 T@Field_10459_10460) ) (!  (=> (select (|PolymorphicMapType_10935_10446_10460#PolymorphicMapType_10935| (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@5) null (WandMaskField_10446 pm_f_9@@2))) o2_9@@4 f_24@@4) (= (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@5) o2_9@@4 f_24@@4) (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| ExhaleHeap@@2) o2_9@@4 f_24@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| ExhaleHeap@@2) o2_9@@4 f_24@@4))
))) (forall ((o2_9@@5 T@Ref) (f_24@@5 T@Field_10446_27958) ) (!  (=> (select (|PolymorphicMapType_10935_10446_27958#PolymorphicMapType_10935| (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@5) null (WandMaskField_10446 pm_f_9@@2))) o2_9@@5 f_24@@5) (= (select (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| Heap@@5) o2_9@@5 f_24@@5) (select (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| ExhaleHeap@@2) o2_9@@5 f_24@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| ExhaleHeap@@2) o2_9@@5 f_24@@5))
))) (forall ((o2_9@@6 T@Ref) (f_24@@6 T@Field_10446_28091) ) (!  (=> (select (|PolymorphicMapType_10935_10446_29071#PolymorphicMapType_10935| (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@5) null (WandMaskField_10446 pm_f_9@@2))) o2_9@@6 f_24@@6) (= (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@5) o2_9@@6 f_24@@6) (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| ExhaleHeap@@2) o2_9@@6 f_24@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| ExhaleHeap@@2) o2_9@@6 f_24@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_10446_29598 pm_f_9@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10386) (ExhaleHeap@@3 T@PolymorphicMapType_10386) (Mask@@4 T@PolymorphicMapType_10407) (o_27 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@6) o_27 $allocated) (select (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| ExhaleHeap@@3) o_27 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| ExhaleHeap@@3) o_27 $allocated))
)))
(assert (forall ((p T@Field_10446_27958) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10446_10446 p v_1 p w))
 :qid |stdinbpl.222:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10446_10446 p v_1 p w))
)))
(assert  (not (IsPredicateField_6706_6707 next)))
(assert  (not (IsWandField_6706_6707 next)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10386) (ExhaleHeap@@4 T@PolymorphicMapType_10386) (Mask@@5 T@PolymorphicMapType_10407) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@7 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_10407) (o_2@@3 T@Ref) (f_4@@3 T@Field_10446_28091) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6706_32532 f_4@@3))) (not (IsWandField_6706_32548 f_4@@3))) (<= (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_10407) (o_2@@4 T@Ref) (f_4@@4 T@Field_10446_27958) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_10446_28049 f_4@@4))) (not (IsWandField_10446_29598 f_4@@4))) (<= (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10407) (o_2@@5 T@Ref) (f_4@@5 T@Field_10446_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6706_53 f_4@@5))) (not (IsWandField_6706_53 f_4@@5))) (<= (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10407) (o_2@@6 T@Ref) (f_4@@6 T@Field_10459_10460) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6706_6707 f_4@@6))) (not (IsWandField_6706_6707 f_4@@6))) (<= (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((a@@1 (Array Int Bool)) (b@@0 (Array Int Bool)) ) (! (= (|Set#Equal_3519| a@@1 b@@0) (forall ((o Int) ) (! (= (select a@@1 o) (select b@@0 o))
 :qid |stdinbpl.309:31|
 :skolemid |48|
 :pattern ( (select a@@1 o))
 :pattern ( (select b@@0 o))
)))
 :qid |stdinbpl.308:17|
 :skolemid |49|
 :pattern ( (|Set#Equal_3519| a@@1 b@@0))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10407) (o_2@@7 T@Ref) (f_4@@7 T@Field_10446_28091) ) (! (= (HasDirectPerm_10446_32903 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10446_32903 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10407) (o_2@@8 T@Ref) (f_4@@8 T@Field_10446_27958) ) (! (= (HasDirectPerm_10446_28022 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10446_28022 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10407) (o_2@@9 T@Ref) (f_4@@9 T@Field_10459_10460) ) (! (= (HasDirectPerm_10446_10460 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10446_10460 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10407) (o_2@@10 T@Ref) (f_4@@10 T@Field_10446_53) ) (! (= (HasDirectPerm_10446_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10446_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.210:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10386) (ExhaleHeap@@5 T@PolymorphicMapType_10386) (Mask@@14 T@PolymorphicMapType_10407) (o_27@@0 T@Ref) (f_24@@7 T@Field_10446_28091) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_10446_32903 Mask@@14 o_27@@0 f_24@@7) (= (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@8) o_27@@0 f_24@@7) (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| ExhaleHeap@@5) o_27@@0 f_24@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| ExhaleHeap@@5) o_27@@0 f_24@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10386) (ExhaleHeap@@6 T@PolymorphicMapType_10386) (Mask@@15 T@PolymorphicMapType_10407) (o_27@@1 T@Ref) (f_24@@8 T@Field_10446_27958) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_10446_28022 Mask@@15 o_27@@1 f_24@@8) (= (select (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| Heap@@9) o_27@@1 f_24@@8) (select (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| ExhaleHeap@@6) o_27@@1 f_24@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| ExhaleHeap@@6) o_27@@1 f_24@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10386) (ExhaleHeap@@7 T@PolymorphicMapType_10386) (Mask@@16 T@PolymorphicMapType_10407) (o_27@@2 T@Ref) (f_24@@9 T@Field_10459_10460) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_10446_10460 Mask@@16 o_27@@2 f_24@@9) (= (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@10) o_27@@2 f_24@@9) (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| ExhaleHeap@@7) o_27@@2 f_24@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| ExhaleHeap@@7) o_27@@2 f_24@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10386) (ExhaleHeap@@8 T@PolymorphicMapType_10386) (Mask@@17 T@PolymorphicMapType_10407) (o_27@@3 T@Ref) (f_24@@10 T@Field_10446_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_10446_53 Mask@@17 o_27@@3 f_24@@10) (= (select (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@11) o_27@@3 f_24@@10) (select (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| ExhaleHeap@@8) o_27@@3 f_24@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| ExhaleHeap@@8) o_27@@3 f_24@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_10446_28091) ) (! (= (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_10446_27958) ) (! (= (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_10446_53) ) (! (= (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10459_10460) ) (! (= (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10407) (SummandMask1 T@PolymorphicMapType_10407) (SummandMask2 T@PolymorphicMapType_10407) (o_2@@15 T@Ref) (f_4@@15 T@Field_10446_28091) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10407) (SummandMask1@@0 T@PolymorphicMapType_10407) (SummandMask2@@0 T@PolymorphicMapType_10407) (o_2@@16 T@Ref) (f_4@@16 T@Field_10446_27958) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10407) (SummandMask1@@1 T@PolymorphicMapType_10407) (SummandMask2@@1 T@PolymorphicMapType_10407) (o_2@@17 T@Ref) (f_4@@17 T@Field_10446_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10407) (SummandMask1@@2 T@PolymorphicMapType_10407) (SummandMask2@@2 T@PolymorphicMapType_10407) (o_2@@18 T@Ref) (f_4@@18 T@Field_10459_10460) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@2 (Array Int Bool)) (b@@1 (Array Int Bool)) ) (!  (=> (|Set#Equal_3519| a@@2 b@@1) (= a@@2 b@@1))
 :qid |stdinbpl.310:17|
 :skolemid |50|
 :pattern ( (|Set#Equal_3519| a@@2 b@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10386) (o_20 T@Ref) (f_31 T@Field_10446_27958) (v T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_10386 (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@12) (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@12) (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@12) (store (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| Heap@@12) o_20 f_31 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10386 (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@12) (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@12) (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@12) (store (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| Heap@@12) o_20 f_31 v)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10386) (o_20@@0 T@Ref) (f_31@@0 T@Field_10446_28091) (v@@0 T@PolymorphicMapType_10935) ) (! (succHeap Heap@@13 (PolymorphicMapType_10386 (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@13) (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@13) (store (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@13) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10386 (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@13) (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@13) (store (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@13) o_20@@0 f_31@@0 v@@0) (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10386) (o_20@@1 T@Ref) (f_31@@1 T@Field_10459_10460) (v@@1 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_10386 (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@14) (store (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@14) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@14) (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10386 (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@14) (store (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@14) o_20@@1 f_31@@1 v@@1) (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@14) (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10386) (o_20@@2 T@Ref) (f_31@@2 T@Field_10446_53) (v@@2 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_10386 (store (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@15) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@15) (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@15) (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10386 (store (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@15) o_20@@2 f_31@@2 v@@2) (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@15) (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@15) (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| Heap@@15)))
)))
(assert (forall ((a@@3 Int) (b@@2 Int) ) (! (= (<= a@@3 b@@2) (= (|Math#min| a@@3 b@@2) a@@3))
 :qid |stdinbpl.322:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@3 b@@2))
)))
(assert (forall ((a@@4 Int) (b@@3 Int) ) (! (= (<= b@@3 a@@4) (= (|Math#min| a@@4 b@@3) b@@3))
 :qid |stdinbpl.323:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@4 b@@3))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10386) (Mask@@18 T@PolymorphicMapType_10407) (refs@@1 (Array T@Ref Bool)) ) (!  (=> (state Heap@@16 Mask@@18) (= (|$$'| Heap@@16 refs@@1) (|$$#frame| (FrameFragment_3649 (|$$#condqp1| Heap@@16 refs@@1)) refs@@1)))
 :qid |stdinbpl.454:15|
 :skolemid |84|
 :pattern ( (state Heap@@16 Mask@@18) (|$$'| Heap@@16 refs@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_10386) (Heap1Heap T@PolymorphicMapType_10386) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@2 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2))) (< NoPerm FullPerm))  (and (select refs@@2 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2))) (< NoPerm FullPerm))) (=> (and (select refs@@2 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap2Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2)) next) (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap1Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2)) next)))) (= (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2)))
 :qid |stdinbpl.464:15|
 :skolemid |85|
 :pattern ( (|$$#condqp1| Heap2Heap refs@@2) (|$$#condqp1| Heap1Heap refs@@2) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((o_20@@3 T@Ref) (f_17 T@Field_10459_10460) (Heap@@17 T@PolymorphicMapType_10386) ) (!  (=> (select (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@17) o_20@@3 $allocated) (select (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@17) (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@17) o_20@@3 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@17) o_20@@3 f_17))
)))
(assert (forall ((p@@1 T@Field_10446_27958) (v_1@@0 T@FrameType) (q T@Field_10446_27958) (w@@0 T@FrameType) (r T@Field_10446_27958) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10446_10446 p@@1 v_1@@0 q w@@0) (InsidePredicate_10446_10446 q w@@0 r u)) (InsidePredicate_10446_10446 p@@1 v_1@@0 r u))
 :qid |stdinbpl.217:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10446_10446 p@@1 v_1@@0 q w@@0) (InsidePredicate_10446_10446 q w@@0 r u))
)))
(assert (forall ((a@@5 Int) ) (!  (=> (< a@@5 0) (= (|Math#clip| a@@5) 0))
 :qid |stdinbpl.328:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@5))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun old_g@0 () (Array Int Bool))
(declare-fun Heap@@18 () T@PolymorphicMapType_10386)
(declare-fun g_1 () (Array T@Ref Bool))
(declare-fun neverTriggered12 (T@Ref) Bool)
(declare-fun QPMask@9 () T@PolymorphicMapType_10407)
(declare-fun QPMask@0 () T@PolymorphicMapType_10407)
(declare-fun Heap@0 () T@PolymorphicMapType_10386)
(declare-fun neverTriggered11 (T@Ref) Bool)
(declare-fun QPMask@8 () T@PolymorphicMapType_10407)
(declare-fun x () T@Ref)
(declare-fun neverTriggered10 (T@Ref) Bool)
(declare-fun QPMask@7 () T@PolymorphicMapType_10407)
(declare-fun neverTriggered9 (T@Ref) Bool)
(declare-fun QPMask@6 () T@PolymorphicMapType_10407)
(declare-fun neverTriggered8 (T@Ref) Bool)
(declare-fun QPMask@5 () T@PolymorphicMapType_10407)
(declare-fun neverTriggered7 (T@Ref) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_10407)
(declare-fun neverTriggered6 (T@Ref) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_10407)
(declare-fun neverTriggered5 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_10407)
(declare-fun neverTriggered4 (T@Ref) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_10407)
(declare-fun exists_path ((Array Int Bool) T@Ref T@Ref) Bool)
(declare-fun neverTriggered3 (T@Ref) Bool)
(declare-fun QPMask@10 () T@PolymorphicMapType_10407)
(declare-fun n_86 () T@Ref)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(set-info :boogie-vc-id append)
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
 (=> (= (ControlFlow 0 0) 57) (let ((anon38_Else_correct  (=> (= (ControlFlow 0 36) (- 0 35)) (|Set#Equal_3519| old_g@0 ($$ Heap@@18 g_1)))))
(let ((anon38_Then_correct  (and (=> (= (ControlFlow 0 33) (- 0 34)) (forall ((n_12_1 T@Ref) (n_12_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12_1 n_12_2)) (select g_1 n_12_1)) (select g_1 n_12_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_12_1 n_12_2)))
 :qid |stdinbpl.1055:21|
 :skolemid |135|
 :pattern ( (neverTriggered12 n_12_1) (neverTriggered12 n_12_2))
))) (=> (forall ((n_12_1@@0 T@Ref) (n_12_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12_1@@0 n_12_2@@0)) (select g_1 n_12_1@@0)) (select g_1 n_12_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_12_1@@0 n_12_2@@0)))
 :qid |stdinbpl.1055:21|
 :skolemid |135|
 :pattern ( (neverTriggered12 n_12_1@@0) (neverTriggered12 n_12_2@@0))
)) (=> (= (ControlFlow 0 33) (- 0 32)) (forall ((n_12_1@@1 T@Ref) ) (!  (=> (select g_1 n_12_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) n_12_1@@1 next) NoPerm)))
 :qid |stdinbpl.1062:21|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@18) n_12_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@9) n_12_1@@1 next))
 :pattern ( (select g_1 n_12_1@@1))
)))))))
(let ((anon37_Else_correct  (and (=> (= (ControlFlow 0 37) (- 0 38)) (|Set#Equal_3519| old_g@0 ($$ Heap@@18 g_1))) (=> (|Set#Equal_3519| old_g@0 ($$ Heap@@18 g_1)) (=> (state Heap@0 QPMask@0) (and (=> (= (ControlFlow 0 37) 33) anon38_Then_correct) (=> (= (ControlFlow 0 37) 36) anon38_Else_correct)))))))
(let ((anon37_Then_correct  (and (=> (= (ControlFlow 0 30) (- 0 31)) (forall ((n_11_1 T@Ref) (n_11_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1 n_11_2)) (select g_1 n_11_1)) (select g_1 n_11_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_11_1 n_11_2)))
 :qid |stdinbpl.1007:21|
 :skolemid |131|
 :pattern ( (neverTriggered11 n_11_1) (neverTriggered11 n_11_2))
))) (=> (forall ((n_11_1@@0 T@Ref) (n_11_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1@@0 n_11_2@@0)) (select g_1 n_11_1@@0)) (select g_1 n_11_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_11_1@@0 n_11_2@@0)))
 :qid |stdinbpl.1007:21|
 :skolemid |131|
 :pattern ( (neverTriggered11 n_11_1@@0) (neverTriggered11 n_11_2@@0))
)) (=> (= (ControlFlow 0 30) (- 0 29)) (forall ((n_11_1@@1 T@Ref) ) (!  (=> (select g_1 n_11_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) n_11_1@@1 next) NoPerm)))
 :qid |stdinbpl.1014:21|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@18) n_11_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@8) n_11_1@@1 next))
 :pattern ( (select g_1 n_11_1@@1))
)))))))
(let ((anon36_Else_correct  (and (=> (= (ControlFlow 0 39) (- 0 42)) (|Set#Equal_3519| old_g@0 ($$ Heap@@18 g_1))) (=> (|Set#Equal_3519| old_g@0 ($$ Heap@@18 g_1)) (=> (state Heap@@18 QPMask@0) (and (=> (= (ControlFlow 0 39) (- 0 41)) (= FullPerm (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) x next))) (=> (= FullPerm (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) x next)) (=> (and (= Heap@0 (PolymorphicMapType_10386 (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@18) (store (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@18) x next null) (|PolymorphicMapType_10386_10446_28135#PolymorphicMapType_10386| Heap@@18) (|PolymorphicMapType_10386_10446_27958#PolymorphicMapType_10386| Heap@@18))) (state Heap@0 QPMask@0)) (and (=> (= (ControlFlow 0 39) (- 0 40)) true) (and (=> (= (ControlFlow 0 39) 30) anon37_Then_correct) (=> (= (ControlFlow 0 39) 37) anon37_Else_correct)))))))))))
(let ((anon36_Then_correct  (and (=> (= (ControlFlow 0 27) (- 0 28)) (forall ((n_10_1 T@Ref) (n_10_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1 n_10_2)) (select g_1 n_10_1)) (select g_1 n_10_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_10_1 n_10_2)))
 :qid |stdinbpl.954:21|
 :skolemid |127|
 :pattern ( (neverTriggered10 n_10_1) (neverTriggered10 n_10_2))
))) (=> (forall ((n_10_1@@0 T@Ref) (n_10_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@0 n_10_2@@0)) (select g_1 n_10_1@@0)) (select g_1 n_10_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_10_1@@0 n_10_2@@0)))
 :qid |stdinbpl.954:21|
 :skolemid |127|
 :pattern ( (neverTriggered10 n_10_1@@0) (neverTriggered10 n_10_2@@0))
)) (=> (= (ControlFlow 0 27) (- 0 26)) (forall ((n_10_1@@1 T@Ref) ) (!  (=> (select g_1 n_10_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) n_10_1@@1 next) NoPerm)))
 :qid |stdinbpl.961:21|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@18) n_10_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@7) n_10_1@@1 next))
 :pattern ( (select g_1 n_10_1@@1))
)))))))
(let ((anon35_Else_correct  (and (=> (= (ControlFlow 0 43) (- 0 44)) (|Set#Equal_3519| old_g@0 ($$ Heap@@18 g_1))) (=> (|Set#Equal_3519| old_g@0 ($$ Heap@@18 g_1)) (=> (state Heap@@18 QPMask@0) (and (=> (= (ControlFlow 0 43) 27) anon36_Then_correct) (=> (= (ControlFlow 0 43) 39) anon36_Else_correct)))))))
(let ((anon35_Then_correct  (and (=> (= (ControlFlow 0 24) (- 0 25)) (forall ((n_9 T@Ref) (n_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9 n_9_1)) (select g_1 n_9)) (select g_1 n_9_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_9 n_9_1)))
 :qid |stdinbpl.906:21|
 :skolemid |123|
 :pattern ( (neverTriggered9 n_9) (neverTriggered9 n_9_1))
))) (=> (forall ((n_9@@0 T@Ref) (n_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@0 n_9_1@@0)) (select g_1 n_9@@0)) (select g_1 n_9_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_9@@0 n_9_1@@0)))
 :qid |stdinbpl.906:21|
 :skolemid |123|
 :pattern ( (neverTriggered9 n_9@@0) (neverTriggered9 n_9_1@@0))
)) (=> (= (ControlFlow 0 24) (- 0 23)) (forall ((n_9@@1 T@Ref) ) (!  (=> (select g_1 n_9@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) n_9@@1 next) NoPerm)))
 :qid |stdinbpl.913:21|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@18) n_9@@1 next))
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@6) n_9@@1 next))
 :pattern ( (select g_1 n_9@@1))
)))))))
(let ((anon34_Else_correct  (=> (and (= old_g@0 ($$ Heap@@18 g_1)) (state Heap@@18 QPMask@0)) (and (=> (= (ControlFlow 0 45) (- 0 46)) true) (and (=> (= (ControlFlow 0 45) 24) anon35_Then_correct) (=> (= (ControlFlow 0 45) 43) anon35_Else_correct))))))
(let ((anon34_Then_correct  (and (=> (= (ControlFlow 0 21) (- 0 22)) (forall ((n_8 T@Ref) (n_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8 n_8_1)) (select g_1 n_8)) (select g_1 n_8_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_8 n_8_1)))
 :qid |stdinbpl.857:21|
 :skolemid |119|
 :pattern ( (neverTriggered8 n_8) (neverTriggered8 n_8_1))
))) (=> (forall ((n_8@@0 T@Ref) (n_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_8@@0 n_8_1@@0)) (select g_1 n_8@@0)) (select g_1 n_8_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_8@@0 n_8_1@@0)))
 :qid |stdinbpl.857:21|
 :skolemid |119|
 :pattern ( (neverTriggered8 n_8@@0) (neverTriggered8 n_8_1@@0))
)) (=> (= (ControlFlow 0 21) (- 0 20)) (forall ((n_8@@1 T@Ref) ) (!  (=> (select g_1 n_8@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) n_8@@1 next) NoPerm)))
 :qid |stdinbpl.864:21|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@18) n_8@@1 next))
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@5) n_8@@1 next))
 :pattern ( (select g_1 n_8@@1))
)))))))
(let ((anon33_Else_correct  (and (=> (= (ControlFlow 0 47) (- 0 48)) (|Set#Equal_3519| ($$ Heap@@18 g_1) ($$ Heap@@18 g_1))) (=> (|Set#Equal_3519| ($$ Heap@@18 g_1) ($$ Heap@@18 g_1)) (=> (state Heap@@18 QPMask@0) (and (=> (= (ControlFlow 0 47) 21) anon34_Then_correct) (=> (= (ControlFlow 0 47) 45) anon34_Else_correct)))))))
(let ((anon33_Then_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (forall ((n_7 T@Ref) (n_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7 n_7_1)) (select g_1 n_7)) (select g_1 n_7_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7 n_7_1)))
 :qid |stdinbpl.814:21|
 :skolemid |115|
 :pattern ( (neverTriggered7 n_7) (neverTriggered7 n_7_1))
))) (=> (forall ((n_7@@0 T@Ref) (n_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_7@@0 n_7_1@@0)) (select g_1 n_7@@0)) (select g_1 n_7_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_7@@0 n_7_1@@0)))
 :qid |stdinbpl.814:21|
 :skolemid |115|
 :pattern ( (neverTriggered7 n_7@@0) (neverTriggered7 n_7_1@@0))
)) (=> (= (ControlFlow 0 18) (- 0 17)) (forall ((n_7@@1 T@Ref) ) (!  (=> (select g_1 n_7@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) n_7@@1 next) NoPerm)))
 :qid |stdinbpl.821:21|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@18) n_7@@1 next))
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@4) n_7@@1 next))
 :pattern ( (select g_1 n_7@@1))
)))))))
(let ((anon32_Then_correct  (and (=> (= (ControlFlow 0 15) (- 0 16)) (forall ((n_6 T@Ref) (n_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6 n_6_1)) (select g_1 n_6)) (select g_1 n_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6 n_6_1)))
 :qid |stdinbpl.775:21|
 :skolemid |111|
 :pattern ( (neverTriggered6 n_6) (neverTriggered6 n_6_1))
))) (=> (forall ((n_6@@0 T@Ref) (n_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_6@@0 n_6_1@@0)) (select g_1 n_6@@0)) (select g_1 n_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_6@@0 n_6_1@@0)))
 :qid |stdinbpl.775:21|
 :skolemid |111|
 :pattern ( (neverTriggered6 n_6@@0) (neverTriggered6 n_6_1@@0))
)) (=> (= (ControlFlow 0 15) (- 0 14)) (forall ((n_6@@1 T@Ref) ) (!  (=> (select g_1 n_6@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) n_6@@1 next) NoPerm)))
 :qid |stdinbpl.782:21|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@18) n_6@@1 next))
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@3) n_6@@1 next))
 :pattern ( (select g_1 n_6@@1))
)))))))
(let ((anon31_Else_correct  (and (=> (= (ControlFlow 0 49) (- 0 50)) (|Set#Equal_3519| ($$ Heap@@18 g_1) ($$ Heap@@18 g_1))) (=> (|Set#Equal_3519| ($$ Heap@@18 g_1) ($$ Heap@@18 g_1)) (=> (state Heap@@18 QPMask@0) (and (and (=> (= (ControlFlow 0 49) 15) anon32_Then_correct) (=> (= (ControlFlow 0 49) 18) anon33_Then_correct)) (=> (= (ControlFlow 0 49) 47) anon33_Else_correct)))))))
(let ((anon31_Then_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall ((n_5 T@Ref) (n_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5 n_5_1)) (select g_1 n_5)) (select g_1 n_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5 n_5_1)))
 :qid |stdinbpl.727:21|
 :skolemid |107|
 :pattern ( (neverTriggered5 n_5) (neverTriggered5 n_5_1))
))) (=> (forall ((n_5@@0 T@Ref) (n_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_5@@0 n_5_1@@0)) (select g_1 n_5@@0)) (select g_1 n_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_5@@0 n_5_1@@0)))
 :qid |stdinbpl.727:21|
 :skolemid |107|
 :pattern ( (neverTriggered5 n_5@@0) (neverTriggered5 n_5_1@@0))
)) (=> (= (ControlFlow 0 12) (- 0 11)) (forall ((n_5@@1 T@Ref) ) (!  (=> (select g_1 n_5@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) n_5@@1 next) NoPerm)))
 :qid |stdinbpl.734:21|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@18) n_5@@1 next))
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@2) n_5@@1 next))
 :pattern ( (select g_1 n_5@@1))
)))))))
(let ((anon30_Else_correct  (and (=> (= (ControlFlow 0 51) (- 0 52)) true) (and (=> (= (ControlFlow 0 51) 12) anon31_Then_correct) (=> (= (ControlFlow 0 51) 49) anon31_Else_correct)))))
(let ((anon30_Then_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (forall ((n_4_1 T@Ref) (n_4_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4_1 n_4_2)) (select g_1 n_4_1)) (select g_1 n_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_4_1 n_4_2)))
 :qid |stdinbpl.686:21|
 :skolemid |103|
 :pattern ( (neverTriggered4 n_4_1) (neverTriggered4 n_4_2))
))) (=> (forall ((n_4_1@@0 T@Ref) (n_4_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_4_1@@0 n_4_2@@0)) (select g_1 n_4_1@@0)) (select g_1 n_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_4_1@@0 n_4_2@@0)))
 :qid |stdinbpl.686:21|
 :skolemid |103|
 :pattern ( (neverTriggered4 n_4_1@@0) (neverTriggered4 n_4_2@@0))
)) (=> (= (ControlFlow 0 9) (- 0 8)) (forall ((n_4_1@@1 T@Ref) ) (!  (=> (select g_1 n_4_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) n_4_1@@1 next) NoPerm)))
 :qid |stdinbpl.693:21|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@18) n_4_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@1) n_4_1@@1 next))
 :pattern ( (select g_1 n_4_1@@1))
)))))))
(let ((anon27_Else_correct  (=> (forall ((n_3 T@Ref) ) (!  (=> (select g_1 n_3) (exists_path ($$ Heap@@18 g_1) x n_3))
 :qid |stdinbpl.651:20|
 :skolemid |102|
 :pattern ( (select g_1 n_3))
 :pattern ( (exists_path (|$$#frame| (FrameFragment_3649 (|$$#condqp1| Heap@@18 g_1)) g_1) x n_3))
)) (=> (and (state Heap@@18 QPMask@0) (state Heap@@18 QPMask@0)) (and (=> (= (ControlFlow 0 53) 9) anon30_Then_correct) (=> (= (ControlFlow 0 53) 51) anon30_Else_correct))))))
(let ((anon29_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (forall ((n$0_13 T@Ref) (n$0_42 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_13 n$0_42)) (select g_1 n$0_13)) (select g_1 n$0_42)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_13 n$0_42)))
 :qid |stdinbpl.620:25|
 :skolemid |98|
 :pattern ( (neverTriggered3 n$0_13) (neverTriggered3 n$0_42))
))) (=> (forall ((n$0_13@@0 T@Ref) (n$0_42@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_13@@0 n$0_42@@0)) (select g_1 n$0_13@@0)) (select g_1 n$0_42@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_13@@0 n$0_42@@0)))
 :qid |stdinbpl.620:25|
 :skolemid |98|
 :pattern ( (neverTriggered3 n$0_13@@0) (neverTriggered3 n$0_42@@0))
)) (=> (= (ControlFlow 0 5) (- 0 4)) (forall ((n$0_13@@1 T@Ref) ) (!  (=> (select g_1 n$0_13@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) n$0_13@@1 next) NoPerm)))
 :qid |stdinbpl.627:25|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@18) n$0_13@@1 next))
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@10) n$0_13@@1 next))
 :pattern ( (select g_1 n$0_13@@1))
)))))))
(let ((anon6_correct true))
(let ((anon28_Then_correct  (=> (select g_1 n_86) (and (=> (= (ControlFlow 0 7) 5) anon29_Then_correct) (=> (= (ControlFlow 0 7) 2) anon6_correct)))))
(let ((anon28_Else_correct  (=> (and (not (select g_1 n_86)) (= (ControlFlow 0 3) 2)) anon6_correct)))
(let ((anon26_Else_correct  (and (=> (= (ControlFlow 0 54) (- 0 55)) (forall ((n_1 T@Ref) (n_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1 n_1_1)) (select g_1 n_1)) (select g_1 n_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1 n_1_1)))
 :qid |stdinbpl.569:15|
 :skolemid |92|
))) (=> (forall ((n_1@@0 T@Ref) (n_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_1@@0 n_1_1@@0)) (select g_1 n_1@@0)) (select g_1 n_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_1@@0 n_1_1@@0)))
 :qid |stdinbpl.569:15|
 :skolemid |92|
)) (=> (and (and (forall ((n_1@@1 T@Ref) ) (!  (=> (and (select g_1 n_1@@1) (< NoPerm FullPerm)) (and (qpRange2 n_1@@1) (= (invRecv2 n_1@@1) n_1@@1)))
 :qid |stdinbpl.575:22|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@18) n_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) n_1@@1 next))
 :pattern ( (select g_1 n_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv2 o_4)) (< NoPerm FullPerm)) (qpRange2 o_4)) (= (invRecv2 o_4) o_4))
 :qid |stdinbpl.579:22|
 :skolemid |94|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((n_1@@2 T@Ref) ) (!  (=> (select g_1 n_1@@2) (not (= n_1@@2 null)))
 :qid |stdinbpl.585:22|
 :skolemid |95|
 :pattern ( (select (|PolymorphicMapType_10386_6368_6369#PolymorphicMapType_10386| Heap@@18) n_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) n_1@@2 next))
 :pattern ( (select g_1 n_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv2 o_4@@0)) (< NoPerm FullPerm)) (qpRange2 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv2 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) o_4@@0 next) (+ (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| ZeroMask) o_4@@0 next) FullPerm)))) (=> (not (and (and (select g_1 (invRecv2 o_4@@0)) (< NoPerm FullPerm)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) o_4@@0 next) (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| ZeroMask) o_4@@0 next))))
 :qid |stdinbpl.591:22|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) o_4@@0 next))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_10446_53) ) (!  (=> true (= (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.595:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_10407_6706_53#PolymorphicMapType_10407| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_10459_10460) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.595:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_10407_6706_6707#PolymorphicMapType_10407| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_10446_27958) ) (!  (=> true (= (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.595:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_10407_6706_27958#PolymorphicMapType_10407| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_10446_28091) ) (!  (=> true (= (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.595:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_10407_6706_31637#PolymorphicMapType_10407| QPMask@0) o_4@@4 f_5@@2))
))) (state Heap@@18 QPMask@0)) (and (and (state Heap@@18 QPMask@0) (select g_1 x)) (and (state Heap@@18 QPMask@0) (state Heap@@18 QPMask@0)))) (and (and (=> (= (ControlFlow 0 54) 53) anon27_Else_correct) (=> (= (ControlFlow 0 54) 7) anon28_Then_correct)) (=> (= (ControlFlow 0 54) 3) anon28_Else_correct))))))))
(let ((anon26_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@18 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_10386_6365_53#PolymorphicMapType_10386| Heap@@18) x $allocated))) (and (=> (= (ControlFlow 0 56) 1) anon26_Then_correct) (=> (= (ControlFlow 0 56) 54) anon26_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 57) 56) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid