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
(declare-sort T@Field_2995_53 0)
(declare-sort T@Field_3008_3009 0)
(declare-sort T@Field_6323_1210 0)
(declare-sort T@Field_2995_8313 0)
(declare-sort T@Field_2995_8180 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_2956 0)) (((PolymorphicMapType_2956 (|PolymorphicMapType_2956_1692_1210#PolymorphicMapType_2956| (Array T@Ref T@Field_6323_1210 Real)) (|PolymorphicMapType_2956_1692_53#PolymorphicMapType_2956| (Array T@Ref T@Field_2995_53 Real)) (|PolymorphicMapType_2956_1692_3009#PolymorphicMapType_2956| (Array T@Ref T@Field_3008_3009 Real)) (|PolymorphicMapType_2956_1692_8180#PolymorphicMapType_2956| (Array T@Ref T@Field_2995_8180 Real)) (|PolymorphicMapType_2956_1692_12435#PolymorphicMapType_2956| (Array T@Ref T@Field_2995_8313 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3484 0)) (((PolymorphicMapType_3484 (|PolymorphicMapType_3484_2995_53#PolymorphicMapType_3484| (Array T@Ref T@Field_2995_53 Bool)) (|PolymorphicMapType_3484_2995_3009#PolymorphicMapType_3484| (Array T@Ref T@Field_3008_3009 Bool)) (|PolymorphicMapType_3484_2995_1210#PolymorphicMapType_3484| (Array T@Ref T@Field_6323_1210 Bool)) (|PolymorphicMapType_3484_2995_8180#PolymorphicMapType_3484| (Array T@Ref T@Field_2995_8180 Bool)) (|PolymorphicMapType_3484_2995_9491#PolymorphicMapType_3484| (Array T@Ref T@Field_2995_8313 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_2935 0)) (((PolymorphicMapType_2935 (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| (Array T@Ref T@Field_2995_53 Bool)) (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| (Array T@Ref T@Field_3008_3009 T@Ref)) (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| (Array T@Ref T@Field_6323_1210 Int)) (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| (Array T@Ref T@Field_2995_8313 T@PolymorphicMapType_3484)) (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| (Array T@Ref T@Field_2995_8180 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_2995_53)
(declare-fun x_42 () T@Field_6323_1210)
(declare-fun succHeap (T@PolymorphicMapType_2935 T@PolymorphicMapType_2935) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_2935 T@PolymorphicMapType_2935) Bool)
(declare-fun state (T@PolymorphicMapType_2935 T@PolymorphicMapType_2956) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_2956) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3484)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_2935 T@PolymorphicMapType_2935 T@PolymorphicMapType_2956) Bool)
(declare-fun IsPredicateField_2995_8271 (T@Field_2995_8180) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2995 (T@Field_2995_8180) T@Field_2995_8313)
(declare-fun HasDirectPerm_2995_8244 (T@PolymorphicMapType_2956 T@Ref T@Field_2995_8180) Bool)
(declare-fun IsWandField_2995_10018 (T@Field_2995_8180) Bool)
(declare-fun WandMaskField_2995 (T@Field_2995_8180) T@Field_2995_8313)
(declare-fun dummyHeap () T@PolymorphicMapType_2935)
(declare-fun ZeroMask () T@PolymorphicMapType_2956)
(declare-fun InsidePredicate_2995_2995 (T@Field_2995_8180 T@FrameType T@Field_2995_8180 T@FrameType) Bool)
(declare-fun IsPredicateField_1692_1210 (T@Field_6323_1210) Bool)
(declare-fun IsWandField_1692_1210 (T@Field_6323_1210) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_1692_13564 (T@Field_2995_8313) Bool)
(declare-fun IsWandField_1692_13580 (T@Field_2995_8313) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_1692_3009 (T@Field_3008_3009) Bool)
(declare-fun IsWandField_1692_3009 (T@Field_3008_3009) Bool)
(declare-fun IsPredicateField_1692_53 (T@Field_2995_53) Bool)
(declare-fun IsWandField_1692_53 (T@Field_2995_53) Bool)
(declare-fun HasDirectPerm_2995_14018 (T@PolymorphicMapType_2956 T@Ref T@Field_2995_8313) Bool)
(declare-fun HasDirectPerm_2995_1210 (T@PolymorphicMapType_2956 T@Ref T@Field_6323_1210) Bool)
(declare-fun HasDirectPerm_2995_3009 (T@PolymorphicMapType_2956 T@Ref T@Field_3008_3009) Bool)
(declare-fun HasDirectPerm_2995_53 (T@PolymorphicMapType_2956 T@Ref T@Field_2995_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_2956 T@PolymorphicMapType_2956 T@PolymorphicMapType_2956) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_2935) (Heap1 T@PolymorphicMapType_2935) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_2935) (Mask T@PolymorphicMapType_2956) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_2935) (Heap1@@0 T@PolymorphicMapType_2935) (Heap2 T@PolymorphicMapType_2935) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2995_8313) ) (!  (not (select (|PolymorphicMapType_3484_2995_9491#PolymorphicMapType_3484| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3484_2995_9491#PolymorphicMapType_3484| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2995_8180) ) (!  (not (select (|PolymorphicMapType_3484_2995_8180#PolymorphicMapType_3484| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3484_2995_8180#PolymorphicMapType_3484| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6323_1210) ) (!  (not (select (|PolymorphicMapType_3484_2995_1210#PolymorphicMapType_3484| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3484_2995_1210#PolymorphicMapType_3484| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3008_3009) ) (!  (not (select (|PolymorphicMapType_3484_2995_3009#PolymorphicMapType_3484| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3484_2995_3009#PolymorphicMapType_3484| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_2995_53) ) (!  (not (select (|PolymorphicMapType_3484_2995_53#PolymorphicMapType_3484| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3484_2995_53#PolymorphicMapType_3484| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_2935) (ExhaleHeap T@PolymorphicMapType_2935) (Mask@@0 T@PolymorphicMapType_2956) (pm_f_26 T@Field_2995_8180) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2995_8244 Mask@@0 null pm_f_26) (IsPredicateField_2995_8271 pm_f_26)) (= (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@0) null (PredicateMaskField_2995 pm_f_26)) (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| ExhaleHeap) null (PredicateMaskField_2995 pm_f_26)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2995_8271 pm_f_26) (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| ExhaleHeap) null (PredicateMaskField_2995 pm_f_26)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_2935) (ExhaleHeap@@0 T@PolymorphicMapType_2935) (Mask@@1 T@PolymorphicMapType_2956) (pm_f_26@@0 T@Field_2995_8180) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2995_8244 Mask@@1 null pm_f_26@@0) (IsWandField_2995_10018 pm_f_26@@0)) (= (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@1) null (WandMaskField_2995 pm_f_26@@0)) (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| ExhaleHeap@@0) null (WandMaskField_2995 pm_f_26@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_2995_10018 pm_f_26@@0) (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| ExhaleHeap@@0) null (WandMaskField_2995 pm_f_26@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_2935) (ExhaleHeap@@1 T@PolymorphicMapType_2935) (Mask@@2 T@PolymorphicMapType_2956) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@2) o_38 $allocated) (select (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| ExhaleHeap@@1) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| ExhaleHeap@@1) o_38 $allocated))
)))
(assert (forall ((p T@Field_2995_8180) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_2995_2995 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_2995_2995 p v_1 p w))
)))
(assert  (not (IsPredicateField_1692_1210 x_42)))
(assert  (not (IsWandField_1692_1210 x_42)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_2935) (ExhaleHeap@@2 T@PolymorphicMapType_2935) (Mask@@3 T@PolymorphicMapType_2956) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_2956) (o_2@@4 T@Ref) (f_4@@4 T@Field_2995_8313) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_2956_1692_12435#PolymorphicMapType_2956| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_1692_13564 f_4@@4))) (not (IsWandField_1692_13580 f_4@@4))) (<= (select (|PolymorphicMapType_2956_1692_12435#PolymorphicMapType_2956| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_2956_1692_12435#PolymorphicMapType_2956| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_2956) (o_2@@5 T@Ref) (f_4@@5 T@Field_2995_8180) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_2956_1692_8180#PolymorphicMapType_2956| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2995_8271 f_4@@5))) (not (IsWandField_2995_10018 f_4@@5))) (<= (select (|PolymorphicMapType_2956_1692_8180#PolymorphicMapType_2956| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_2956_1692_8180#PolymorphicMapType_2956| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_2956) (o_2@@6 T@Ref) (f_4@@6 T@Field_3008_3009) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_2956_1692_3009#PolymorphicMapType_2956| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_1692_3009 f_4@@6))) (not (IsWandField_1692_3009 f_4@@6))) (<= (select (|PolymorphicMapType_2956_1692_3009#PolymorphicMapType_2956| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_2956_1692_3009#PolymorphicMapType_2956| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_2956) (o_2@@7 T@Ref) (f_4@@7 T@Field_2995_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_2956_1692_53#PolymorphicMapType_2956| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_1692_53 f_4@@7))) (not (IsWandField_1692_53 f_4@@7))) (<= (select (|PolymorphicMapType_2956_1692_53#PolymorphicMapType_2956| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_2956_1692_53#PolymorphicMapType_2956| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_2956) (o_2@@8 T@Ref) (f_4@@8 T@Field_6323_1210) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_2956_1692_1210#PolymorphicMapType_2956| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_1692_1210 f_4@@8))) (not (IsWandField_1692_1210 f_4@@8))) (<= (select (|PolymorphicMapType_2956_1692_1210#PolymorphicMapType_2956| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_2956_1692_1210#PolymorphicMapType_2956| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_2956) (o_2@@9 T@Ref) (f_4@@9 T@Field_2995_8313) ) (! (= (HasDirectPerm_2995_14018 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_2956_1692_12435#PolymorphicMapType_2956| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2995_14018 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_2956) (o_2@@10 T@Ref) (f_4@@10 T@Field_2995_8180) ) (! (= (HasDirectPerm_2995_8244 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_2956_1692_8180#PolymorphicMapType_2956| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2995_8244 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_2956) (o_2@@11 T@Ref) (f_4@@11 T@Field_6323_1210) ) (! (= (HasDirectPerm_2995_1210 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_2956_1692_1210#PolymorphicMapType_2956| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2995_1210 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_2956) (o_2@@12 T@Ref) (f_4@@12 T@Field_3008_3009) ) (! (= (HasDirectPerm_2995_3009 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_2956_1692_3009#PolymorphicMapType_2956| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2995_3009 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_2956) (o_2@@13 T@Ref) (f_4@@13 T@Field_2995_53) ) (! (= (HasDirectPerm_2995_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_2956_1692_53#PolymorphicMapType_2956| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2995_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_2935) (ExhaleHeap@@3 T@PolymorphicMapType_2935) (Mask@@14 T@PolymorphicMapType_2956) (pm_f_26@@1 T@Field_2995_8180) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_2995_8244 Mask@@14 null pm_f_26@@1) (IsPredicateField_2995_8271 pm_f_26@@1)) (and (and (and (and (forall ((o2_26 T@Ref) (f_51 T@Field_2995_53) ) (!  (=> (select (|PolymorphicMapType_3484_2995_53#PolymorphicMapType_3484| (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@4) null (PredicateMaskField_2995 pm_f_26@@1))) o2_26 f_51) (= (select (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@4) o2_26 f_51) (select (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| ExhaleHeap@@3) o2_26 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| ExhaleHeap@@3) o2_26 f_51))
)) (forall ((o2_26@@0 T@Ref) (f_51@@0 T@Field_3008_3009) ) (!  (=> (select (|PolymorphicMapType_3484_2995_3009#PolymorphicMapType_3484| (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@4) null (PredicateMaskField_2995 pm_f_26@@1))) o2_26@@0 f_51@@0) (= (select (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| Heap@@4) o2_26@@0 f_51@@0) (select (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| ExhaleHeap@@3) o2_26@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| ExhaleHeap@@3) o2_26@@0 f_51@@0))
))) (forall ((o2_26@@1 T@Ref) (f_51@@1 T@Field_6323_1210) ) (!  (=> (select (|PolymorphicMapType_3484_2995_1210#PolymorphicMapType_3484| (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@4) null (PredicateMaskField_2995 pm_f_26@@1))) o2_26@@1 f_51@@1) (= (select (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| Heap@@4) o2_26@@1 f_51@@1) (select (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| ExhaleHeap@@3) o2_26@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| ExhaleHeap@@3) o2_26@@1 f_51@@1))
))) (forall ((o2_26@@2 T@Ref) (f_51@@2 T@Field_2995_8180) ) (!  (=> (select (|PolymorphicMapType_3484_2995_8180#PolymorphicMapType_3484| (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@4) null (PredicateMaskField_2995 pm_f_26@@1))) o2_26@@2 f_51@@2) (= (select (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| Heap@@4) o2_26@@2 f_51@@2) (select (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| ExhaleHeap@@3) o2_26@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| ExhaleHeap@@3) o2_26@@2 f_51@@2))
))) (forall ((o2_26@@3 T@Ref) (f_51@@3 T@Field_2995_8313) ) (!  (=> (select (|PolymorphicMapType_3484_2995_9491#PolymorphicMapType_3484| (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@4) null (PredicateMaskField_2995 pm_f_26@@1))) o2_26@@3 f_51@@3) (= (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@4) o2_26@@3 f_51@@3) (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| ExhaleHeap@@3) o2_26@@3 f_51@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| ExhaleHeap@@3) o2_26@@3 f_51@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_2995_8271 pm_f_26@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_2935) (ExhaleHeap@@4 T@PolymorphicMapType_2935) (Mask@@15 T@PolymorphicMapType_2956) (pm_f_26@@2 T@Field_2995_8180) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_2995_8244 Mask@@15 null pm_f_26@@2) (IsWandField_2995_10018 pm_f_26@@2)) (and (and (and (and (forall ((o2_26@@4 T@Ref) (f_51@@4 T@Field_2995_53) ) (!  (=> (select (|PolymorphicMapType_3484_2995_53#PolymorphicMapType_3484| (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@5) null (WandMaskField_2995 pm_f_26@@2))) o2_26@@4 f_51@@4) (= (select (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@5) o2_26@@4 f_51@@4) (select (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| ExhaleHeap@@4) o2_26@@4 f_51@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| ExhaleHeap@@4) o2_26@@4 f_51@@4))
)) (forall ((o2_26@@5 T@Ref) (f_51@@5 T@Field_3008_3009) ) (!  (=> (select (|PolymorphicMapType_3484_2995_3009#PolymorphicMapType_3484| (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@5) null (WandMaskField_2995 pm_f_26@@2))) o2_26@@5 f_51@@5) (= (select (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| Heap@@5) o2_26@@5 f_51@@5) (select (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| ExhaleHeap@@4) o2_26@@5 f_51@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| ExhaleHeap@@4) o2_26@@5 f_51@@5))
))) (forall ((o2_26@@6 T@Ref) (f_51@@6 T@Field_6323_1210) ) (!  (=> (select (|PolymorphicMapType_3484_2995_1210#PolymorphicMapType_3484| (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@5) null (WandMaskField_2995 pm_f_26@@2))) o2_26@@6 f_51@@6) (= (select (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| Heap@@5) o2_26@@6 f_51@@6) (select (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| ExhaleHeap@@4) o2_26@@6 f_51@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| ExhaleHeap@@4) o2_26@@6 f_51@@6))
))) (forall ((o2_26@@7 T@Ref) (f_51@@7 T@Field_2995_8180) ) (!  (=> (select (|PolymorphicMapType_3484_2995_8180#PolymorphicMapType_3484| (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@5) null (WandMaskField_2995 pm_f_26@@2))) o2_26@@7 f_51@@7) (= (select (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| Heap@@5) o2_26@@7 f_51@@7) (select (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| ExhaleHeap@@4) o2_26@@7 f_51@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| ExhaleHeap@@4) o2_26@@7 f_51@@7))
))) (forall ((o2_26@@8 T@Ref) (f_51@@8 T@Field_2995_8313) ) (!  (=> (select (|PolymorphicMapType_3484_2995_9491#PolymorphicMapType_3484| (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@5) null (WandMaskField_2995 pm_f_26@@2))) o2_26@@8 f_51@@8) (= (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@5) o2_26@@8 f_51@@8) (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| ExhaleHeap@@4) o2_26@@8 f_51@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| ExhaleHeap@@4) o2_26@@8 f_51@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_2995_10018 pm_f_26@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_2935) (ExhaleHeap@@5 T@PolymorphicMapType_2935) (Mask@@16 T@PolymorphicMapType_2956) (o_38@@0 T@Ref) (f_51@@9 T@Field_2995_8313) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_2995_14018 Mask@@16 o_38@@0 f_51@@9) (= (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@6) o_38@@0 f_51@@9) (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| ExhaleHeap@@5) o_38@@0 f_51@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| ExhaleHeap@@5) o_38@@0 f_51@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_2935) (ExhaleHeap@@6 T@PolymorphicMapType_2935) (Mask@@17 T@PolymorphicMapType_2956) (o_38@@1 T@Ref) (f_51@@10 T@Field_2995_8180) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_2995_8244 Mask@@17 o_38@@1 f_51@@10) (= (select (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| Heap@@7) o_38@@1 f_51@@10) (select (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| ExhaleHeap@@6) o_38@@1 f_51@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| ExhaleHeap@@6) o_38@@1 f_51@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_2935) (ExhaleHeap@@7 T@PolymorphicMapType_2935) (Mask@@18 T@PolymorphicMapType_2956) (o_38@@2 T@Ref) (f_51@@11 T@Field_6323_1210) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_2995_1210 Mask@@18 o_38@@2 f_51@@11) (= (select (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| Heap@@8) o_38@@2 f_51@@11) (select (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| ExhaleHeap@@7) o_38@@2 f_51@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| ExhaleHeap@@7) o_38@@2 f_51@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_2935) (ExhaleHeap@@8 T@PolymorphicMapType_2935) (Mask@@19 T@PolymorphicMapType_2956) (o_38@@3 T@Ref) (f_51@@12 T@Field_3008_3009) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_2995_3009 Mask@@19 o_38@@3 f_51@@12) (= (select (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| Heap@@9) o_38@@3 f_51@@12) (select (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| ExhaleHeap@@8) o_38@@3 f_51@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| ExhaleHeap@@8) o_38@@3 f_51@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_2935) (ExhaleHeap@@9 T@PolymorphicMapType_2935) (Mask@@20 T@PolymorphicMapType_2956) (o_38@@4 T@Ref) (f_51@@13 T@Field_2995_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_2995_53 Mask@@20 o_38@@4 f_51@@13) (= (select (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@10) o_38@@4 f_51@@13) (select (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| ExhaleHeap@@9) o_38@@4 f_51@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| ExhaleHeap@@9) o_38@@4 f_51@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2995_8313) ) (! (= (select (|PolymorphicMapType_2956_1692_12435#PolymorphicMapType_2956| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2956_1692_12435#PolymorphicMapType_2956| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_2995_8180) ) (! (= (select (|PolymorphicMapType_2956_1692_8180#PolymorphicMapType_2956| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2956_1692_8180#PolymorphicMapType_2956| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_3008_3009) ) (! (= (select (|PolymorphicMapType_2956_1692_3009#PolymorphicMapType_2956| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2956_1692_3009#PolymorphicMapType_2956| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_2995_53) ) (! (= (select (|PolymorphicMapType_2956_1692_53#PolymorphicMapType_2956| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2956_1692_53#PolymorphicMapType_2956| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_6323_1210) ) (! (= (select (|PolymorphicMapType_2956_1692_1210#PolymorphicMapType_2956| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2956_1692_1210#PolymorphicMapType_2956| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_2956) (SummandMask1 T@PolymorphicMapType_2956) (SummandMask2 T@PolymorphicMapType_2956) (o_2@@19 T@Ref) (f_4@@19 T@Field_2995_8313) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_2956_1692_12435#PolymorphicMapType_2956| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_2956_1692_12435#PolymorphicMapType_2956| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_2956_1692_12435#PolymorphicMapType_2956| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2956_1692_12435#PolymorphicMapType_2956| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2956_1692_12435#PolymorphicMapType_2956| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2956_1692_12435#PolymorphicMapType_2956| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_2956) (SummandMask1@@0 T@PolymorphicMapType_2956) (SummandMask2@@0 T@PolymorphicMapType_2956) (o_2@@20 T@Ref) (f_4@@20 T@Field_2995_8180) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_2956_1692_8180#PolymorphicMapType_2956| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_2956_1692_8180#PolymorphicMapType_2956| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_2956_1692_8180#PolymorphicMapType_2956| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2956_1692_8180#PolymorphicMapType_2956| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2956_1692_8180#PolymorphicMapType_2956| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2956_1692_8180#PolymorphicMapType_2956| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_2956) (SummandMask1@@1 T@PolymorphicMapType_2956) (SummandMask2@@1 T@PolymorphicMapType_2956) (o_2@@21 T@Ref) (f_4@@21 T@Field_3008_3009) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_2956_1692_3009#PolymorphicMapType_2956| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_2956_1692_3009#PolymorphicMapType_2956| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_2956_1692_3009#PolymorphicMapType_2956| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2956_1692_3009#PolymorphicMapType_2956| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2956_1692_3009#PolymorphicMapType_2956| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2956_1692_3009#PolymorphicMapType_2956| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_2956) (SummandMask1@@2 T@PolymorphicMapType_2956) (SummandMask2@@2 T@PolymorphicMapType_2956) (o_2@@22 T@Ref) (f_4@@22 T@Field_2995_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_2956_1692_53#PolymorphicMapType_2956| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_2956_1692_53#PolymorphicMapType_2956| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_2956_1692_53#PolymorphicMapType_2956| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2956_1692_53#PolymorphicMapType_2956| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2956_1692_53#PolymorphicMapType_2956| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2956_1692_53#PolymorphicMapType_2956| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_2956) (SummandMask1@@3 T@PolymorphicMapType_2956) (SummandMask2@@3 T@PolymorphicMapType_2956) (o_2@@23 T@Ref) (f_4@@23 T@Field_6323_1210) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_2956_1692_1210#PolymorphicMapType_2956| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_2956_1692_1210#PolymorphicMapType_2956| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_2956_1692_1210#PolymorphicMapType_2956| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_2956_1692_1210#PolymorphicMapType_2956| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_2956_1692_1210#PolymorphicMapType_2956| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_2956_1692_1210#PolymorphicMapType_2956| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_2935) (o_56 T@Ref) (f_22 T@Field_2995_8180) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_2935 (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@11) (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| Heap@@11) (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| Heap@@11) (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@11) (store (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| Heap@@11) o_56 f_22 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2935 (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@11) (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| Heap@@11) (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| Heap@@11) (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@11) (store (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| Heap@@11) o_56 f_22 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_2935) (o_56@@0 T@Ref) (f_22@@0 T@Field_2995_8313) (v@@0 T@PolymorphicMapType_3484) ) (! (succHeap Heap@@12 (PolymorphicMapType_2935 (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@12) (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| Heap@@12) (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| Heap@@12) (store (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@12) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2935 (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@12) (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| Heap@@12) (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| Heap@@12) (store (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@12) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_2935) (o_56@@1 T@Ref) (f_22@@1 T@Field_6323_1210) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_2935 (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@13) (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| Heap@@13) (store (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| Heap@@13) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@13) (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2935 (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@13) (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| Heap@@13) (store (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| Heap@@13) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@13) (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_2935) (o_56@@2 T@Ref) (f_22@@2 T@Field_3008_3009) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_2935 (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@14) (store (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| Heap@@14) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| Heap@@14) (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@14) (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2935 (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@14) (store (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| Heap@@14) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| Heap@@14) (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@14) (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_2935) (o_56@@3 T@Ref) (f_22@@3 T@Field_2995_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_2935 (store (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@15) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| Heap@@15) (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| Heap@@15) (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@15) (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2935 (store (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@15) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| Heap@@15) (|PolymorphicMapType_2935_2995_1210#PolymorphicMapType_2935| Heap@@15) (|PolymorphicMapType_2935_2995_8357#PolymorphicMapType_2935| Heap@@15) (|PolymorphicMapType_2935_2995_8180#PolymorphicMapType_2935| Heap@@15)))
)))
(assert (forall ((o_56@@4 T@Ref) (f_3 T@Field_3008_3009) (Heap@@16 T@PolymorphicMapType_2935) ) (!  (=> (select (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@16) o_56@@4 $allocated) (select (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@16) (select (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| Heap@@16) o_56@@4 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_2935_1565_1566#PolymorphicMapType_2935| Heap@@16) o_56@@4 f_3))
)))
(assert (forall ((p@@1 T@Field_2995_8180) (v_1@@0 T@FrameType) (q T@Field_2995_8180) (w@@0 T@FrameType) (r T@Field_2995_8180) (u T@FrameType) ) (!  (=> (and (InsidePredicate_2995_2995 p@@1 v_1@@0 q w@@0) (InsidePredicate_2995_2995 q w@@0 r u)) (InsidePredicate_2995_2995 p@@1 v_1@@0 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2995_2995 p@@1 v_1@@0 q w@@0) (InsidePredicate_2995_2995 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered1 (Int) Bool)
(declare-fun e_1 () T@Ref)
(declare-fun Heap@@17 () T@PolymorphicMapType_2935)
(set-info :boogie-vc-id m_17)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (< i_1 4) (> i_1 0))) (and (< i_1_1 4) (> i_1_1 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= e_1 e_1)))
 :qid |stdinbpl.245:17|
 :skolemid |22|
 :pattern ( (neverTriggered1 i_1) (neverTriggered1 i_1_1))
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (< i_1@@0 4) (> i_1@@0 0))) (and (< i_1_1@@0 4) (> i_1_1@@0 0))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= e_1 e_1)))
 :qid |stdinbpl.245:17|
 :skolemid |22|
 :pattern ( (neverTriggered1 i_1@@0) (neverTriggered1 i_1_1@@0))
)) (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((i_1@@1 Int) ) (!  (=> (and (< i_1@@1 4) (> i_1@@1 0)) (>= (select (|PolymorphicMapType_2956_1692_1210#PolymorphicMapType_2956| ZeroMask) e_1 x_42) FullPerm))
 :qid |stdinbpl.252:17|
 :skolemid |23|
)))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_2935_1562_53#PolymorphicMapType_2935| Heap@@17) e_1 $allocated)) (and (=> (= (ControlFlow 0 5) 1) anon3_Then_correct) (=> (= (ControlFlow 0 5) 3) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 4))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
