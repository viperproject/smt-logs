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
(declare-sort T@Field_19528_53 0)
(declare-sort T@Field_19541_19542 0)
(declare-sort T@Field_23125_23126 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_23078_2161 0)
(declare-sort T@Field_19528_23126 0)
(declare-sort T@Field_19528_23143 0)
(declare-sort T@Field_23125_53 0)
(declare-sort T@Field_23125_19542 0)
(declare-sort T@Field_23125_2161 0)
(declare-sort T@Field_23138_23143 0)
(declare-datatypes ((T@PolymorphicMapType_19489 0)) (((PolymorphicMapType_19489 (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| (Array T@Ref T@Field_23078_2161 Real)) (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| (Array T@Ref T@Field_23125_23126 Real)) (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| (Array T@Ref T@Field_19528_23126 Real)) (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| (Array T@Ref T@Field_19528_53 Real)) (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| (Array T@Ref T@Field_19541_19542 Real)) (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| (Array T@Ref T@Field_19528_23143 Real)) (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| (Array T@Ref T@Field_23125_2161 Real)) (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| (Array T@Ref T@Field_23125_53 Real)) (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| (Array T@Ref T@Field_23125_19542 Real)) (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| (Array T@Ref T@Field_23138_23143 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_20017 0)) (((PolymorphicMapType_20017 (|PolymorphicMapType_20017_19528_53#PolymorphicMapType_20017| (Array T@Ref T@Field_19528_53 Bool)) (|PolymorphicMapType_20017_19528_19542#PolymorphicMapType_20017| (Array T@Ref T@Field_19541_19542 Bool)) (|PolymorphicMapType_20017_19528_2161#PolymorphicMapType_20017| (Array T@Ref T@Field_23078_2161 Bool)) (|PolymorphicMapType_20017_19528_23126#PolymorphicMapType_20017| (Array T@Ref T@Field_19528_23126 Bool)) (|PolymorphicMapType_20017_19528_62165#PolymorphicMapType_20017| (Array T@Ref T@Field_19528_23143 Bool)) (|PolymorphicMapType_20017_23125_53#PolymorphicMapType_20017| (Array T@Ref T@Field_23125_53 Bool)) (|PolymorphicMapType_20017_23125_19542#PolymorphicMapType_20017| (Array T@Ref T@Field_23125_19542 Bool)) (|PolymorphicMapType_20017_23125_2161#PolymorphicMapType_20017| (Array T@Ref T@Field_23125_2161 Bool)) (|PolymorphicMapType_20017_23125_23126#PolymorphicMapType_20017| (Array T@Ref T@Field_23125_23126 Bool)) (|PolymorphicMapType_20017_23125_63213#PolymorphicMapType_20017| (Array T@Ref T@Field_23138_23143 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19468 0)) (((PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| (Array T@Ref T@Field_19528_53 Bool)) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| (Array T@Ref T@Field_19541_19542 T@Ref)) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| (Array T@Ref T@Field_23125_23126 T@FrameType)) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| (Array T@Ref T@Field_23078_2161 Int)) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| (Array T@Ref T@Field_19528_23126 T@FrameType)) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| (Array T@Ref T@Field_19528_23143 T@PolymorphicMapType_20017)) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| (Array T@Ref T@Field_23125_53 Bool)) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| (Array T@Ref T@Field_23125_19542 T@Ref)) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| (Array T@Ref T@Field_23125_2161 Int)) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| (Array T@Ref T@Field_23138_23143 T@PolymorphicMapType_20017)) ) ) ))
(declare-fun $allocated () T@Field_19528_53)
(declare-fun val () T@Field_23078_2161)
(declare-fun succHeap (T@PolymorphicMapType_19468 T@PolymorphicMapType_19468) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_19468 T@PolymorphicMapType_19468) Bool)
(declare-fun state (T@PolymorphicMapType_19468 T@PolymorphicMapType_19489) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_19489) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_20017)
(declare-sort T@IArrayDomainType 0)
(declare-fun p_2 (T@IArrayDomainType Int) T@Field_23125_23126)
(declare-fun IsPredicateField_13837_13838 (T@Field_23125_23126) Bool)
(declare-fun |p#trigger_13837| (T@PolymorphicMapType_19468 T@Field_23125_23126) Bool)
(declare-fun |p#everUsed_13837| (T@Field_23125_23126) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_19468 T@PolymorphicMapType_19468 T@PolymorphicMapType_19489) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_13837 (T@Field_23125_23126) T@Field_23138_23143)
(declare-fun HasDirectPerm_23125_23126 (T@PolymorphicMapType_19489 T@Ref T@Field_23125_23126) Bool)
(declare-fun IsPredicateField_19528_60681 (T@Field_19528_23126) Bool)
(declare-fun PredicateMaskField_19528 (T@Field_19528_23126) T@Field_19528_23143)
(declare-fun HasDirectPerm_19528_23126 (T@PolymorphicMapType_19489 T@Ref T@Field_19528_23126) Bool)
(declare-fun IsWandField_23125_64378 (T@Field_23125_23126) Bool)
(declare-fun WandMaskField_23125 (T@Field_23125_23126) T@Field_23138_23143)
(declare-fun IsWandField_19528_64021 (T@Field_19528_23126) Bool)
(declare-fun WandMaskField_19528 (T@Field_19528_23126) T@Field_19528_23143)
(declare-fun |p#sm| (T@IArrayDomainType Int) T@Field_23138_23143)
(declare-fun dummyHeap () T@PolymorphicMapType_19468)
(declare-fun ZeroMask () T@PolymorphicMapType_19489)
(declare-fun InsidePredicate_23125_23125 (T@Field_23125_23126 T@FrameType T@Field_23125_23126 T@FrameType) Bool)
(declare-fun InsidePredicate_19528_19528 (T@Field_19528_23126 T@FrameType T@Field_19528_23126 T@FrameType) Bool)
(declare-fun IsPredicateField_13834_2161 (T@Field_23078_2161) Bool)
(declare-fun IsWandField_13834_2161 (T@Field_23078_2161) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_13837_71310 (T@Field_23138_23143) Bool)
(declare-fun IsWandField_13837_71326 (T@Field_23138_23143) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_13837_19542 (T@Field_23125_19542) Bool)
(declare-fun IsWandField_13837_19542 (T@Field_23125_19542) Bool)
(declare-fun IsPredicateField_13837_53 (T@Field_23125_53) Bool)
(declare-fun IsWandField_13837_53 (T@Field_23125_53) Bool)
(declare-fun IsPredicateField_13837_2161 (T@Field_23125_2161) Bool)
(declare-fun IsWandField_13837_2161 (T@Field_23125_2161) Bool)
(declare-fun IsPredicateField_13834_70479 (T@Field_19528_23143) Bool)
(declare-fun IsWandField_13834_70495 (T@Field_19528_23143) Bool)
(declare-fun IsPredicateField_13834_19542 (T@Field_19541_19542) Bool)
(declare-fun IsWandField_13834_19542 (T@Field_19541_19542) Bool)
(declare-fun IsPredicateField_13834_53 (T@Field_19528_53) Bool)
(declare-fun IsWandField_13834_53 (T@Field_19528_53) Bool)
(declare-fun HasDirectPerm_23125_60393 (T@PolymorphicMapType_19489 T@Ref T@Field_23138_23143) Bool)
(declare-fun HasDirectPerm_23125_2161 (T@PolymorphicMapType_19489 T@Ref T@Field_23125_2161) Bool)
(declare-fun HasDirectPerm_23125_19542 (T@PolymorphicMapType_19489 T@Ref T@Field_23125_19542) Bool)
(declare-fun HasDirectPerm_23125_53 (T@PolymorphicMapType_19489 T@Ref T@Field_23125_53) Bool)
(declare-fun HasDirectPerm_19528_59232 (T@PolymorphicMapType_19489 T@Ref T@Field_19528_23143) Bool)
(declare-fun HasDirectPerm_19528_2161 (T@PolymorphicMapType_19489 T@Ref T@Field_23078_2161) Bool)
(declare-fun HasDirectPerm_19528_19542 (T@PolymorphicMapType_19489 T@Ref T@Field_19541_19542) Bool)
(declare-fun HasDirectPerm_19528_53 (T@PolymorphicMapType_19489 T@Ref T@Field_19528_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_19489 T@PolymorphicMapType_19489 T@PolymorphicMapType_19489) Bool)
(declare-fun len (T@IArrayDomainType) Int)
(declare-fun getPredWandId_13837_13838 (T@Field_23125_23126) Int)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun loc_limited (T@IArrayDomainType Int) T@Ref)
(declare-fun first_1 (T@Ref) T@IArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(declare-fun InsidePredicate_23125_19528 (T@Field_23125_23126 T@FrameType T@Field_19528_23126 T@FrameType) Bool)
(declare-fun InsidePredicate_19528_23125 (T@Field_19528_23126 T@FrameType T@Field_23125_23126 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_19468) (Heap1 T@PolymorphicMapType_19468) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_19468) (Mask T@PolymorphicMapType_19489) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_19468) (Heap1@@0 T@PolymorphicMapType_19468) (Heap2 T@PolymorphicMapType_19468) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_23138_23143) ) (!  (not (select (|PolymorphicMapType_20017_23125_63213#PolymorphicMapType_20017| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20017_23125_63213#PolymorphicMapType_20017| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_23125_23126) ) (!  (not (select (|PolymorphicMapType_20017_23125_23126#PolymorphicMapType_20017| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20017_23125_23126#PolymorphicMapType_20017| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_23125_2161) ) (!  (not (select (|PolymorphicMapType_20017_23125_2161#PolymorphicMapType_20017| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20017_23125_2161#PolymorphicMapType_20017| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_23125_19542) ) (!  (not (select (|PolymorphicMapType_20017_23125_19542#PolymorphicMapType_20017| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20017_23125_19542#PolymorphicMapType_20017| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_23125_53) ) (!  (not (select (|PolymorphicMapType_20017_23125_53#PolymorphicMapType_20017| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20017_23125_53#PolymorphicMapType_20017| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_19528_23143) ) (!  (not (select (|PolymorphicMapType_20017_19528_62165#PolymorphicMapType_20017| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20017_19528_62165#PolymorphicMapType_20017| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_19528_23126) ) (!  (not (select (|PolymorphicMapType_20017_19528_23126#PolymorphicMapType_20017| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20017_19528_23126#PolymorphicMapType_20017| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_23078_2161) ) (!  (not (select (|PolymorphicMapType_20017_19528_2161#PolymorphicMapType_20017| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20017_19528_2161#PolymorphicMapType_20017| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_19541_19542) ) (!  (not (select (|PolymorphicMapType_20017_19528_19542#PolymorphicMapType_20017| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20017_19528_19542#PolymorphicMapType_20017| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_19528_53) ) (!  (not (select (|PolymorphicMapType_20017_19528_53#PolymorphicMapType_20017| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20017_19528_53#PolymorphicMapType_20017| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a_2 T@IArrayDomainType) (i Int) ) (! (IsPredicateField_13837_13838 (p_2 a_2 i))
 :qid |stdinbpl.337:15|
 :skolemid |26|
 :pattern ( (p_2 a_2 i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_19468) (a_2@@0 T@IArrayDomainType) (i@@0 Int) ) (! (|p#everUsed_13837| (p_2 a_2@@0 i@@0))
 :qid |stdinbpl.356:15|
 :skolemid |30|
 :pattern ( (|p#trigger_13837| Heap@@0 (p_2 a_2@@0 i@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_19468) (ExhaleHeap T@PolymorphicMapType_19468) (Mask@@0 T@PolymorphicMapType_19489) (pm_f_38 T@Field_23125_23126) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_23125_23126 Mask@@0 null pm_f_38) (IsPredicateField_13837_13838 pm_f_38)) (= (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@1) null (PredicateMaskField_13837 pm_f_38)) (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| ExhaleHeap) null (PredicateMaskField_13837 pm_f_38)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_13837_13838 pm_f_38) (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| ExhaleHeap) null (PredicateMaskField_13837 pm_f_38)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_19468) (ExhaleHeap@@0 T@PolymorphicMapType_19468) (Mask@@1 T@PolymorphicMapType_19489) (pm_f_38@@0 T@Field_19528_23126) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_19528_23126 Mask@@1 null pm_f_38@@0) (IsPredicateField_19528_60681 pm_f_38@@0)) (= (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@2) null (PredicateMaskField_19528 pm_f_38@@0)) (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| ExhaleHeap@@0) null (PredicateMaskField_19528 pm_f_38@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_19528_60681 pm_f_38@@0) (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| ExhaleHeap@@0) null (PredicateMaskField_19528 pm_f_38@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_19468) (ExhaleHeap@@1 T@PolymorphicMapType_19468) (Mask@@2 T@PolymorphicMapType_19489) (pm_f_38@@1 T@Field_23125_23126) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_23125_23126 Mask@@2 null pm_f_38@@1) (IsWandField_23125_64378 pm_f_38@@1)) (= (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@3) null (WandMaskField_23125 pm_f_38@@1)) (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| ExhaleHeap@@1) null (WandMaskField_23125 pm_f_38@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_23125_64378 pm_f_38@@1) (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| ExhaleHeap@@1) null (WandMaskField_23125 pm_f_38@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_19468) (ExhaleHeap@@2 T@PolymorphicMapType_19468) (Mask@@3 T@PolymorphicMapType_19489) (pm_f_38@@2 T@Field_19528_23126) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_19528_23126 Mask@@3 null pm_f_38@@2) (IsWandField_19528_64021 pm_f_38@@2)) (= (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@4) null (WandMaskField_19528 pm_f_38@@2)) (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| ExhaleHeap@@2) null (WandMaskField_19528 pm_f_38@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_19528_64021 pm_f_38@@2) (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| ExhaleHeap@@2) null (WandMaskField_19528 pm_f_38@@2)))
)))
(assert (forall ((a_2@@1 T@IArrayDomainType) (i@@1 Int) (a2 T@IArrayDomainType) (i2 Int) ) (!  (=> (= (p_2 a_2@@1 i@@1) (p_2 a2 i2)) (and (= a_2@@1 a2) (= i@@1 i2)))
 :qid |stdinbpl.347:15|
 :skolemid |28|
 :pattern ( (p_2 a_2@@1 i@@1) (p_2 a2 i2))
)))
(assert (forall ((a_2@@2 T@IArrayDomainType) (i@@2 Int) (a2@@0 T@IArrayDomainType) (i2@@0 Int) ) (!  (=> (= (|p#sm| a_2@@2 i@@2) (|p#sm| a2@@0 i2@@0)) (and (= a_2@@2 a2@@0) (= i@@2 i2@@0)))
 :qid |stdinbpl.351:15|
 :skolemid |29|
 :pattern ( (|p#sm| a_2@@2 i@@2) (|p#sm| a2@@0 i2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_19468) (ExhaleHeap@@3 T@PolymorphicMapType_19468) (Mask@@4 T@PolymorphicMapType_19489) (pm_f_38@@3 T@Field_23125_23126) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_23125_23126 Mask@@4 null pm_f_38@@3) (IsPredicateField_13837_13838 pm_f_38@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_38 T@Ref) (f_70 T@Field_19528_53) ) (!  (=> (select (|PolymorphicMapType_20017_19528_53#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@5) null (PredicateMaskField_13837 pm_f_38@@3))) o2_38 f_70) (= (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@5) o2_38 f_70) (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38 f_70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38 f_70))
)) (forall ((o2_38@@0 T@Ref) (f_70@@0 T@Field_19541_19542) ) (!  (=> (select (|PolymorphicMapType_20017_19528_19542#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@5) null (PredicateMaskField_13837 pm_f_38@@3))) o2_38@@0 f_70@@0) (= (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@5) o2_38@@0 f_70@@0) (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@0 f_70@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@0 f_70@@0))
))) (forall ((o2_38@@1 T@Ref) (f_70@@1 T@Field_23078_2161) ) (!  (=> (select (|PolymorphicMapType_20017_19528_2161#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@5) null (PredicateMaskField_13837 pm_f_38@@3))) o2_38@@1 f_70@@1) (= (select (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@5) o2_38@@1 f_70@@1) (select (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@1 f_70@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@1 f_70@@1))
))) (forall ((o2_38@@2 T@Ref) (f_70@@2 T@Field_19528_23126) ) (!  (=> (select (|PolymorphicMapType_20017_19528_23126#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@5) null (PredicateMaskField_13837 pm_f_38@@3))) o2_38@@2 f_70@@2) (= (select (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@5) o2_38@@2 f_70@@2) (select (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@2 f_70@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@2 f_70@@2))
))) (forall ((o2_38@@3 T@Ref) (f_70@@3 T@Field_19528_23143) ) (!  (=> (select (|PolymorphicMapType_20017_19528_62165#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@5) null (PredicateMaskField_13837 pm_f_38@@3))) o2_38@@3 f_70@@3) (= (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@5) o2_38@@3 f_70@@3) (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@3 f_70@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@3 f_70@@3))
))) (forall ((o2_38@@4 T@Ref) (f_70@@4 T@Field_23125_53) ) (!  (=> (select (|PolymorphicMapType_20017_23125_53#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@5) null (PredicateMaskField_13837 pm_f_38@@3))) o2_38@@4 f_70@@4) (= (select (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@5) o2_38@@4 f_70@@4) (select (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@4 f_70@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@4 f_70@@4))
))) (forall ((o2_38@@5 T@Ref) (f_70@@5 T@Field_23125_19542) ) (!  (=> (select (|PolymorphicMapType_20017_23125_19542#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@5) null (PredicateMaskField_13837 pm_f_38@@3))) o2_38@@5 f_70@@5) (= (select (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@5) o2_38@@5 f_70@@5) (select (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@5 f_70@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@5 f_70@@5))
))) (forall ((o2_38@@6 T@Ref) (f_70@@6 T@Field_23125_2161) ) (!  (=> (select (|PolymorphicMapType_20017_23125_2161#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@5) null (PredicateMaskField_13837 pm_f_38@@3))) o2_38@@6 f_70@@6) (= (select (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@5) o2_38@@6 f_70@@6) (select (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@6 f_70@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@6 f_70@@6))
))) (forall ((o2_38@@7 T@Ref) (f_70@@7 T@Field_23125_23126) ) (!  (=> (select (|PolymorphicMapType_20017_23125_23126#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@5) null (PredicateMaskField_13837 pm_f_38@@3))) o2_38@@7 f_70@@7) (= (select (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@5) o2_38@@7 f_70@@7) (select (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@7 f_70@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@7 f_70@@7))
))) (forall ((o2_38@@8 T@Ref) (f_70@@8 T@Field_23138_23143) ) (!  (=> (select (|PolymorphicMapType_20017_23125_63213#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@5) null (PredicateMaskField_13837 pm_f_38@@3))) o2_38@@8 f_70@@8) (= (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@5) o2_38@@8 f_70@@8) (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@8 f_70@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| ExhaleHeap@@3) o2_38@@8 f_70@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_13837_13838 pm_f_38@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_19468) (ExhaleHeap@@4 T@PolymorphicMapType_19468) (Mask@@5 T@PolymorphicMapType_19489) (pm_f_38@@4 T@Field_19528_23126) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_19528_23126 Mask@@5 null pm_f_38@@4) (IsPredicateField_19528_60681 pm_f_38@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_38@@9 T@Ref) (f_70@@9 T@Field_19528_53) ) (!  (=> (select (|PolymorphicMapType_20017_19528_53#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@6) null (PredicateMaskField_19528 pm_f_38@@4))) o2_38@@9 f_70@@9) (= (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@6) o2_38@@9 f_70@@9) (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@9 f_70@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@9 f_70@@9))
)) (forall ((o2_38@@10 T@Ref) (f_70@@10 T@Field_19541_19542) ) (!  (=> (select (|PolymorphicMapType_20017_19528_19542#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@6) null (PredicateMaskField_19528 pm_f_38@@4))) o2_38@@10 f_70@@10) (= (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@6) o2_38@@10 f_70@@10) (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@10 f_70@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@10 f_70@@10))
))) (forall ((o2_38@@11 T@Ref) (f_70@@11 T@Field_23078_2161) ) (!  (=> (select (|PolymorphicMapType_20017_19528_2161#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@6) null (PredicateMaskField_19528 pm_f_38@@4))) o2_38@@11 f_70@@11) (= (select (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@6) o2_38@@11 f_70@@11) (select (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@11 f_70@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@11 f_70@@11))
))) (forall ((o2_38@@12 T@Ref) (f_70@@12 T@Field_19528_23126) ) (!  (=> (select (|PolymorphicMapType_20017_19528_23126#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@6) null (PredicateMaskField_19528 pm_f_38@@4))) o2_38@@12 f_70@@12) (= (select (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@6) o2_38@@12 f_70@@12) (select (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@12 f_70@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@12 f_70@@12))
))) (forall ((o2_38@@13 T@Ref) (f_70@@13 T@Field_19528_23143) ) (!  (=> (select (|PolymorphicMapType_20017_19528_62165#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@6) null (PredicateMaskField_19528 pm_f_38@@4))) o2_38@@13 f_70@@13) (= (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@6) o2_38@@13 f_70@@13) (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@13 f_70@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@13 f_70@@13))
))) (forall ((o2_38@@14 T@Ref) (f_70@@14 T@Field_23125_53) ) (!  (=> (select (|PolymorphicMapType_20017_23125_53#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@6) null (PredicateMaskField_19528 pm_f_38@@4))) o2_38@@14 f_70@@14) (= (select (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@6) o2_38@@14 f_70@@14) (select (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@14 f_70@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@14 f_70@@14))
))) (forall ((o2_38@@15 T@Ref) (f_70@@15 T@Field_23125_19542) ) (!  (=> (select (|PolymorphicMapType_20017_23125_19542#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@6) null (PredicateMaskField_19528 pm_f_38@@4))) o2_38@@15 f_70@@15) (= (select (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@6) o2_38@@15 f_70@@15) (select (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@15 f_70@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@15 f_70@@15))
))) (forall ((o2_38@@16 T@Ref) (f_70@@16 T@Field_23125_2161) ) (!  (=> (select (|PolymorphicMapType_20017_23125_2161#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@6) null (PredicateMaskField_19528 pm_f_38@@4))) o2_38@@16 f_70@@16) (= (select (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@6) o2_38@@16 f_70@@16) (select (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@16 f_70@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@16 f_70@@16))
))) (forall ((o2_38@@17 T@Ref) (f_70@@17 T@Field_23125_23126) ) (!  (=> (select (|PolymorphicMapType_20017_23125_23126#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@6) null (PredicateMaskField_19528 pm_f_38@@4))) o2_38@@17 f_70@@17) (= (select (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@6) o2_38@@17 f_70@@17) (select (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@17 f_70@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@17 f_70@@17))
))) (forall ((o2_38@@18 T@Ref) (f_70@@18 T@Field_23138_23143) ) (!  (=> (select (|PolymorphicMapType_20017_23125_63213#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@6) null (PredicateMaskField_19528 pm_f_38@@4))) o2_38@@18 f_70@@18) (= (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@6) o2_38@@18 f_70@@18) (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@18 f_70@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| ExhaleHeap@@4) o2_38@@18 f_70@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_19528_60681 pm_f_38@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_19468) (ExhaleHeap@@5 T@PolymorphicMapType_19468) (Mask@@6 T@PolymorphicMapType_19489) (pm_f_38@@5 T@Field_23125_23126) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_23125_23126 Mask@@6 null pm_f_38@@5) (IsWandField_23125_64378 pm_f_38@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_38@@19 T@Ref) (f_70@@19 T@Field_19528_53) ) (!  (=> (select (|PolymorphicMapType_20017_19528_53#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@7) null (WandMaskField_23125 pm_f_38@@5))) o2_38@@19 f_70@@19) (= (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@7) o2_38@@19 f_70@@19) (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@19 f_70@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@19 f_70@@19))
)) (forall ((o2_38@@20 T@Ref) (f_70@@20 T@Field_19541_19542) ) (!  (=> (select (|PolymorphicMapType_20017_19528_19542#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@7) null (WandMaskField_23125 pm_f_38@@5))) o2_38@@20 f_70@@20) (= (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@7) o2_38@@20 f_70@@20) (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@20 f_70@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@20 f_70@@20))
))) (forall ((o2_38@@21 T@Ref) (f_70@@21 T@Field_23078_2161) ) (!  (=> (select (|PolymorphicMapType_20017_19528_2161#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@7) null (WandMaskField_23125 pm_f_38@@5))) o2_38@@21 f_70@@21) (= (select (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@7) o2_38@@21 f_70@@21) (select (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@21 f_70@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@21 f_70@@21))
))) (forall ((o2_38@@22 T@Ref) (f_70@@22 T@Field_19528_23126) ) (!  (=> (select (|PolymorphicMapType_20017_19528_23126#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@7) null (WandMaskField_23125 pm_f_38@@5))) o2_38@@22 f_70@@22) (= (select (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@7) o2_38@@22 f_70@@22) (select (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@22 f_70@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@22 f_70@@22))
))) (forall ((o2_38@@23 T@Ref) (f_70@@23 T@Field_19528_23143) ) (!  (=> (select (|PolymorphicMapType_20017_19528_62165#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@7) null (WandMaskField_23125 pm_f_38@@5))) o2_38@@23 f_70@@23) (= (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@7) o2_38@@23 f_70@@23) (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@23 f_70@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@23 f_70@@23))
))) (forall ((o2_38@@24 T@Ref) (f_70@@24 T@Field_23125_53) ) (!  (=> (select (|PolymorphicMapType_20017_23125_53#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@7) null (WandMaskField_23125 pm_f_38@@5))) o2_38@@24 f_70@@24) (= (select (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@7) o2_38@@24 f_70@@24) (select (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@24 f_70@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@24 f_70@@24))
))) (forall ((o2_38@@25 T@Ref) (f_70@@25 T@Field_23125_19542) ) (!  (=> (select (|PolymorphicMapType_20017_23125_19542#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@7) null (WandMaskField_23125 pm_f_38@@5))) o2_38@@25 f_70@@25) (= (select (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@7) o2_38@@25 f_70@@25) (select (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@25 f_70@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@25 f_70@@25))
))) (forall ((o2_38@@26 T@Ref) (f_70@@26 T@Field_23125_2161) ) (!  (=> (select (|PolymorphicMapType_20017_23125_2161#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@7) null (WandMaskField_23125 pm_f_38@@5))) o2_38@@26 f_70@@26) (= (select (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@7) o2_38@@26 f_70@@26) (select (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@26 f_70@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@26 f_70@@26))
))) (forall ((o2_38@@27 T@Ref) (f_70@@27 T@Field_23125_23126) ) (!  (=> (select (|PolymorphicMapType_20017_23125_23126#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@7) null (WandMaskField_23125 pm_f_38@@5))) o2_38@@27 f_70@@27) (= (select (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@7) o2_38@@27 f_70@@27) (select (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@27 f_70@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@27 f_70@@27))
))) (forall ((o2_38@@28 T@Ref) (f_70@@28 T@Field_23138_23143) ) (!  (=> (select (|PolymorphicMapType_20017_23125_63213#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@7) null (WandMaskField_23125 pm_f_38@@5))) o2_38@@28 f_70@@28) (= (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@7) o2_38@@28 f_70@@28) (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@28 f_70@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| ExhaleHeap@@5) o2_38@@28 f_70@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_23125_64378 pm_f_38@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_19468) (ExhaleHeap@@6 T@PolymorphicMapType_19468) (Mask@@7 T@PolymorphicMapType_19489) (pm_f_38@@6 T@Field_19528_23126) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_19528_23126 Mask@@7 null pm_f_38@@6) (IsWandField_19528_64021 pm_f_38@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_38@@29 T@Ref) (f_70@@29 T@Field_19528_53) ) (!  (=> (select (|PolymorphicMapType_20017_19528_53#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@8) null (WandMaskField_19528 pm_f_38@@6))) o2_38@@29 f_70@@29) (= (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@8) o2_38@@29 f_70@@29) (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@29 f_70@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@29 f_70@@29))
)) (forall ((o2_38@@30 T@Ref) (f_70@@30 T@Field_19541_19542) ) (!  (=> (select (|PolymorphicMapType_20017_19528_19542#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@8) null (WandMaskField_19528 pm_f_38@@6))) o2_38@@30 f_70@@30) (= (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@8) o2_38@@30 f_70@@30) (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@30 f_70@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@30 f_70@@30))
))) (forall ((o2_38@@31 T@Ref) (f_70@@31 T@Field_23078_2161) ) (!  (=> (select (|PolymorphicMapType_20017_19528_2161#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@8) null (WandMaskField_19528 pm_f_38@@6))) o2_38@@31 f_70@@31) (= (select (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@8) o2_38@@31 f_70@@31) (select (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@31 f_70@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@31 f_70@@31))
))) (forall ((o2_38@@32 T@Ref) (f_70@@32 T@Field_19528_23126) ) (!  (=> (select (|PolymorphicMapType_20017_19528_23126#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@8) null (WandMaskField_19528 pm_f_38@@6))) o2_38@@32 f_70@@32) (= (select (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@8) o2_38@@32 f_70@@32) (select (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@32 f_70@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@32 f_70@@32))
))) (forall ((o2_38@@33 T@Ref) (f_70@@33 T@Field_19528_23143) ) (!  (=> (select (|PolymorphicMapType_20017_19528_62165#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@8) null (WandMaskField_19528 pm_f_38@@6))) o2_38@@33 f_70@@33) (= (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@8) o2_38@@33 f_70@@33) (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@33 f_70@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@33 f_70@@33))
))) (forall ((o2_38@@34 T@Ref) (f_70@@34 T@Field_23125_53) ) (!  (=> (select (|PolymorphicMapType_20017_23125_53#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@8) null (WandMaskField_19528 pm_f_38@@6))) o2_38@@34 f_70@@34) (= (select (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@8) o2_38@@34 f_70@@34) (select (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@34 f_70@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@34 f_70@@34))
))) (forall ((o2_38@@35 T@Ref) (f_70@@35 T@Field_23125_19542) ) (!  (=> (select (|PolymorphicMapType_20017_23125_19542#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@8) null (WandMaskField_19528 pm_f_38@@6))) o2_38@@35 f_70@@35) (= (select (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@8) o2_38@@35 f_70@@35) (select (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@35 f_70@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@35 f_70@@35))
))) (forall ((o2_38@@36 T@Ref) (f_70@@36 T@Field_23125_2161) ) (!  (=> (select (|PolymorphicMapType_20017_23125_2161#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@8) null (WandMaskField_19528 pm_f_38@@6))) o2_38@@36 f_70@@36) (= (select (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@8) o2_38@@36 f_70@@36) (select (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@36 f_70@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@36 f_70@@36))
))) (forall ((o2_38@@37 T@Ref) (f_70@@37 T@Field_23125_23126) ) (!  (=> (select (|PolymorphicMapType_20017_23125_23126#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@8) null (WandMaskField_19528 pm_f_38@@6))) o2_38@@37 f_70@@37) (= (select (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@8) o2_38@@37 f_70@@37) (select (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@37 f_70@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@37 f_70@@37))
))) (forall ((o2_38@@38 T@Ref) (f_70@@38 T@Field_23138_23143) ) (!  (=> (select (|PolymorphicMapType_20017_23125_63213#PolymorphicMapType_20017| (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@8) null (WandMaskField_19528 pm_f_38@@6))) o2_38@@38 f_70@@38) (= (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@8) o2_38@@38 f_70@@38) (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@38 f_70@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| ExhaleHeap@@6) o2_38@@38 f_70@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_19528_64021 pm_f_38@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_19468) (ExhaleHeap@@7 T@PolymorphicMapType_19468) (Mask@@8 T@PolymorphicMapType_19489) (o_58 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@9) o_58 $allocated) (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| ExhaleHeap@@7) o_58 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| ExhaleHeap@@7) o_58 $allocated))
)))
(assert (forall ((p T@Field_23125_23126) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_23125_23125 p v_1 p w))
 :qid |stdinbpl.273:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23125_23125 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_19528_23126) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_19528_19528 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.273:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19528_19528 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_13834_2161 val)))
(assert  (not (IsWandField_13834_2161 val)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_19468) (ExhaleHeap@@8 T@PolymorphicMapType_19468) (Mask@@9 T@PolymorphicMapType_19489) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_19489) (o_2@@9 T@Ref) (f_4@@9 T@Field_23138_23143) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_13837_71310 f_4@@9))) (not (IsWandField_13837_71326 f_4@@9))) (<= (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_19489) (o_2@@10 T@Ref) (f_4@@10 T@Field_23125_19542) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_13837_19542 f_4@@10))) (not (IsWandField_13837_19542 f_4@@10))) (<= (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_19489) (o_2@@11 T@Ref) (f_4@@11 T@Field_23125_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_13837_53 f_4@@11))) (not (IsWandField_13837_53 f_4@@11))) (<= (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_19489) (o_2@@12 T@Ref) (f_4@@12 T@Field_23125_23126) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_13837_13838 f_4@@12))) (not (IsWandField_23125_64378 f_4@@12))) (<= (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_19489) (o_2@@13 T@Ref) (f_4@@13 T@Field_23125_2161) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_13837_2161 f_4@@13))) (not (IsWandField_13837_2161 f_4@@13))) (<= (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_19489) (o_2@@14 T@Ref) (f_4@@14 T@Field_19528_23143) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_13834_70479 f_4@@14))) (not (IsWandField_13834_70495 f_4@@14))) (<= (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_19489) (o_2@@15 T@Ref) (f_4@@15 T@Field_19541_19542) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_13834_19542 f_4@@15))) (not (IsWandField_13834_19542 f_4@@15))) (<= (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_19489) (o_2@@16 T@Ref) (f_4@@16 T@Field_19528_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_13834_53 f_4@@16))) (not (IsWandField_13834_53 f_4@@16))) (<= (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_19489) (o_2@@17 T@Ref) (f_4@@17 T@Field_19528_23126) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_19528_60681 f_4@@17))) (not (IsWandField_19528_64021 f_4@@17))) (<= (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_19489) (o_2@@18 T@Ref) (f_4@@18 T@Field_23078_2161) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_13834_2161 f_4@@18))) (not (IsWandField_13834_2161 f_4@@18))) (<= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_19489) (o_2@@19 T@Ref) (f_4@@19 T@Field_23138_23143) ) (! (= (HasDirectPerm_23125_60393 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23125_60393 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_19489) (o_2@@20 T@Ref) (f_4@@20 T@Field_23125_23126) ) (! (= (HasDirectPerm_23125_23126 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23125_23126 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_19489) (o_2@@21 T@Ref) (f_4@@21 T@Field_23125_2161) ) (! (= (HasDirectPerm_23125_2161 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23125_2161 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_19489) (o_2@@22 T@Ref) (f_4@@22 T@Field_23125_19542) ) (! (= (HasDirectPerm_23125_19542 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23125_19542 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_19489) (o_2@@23 T@Ref) (f_4@@23 T@Field_23125_53) ) (! (= (HasDirectPerm_23125_53 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23125_53 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_19489) (o_2@@24 T@Ref) (f_4@@24 T@Field_19528_23143) ) (! (= (HasDirectPerm_19528_59232 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19528_59232 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_19489) (o_2@@25 T@Ref) (f_4@@25 T@Field_19528_23126) ) (! (= (HasDirectPerm_19528_23126 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19528_23126 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_19489) (o_2@@26 T@Ref) (f_4@@26 T@Field_23078_2161) ) (! (= (HasDirectPerm_19528_2161 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19528_2161 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_19489) (o_2@@27 T@Ref) (f_4@@27 T@Field_19541_19542) ) (! (= (HasDirectPerm_19528_19542 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19528_19542 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_19489) (o_2@@28 T@Ref) (f_4@@28 T@Field_19528_53) ) (! (= (HasDirectPerm_19528_53 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19528_53 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.261:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_19468) (ExhaleHeap@@9 T@PolymorphicMapType_19468) (Mask@@30 T@PolymorphicMapType_19489) (o_58@@0 T@Ref) (f_70@@39 T@Field_23138_23143) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_23125_60393 Mask@@30 o_58@@0 f_70@@39) (= (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@11) o_58@@0 f_70@@39) (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| ExhaleHeap@@9) o_58@@0 f_70@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| ExhaleHeap@@9) o_58@@0 f_70@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_19468) (ExhaleHeap@@10 T@PolymorphicMapType_19468) (Mask@@31 T@PolymorphicMapType_19489) (o_58@@1 T@Ref) (f_70@@40 T@Field_23125_23126) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_23125_23126 Mask@@31 o_58@@1 f_70@@40) (= (select (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@12) o_58@@1 f_70@@40) (select (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| ExhaleHeap@@10) o_58@@1 f_70@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| ExhaleHeap@@10) o_58@@1 f_70@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_19468) (ExhaleHeap@@11 T@PolymorphicMapType_19468) (Mask@@32 T@PolymorphicMapType_19489) (o_58@@2 T@Ref) (f_70@@41 T@Field_23125_2161) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_23125_2161 Mask@@32 o_58@@2 f_70@@41) (= (select (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@13) o_58@@2 f_70@@41) (select (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| ExhaleHeap@@11) o_58@@2 f_70@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| ExhaleHeap@@11) o_58@@2 f_70@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_19468) (ExhaleHeap@@12 T@PolymorphicMapType_19468) (Mask@@33 T@PolymorphicMapType_19489) (o_58@@3 T@Ref) (f_70@@42 T@Field_23125_19542) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_23125_19542 Mask@@33 o_58@@3 f_70@@42) (= (select (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@14) o_58@@3 f_70@@42) (select (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| ExhaleHeap@@12) o_58@@3 f_70@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| ExhaleHeap@@12) o_58@@3 f_70@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_19468) (ExhaleHeap@@13 T@PolymorphicMapType_19468) (Mask@@34 T@PolymorphicMapType_19489) (o_58@@4 T@Ref) (f_70@@43 T@Field_23125_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_23125_53 Mask@@34 o_58@@4 f_70@@43) (= (select (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@15) o_58@@4 f_70@@43) (select (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| ExhaleHeap@@13) o_58@@4 f_70@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| ExhaleHeap@@13) o_58@@4 f_70@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_19468) (ExhaleHeap@@14 T@PolymorphicMapType_19468) (Mask@@35 T@PolymorphicMapType_19489) (o_58@@5 T@Ref) (f_70@@44 T@Field_19528_23143) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_19528_59232 Mask@@35 o_58@@5 f_70@@44) (= (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@16) o_58@@5 f_70@@44) (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| ExhaleHeap@@14) o_58@@5 f_70@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| ExhaleHeap@@14) o_58@@5 f_70@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_19468) (ExhaleHeap@@15 T@PolymorphicMapType_19468) (Mask@@36 T@PolymorphicMapType_19489) (o_58@@6 T@Ref) (f_70@@45 T@Field_19528_23126) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_19528_23126 Mask@@36 o_58@@6 f_70@@45) (= (select (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@17) o_58@@6 f_70@@45) (select (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| ExhaleHeap@@15) o_58@@6 f_70@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| ExhaleHeap@@15) o_58@@6 f_70@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_19468) (ExhaleHeap@@16 T@PolymorphicMapType_19468) (Mask@@37 T@PolymorphicMapType_19489) (o_58@@7 T@Ref) (f_70@@46 T@Field_23078_2161) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_19528_2161 Mask@@37 o_58@@7 f_70@@46) (= (select (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@18) o_58@@7 f_70@@46) (select (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| ExhaleHeap@@16) o_58@@7 f_70@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| ExhaleHeap@@16) o_58@@7 f_70@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_19468) (ExhaleHeap@@17 T@PolymorphicMapType_19468) (Mask@@38 T@PolymorphicMapType_19489) (o_58@@8 T@Ref) (f_70@@47 T@Field_19541_19542) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_19528_19542 Mask@@38 o_58@@8 f_70@@47) (= (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@19) o_58@@8 f_70@@47) (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| ExhaleHeap@@17) o_58@@8 f_70@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| ExhaleHeap@@17) o_58@@8 f_70@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_19468) (ExhaleHeap@@18 T@PolymorphicMapType_19468) (Mask@@39 T@PolymorphicMapType_19489) (o_58@@9 T@Ref) (f_70@@48 T@Field_19528_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_19528_53 Mask@@39 o_58@@9 f_70@@48) (= (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@20) o_58@@9 f_70@@48) (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| ExhaleHeap@@18) o_58@@9 f_70@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| ExhaleHeap@@18) o_58@@9 f_70@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_23138_23143) ) (! (= (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_23125_19542) ) (! (= (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_23125_53) ) (! (= (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_23125_23126) ) (! (= (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_23125_2161) ) (! (= (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_19528_23143) ) (! (= (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_19541_19542) ) (! (= (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_19528_53) ) (! (= (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_19528_23126) ) (! (= (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_23078_2161) ) (! (= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_19489) (SummandMask1 T@PolymorphicMapType_19489) (SummandMask2 T@PolymorphicMapType_19489) (o_2@@39 T@Ref) (f_4@@39 T@Field_23138_23143) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_19489) (SummandMask1@@0 T@PolymorphicMapType_19489) (SummandMask2@@0 T@PolymorphicMapType_19489) (o_2@@40 T@Ref) (f_4@@40 T@Field_23125_19542) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_19489) (SummandMask1@@1 T@PolymorphicMapType_19489) (SummandMask2@@1 T@PolymorphicMapType_19489) (o_2@@41 T@Ref) (f_4@@41 T@Field_23125_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_19489) (SummandMask1@@2 T@PolymorphicMapType_19489) (SummandMask2@@2 T@PolymorphicMapType_19489) (o_2@@42 T@Ref) (f_4@@42 T@Field_23125_23126) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_19489) (SummandMask1@@3 T@PolymorphicMapType_19489) (SummandMask2@@3 T@PolymorphicMapType_19489) (o_2@@43 T@Ref) (f_4@@43 T@Field_23125_2161) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_19489) (SummandMask1@@4 T@PolymorphicMapType_19489) (SummandMask2@@4 T@PolymorphicMapType_19489) (o_2@@44 T@Ref) (f_4@@44 T@Field_19528_23143) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_19489) (SummandMask1@@5 T@PolymorphicMapType_19489) (SummandMask2@@5 T@PolymorphicMapType_19489) (o_2@@45 T@Ref) (f_4@@45 T@Field_19541_19542) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_19489) (SummandMask1@@6 T@PolymorphicMapType_19489) (SummandMask2@@6 T@PolymorphicMapType_19489) (o_2@@46 T@Ref) (f_4@@46 T@Field_19528_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_19489) (SummandMask1@@7 T@PolymorphicMapType_19489) (SummandMask2@@7 T@PolymorphicMapType_19489) (o_2@@47 T@Ref) (f_4@@47 T@Field_19528_23126) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_19489) (SummandMask1@@8 T@PolymorphicMapType_19489) (SummandMask2@@8 T@PolymorphicMapType_19489) (o_2@@48 T@Ref) (f_4@@48 T@Field_23078_2161) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a_2@@3 T@IArrayDomainType) ) (! (>= (len a_2@@3) 0)
 :qid |stdinbpl.313:15|
 :skolemid |24|
 :pattern ( (len a_2@@3))
)))
(assert (forall ((a_2@@4 T@IArrayDomainType) (i@@3 Int) ) (! (= (getPredWandId_13837_13838 (p_2 a_2@@4 i@@3)) 0)
 :qid |stdinbpl.341:15|
 :skolemid |27|
 :pattern ( (p_2 a_2@@4 i@@3))
)))
(assert (forall ((a_2@@5 T@IArrayDomainType) (i@@4 Int) ) (! (= (loc a_2@@5 i@@4) (loc_limited a_2@@5 i@@4))
 :qid |stdinbpl.301:15|
 :skolemid |22|
 :pattern ( (loc a_2@@5 i@@4))
)))
(assert (forall ((a_2@@6 T@IArrayDomainType) (i@@5 Int) ) (! (= (PredicateMaskField_13837 (p_2 a_2@@6 i@@5)) (|p#sm| a_2@@6 i@@5))
 :qid |stdinbpl.333:15|
 :skolemid |25|
 :pattern ( (PredicateMaskField_13837 (p_2 a_2@@6 i@@5)))
)))
(assert (forall ((a_2@@7 T@IArrayDomainType) (i@@6 Int) ) (!  (and (= (first_1 (loc a_2@@7 i@@6)) a_2@@7) (= (second_1 (loc a_2@@7 i@@6)) i@@6))
 :qid |stdinbpl.307:15|
 :skolemid |23|
 :pattern ( (loc a_2@@7 i@@6))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_19468) (o_51 T@Ref) (f_14 T@Field_23138_23143) (v T@PolymorphicMapType_20017) ) (! (succHeap Heap@@21 (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@21) (store (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@21) o_51 f_14 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@21) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@21) (store (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@21) o_51 f_14 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_19468) (o_51@@0 T@Ref) (f_14@@0 T@Field_23125_2161) (v@@0 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@22) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@22) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@22) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@22) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@22) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@22) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@22) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@22) (store (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@22) o_51@@0 f_14@@0 v@@0) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@22) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@22) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@22) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@22) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@22) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@22) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@22) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@22) (store (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@22) o_51@@0 f_14@@0 v@@0) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_19468) (o_51@@1 T@Ref) (f_14@@1 T@Field_23125_23126) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@23) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@23) (store (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@23) o_51@@1 f_14@@1 v@@1) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@23) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@23) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@23) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@23) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@23) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@23) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@23) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@23) (store (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@23) o_51@@1 f_14@@1 v@@1) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@23) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@23) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@23) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@23) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@23) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@23) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_19468) (o_51@@2 T@Ref) (f_14@@2 T@Field_23125_19542) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@24) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@24) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@24) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@24) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@24) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@24) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@24) (store (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@24) o_51@@2 f_14@@2 v@@2) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@24) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@24) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@24) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@24) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@24) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@24) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@24) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@24) (store (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@24) o_51@@2 f_14@@2 v@@2) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@24) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_19468) (o_51@@3 T@Ref) (f_14@@3 T@Field_23125_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@25) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@25) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@25) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@25) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@25) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@25) (store (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@25) o_51@@3 f_14@@3 v@@3) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@25) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@25) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@25) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@25) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@25) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@25) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@25) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@25) (store (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@25) o_51@@3 f_14@@3 v@@3) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@25) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@25) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_19468) (o_51@@4 T@Ref) (f_14@@4 T@Field_19528_23143) (v@@4 T@PolymorphicMapType_20017) ) (! (succHeap Heap@@26 (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@26) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@26) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@26) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@26) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@26) (store (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@26) o_51@@4 f_14@@4 v@@4) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@26) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@26) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@26) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@26) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@26) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@26) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@26) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@26) (store (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@26) o_51@@4 f_14@@4 v@@4) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@26) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@26) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@26) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_19468) (o_51@@5 T@Ref) (f_14@@5 T@Field_23078_2161) (v@@5 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@27) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@27) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@27) (store (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@27) o_51@@5 f_14@@5 v@@5) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@27) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@27) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@27) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@27) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@27) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@27) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@27) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@27) (store (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@27) o_51@@5 f_14@@5 v@@5) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@27) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@27) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@27) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@27) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@27) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_19468) (o_51@@6 T@Ref) (f_14@@6 T@Field_19528_23126) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@28) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@28) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@28) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@28) (store (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@28) o_51@@6 f_14@@6 v@@6) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@28) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@28) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@28) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@28) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@28) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@28) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@28) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@28) (store (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@28) o_51@@6 f_14@@6 v@@6) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@28) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@28) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@28) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@28) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_19468) (o_51@@7 T@Ref) (f_14@@7 T@Field_19541_19542) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@29) (store (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@29) o_51@@7 f_14@@7 v@@7) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@29) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@29) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@29) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@29) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@29) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@29) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@29) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19468 (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@29) (store (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@29) o_51@@7 f_14@@7 v@@7) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@29) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@29) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@29) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@29) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@29) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@29) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@29) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_19468) (o_51@@8 T@Ref) (f_14@@8 T@Field_19528_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_19468 (store (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@30) o_51@@8 f_14@@8 v@@8) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19468 (store (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@30) o_51@@8 f_14@@8 v@@8) (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_13837_13838#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_19528_2161#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_19528_23126#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_19528_59274#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_23125_53#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_23125_19542#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_23125_2161#PolymorphicMapType_19468| Heap@@30) (|PolymorphicMapType_19468_23125_60435#PolymorphicMapType_19468| Heap@@30)))
)))
(assert (forall ((o_51@@9 T@Ref) (f_62 T@Field_19541_19542) (Heap@@31 T@PolymorphicMapType_19468) ) (!  (=> (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@31) o_51@@9 $allocated) (select (|PolymorphicMapType_19468_13628_53#PolymorphicMapType_19468| Heap@@31) (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@31) o_51@@9 f_62) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_19468_13631_13632#PolymorphicMapType_19468| Heap@@31) o_51@@9 f_62))
)))
(assert (forall ((p@@2 T@Field_23125_23126) (v_1@@1 T@FrameType) (q T@Field_23125_23126) (w@@1 T@FrameType) (r T@Field_23125_23126) (u T@FrameType) ) (!  (=> (and (InsidePredicate_23125_23125 p@@2 v_1@@1 q w@@1) (InsidePredicate_23125_23125 q w@@1 r u)) (InsidePredicate_23125_23125 p@@2 v_1@@1 r u))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23125_23125 p@@2 v_1@@1 q w@@1) (InsidePredicate_23125_23125 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_23125_23126) (v_1@@2 T@FrameType) (q@@0 T@Field_23125_23126) (w@@2 T@FrameType) (r@@0 T@Field_19528_23126) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_23125_23125 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_23125_19528 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_23125_19528 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23125_23125 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_23125_19528 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_23125_23126) (v_1@@3 T@FrameType) (q@@1 T@Field_19528_23126) (w@@3 T@FrameType) (r@@1 T@Field_23125_23126) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_23125_19528 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_19528_23125 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_23125_23125 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23125_19528 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_19528_23125 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_23125_23126) (v_1@@4 T@FrameType) (q@@2 T@Field_19528_23126) (w@@4 T@FrameType) (r@@2 T@Field_19528_23126) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_23125_19528 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_19528_19528 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_23125_19528 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23125_19528 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_19528_19528 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_19528_23126) (v_1@@5 T@FrameType) (q@@3 T@Field_23125_23126) (w@@5 T@FrameType) (r@@3 T@Field_23125_23126) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_19528_23125 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_23125_23125 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_19528_23125 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19528_23125 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_23125_23125 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_19528_23126) (v_1@@6 T@FrameType) (q@@4 T@Field_23125_23126) (w@@6 T@FrameType) (r@@4 T@Field_19528_23126) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_19528_23125 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_23125_19528 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_19528_19528 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19528_23125 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_23125_19528 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_19528_23126) (v_1@@7 T@FrameType) (q@@5 T@Field_19528_23126) (w@@7 T@FrameType) (r@@5 T@Field_23125_23126) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_19528_19528 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_19528_23125 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_19528_23125 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19528_19528 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_19528_23125 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_19528_23126) (v_1@@8 T@FrameType) (q@@6 T@Field_19528_23126) (w@@8 T@FrameType) (r@@6 T@Field_19528_23126) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_19528_19528 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_19528_19528 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_19528_19528 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.268:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19528_19528 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_19528_19528 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun a_2@@8 () T@IArrayDomainType)
(declare-fun n () Int)
(declare-fun qpRange27 (T@Ref) Bool)
(declare-fun invRecv27 (T@Ref) Int)
(declare-fun QPMask@3 () T@PolymorphicMapType_19489)
(declare-fun PostHeap@0 () T@PolymorphicMapType_19468)
(declare-fun neverTriggered29 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_19489)
(declare-fun qpRange29 (T@Ref) Bool)
(declare-fun invRecv29 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_19489)
(declare-fun neverTriggered30 (Int) Bool)
(declare-fun qpRange26 (T@Ref) Bool)
(declare-fun invRecv26 (T@Ref) Int)
(declare-fun Heap@@32 () T@PolymorphicMapType_19468)
(set-info :boogie-vc-id m10)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon12_Else_correct  (=> (= (ControlFlow 0 10) (- 0 9)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (and (> i_5_1 0) (< i_5_1 4))) (and (> i_5_2 0) (< i_5_2 4))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i_5_1) (loc a_2@@8 i_5_2))))
 :qid |stdinbpl.2004:15|
 :skolemid |198|
)))))
(let ((anon12_Then_correct true))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (and (> i_3_2 4) (< i_3_2 n))) (and (> i_3_3 4) (< i_3_3 n))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i_3_2) (loc a_2@@8 i_3_3))))
 :qid |stdinbpl.1964:15|
 :skolemid |192|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (and (> i_3_2@@0 4) (< i_3_2@@0 n))) (and (> i_3_3@@0 4) (< i_3_3@@0 n))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i_3_2@@0) (loc a_2@@8 i_3_3@@0))))
 :qid |stdinbpl.1964:15|
 :skolemid |192|
)) (=> (and (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (and (> i_3_2@@1 4) (< i_3_2@@1 n)) (< NoPerm FullPerm)) (and (qpRange27 (loc a_2@@8 i_3_2@@1)) (= (invRecv27 (loc a_2@@8 i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.1970:22|
 :skolemid |193|
 :pattern ( (loc a_2@@8 i_3_2@@1))
 :pattern ( (loc a_2@@8 i_3_2@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (> (invRecv27 o_9) 4) (< (invRecv27 o_9) n)) (< NoPerm FullPerm)) (qpRange27 o_9)) (= (loc a_2@@8 (invRecv27 o_9)) o_9))
 :qid |stdinbpl.1974:22|
 :skolemid |194|
 :pattern ( (invRecv27 o_9))
))) (and (forall ((i_3_2@@2 Int) ) (!  (=> (and (> i_3_2@@2 4) (< i_3_2@@2 n)) (not (= (loc a_2@@8 i_3_2@@2) null)))
 :qid |stdinbpl.1980:22|
 :skolemid |195|
 :pattern ( (loc a_2@@8 i_3_2@@2))
 :pattern ( (loc a_2@@8 i_3_2@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (> (invRecv27 o_9@@0) 4) (< (invRecv27 o_9@@0) n)) (< NoPerm FullPerm)) (qpRange27 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@8 (invRecv27 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@3) o_9@@0 val) (+ (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| ZeroMask) o_9@@0 val) FullPerm)))) (=> (not (and (and (and (> (invRecv27 o_9@@0) 4) (< (invRecv27 o_9@@0) n)) (< NoPerm FullPerm)) (qpRange27 o_9@@0))) (= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@3) o_9@@0 val) (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| ZeroMask) o_9@@0 val))))
 :qid |stdinbpl.1986:22|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@3) o_9@@0 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_19528_53) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| QPMask@3) o_9@@1 f_5)))
 :qid |stdinbpl.1990:29|
 :skolemid |197|
 :pattern ( (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| QPMask@3) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_19541_19542) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| QPMask@3) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1990:29|
 :skolemid |197|
 :pattern ( (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| QPMask@3) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_23078_2161) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@3) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1990:29|
 :skolemid |197|
 :pattern ( (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@3) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_19528_23126) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| QPMask@3) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1990:29|
 :skolemid |197|
 :pattern ( (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| QPMask@3) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_19528_23143) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| QPMask@3) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1990:29|
 :skolemid |197|
 :pattern ( (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| QPMask@3) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_23125_53) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| ZeroMask) o_9@@6 f_5@@4) (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| QPMask@3) o_9@@6 f_5@@4)))
 :qid |stdinbpl.1990:29|
 :skolemid |197|
 :pattern ( (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| ZeroMask) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| QPMask@3) o_9@@6 f_5@@4))
))) (forall ((o_9@@7 T@Ref) (f_5@@5 T@Field_23125_19542) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| ZeroMask) o_9@@7 f_5@@5) (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| QPMask@3) o_9@@7 f_5@@5)))
 :qid |stdinbpl.1990:29|
 :skolemid |197|
 :pattern ( (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| ZeroMask) o_9@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| QPMask@3) o_9@@7 f_5@@5))
))) (forall ((o_9@@8 T@Ref) (f_5@@6 T@Field_23125_2161) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| ZeroMask) o_9@@8 f_5@@6) (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| QPMask@3) o_9@@8 f_5@@6)))
 :qid |stdinbpl.1990:29|
 :skolemid |197|
 :pattern ( (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| ZeroMask) o_9@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| QPMask@3) o_9@@8 f_5@@6))
))) (forall ((o_9@@9 T@Ref) (f_5@@7 T@Field_23125_23126) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| ZeroMask) o_9@@9 f_5@@7) (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| QPMask@3) o_9@@9 f_5@@7)))
 :qid |stdinbpl.1990:29|
 :skolemid |197|
 :pattern ( (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| ZeroMask) o_9@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| QPMask@3) o_9@@9 f_5@@7))
))) (forall ((o_9@@10 T@Ref) (f_5@@8 T@Field_23138_23143) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| ZeroMask) o_9@@10 f_5@@8) (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| QPMask@3) o_9@@10 f_5@@8)))
 :qid |stdinbpl.1990:29|
 :skolemid |197|
 :pattern ( (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| ZeroMask) o_9@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| QPMask@3) o_9@@10 f_5@@8))
))) (and (state PostHeap@0 QPMask@3) (state PostHeap@0 QPMask@3))) (and (=> (= (ControlFlow 0 11) 8) anon12_Then_correct) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct))))))))
(let ((anon11_Then_correct true))
(let ((anon10_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 13) 7) anon11_Then_correct) (=> (= (ControlFlow 0 13) 11) anon11_Else_correct)))))
(let ((anon10_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 6)) (forall ((i_6_2 Int) (i_6_3 Int) ) (!  (=> (and (and (and (and (not (= i_6_2 i_6_3)) (and (> i_6_2 4) (< i_6_2 n))) (and (> i_6_3 4) (< i_6_3 n))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i_6_2) (loc a_2@@8 i_6_3))))
 :qid |stdinbpl.2051:17|
 :skolemid |204|
 :pattern ( (neverTriggered29 i_6_2) (neverTriggered29 i_6_3))
))) (=> (forall ((i_6_2@@0 Int) (i_6_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_6_2@@0 i_6_3@@0)) (and (> i_6_2@@0 4) (< i_6_2@@0 n))) (and (> i_6_3@@0 4) (< i_6_3@@0 n))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i_6_2@@0) (loc a_2@@8 i_6_3@@0))))
 :qid |stdinbpl.2051:17|
 :skolemid |204|
 :pattern ( (neverTriggered29 i_6_2@@0) (neverTriggered29 i_6_3@@0))
)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (forall ((i_6_2@@1 Int) ) (!  (=> (and (> i_6_2@@1 4) (< i_6_2@@1 n)) (>= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@0) (loc a_2@@8 i_6_2@@1) val) FullPerm))
 :qid |stdinbpl.2058:17|
 :skolemid |205|
 :pattern ( (loc a_2@@8 i_6_2@@1))
 :pattern ( (loc a_2@@8 i_6_2@@1))
))) (=> (forall ((i_6_2@@2 Int) ) (!  (=> (and (> i_6_2@@2 4) (< i_6_2@@2 n)) (>= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@0) (loc a_2@@8 i_6_2@@2) val) FullPerm))
 :qid |stdinbpl.2058:17|
 :skolemid |205|
 :pattern ( (loc a_2@@8 i_6_2@@2))
 :pattern ( (loc a_2@@8 i_6_2@@2))
)) (=> (forall ((i_6_2@@3 Int) ) (!  (=> (and (and (> i_6_2@@3 4) (< i_6_2@@3 n)) (< NoPerm FullPerm)) (and (qpRange29 (loc a_2@@8 i_6_2@@3)) (= (invRecv29 (loc a_2@@8 i_6_2@@3)) i_6_2@@3)))
 :qid |stdinbpl.2064:22|
 :skolemid |206|
 :pattern ( (loc a_2@@8 i_6_2@@3))
 :pattern ( (loc a_2@@8 i_6_2@@3))
)) (=> (and (forall ((o_9@@11 T@Ref) ) (!  (=> (and (and (> (invRecv29 o_9@@11) 4) (< (invRecv29 o_9@@11) n)) (and (< NoPerm FullPerm) (qpRange29 o_9@@11))) (= (loc a_2@@8 (invRecv29 o_9@@11)) o_9@@11))
 :qid |stdinbpl.2068:22|
 :skolemid |207|
 :pattern ( (invRecv29 o_9@@11))
)) (forall ((o_9@@12 T@Ref) ) (!  (and (=> (and (and (> (invRecv29 o_9@@12) 4) (< (invRecv29 o_9@@12) n)) (and (< NoPerm FullPerm) (qpRange29 o_9@@12))) (and (= (loc a_2@@8 (invRecv29 o_9@@12)) o_9@@12) (= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@1) o_9@@12 val) (- (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@0) o_9@@12 val) FullPerm)))) (=> (not (and (and (> (invRecv29 o_9@@12) 4) (< (invRecv29 o_9@@12) n)) (and (< NoPerm FullPerm) (qpRange29 o_9@@12)))) (= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@1) o_9@@12 val) (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@0) o_9@@12 val))))
 :qid |stdinbpl.2074:22|
 :skolemid |208|
 :pattern ( (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@1) o_9@@12 val))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_9@@13 T@Ref) (f_5@@9 T@Field_19528_53) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| QPMask@0) o_9@@13 f_5@@9) (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| QPMask@1) o_9@@13 f_5@@9)))
 :qid |stdinbpl.2080:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| QPMask@1) o_9@@13 f_5@@9))
)) (forall ((o_9@@14 T@Ref) (f_5@@10 T@Field_19541_19542) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| QPMask@0) o_9@@14 f_5@@10) (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| QPMask@1) o_9@@14 f_5@@10)))
 :qid |stdinbpl.2080:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| QPMask@1) o_9@@14 f_5@@10))
))) (forall ((o_9@@15 T@Ref) (f_5@@11 T@Field_23078_2161) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@0) o_9@@15 f_5@@11) (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@1) o_9@@15 f_5@@11)))
 :qid |stdinbpl.2080:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@1) o_9@@15 f_5@@11))
))) (forall ((o_9@@16 T@Ref) (f_5@@12 T@Field_19528_23126) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| QPMask@0) o_9@@16 f_5@@12) (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| QPMask@1) o_9@@16 f_5@@12)))
 :qid |stdinbpl.2080:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| QPMask@1) o_9@@16 f_5@@12))
))) (forall ((o_9@@17 T@Ref) (f_5@@13 T@Field_19528_23143) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| QPMask@0) o_9@@17 f_5@@13) (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| QPMask@1) o_9@@17 f_5@@13)))
 :qid |stdinbpl.2080:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| QPMask@1) o_9@@17 f_5@@13))
))) (forall ((o_9@@18 T@Ref) (f_5@@14 T@Field_23125_53) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| QPMask@0) o_9@@18 f_5@@14) (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| QPMask@1) o_9@@18 f_5@@14)))
 :qid |stdinbpl.2080:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| QPMask@1) o_9@@18 f_5@@14))
))) (forall ((o_9@@19 T@Ref) (f_5@@15 T@Field_23125_19542) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| QPMask@0) o_9@@19 f_5@@15) (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| QPMask@1) o_9@@19 f_5@@15)))
 :qid |stdinbpl.2080:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| QPMask@1) o_9@@19 f_5@@15))
))) (forall ((o_9@@20 T@Ref) (f_5@@16 T@Field_23125_2161) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| QPMask@0) o_9@@20 f_5@@16) (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| QPMask@1) o_9@@20 f_5@@16)))
 :qid |stdinbpl.2080:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| QPMask@1) o_9@@20 f_5@@16))
))) (forall ((o_9@@21 T@Ref) (f_5@@17 T@Field_23125_23126) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| QPMask@0) o_9@@21 f_5@@17) (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| QPMask@1) o_9@@21 f_5@@17)))
 :qid |stdinbpl.2080:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| QPMask@1) o_9@@21 f_5@@17))
))) (forall ((o_9@@22 T@Ref) (f_5@@18 T@Field_23138_23143) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| QPMask@0) o_9@@22 f_5@@18) (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| QPMask@1) o_9@@22 f_5@@18)))
 :qid |stdinbpl.2080:29|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| QPMask@1) o_9@@22 f_5@@18))
))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (and (> i_7_1 0) (< i_7_1 4))) (and (> i_7_2 0) (< i_7_2 4))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i_7_1) (loc a_2@@8 i_7_2))))
 :qid |stdinbpl.2092:17|
 :skolemid |210|
 :pattern ( (neverTriggered30 i_7_1) (neverTriggered30 i_7_2))
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (and (> i_7_1@@0 0) (< i_7_1@@0 4))) (and (> i_7_2@@0 0) (< i_7_2@@0 4))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i_7_1@@0) (loc a_2@@8 i_7_2@@0))))
 :qid |stdinbpl.2092:17|
 :skolemid |210|
 :pattern ( (neverTriggered30 i_7_1@@0) (neverTriggered30 i_7_2@@0))
)) (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((i_7_1@@1 Int) ) (!  (=> (and (> i_7_1@@1 0) (< i_7_1@@1 4)) (>= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@1) (loc a_2@@8 i_7_1@@1) val) FullPerm))
 :qid |stdinbpl.2099:17|
 :skolemid |211|
 :pattern ( (loc a_2@@8 i_7_1@@1))
 :pattern ( (loc a_2@@8 i_7_1@@1))
))))))))))))))
(let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (and (> i_1 0) (< i_1 n))) (and (> i_1_1 0) (< i_1_1 n))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i_1) (loc a_2@@8 i_1_1))))
 :qid |stdinbpl.1913:15|
 :skolemid |186|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (and (> i_1@@0 0) (< i_1@@0 n))) (and (> i_1_1@@0 0) (< i_1_1@@0 n))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@8 i_1@@0) (loc a_2@@8 i_1_1@@0))))
 :qid |stdinbpl.1913:15|
 :skolemid |186|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (and (> i_1@@1 0) (< i_1@@1 n)) (< NoPerm FullPerm)) (and (qpRange26 (loc a_2@@8 i_1@@1)) (= (invRecv26 (loc a_2@@8 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.1919:22|
 :skolemid |187|
 :pattern ( (loc a_2@@8 i_1@@1))
 :pattern ( (loc a_2@@8 i_1@@1))
)) (forall ((o_9@@23 T@Ref) ) (!  (=> (and (and (and (> (invRecv26 o_9@@23) 0) (< (invRecv26 o_9@@23) n)) (< NoPerm FullPerm)) (qpRange26 o_9@@23)) (= (loc a_2@@8 (invRecv26 o_9@@23)) o_9@@23))
 :qid |stdinbpl.1923:22|
 :skolemid |188|
 :pattern ( (invRecv26 o_9@@23))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (and (> i_1@@2 0) (< i_1@@2 n)) (not (= (loc a_2@@8 i_1@@2) null)))
 :qid |stdinbpl.1929:22|
 :skolemid |189|
 :pattern ( (loc a_2@@8 i_1@@2))
 :pattern ( (loc a_2@@8 i_1@@2))
)) (forall ((o_9@@24 T@Ref) ) (!  (and (=> (and (and (and (> (invRecv26 o_9@@24) 0) (< (invRecv26 o_9@@24) n)) (< NoPerm FullPerm)) (qpRange26 o_9@@24)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@8 (invRecv26 o_9@@24)) o_9@@24)) (= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@0) o_9@@24 val) (+ (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| ZeroMask) o_9@@24 val) FullPerm)))) (=> (not (and (and (and (> (invRecv26 o_9@@24) 0) (< (invRecv26 o_9@@24) n)) (< NoPerm FullPerm)) (qpRange26 o_9@@24))) (= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@0) o_9@@24 val) (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| ZeroMask) o_9@@24 val))))
 :qid |stdinbpl.1935:22|
 :skolemid |190|
 :pattern ( (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@0) o_9@@24 val))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@25 T@Ref) (f_5@@19 T@Field_19528_53) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| ZeroMask) o_9@@25 f_5@@19) (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| QPMask@0) o_9@@25 f_5@@19)))
 :qid |stdinbpl.1939:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| ZeroMask) o_9@@25 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_19489_13834_53#PolymorphicMapType_19489| QPMask@0) o_9@@25 f_5@@19))
)) (forall ((o_9@@26 T@Ref) (f_5@@20 T@Field_19541_19542) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| ZeroMask) o_9@@26 f_5@@20) (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| QPMask@0) o_9@@26 f_5@@20)))
 :qid |stdinbpl.1939:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| ZeroMask) o_9@@26 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_19489_13834_19542#PolymorphicMapType_19489| QPMask@0) o_9@@26 f_5@@20))
))) (forall ((o_9@@27 T@Ref) (f_5@@21 T@Field_23078_2161) ) (!  (=> (not (= f_5@@21 val)) (= (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| ZeroMask) o_9@@27 f_5@@21) (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@0) o_9@@27 f_5@@21)))
 :qid |stdinbpl.1939:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| ZeroMask) o_9@@27 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_19489_13834_2161#PolymorphicMapType_19489| QPMask@0) o_9@@27 f_5@@21))
))) (forall ((o_9@@28 T@Ref) (f_5@@22 T@Field_19528_23126) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| ZeroMask) o_9@@28 f_5@@22) (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| QPMask@0) o_9@@28 f_5@@22)))
 :qid |stdinbpl.1939:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| ZeroMask) o_9@@28 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_19489_13834_13838#PolymorphicMapType_19489| QPMask@0) o_9@@28 f_5@@22))
))) (forall ((o_9@@29 T@Ref) (f_5@@23 T@Field_19528_23143) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| ZeroMask) o_9@@29 f_5@@23) (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| QPMask@0) o_9@@29 f_5@@23)))
 :qid |stdinbpl.1939:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| ZeroMask) o_9@@29 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_19489_13834_68607#PolymorphicMapType_19489| QPMask@0) o_9@@29 f_5@@23))
))) (forall ((o_9@@30 T@Ref) (f_5@@24 T@Field_23125_53) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| ZeroMask) o_9@@30 f_5@@24) (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| QPMask@0) o_9@@30 f_5@@24)))
 :qid |stdinbpl.1939:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| ZeroMask) o_9@@30 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_19489_13837_53#PolymorphicMapType_19489| QPMask@0) o_9@@30 f_5@@24))
))) (forall ((o_9@@31 T@Ref) (f_5@@25 T@Field_23125_19542) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| ZeroMask) o_9@@31 f_5@@25) (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| QPMask@0) o_9@@31 f_5@@25)))
 :qid |stdinbpl.1939:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| ZeroMask) o_9@@31 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_19489_13837_19542#PolymorphicMapType_19489| QPMask@0) o_9@@31 f_5@@25))
))) (forall ((o_9@@32 T@Ref) (f_5@@26 T@Field_23125_2161) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| ZeroMask) o_9@@32 f_5@@26) (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| QPMask@0) o_9@@32 f_5@@26)))
 :qid |stdinbpl.1939:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| ZeroMask) o_9@@32 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_19489_13837_2161#PolymorphicMapType_19489| QPMask@0) o_9@@32 f_5@@26))
))) (forall ((o_9@@33 T@Ref) (f_5@@27 T@Field_23125_23126) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| ZeroMask) o_9@@33 f_5@@27) (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| QPMask@0) o_9@@33 f_5@@27)))
 :qid |stdinbpl.1939:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| ZeroMask) o_9@@33 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_19489_13837_13838#PolymorphicMapType_19489| QPMask@0) o_9@@33 f_5@@27))
))) (forall ((o_9@@34 T@Ref) (f_5@@28 T@Field_23138_23143) ) (!  (=> true (= (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| ZeroMask) o_9@@34 f_5@@28) (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| QPMask@0) o_9@@34 f_5@@28)))
 :qid |stdinbpl.1939:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| ZeroMask) o_9@@34 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_19489_13837_69018#PolymorphicMapType_19489| QPMask@0) o_9@@34 f_5@@28))
))) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (=> (= (ControlFlow 0 14) 13) anon10_Then_correct) (=> (= (ControlFlow 0 14) 3) anon10_Else_correct))))))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (and (> n 5) (state Heap@@32 ZeroMask))) (and (=> (= (ControlFlow 0 16) 1) anon9_Then_correct) (=> (= (ControlFlow 0 16) 14) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17) 16) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
