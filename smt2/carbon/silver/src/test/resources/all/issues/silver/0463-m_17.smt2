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
(declare-sort T@Field_5877_53 0)
(declare-sort T@Field_5890_5891 0)
(declare-sort T@Field_12047_3197 0)
(declare-sort T@Field_5877_13581 0)
(declare-sort T@Field_5877_13448 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5838 0)) (((PolymorphicMapType_5838 (|PolymorphicMapType_5838_3688_3197#PolymorphicMapType_5838| (Array T@Ref T@Field_12047_3197 Real)) (|PolymorphicMapType_5838_3688_53#PolymorphicMapType_5838| (Array T@Ref T@Field_5877_53 Real)) (|PolymorphicMapType_5838_3688_5891#PolymorphicMapType_5838| (Array T@Ref T@Field_5890_5891 Real)) (|PolymorphicMapType_5838_3688_13448#PolymorphicMapType_5838| (Array T@Ref T@Field_5877_13448 Real)) (|PolymorphicMapType_5838_3688_17703#PolymorphicMapType_5838| (Array T@Ref T@Field_5877_13581 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6366 0)) (((PolymorphicMapType_6366 (|PolymorphicMapType_6366_5877_53#PolymorphicMapType_6366| (Array T@Ref T@Field_5877_53 Bool)) (|PolymorphicMapType_6366_5877_5891#PolymorphicMapType_6366| (Array T@Ref T@Field_5890_5891 Bool)) (|PolymorphicMapType_6366_5877_3197#PolymorphicMapType_6366| (Array T@Ref T@Field_12047_3197 Bool)) (|PolymorphicMapType_6366_5877_13448#PolymorphicMapType_6366| (Array T@Ref T@Field_5877_13448 Bool)) (|PolymorphicMapType_6366_5877_14759#PolymorphicMapType_6366| (Array T@Ref T@Field_5877_13581 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5817 0)) (((PolymorphicMapType_5817 (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| (Array T@Ref T@Field_5877_53 Bool)) (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| (Array T@Ref T@Field_5890_5891 T@Ref)) (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| (Array T@Ref T@Field_12047_3197 Int)) (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| (Array T@Ref T@Field_5877_13581 T@PolymorphicMapType_6366)) (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| (Array T@Ref T@Field_5877_13448 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5877_53)
(declare-fun f_7 () T@Field_12047_3197)
(declare-fun succHeap (T@PolymorphicMapType_5817 T@PolymorphicMapType_5817) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5817 T@PolymorphicMapType_5817) Bool)
(declare-fun state (T@PolymorphicMapType_5817 T@PolymorphicMapType_5838) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5838) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6366)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5817 T@PolymorphicMapType_5817 T@PolymorphicMapType_5838) Bool)
(declare-fun IsPredicateField_5877_13539 (T@Field_5877_13448) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5877 (T@Field_5877_13448) T@Field_5877_13581)
(declare-fun HasDirectPerm_5877_13512 (T@PolymorphicMapType_5838 T@Ref T@Field_5877_13448) Bool)
(declare-fun IsWandField_5877_15286 (T@Field_5877_13448) Bool)
(declare-fun WandMaskField_5877 (T@Field_5877_13448) T@Field_5877_13581)
(declare-fun dummyHeap () T@PolymorphicMapType_5817)
(declare-fun ZeroMask () T@PolymorphicMapType_5838)
(declare-fun InsidePredicate_5877_5877 (T@Field_5877_13448 T@FrameType T@Field_5877_13448 T@FrameType) Bool)
(declare-fun IsPredicateField_3688_3197 (T@Field_12047_3197) Bool)
(declare-fun IsWandField_3688_3197 (T@Field_12047_3197) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3688_18832 (T@Field_5877_13581) Bool)
(declare-fun IsWandField_3688_18848 (T@Field_5877_13581) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3688_5891 (T@Field_5890_5891) Bool)
(declare-fun IsWandField_3688_5891 (T@Field_5890_5891) Bool)
(declare-fun IsPredicateField_3688_53 (T@Field_5877_53) Bool)
(declare-fun IsWandField_3688_53 (T@Field_5877_53) Bool)
(declare-fun HasDirectPerm_5877_19286 (T@PolymorphicMapType_5838 T@Ref T@Field_5877_13581) Bool)
(declare-fun HasDirectPerm_5877_3197 (T@PolymorphicMapType_5838 T@Ref T@Field_12047_3197) Bool)
(declare-fun HasDirectPerm_5877_5891 (T@PolymorphicMapType_5838 T@Ref T@Field_5890_5891) Bool)
(declare-fun HasDirectPerm_5877_53 (T@PolymorphicMapType_5838 T@Ref T@Field_5877_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5838 T@PolymorphicMapType_5838 T@PolymorphicMapType_5838) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5817) (Heap1 T@PolymorphicMapType_5817) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5817) (Mask T@PolymorphicMapType_5838) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5817) (Heap1@@0 T@PolymorphicMapType_5817) (Heap2 T@PolymorphicMapType_5817) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5877_13581) ) (!  (not (select (|PolymorphicMapType_6366_5877_14759#PolymorphicMapType_6366| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6366_5877_14759#PolymorphicMapType_6366| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5877_13448) ) (!  (not (select (|PolymorphicMapType_6366_5877_13448#PolymorphicMapType_6366| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6366_5877_13448#PolymorphicMapType_6366| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12047_3197) ) (!  (not (select (|PolymorphicMapType_6366_5877_3197#PolymorphicMapType_6366| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6366_5877_3197#PolymorphicMapType_6366| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5890_5891) ) (!  (not (select (|PolymorphicMapType_6366_5877_5891#PolymorphicMapType_6366| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6366_5877_5891#PolymorphicMapType_6366| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5877_53) ) (!  (not (select (|PolymorphicMapType_6366_5877_53#PolymorphicMapType_6366| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6366_5877_53#PolymorphicMapType_6366| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.273:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.276:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5817) (ExhaleHeap T@PolymorphicMapType_5817) (Mask@@0 T@PolymorphicMapType_5838) (pm_f_32 T@Field_5877_13448) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5877_13512 Mask@@0 null pm_f_32) (IsPredicateField_5877_13539 pm_f_32)) (= (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@0) null (PredicateMaskField_5877 pm_f_32)) (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| ExhaleHeap) null (PredicateMaskField_5877 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5877_13539 pm_f_32) (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| ExhaleHeap) null (PredicateMaskField_5877 pm_f_32)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5817) (ExhaleHeap@@0 T@PolymorphicMapType_5817) (Mask@@1 T@PolymorphicMapType_5838) (pm_f_32@@0 T@Field_5877_13448) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5877_13512 Mask@@1 null pm_f_32@@0) (IsWandField_5877_15286 pm_f_32@@0)) (= (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@1) null (WandMaskField_5877 pm_f_32@@0)) (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| ExhaleHeap@@0) null (WandMaskField_5877 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5877_15286 pm_f_32@@0) (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| ExhaleHeap@@0) null (WandMaskField_5877 pm_f_32@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5817) (ExhaleHeap@@1 T@PolymorphicMapType_5817) (Mask@@2 T@PolymorphicMapType_5838) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@2) o_55 $allocated) (select (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| ExhaleHeap@@1) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| ExhaleHeap@@1) o_55 $allocated))
)))
(assert (forall ((p T@Field_5877_13448) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5877_5877 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5877_5877 p v_1 p w))
)))
(assert  (not (IsPredicateField_3688_3197 f_7)))
(assert  (not (IsWandField_3688_3197 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5817) (ExhaleHeap@@2 T@PolymorphicMapType_5817) (Mask@@3 T@PolymorphicMapType_5838) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_5838) (o_2@@4 T@Ref) (f_4@@4 T@Field_5877_13581) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_5838_3688_17703#PolymorphicMapType_5838| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_3688_18832 f_4@@4))) (not (IsWandField_3688_18848 f_4@@4))) (<= (select (|PolymorphicMapType_5838_3688_17703#PolymorphicMapType_5838| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_5838_3688_17703#PolymorphicMapType_5838| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_5838) (o_2@@5 T@Ref) (f_4@@5 T@Field_5877_13448) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_5838_3688_13448#PolymorphicMapType_5838| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_5877_13539 f_4@@5))) (not (IsWandField_5877_15286 f_4@@5))) (<= (select (|PolymorphicMapType_5838_3688_13448#PolymorphicMapType_5838| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_5838_3688_13448#PolymorphicMapType_5838| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5838) (o_2@@6 T@Ref) (f_4@@6 T@Field_5890_5891) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5838_3688_5891#PolymorphicMapType_5838| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3688_5891 f_4@@6))) (not (IsWandField_3688_5891 f_4@@6))) (<= (select (|PolymorphicMapType_5838_3688_5891#PolymorphicMapType_5838| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5838_3688_5891#PolymorphicMapType_5838| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5838) (o_2@@7 T@Ref) (f_4@@7 T@Field_5877_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5838_3688_53#PolymorphicMapType_5838| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3688_53 f_4@@7))) (not (IsWandField_3688_53 f_4@@7))) (<= (select (|PolymorphicMapType_5838_3688_53#PolymorphicMapType_5838| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5838_3688_53#PolymorphicMapType_5838| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5838) (o_2@@8 T@Ref) (f_4@@8 T@Field_12047_3197) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5838_3688_3197#PolymorphicMapType_5838| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3688_3197 f_4@@8))) (not (IsWandField_3688_3197 f_4@@8))) (<= (select (|PolymorphicMapType_5838_3688_3197#PolymorphicMapType_5838| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5838_3688_3197#PolymorphicMapType_5838| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5838) (o_2@@9 T@Ref) (f_4@@9 T@Field_5877_13581) ) (! (= (HasDirectPerm_5877_19286 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5838_3688_17703#PolymorphicMapType_5838| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5877_19286 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5838) (o_2@@10 T@Ref) (f_4@@10 T@Field_5877_13448) ) (! (= (HasDirectPerm_5877_13512 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5838_3688_13448#PolymorphicMapType_5838| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5877_13512 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5838) (o_2@@11 T@Ref) (f_4@@11 T@Field_12047_3197) ) (! (= (HasDirectPerm_5877_3197 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_5838_3688_3197#PolymorphicMapType_5838| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5877_3197 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5838) (o_2@@12 T@Ref) (f_4@@12 T@Field_5890_5891) ) (! (= (HasDirectPerm_5877_5891 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_5838_3688_5891#PolymorphicMapType_5838| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5877_5891 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5838) (o_2@@13 T@Ref) (f_4@@13 T@Field_5877_53) ) (! (= (HasDirectPerm_5877_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_5838_3688_53#PolymorphicMapType_5838| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5877_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5817) (ExhaleHeap@@3 T@PolymorphicMapType_5817) (Mask@@14 T@PolymorphicMapType_5838) (pm_f_32@@1 T@Field_5877_13448) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_5877_13512 Mask@@14 null pm_f_32@@1) (IsPredicateField_5877_13539 pm_f_32@@1)) (and (and (and (and (forall ((o2_32 T@Ref) (f_54 T@Field_5877_53) ) (!  (=> (select (|PolymorphicMapType_6366_5877_53#PolymorphicMapType_6366| (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@4) null (PredicateMaskField_5877 pm_f_32@@1))) o2_32 f_54) (= (select (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@4) o2_32 f_54) (select (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| ExhaleHeap@@3) o2_32 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| ExhaleHeap@@3) o2_32 f_54))
)) (forall ((o2_32@@0 T@Ref) (f_54@@0 T@Field_5890_5891) ) (!  (=> (select (|PolymorphicMapType_6366_5877_5891#PolymorphicMapType_6366| (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@4) null (PredicateMaskField_5877 pm_f_32@@1))) o2_32@@0 f_54@@0) (= (select (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| Heap@@4) o2_32@@0 f_54@@0) (select (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| ExhaleHeap@@3) o2_32@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| ExhaleHeap@@3) o2_32@@0 f_54@@0))
))) (forall ((o2_32@@1 T@Ref) (f_54@@1 T@Field_12047_3197) ) (!  (=> (select (|PolymorphicMapType_6366_5877_3197#PolymorphicMapType_6366| (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@4) null (PredicateMaskField_5877 pm_f_32@@1))) o2_32@@1 f_54@@1) (= (select (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| Heap@@4) o2_32@@1 f_54@@1) (select (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| ExhaleHeap@@3) o2_32@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| ExhaleHeap@@3) o2_32@@1 f_54@@1))
))) (forall ((o2_32@@2 T@Ref) (f_54@@2 T@Field_5877_13448) ) (!  (=> (select (|PolymorphicMapType_6366_5877_13448#PolymorphicMapType_6366| (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@4) null (PredicateMaskField_5877 pm_f_32@@1))) o2_32@@2 f_54@@2) (= (select (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| Heap@@4) o2_32@@2 f_54@@2) (select (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| ExhaleHeap@@3) o2_32@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| ExhaleHeap@@3) o2_32@@2 f_54@@2))
))) (forall ((o2_32@@3 T@Ref) (f_54@@3 T@Field_5877_13581) ) (!  (=> (select (|PolymorphicMapType_6366_5877_14759#PolymorphicMapType_6366| (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@4) null (PredicateMaskField_5877 pm_f_32@@1))) o2_32@@3 f_54@@3) (= (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@4) o2_32@@3 f_54@@3) (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| ExhaleHeap@@3) o2_32@@3 f_54@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| ExhaleHeap@@3) o2_32@@3 f_54@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_5877_13539 pm_f_32@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5817) (ExhaleHeap@@4 T@PolymorphicMapType_5817) (Mask@@15 T@PolymorphicMapType_5838) (pm_f_32@@2 T@Field_5877_13448) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_5877_13512 Mask@@15 null pm_f_32@@2) (IsWandField_5877_15286 pm_f_32@@2)) (and (and (and (and (forall ((o2_32@@4 T@Ref) (f_54@@4 T@Field_5877_53) ) (!  (=> (select (|PolymorphicMapType_6366_5877_53#PolymorphicMapType_6366| (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@5) null (WandMaskField_5877 pm_f_32@@2))) o2_32@@4 f_54@@4) (= (select (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@5) o2_32@@4 f_54@@4) (select (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| ExhaleHeap@@4) o2_32@@4 f_54@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| ExhaleHeap@@4) o2_32@@4 f_54@@4))
)) (forall ((o2_32@@5 T@Ref) (f_54@@5 T@Field_5890_5891) ) (!  (=> (select (|PolymorphicMapType_6366_5877_5891#PolymorphicMapType_6366| (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@5) null (WandMaskField_5877 pm_f_32@@2))) o2_32@@5 f_54@@5) (= (select (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| Heap@@5) o2_32@@5 f_54@@5) (select (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| ExhaleHeap@@4) o2_32@@5 f_54@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| ExhaleHeap@@4) o2_32@@5 f_54@@5))
))) (forall ((o2_32@@6 T@Ref) (f_54@@6 T@Field_12047_3197) ) (!  (=> (select (|PolymorphicMapType_6366_5877_3197#PolymorphicMapType_6366| (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@5) null (WandMaskField_5877 pm_f_32@@2))) o2_32@@6 f_54@@6) (= (select (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| Heap@@5) o2_32@@6 f_54@@6) (select (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| ExhaleHeap@@4) o2_32@@6 f_54@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| ExhaleHeap@@4) o2_32@@6 f_54@@6))
))) (forall ((o2_32@@7 T@Ref) (f_54@@7 T@Field_5877_13448) ) (!  (=> (select (|PolymorphicMapType_6366_5877_13448#PolymorphicMapType_6366| (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@5) null (WandMaskField_5877 pm_f_32@@2))) o2_32@@7 f_54@@7) (= (select (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| Heap@@5) o2_32@@7 f_54@@7) (select (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| ExhaleHeap@@4) o2_32@@7 f_54@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| ExhaleHeap@@4) o2_32@@7 f_54@@7))
))) (forall ((o2_32@@8 T@Ref) (f_54@@8 T@Field_5877_13581) ) (!  (=> (select (|PolymorphicMapType_6366_5877_14759#PolymorphicMapType_6366| (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@5) null (WandMaskField_5877 pm_f_32@@2))) o2_32@@8 f_54@@8) (= (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@5) o2_32@@8 f_54@@8) (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| ExhaleHeap@@4) o2_32@@8 f_54@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| ExhaleHeap@@4) o2_32@@8 f_54@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_5877_15286 pm_f_32@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5817) (ExhaleHeap@@5 T@PolymorphicMapType_5817) (Mask@@16 T@PolymorphicMapType_5838) (o_55@@0 T@Ref) (f_54@@9 T@Field_5877_13581) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_5877_19286 Mask@@16 o_55@@0 f_54@@9) (= (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@6) o_55@@0 f_54@@9) (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| ExhaleHeap@@5) o_55@@0 f_54@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| ExhaleHeap@@5) o_55@@0 f_54@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5817) (ExhaleHeap@@6 T@PolymorphicMapType_5817) (Mask@@17 T@PolymorphicMapType_5838) (o_55@@1 T@Ref) (f_54@@10 T@Field_5877_13448) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_5877_13512 Mask@@17 o_55@@1 f_54@@10) (= (select (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| Heap@@7) o_55@@1 f_54@@10) (select (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| ExhaleHeap@@6) o_55@@1 f_54@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| ExhaleHeap@@6) o_55@@1 f_54@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5817) (ExhaleHeap@@7 T@PolymorphicMapType_5817) (Mask@@18 T@PolymorphicMapType_5838) (o_55@@2 T@Ref) (f_54@@11 T@Field_12047_3197) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_5877_3197 Mask@@18 o_55@@2 f_54@@11) (= (select (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| Heap@@8) o_55@@2 f_54@@11) (select (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| ExhaleHeap@@7) o_55@@2 f_54@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| ExhaleHeap@@7) o_55@@2 f_54@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5817) (ExhaleHeap@@8 T@PolymorphicMapType_5817) (Mask@@19 T@PolymorphicMapType_5838) (o_55@@3 T@Ref) (f_54@@12 T@Field_5890_5891) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_5877_5891 Mask@@19 o_55@@3 f_54@@12) (= (select (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| Heap@@9) o_55@@3 f_54@@12) (select (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| ExhaleHeap@@8) o_55@@3 f_54@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| ExhaleHeap@@8) o_55@@3 f_54@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5817) (ExhaleHeap@@9 T@PolymorphicMapType_5817) (Mask@@20 T@PolymorphicMapType_5838) (o_55@@4 T@Ref) (f_54@@13 T@Field_5877_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_5877_53 Mask@@20 o_55@@4 f_54@@13) (= (select (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@10) o_55@@4 f_54@@13) (select (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| ExhaleHeap@@9) o_55@@4 f_54@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| ExhaleHeap@@9) o_55@@4 f_54@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5877_13581) ) (! (= (select (|PolymorphicMapType_5838_3688_17703#PolymorphicMapType_5838| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5838_3688_17703#PolymorphicMapType_5838| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5877_13448) ) (! (= (select (|PolymorphicMapType_5838_3688_13448#PolymorphicMapType_5838| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5838_3688_13448#PolymorphicMapType_5838| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_5890_5891) ) (! (= (select (|PolymorphicMapType_5838_3688_5891#PolymorphicMapType_5838| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5838_3688_5891#PolymorphicMapType_5838| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_5877_53) ) (! (= (select (|PolymorphicMapType_5838_3688_53#PolymorphicMapType_5838| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5838_3688_53#PolymorphicMapType_5838| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_12047_3197) ) (! (= (select (|PolymorphicMapType_5838_3688_3197#PolymorphicMapType_5838| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5838_3688_3197#PolymorphicMapType_5838| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5838) (SummandMask1 T@PolymorphicMapType_5838) (SummandMask2 T@PolymorphicMapType_5838) (o_2@@19 T@Ref) (f_4@@19 T@Field_5877_13581) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5838_3688_17703#PolymorphicMapType_5838| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_5838_3688_17703#PolymorphicMapType_5838| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_5838_3688_17703#PolymorphicMapType_5838| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5838_3688_17703#PolymorphicMapType_5838| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5838_3688_17703#PolymorphicMapType_5838| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5838_3688_17703#PolymorphicMapType_5838| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5838) (SummandMask1@@0 T@PolymorphicMapType_5838) (SummandMask2@@0 T@PolymorphicMapType_5838) (o_2@@20 T@Ref) (f_4@@20 T@Field_5877_13448) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5838_3688_13448#PolymorphicMapType_5838| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_5838_3688_13448#PolymorphicMapType_5838| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_5838_3688_13448#PolymorphicMapType_5838| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5838_3688_13448#PolymorphicMapType_5838| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5838_3688_13448#PolymorphicMapType_5838| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5838_3688_13448#PolymorphicMapType_5838| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5838) (SummandMask1@@1 T@PolymorphicMapType_5838) (SummandMask2@@1 T@PolymorphicMapType_5838) (o_2@@21 T@Ref) (f_4@@21 T@Field_5890_5891) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5838_3688_5891#PolymorphicMapType_5838| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_5838_3688_5891#PolymorphicMapType_5838| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_5838_3688_5891#PolymorphicMapType_5838| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5838_3688_5891#PolymorphicMapType_5838| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5838_3688_5891#PolymorphicMapType_5838| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5838_3688_5891#PolymorphicMapType_5838| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5838) (SummandMask1@@2 T@PolymorphicMapType_5838) (SummandMask2@@2 T@PolymorphicMapType_5838) (o_2@@22 T@Ref) (f_4@@22 T@Field_5877_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5838_3688_53#PolymorphicMapType_5838| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_5838_3688_53#PolymorphicMapType_5838| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_5838_3688_53#PolymorphicMapType_5838| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5838_3688_53#PolymorphicMapType_5838| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5838_3688_53#PolymorphicMapType_5838| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5838_3688_53#PolymorphicMapType_5838| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5838) (SummandMask1@@3 T@PolymorphicMapType_5838) (SummandMask2@@3 T@PolymorphicMapType_5838) (o_2@@23 T@Ref) (f_4@@23 T@Field_12047_3197) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5838_3688_3197#PolymorphicMapType_5838| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_5838_3688_3197#PolymorphicMapType_5838| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_5838_3688_3197#PolymorphicMapType_5838| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5838_3688_3197#PolymorphicMapType_5838| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5838_3688_3197#PolymorphicMapType_5838| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5838_3688_3197#PolymorphicMapType_5838| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5817) (o_54 T@Ref) (f_8 T@Field_5877_13448) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_5817 (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@11) (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| Heap@@11) (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| Heap@@11) (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@11) (store (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| Heap@@11) o_54 f_8 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5817 (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@11) (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| Heap@@11) (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| Heap@@11) (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@11) (store (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| Heap@@11) o_54 f_8 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5817) (o_54@@0 T@Ref) (f_8@@0 T@Field_5877_13581) (v@@0 T@PolymorphicMapType_6366) ) (! (succHeap Heap@@12 (PolymorphicMapType_5817 (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@12) (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| Heap@@12) (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| Heap@@12) (store (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@12) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5817 (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@12) (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| Heap@@12) (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| Heap@@12) (store (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@12) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5817) (o_54@@1 T@Ref) (f_8@@1 T@Field_12047_3197) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_5817 (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@13) (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| Heap@@13) (store (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| Heap@@13) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@13) (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5817 (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@13) (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| Heap@@13) (store (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| Heap@@13) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@13) (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5817) (o_54@@2 T@Ref) (f_8@@2 T@Field_5890_5891) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_5817 (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@14) (store (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| Heap@@14) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| Heap@@14) (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@14) (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5817 (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@14) (store (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| Heap@@14) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| Heap@@14) (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@14) (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5817) (o_54@@3 T@Ref) (f_8@@3 T@Field_5877_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_5817 (store (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@15) o_54@@3 f_8@@3 v@@3) (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| Heap@@15) (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| Heap@@15) (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@15) (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5817 (store (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@15) o_54@@3 f_8@@3 v@@3) (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| Heap@@15) (|PolymorphicMapType_5817_5877_3197#PolymorphicMapType_5817| Heap@@15) (|PolymorphicMapType_5817_5877_13625#PolymorphicMapType_5817| Heap@@15) (|PolymorphicMapType_5817_5877_13448#PolymorphicMapType_5817| Heap@@15)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.271:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.272:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_54@@4 T@Ref) (f_24 T@Field_5890_5891) (Heap@@16 T@PolymorphicMapType_5817) ) (!  (=> (select (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@16) o_54@@4 $allocated) (select (|PolymorphicMapType_5817_3397_53#PolymorphicMapType_5817| Heap@@16) (select (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| Heap@@16) o_54@@4 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5817_3400_3401#PolymorphicMapType_5817| Heap@@16) o_54@@4 f_24))
)))
(assert (forall ((p@@1 T@Field_5877_13448) (v_1@@0 T@FrameType) (q T@Field_5877_13448) (w@@0 T@FrameType) (r T@Field_5877_13448) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5877_5877 p@@1 v_1@@0 q w@@0) (InsidePredicate_5877_5877 q w@@0 r u)) (InsidePredicate_5877_5877 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5877_5877 p@@1 v_1@@0 q w@@0) (InsidePredicate_5877_5877 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.277:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
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
 (=> (= (ControlFlow 0 0) 8) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
