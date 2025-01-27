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
(declare-sort T@Field_4521_53 0)
(declare-sort T@Field_4534_4535 0)
(declare-sort T@Field_7961_1341 0)
(declare-sort T@Field_4521_12612 0)
(declare-sort T@Field_4521_12479 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4482 0)) (((PolymorphicMapType_4482 (|PolymorphicMapType_4482_2703_1341#PolymorphicMapType_4482| (Array T@Ref T@Field_7961_1341 Real)) (|PolymorphicMapType_4482_2703_53#PolymorphicMapType_4482| (Array T@Ref T@Field_4521_53 Real)) (|PolymorphicMapType_4482_2703_4535#PolymorphicMapType_4482| (Array T@Ref T@Field_4534_4535 Real)) (|PolymorphicMapType_4482_2703_12479#PolymorphicMapType_4482| (Array T@Ref T@Field_4521_12479 Real)) (|PolymorphicMapType_4482_2703_16734#PolymorphicMapType_4482| (Array T@Ref T@Field_4521_12612 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5010 0)) (((PolymorphicMapType_5010 (|PolymorphicMapType_5010_4521_53#PolymorphicMapType_5010| (Array T@Ref T@Field_4521_53 Bool)) (|PolymorphicMapType_5010_4521_4535#PolymorphicMapType_5010| (Array T@Ref T@Field_4534_4535 Bool)) (|PolymorphicMapType_5010_4521_1341#PolymorphicMapType_5010| (Array T@Ref T@Field_7961_1341 Bool)) (|PolymorphicMapType_5010_4521_12479#PolymorphicMapType_5010| (Array T@Ref T@Field_4521_12479 Bool)) (|PolymorphicMapType_5010_4521_13790#PolymorphicMapType_5010| (Array T@Ref T@Field_4521_12612 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4461 0)) (((PolymorphicMapType_4461 (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| (Array T@Ref T@Field_4521_53 Bool)) (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| (Array T@Ref T@Field_4534_4535 T@Ref)) (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| (Array T@Ref T@Field_7961_1341 Int)) (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| (Array T@Ref T@Field_4521_12612 T@PolymorphicMapType_5010)) (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| (Array T@Ref T@Field_4521_12479 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_4521_53)
(declare-fun val () T@Field_7961_1341)
(declare-fun succHeap (T@PolymorphicMapType_4461 T@PolymorphicMapType_4461) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4461 T@PolymorphicMapType_4461) Bool)
(declare-fun state (T@PolymorphicMapType_4461 T@PolymorphicMapType_4482) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4482) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5010)
(declare-fun |dummy'| (T@PolymorphicMapType_4461 Int) Bool)
(declare-fun dummyFunction_1520 (Bool) Bool)
(declare-fun |dummy#triggerStateless| (Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4461 T@PolymorphicMapType_4461 T@PolymorphicMapType_4482) Bool)
(declare-fun IsPredicateField_4521_12570 (T@Field_4521_12479) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4521 (T@Field_4521_12479) T@Field_4521_12612)
(declare-fun HasDirectPerm_4521_12543 (T@PolymorphicMapType_4482 T@Ref T@Field_4521_12479) Bool)
(declare-fun IsWandField_4521_14317 (T@Field_4521_12479) Bool)
(declare-fun WandMaskField_4521 (T@Field_4521_12479) T@Field_4521_12612)
(declare-fun dummy_1 (T@PolymorphicMapType_4461 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_4461)
(declare-fun ZeroMask () T@PolymorphicMapType_4482)
(declare-fun InsidePredicate_4521_4521 (T@Field_4521_12479 T@FrameType T@Field_4521_12479 T@FrameType) Bool)
(declare-fun IsPredicateField_2703_1341 (T@Field_7961_1341) Bool)
(declare-fun IsWandField_2703_1341 (T@Field_7961_1341) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2703_17863 (T@Field_4521_12612) Bool)
(declare-fun IsWandField_2703_17879 (T@Field_4521_12612) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2703_4535 (T@Field_4534_4535) Bool)
(declare-fun IsWandField_2703_4535 (T@Field_4534_4535) Bool)
(declare-fun IsPredicateField_2703_53 (T@Field_4521_53) Bool)
(declare-fun IsWandField_2703_53 (T@Field_4521_53) Bool)
(declare-fun HasDirectPerm_4521_18317 (T@PolymorphicMapType_4482 T@Ref T@Field_4521_12612) Bool)
(declare-fun HasDirectPerm_4521_1341 (T@PolymorphicMapType_4482 T@Ref T@Field_7961_1341) Bool)
(declare-fun HasDirectPerm_4521_4535 (T@PolymorphicMapType_4482 T@Ref T@Field_4534_4535) Bool)
(declare-fun HasDirectPerm_4521_53 (T@PolymorphicMapType_4482 T@Ref T@Field_4521_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4482 T@PolymorphicMapType_4482 T@PolymorphicMapType_4482) Bool)
(declare-fun |dummy#frame| (T@FrameType Int) Bool)
(declare-sort T@ArrayDomainType 0)
(declare-fun len (T@ArrayDomainType) Int)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun first_1 (T@Ref) T@ArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_4461) (Heap1 T@PolymorphicMapType_4461) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4461) (Mask T@PolymorphicMapType_4482) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4461) (Heap1@@0 T@PolymorphicMapType_4461) (Heap2 T@PolymorphicMapType_4461) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4521_12612) ) (!  (not (select (|PolymorphicMapType_5010_4521_13790#PolymorphicMapType_5010| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5010_4521_13790#PolymorphicMapType_5010| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4521_12479) ) (!  (not (select (|PolymorphicMapType_5010_4521_12479#PolymorphicMapType_5010| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5010_4521_12479#PolymorphicMapType_5010| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7961_1341) ) (!  (not (select (|PolymorphicMapType_5010_4521_1341#PolymorphicMapType_5010| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5010_4521_1341#PolymorphicMapType_5010| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4534_4535) ) (!  (not (select (|PolymorphicMapType_5010_4521_4535#PolymorphicMapType_5010| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5010_4521_4535#PolymorphicMapType_5010| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4521_53) ) (!  (not (select (|PolymorphicMapType_5010_4521_53#PolymorphicMapType_5010| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5010_4521_53#PolymorphicMapType_5010| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4461) (j Int) ) (! (dummyFunction_1520 (|dummy#triggerStateless| j))
 :qid |stdinbpl.257:15|
 :skolemid |25|
 :pattern ( (|dummy'| Heap@@0 j))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4461) (ExhaleHeap T@PolymorphicMapType_4461) (Mask@@0 T@PolymorphicMapType_4482) (pm_f_1 T@Field_4521_12479) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4521_12543 Mask@@0 null pm_f_1) (IsPredicateField_4521_12570 pm_f_1)) (= (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@1) null (PredicateMaskField_4521 pm_f_1)) (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| ExhaleHeap) null (PredicateMaskField_4521 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_4521_12570 pm_f_1) (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| ExhaleHeap) null (PredicateMaskField_4521 pm_f_1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4461) (ExhaleHeap@@0 T@PolymorphicMapType_4461) (Mask@@1 T@PolymorphicMapType_4482) (pm_f_1@@0 T@Field_4521_12479) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4521_12543 Mask@@1 null pm_f_1@@0) (IsWandField_4521_14317 pm_f_1@@0)) (= (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@2) null (WandMaskField_4521 pm_f_1@@0)) (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| ExhaleHeap@@0) null (WandMaskField_4521 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_4521_14317 pm_f_1@@0) (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| ExhaleHeap@@0) null (WandMaskField_4521 pm_f_1@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4461) (Mask@@2 T@PolymorphicMapType_4482) (j@@0 Int) ) (!  (=> (and (state Heap@@3 Mask@@2) (< AssumeFunctionsAbove 0)) (dummy_1 Heap@@3 j@@0))
 :qid |stdinbpl.263:15|
 :skolemid |26|
 :pattern ( (state Heap@@3 Mask@@2) (dummy_1 Heap@@3 j@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4461) (ExhaleHeap@@1 T@PolymorphicMapType_4461) (Mask@@3 T@PolymorphicMapType_4482) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@4) o_4 $allocated) (select (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| ExhaleHeap@@1) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| ExhaleHeap@@1) o_4 $allocated))
)))
(assert (forall ((p T@Field_4521_12479) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4521_4521 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4521_4521 p v_1 p w))
)))
(assert  (not (IsPredicateField_2703_1341 val)))
(assert  (not (IsWandField_2703_1341 val)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4461) (ExhaleHeap@@2 T@PolymorphicMapType_4461) (Mask@@4 T@PolymorphicMapType_4482) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_4482) (o_2@@4 T@Ref) (f_4@@4 T@Field_4521_12612) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_4482_2703_16734#PolymorphicMapType_4482| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_2703_17863 f_4@@4))) (not (IsWandField_2703_17879 f_4@@4))) (<= (select (|PolymorphicMapType_4482_2703_16734#PolymorphicMapType_4482| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_4482_2703_16734#PolymorphicMapType_4482| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4482) (o_2@@5 T@Ref) (f_4@@5 T@Field_4521_12479) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4482_2703_12479#PolymorphicMapType_4482| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4521_12570 f_4@@5))) (not (IsWandField_4521_14317 f_4@@5))) (<= (select (|PolymorphicMapType_4482_2703_12479#PolymorphicMapType_4482| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4482_2703_12479#PolymorphicMapType_4482| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4482) (o_2@@6 T@Ref) (f_4@@6 T@Field_4534_4535) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4482_2703_4535#PolymorphicMapType_4482| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2703_4535 f_4@@6))) (not (IsWandField_2703_4535 f_4@@6))) (<= (select (|PolymorphicMapType_4482_2703_4535#PolymorphicMapType_4482| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4482_2703_4535#PolymorphicMapType_4482| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4482) (o_2@@7 T@Ref) (f_4@@7 T@Field_4521_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4482_2703_53#PolymorphicMapType_4482| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2703_53 f_4@@7))) (not (IsWandField_2703_53 f_4@@7))) (<= (select (|PolymorphicMapType_4482_2703_53#PolymorphicMapType_4482| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4482_2703_53#PolymorphicMapType_4482| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4482) (o_2@@8 T@Ref) (f_4@@8 T@Field_7961_1341) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_4482_2703_1341#PolymorphicMapType_4482| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_2703_1341 f_4@@8))) (not (IsWandField_2703_1341 f_4@@8))) (<= (select (|PolymorphicMapType_4482_2703_1341#PolymorphicMapType_4482| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_4482_2703_1341#PolymorphicMapType_4482| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4482) (o_2@@9 T@Ref) (f_4@@9 T@Field_4521_12612) ) (! (= (HasDirectPerm_4521_18317 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4482_2703_16734#PolymorphicMapType_4482| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4521_18317 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4482) (o_2@@10 T@Ref) (f_4@@10 T@Field_4521_12479) ) (! (= (HasDirectPerm_4521_12543 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4482_2703_12479#PolymorphicMapType_4482| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4521_12543 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4482) (o_2@@11 T@Ref) (f_4@@11 T@Field_7961_1341) ) (! (= (HasDirectPerm_4521_1341 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_4482_2703_1341#PolymorphicMapType_4482| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4521_1341 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4482) (o_2@@12 T@Ref) (f_4@@12 T@Field_4534_4535) ) (! (= (HasDirectPerm_4521_4535 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_4482_2703_4535#PolymorphicMapType_4482| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4521_4535 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4482) (o_2@@13 T@Ref) (f_4@@13 T@Field_4521_53) ) (! (= (HasDirectPerm_4521_53 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_4482_2703_53#PolymorphicMapType_4482| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4521_53 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4461) (ExhaleHeap@@3 T@PolymorphicMapType_4461) (Mask@@15 T@PolymorphicMapType_4482) (pm_f_1@@1 T@Field_4521_12479) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_4521_12543 Mask@@15 null pm_f_1@@1) (IsPredicateField_4521_12570 pm_f_1@@1)) (and (and (and (and (forall ((o2_1 T@Ref) (f_9 T@Field_4521_53) ) (!  (=> (select (|PolymorphicMapType_5010_4521_53#PolymorphicMapType_5010| (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@6) null (PredicateMaskField_4521 pm_f_1@@1))) o2_1 f_9) (= (select (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@6) o2_1 f_9) (select (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| ExhaleHeap@@3) o2_1 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| ExhaleHeap@@3) o2_1 f_9))
)) (forall ((o2_1@@0 T@Ref) (f_9@@0 T@Field_4534_4535) ) (!  (=> (select (|PolymorphicMapType_5010_4521_4535#PolymorphicMapType_5010| (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@6) null (PredicateMaskField_4521 pm_f_1@@1))) o2_1@@0 f_9@@0) (= (select (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| Heap@@6) o2_1@@0 f_9@@0) (select (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| ExhaleHeap@@3) o2_1@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| ExhaleHeap@@3) o2_1@@0 f_9@@0))
))) (forall ((o2_1@@1 T@Ref) (f_9@@1 T@Field_7961_1341) ) (!  (=> (select (|PolymorphicMapType_5010_4521_1341#PolymorphicMapType_5010| (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@6) null (PredicateMaskField_4521 pm_f_1@@1))) o2_1@@1 f_9@@1) (= (select (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| Heap@@6) o2_1@@1 f_9@@1) (select (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| ExhaleHeap@@3) o2_1@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| ExhaleHeap@@3) o2_1@@1 f_9@@1))
))) (forall ((o2_1@@2 T@Ref) (f_9@@2 T@Field_4521_12479) ) (!  (=> (select (|PolymorphicMapType_5010_4521_12479#PolymorphicMapType_5010| (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@6) null (PredicateMaskField_4521 pm_f_1@@1))) o2_1@@2 f_9@@2) (= (select (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| Heap@@6) o2_1@@2 f_9@@2) (select (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| ExhaleHeap@@3) o2_1@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| ExhaleHeap@@3) o2_1@@2 f_9@@2))
))) (forall ((o2_1@@3 T@Ref) (f_9@@3 T@Field_4521_12612) ) (!  (=> (select (|PolymorphicMapType_5010_4521_13790#PolymorphicMapType_5010| (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@6) null (PredicateMaskField_4521 pm_f_1@@1))) o2_1@@3 f_9@@3) (= (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@6) o2_1@@3 f_9@@3) (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| ExhaleHeap@@3) o2_1@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| ExhaleHeap@@3) o2_1@@3 f_9@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@15) (IsPredicateField_4521_12570 pm_f_1@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4461) (ExhaleHeap@@4 T@PolymorphicMapType_4461) (Mask@@16 T@PolymorphicMapType_4482) (pm_f_1@@2 T@Field_4521_12479) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_4521_12543 Mask@@16 null pm_f_1@@2) (IsWandField_4521_14317 pm_f_1@@2)) (and (and (and (and (forall ((o2_1@@4 T@Ref) (f_9@@4 T@Field_4521_53) ) (!  (=> (select (|PolymorphicMapType_5010_4521_53#PolymorphicMapType_5010| (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@7) null (WandMaskField_4521 pm_f_1@@2))) o2_1@@4 f_9@@4) (= (select (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@7) o2_1@@4 f_9@@4) (select (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| ExhaleHeap@@4) o2_1@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| ExhaleHeap@@4) o2_1@@4 f_9@@4))
)) (forall ((o2_1@@5 T@Ref) (f_9@@5 T@Field_4534_4535) ) (!  (=> (select (|PolymorphicMapType_5010_4521_4535#PolymorphicMapType_5010| (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@7) null (WandMaskField_4521 pm_f_1@@2))) o2_1@@5 f_9@@5) (= (select (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| Heap@@7) o2_1@@5 f_9@@5) (select (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| ExhaleHeap@@4) o2_1@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| ExhaleHeap@@4) o2_1@@5 f_9@@5))
))) (forall ((o2_1@@6 T@Ref) (f_9@@6 T@Field_7961_1341) ) (!  (=> (select (|PolymorphicMapType_5010_4521_1341#PolymorphicMapType_5010| (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@7) null (WandMaskField_4521 pm_f_1@@2))) o2_1@@6 f_9@@6) (= (select (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| Heap@@7) o2_1@@6 f_9@@6) (select (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| ExhaleHeap@@4) o2_1@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| ExhaleHeap@@4) o2_1@@6 f_9@@6))
))) (forall ((o2_1@@7 T@Ref) (f_9@@7 T@Field_4521_12479) ) (!  (=> (select (|PolymorphicMapType_5010_4521_12479#PolymorphicMapType_5010| (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@7) null (WandMaskField_4521 pm_f_1@@2))) o2_1@@7 f_9@@7) (= (select (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| Heap@@7) o2_1@@7 f_9@@7) (select (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| ExhaleHeap@@4) o2_1@@7 f_9@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| ExhaleHeap@@4) o2_1@@7 f_9@@7))
))) (forall ((o2_1@@8 T@Ref) (f_9@@8 T@Field_4521_12612) ) (!  (=> (select (|PolymorphicMapType_5010_4521_13790#PolymorphicMapType_5010| (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@7) null (WandMaskField_4521 pm_f_1@@2))) o2_1@@8 f_9@@8) (= (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@7) o2_1@@8 f_9@@8) (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| ExhaleHeap@@4) o2_1@@8 f_9@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| ExhaleHeap@@4) o2_1@@8 f_9@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@16) (IsWandField_4521_14317 pm_f_1@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4461) (ExhaleHeap@@5 T@PolymorphicMapType_4461) (Mask@@17 T@PolymorphicMapType_4482) (o_4@@0 T@Ref) (f_9@@9 T@Field_4521_12612) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_4521_18317 Mask@@17 o_4@@0 f_9@@9) (= (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@8) o_4@@0 f_9@@9) (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| ExhaleHeap@@5) o_4@@0 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| ExhaleHeap@@5) o_4@@0 f_9@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4461) (ExhaleHeap@@6 T@PolymorphicMapType_4461) (Mask@@18 T@PolymorphicMapType_4482) (o_4@@1 T@Ref) (f_9@@10 T@Field_4521_12479) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_4521_12543 Mask@@18 o_4@@1 f_9@@10) (= (select (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| Heap@@9) o_4@@1 f_9@@10) (select (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| ExhaleHeap@@6) o_4@@1 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| ExhaleHeap@@6) o_4@@1 f_9@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4461) (ExhaleHeap@@7 T@PolymorphicMapType_4461) (Mask@@19 T@PolymorphicMapType_4482) (o_4@@2 T@Ref) (f_9@@11 T@Field_7961_1341) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_4521_1341 Mask@@19 o_4@@2 f_9@@11) (= (select (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| Heap@@10) o_4@@2 f_9@@11) (select (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| ExhaleHeap@@7) o_4@@2 f_9@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| ExhaleHeap@@7) o_4@@2 f_9@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4461) (ExhaleHeap@@8 T@PolymorphicMapType_4461) (Mask@@20 T@PolymorphicMapType_4482) (o_4@@3 T@Ref) (f_9@@12 T@Field_4534_4535) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_4521_4535 Mask@@20 o_4@@3 f_9@@12) (= (select (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| Heap@@11) o_4@@3 f_9@@12) (select (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| ExhaleHeap@@8) o_4@@3 f_9@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| ExhaleHeap@@8) o_4@@3 f_9@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4461) (ExhaleHeap@@9 T@PolymorphicMapType_4461) (Mask@@21 T@PolymorphicMapType_4482) (o_4@@4 T@Ref) (f_9@@13 T@Field_4521_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_4521_53 Mask@@21 o_4@@4 f_9@@13) (= (select (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@12) o_4@@4 f_9@@13) (select (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| ExhaleHeap@@9) o_4@@4 f_9@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| ExhaleHeap@@9) o_4@@4 f_9@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4521_12612) ) (! (= (select (|PolymorphicMapType_4482_2703_16734#PolymorphicMapType_4482| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4482_2703_16734#PolymorphicMapType_4482| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4521_12479) ) (! (= (select (|PolymorphicMapType_4482_2703_12479#PolymorphicMapType_4482| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4482_2703_12479#PolymorphicMapType_4482| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_4534_4535) ) (! (= (select (|PolymorphicMapType_4482_2703_4535#PolymorphicMapType_4482| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4482_2703_4535#PolymorphicMapType_4482| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4521_53) ) (! (= (select (|PolymorphicMapType_4482_2703_53#PolymorphicMapType_4482| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4482_2703_53#PolymorphicMapType_4482| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_7961_1341) ) (! (= (select (|PolymorphicMapType_4482_2703_1341#PolymorphicMapType_4482| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4482_2703_1341#PolymorphicMapType_4482| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4482) (SummandMask1 T@PolymorphicMapType_4482) (SummandMask2 T@PolymorphicMapType_4482) (o_2@@19 T@Ref) (f_4@@19 T@Field_4521_12612) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4482_2703_16734#PolymorphicMapType_4482| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_4482_2703_16734#PolymorphicMapType_4482| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_4482_2703_16734#PolymorphicMapType_4482| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4482_2703_16734#PolymorphicMapType_4482| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4482_2703_16734#PolymorphicMapType_4482| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4482_2703_16734#PolymorphicMapType_4482| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4482) (SummandMask1@@0 T@PolymorphicMapType_4482) (SummandMask2@@0 T@PolymorphicMapType_4482) (o_2@@20 T@Ref) (f_4@@20 T@Field_4521_12479) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4482_2703_12479#PolymorphicMapType_4482| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_4482_2703_12479#PolymorphicMapType_4482| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_4482_2703_12479#PolymorphicMapType_4482| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4482_2703_12479#PolymorphicMapType_4482| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4482_2703_12479#PolymorphicMapType_4482| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4482_2703_12479#PolymorphicMapType_4482| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4482) (SummandMask1@@1 T@PolymorphicMapType_4482) (SummandMask2@@1 T@PolymorphicMapType_4482) (o_2@@21 T@Ref) (f_4@@21 T@Field_4534_4535) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4482_2703_4535#PolymorphicMapType_4482| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_4482_2703_4535#PolymorphicMapType_4482| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_4482_2703_4535#PolymorphicMapType_4482| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4482_2703_4535#PolymorphicMapType_4482| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4482_2703_4535#PolymorphicMapType_4482| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4482_2703_4535#PolymorphicMapType_4482| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4482) (SummandMask1@@2 T@PolymorphicMapType_4482) (SummandMask2@@2 T@PolymorphicMapType_4482) (o_2@@22 T@Ref) (f_4@@22 T@Field_4521_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4482_2703_53#PolymorphicMapType_4482| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_4482_2703_53#PolymorphicMapType_4482| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_4482_2703_53#PolymorphicMapType_4482| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4482_2703_53#PolymorphicMapType_4482| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4482_2703_53#PolymorphicMapType_4482| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4482_2703_53#PolymorphicMapType_4482| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4482) (SummandMask1@@3 T@PolymorphicMapType_4482) (SummandMask2@@3 T@PolymorphicMapType_4482) (o_2@@23 T@Ref) (f_4@@23 T@Field_7961_1341) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4482_2703_1341#PolymorphicMapType_4482| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_4482_2703_1341#PolymorphicMapType_4482| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_4482_2703_1341#PolymorphicMapType_4482| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4482_2703_1341#PolymorphicMapType_4482| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4482_2703_1341#PolymorphicMapType_4482| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4482_2703_1341#PolymorphicMapType_4482| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4461) (Mask@@22 T@PolymorphicMapType_4482) (j@@1 Int) ) (!  (=> (state Heap@@13 Mask@@22) (= (|dummy'| Heap@@13 j@@1) (|dummy#frame| EmptyFrame j@@1)))
 :qid |stdinbpl.270:15|
 :skolemid |27|
 :pattern ( (state Heap@@13 Mask@@22) (|dummy'| Heap@@13 j@@1))
)))
(assert (forall ((a_2 T@ArrayDomainType) ) (! (>= (len a_2) 0)
 :qid |stdinbpl.223:15|
 :skolemid |23|
 :pattern ( (len a_2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4461) (j@@2 Int) ) (!  (and (= (dummy_1 Heap@@14 j@@2) (|dummy'| Heap@@14 j@@2)) (dummyFunction_1520 (|dummy#triggerStateless| j@@2)))
 :qid |stdinbpl.253:15|
 :skolemid |24|
 :pattern ( (dummy_1 Heap@@14 j@@2))
)))
(assert (forall ((a_2@@0 T@ArrayDomainType) (i Int) ) (!  (and (= (first_1 (loc a_2@@0 i)) a_2@@0) (= (second_1 (loc a_2@@0 i)) i))
 :qid |stdinbpl.217:15|
 :skolemid |22|
 :pattern ( (loc a_2@@0 i))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4461) (o_3 T@Ref) (f_10 T@Field_4521_12479) (v T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_4461 (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@15) (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| Heap@@15) (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| Heap@@15) (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@15) (store (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| Heap@@15) o_3 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4461 (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@15) (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| Heap@@15) (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| Heap@@15) (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@15) (store (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| Heap@@15) o_3 f_10 v)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4461) (o_3@@0 T@Ref) (f_10@@0 T@Field_4521_12612) (v@@0 T@PolymorphicMapType_5010) ) (! (succHeap Heap@@16 (PolymorphicMapType_4461 (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@16) (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| Heap@@16) (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| Heap@@16) (store (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@16) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4461 (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@16) (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| Heap@@16) (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| Heap@@16) (store (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@16) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4461) (o_3@@1 T@Ref) (f_10@@1 T@Field_7961_1341) (v@@1 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_4461 (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@17) (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| Heap@@17) (store (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| Heap@@17) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@17) (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4461 (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@17) (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| Heap@@17) (store (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| Heap@@17) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@17) (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4461) (o_3@@2 T@Ref) (f_10@@2 T@Field_4534_4535) (v@@2 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_4461 (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@18) (store (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| Heap@@18) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| Heap@@18) (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@18) (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4461 (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@18) (store (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| Heap@@18) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| Heap@@18) (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@18) (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4461) (o_3@@3 T@Ref) (f_10@@3 T@Field_4521_53) (v@@3 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_4461 (store (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@19) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| Heap@@19) (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| Heap@@19) (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@19) (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4461 (store (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@19) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| Heap@@19) (|PolymorphicMapType_4461_2703_1341#PolymorphicMapType_4461| Heap@@19) (|PolymorphicMapType_4461_4521_12656#PolymorphicMapType_4461| Heap@@19) (|PolymorphicMapType_4461_4521_12479#PolymorphicMapType_4461| Heap@@19)))
)))
(assert (forall ((o_3@@4 T@Ref) (f_8 T@Field_4534_4535) (Heap@@20 T@PolymorphicMapType_4461) ) (!  (=> (select (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@20) o_3@@4 $allocated) (select (|PolymorphicMapType_4461_2559_53#PolymorphicMapType_4461| Heap@@20) (select (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| Heap@@20) o_3@@4 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4461_2562_2563#PolymorphicMapType_4461| Heap@@20) o_3@@4 f_8))
)))
(assert (forall ((p@@1 T@Field_4521_12479) (v_1@@0 T@FrameType) (q T@Field_4521_12479) (w@@0 T@FrameType) (r T@Field_4521_12479) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4521_4521 p@@1 v_1@@0 q w@@0) (InsidePredicate_4521_4521 q w@@0 r u)) (InsidePredicate_4521_4521 p@@1 v_1@@0 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4521_4521 p@@1 v_1@@0 q w@@0) (InsidePredicate_4521_4521 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |dummy#definedness|)
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
