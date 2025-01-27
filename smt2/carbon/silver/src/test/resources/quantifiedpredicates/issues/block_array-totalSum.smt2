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
(declare-sort T@Field_31345_53 0)
(declare-sort T@Field_31358_31359 0)
(declare-sort T@Field_34857_34858 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_34810_1721 0)
(declare-sort T@Field_34870_34875 0)
(declare-sort T@Field_19410_1721 0)
(declare-sort T@Field_19410_53 0)
(declare-sort T@Field_19410_31359 0)
(declare-sort T@Field_19407_19411 0)
(declare-sort T@Field_19407_34875 0)
(declare-datatypes ((T@PolymorphicMapType_31306 0)) (((PolymorphicMapType_31306 (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| (Array T@Ref T@Field_34810_1721 Real)) (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| (Array T@Ref T@Field_34857_34858 Real)) (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| (Array T@Ref T@Field_19407_19411 Real)) (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| (Array T@Ref T@Field_31345_53 Real)) (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| (Array T@Ref T@Field_31358_31359 Real)) (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| (Array T@Ref T@Field_19407_34875 Real)) (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| (Array T@Ref T@Field_19410_1721 Real)) (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| (Array T@Ref T@Field_19410_53 Real)) (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| (Array T@Ref T@Field_19410_31359 Real)) (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| (Array T@Ref T@Field_34870_34875 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_31834 0)) (((PolymorphicMapType_31834 (|PolymorphicMapType_31834_19407_1721#PolymorphicMapType_31834| (Array T@Ref T@Field_34810_1721 Bool)) (|PolymorphicMapType_31834_19407_53#PolymorphicMapType_31834| (Array T@Ref T@Field_31345_53 Bool)) (|PolymorphicMapType_31834_19407_31359#PolymorphicMapType_31834| (Array T@Ref T@Field_31358_31359 Bool)) (|PolymorphicMapType_31834_19407_34858#PolymorphicMapType_31834| (Array T@Ref T@Field_19407_19411 Bool)) (|PolymorphicMapType_31834_19407_107429#PolymorphicMapType_31834| (Array T@Ref T@Field_19407_34875 Bool)) (|PolymorphicMapType_31834_34857_1721#PolymorphicMapType_31834| (Array T@Ref T@Field_19410_1721 Bool)) (|PolymorphicMapType_31834_34857_53#PolymorphicMapType_31834| (Array T@Ref T@Field_19410_53 Bool)) (|PolymorphicMapType_31834_34857_31359#PolymorphicMapType_31834| (Array T@Ref T@Field_19410_31359 Bool)) (|PolymorphicMapType_31834_34857_34858#PolymorphicMapType_31834| (Array T@Ref T@Field_34857_34858 Bool)) (|PolymorphicMapType_31834_34857_108477#PolymorphicMapType_31834| (Array T@Ref T@Field_34870_34875 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_31285 0)) (((PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| (Array T@Ref T@Field_31345_53 Bool)) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| (Array T@Ref T@Field_31358_31359 T@Ref)) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| (Array T@Ref T@Field_34857_34858 T@FrameType)) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| (Array T@Ref T@Field_34810_1721 Int)) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| (Array T@Ref T@Field_34870_34875 T@PolymorphicMapType_31834)) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| (Array T@Ref T@Field_19410_1721 Int)) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| (Array T@Ref T@Field_19410_53 Bool)) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| (Array T@Ref T@Field_19410_31359 T@Ref)) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| (Array T@Ref T@Field_19407_19411 T@FrameType)) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| (Array T@Ref T@Field_19407_34875 T@PolymorphicMapType_31834)) ) ) ))
(declare-fun $allocated () T@Field_31345_53)
(declare-fun val () T@Field_34810_1721)
(declare-fun succHeap (T@PolymorphicMapType_31285 T@PolymorphicMapType_31285) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_31285 T@PolymorphicMapType_31285) Bool)
(declare-fun state (T@PolymorphicMapType_31285 T@PolymorphicMapType_31306) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_31306) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_31834)
(declare-sort T@IArrayDomainType 0)
(declare-fun access (T@IArrayDomainType Int) T@Field_34857_34858)
(declare-fun IsPredicateField_19410_19411 (T@Field_34857_34858) Bool)
(declare-fun |access#trigger_19410| (T@PolymorphicMapType_31285 T@Field_34857_34858) Bool)
(declare-fun |access#everUsed_19410| (T@Field_34857_34858) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_31285 T@PolymorphicMapType_31285 T@PolymorphicMapType_31306) Bool)
(declare-fun IsPredicateField_19407_106282 (T@Field_19407_19411) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_19407 (T@Field_19407_19411) T@Field_19407_34875)
(declare-fun HasDirectPerm_19407_19411 (T@PolymorphicMapType_31306 T@Ref T@Field_19407_19411) Bool)
(declare-fun PredicateMaskField_19410 (T@Field_34857_34858) T@Field_34870_34875)
(declare-fun HasDirectPerm_19410_19411 (T@PolymorphicMapType_31306 T@Ref T@Field_34857_34858) Bool)
(declare-fun IsWandField_19407_109642 (T@Field_19407_19411) Bool)
(declare-fun WandMaskField_19407 (T@Field_19407_19411) T@Field_19407_34875)
(declare-fun IsWandField_19410_109285 (T@Field_34857_34858) Bool)
(declare-fun WandMaskField_19410 (T@Field_34857_34858) T@Field_34870_34875)
(declare-fun |access#sm| (T@IArrayDomainType Int) T@Field_34870_34875)
(declare-fun dummyHeap () T@PolymorphicMapType_31285)
(declare-fun ZeroMask () T@PolymorphicMapType_31306)
(declare-fun InsidePredicate_34857_34857 (T@Field_34857_34858 T@FrameType T@Field_34857_34858 T@FrameType) Bool)
(declare-fun InsidePredicate_31345_31345 (T@Field_19407_19411 T@FrameType T@Field_19407_19411 T@FrameType) Bool)
(declare-fun IsPredicateField_19407_1721 (T@Field_34810_1721) Bool)
(declare-fun IsWandField_19407_1721 (T@Field_34810_1721) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_19410_116574 (T@Field_34870_34875) Bool)
(declare-fun IsWandField_19410_116590 (T@Field_34870_34875) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_19410_31359 (T@Field_19410_31359) Bool)
(declare-fun IsWandField_19410_31359 (T@Field_19410_31359) Bool)
(declare-fun IsPredicateField_19410_53 (T@Field_19410_53) Bool)
(declare-fun IsWandField_19410_53 (T@Field_19410_53) Bool)
(declare-fun IsPredicateField_19410_1721 (T@Field_19410_1721) Bool)
(declare-fun IsWandField_19410_1721 (T@Field_19410_1721) Bool)
(declare-fun IsPredicateField_19407_115743 (T@Field_19407_34875) Bool)
(declare-fun IsWandField_19407_115759 (T@Field_19407_34875) Bool)
(declare-fun IsPredicateField_19407_31359 (T@Field_31358_31359) Bool)
(declare-fun IsWandField_19407_31359 (T@Field_31358_31359) Bool)
(declare-fun IsPredicateField_19407_53 (T@Field_31345_53) Bool)
(declare-fun IsWandField_19407_53 (T@Field_31345_53) Bool)
(declare-fun HasDirectPerm_19407_105669 (T@PolymorphicMapType_31306 T@Ref T@Field_19407_34875) Bool)
(declare-fun HasDirectPerm_19407_31359 (T@PolymorphicMapType_31306 T@Ref T@Field_31358_31359) Bool)
(declare-fun HasDirectPerm_19407_53 (T@PolymorphicMapType_31306 T@Ref T@Field_31345_53) Bool)
(declare-fun HasDirectPerm_19407_1721 (T@PolymorphicMapType_31306 T@Ref T@Field_34810_1721) Bool)
(declare-fun HasDirectPerm_19410_104596 (T@PolymorphicMapType_31306 T@Ref T@Field_34870_34875) Bool)
(declare-fun HasDirectPerm_19410_31359 (T@PolymorphicMapType_31306 T@Ref T@Field_19410_31359) Bool)
(declare-fun HasDirectPerm_19410_53 (T@PolymorphicMapType_31306 T@Ref T@Field_19410_53) Bool)
(declare-fun HasDirectPerm_19410_1721 (T@PolymorphicMapType_31306 T@Ref T@Field_19410_1721) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_31306 T@PolymorphicMapType_31306 T@PolymorphicMapType_31306) Bool)
(declare-fun len (T@IArrayDomainType) Int)
(declare-fun getPredWandId_19410_19411 (T@Field_34857_34858) Int)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun first_1 (T@Ref) T@IArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(declare-fun InsidePredicate_34857_31345 (T@Field_34857_34858 T@FrameType T@Field_19407_19411 T@FrameType) Bool)
(declare-fun InsidePredicate_31345_34857 (T@Field_19407_19411 T@FrameType T@Field_34857_34858 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_31285) (Heap1 T@PolymorphicMapType_31285) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_31285) (Mask T@PolymorphicMapType_31306) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_31285) (Heap1@@0 T@PolymorphicMapType_31285) (Heap2 T@PolymorphicMapType_31285) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_34870_34875) ) (!  (not (select (|PolymorphicMapType_31834_34857_108477#PolymorphicMapType_31834| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31834_34857_108477#PolymorphicMapType_31834| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_34857_34858) ) (!  (not (select (|PolymorphicMapType_31834_34857_34858#PolymorphicMapType_31834| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31834_34857_34858#PolymorphicMapType_31834| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_19410_31359) ) (!  (not (select (|PolymorphicMapType_31834_34857_31359#PolymorphicMapType_31834| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31834_34857_31359#PolymorphicMapType_31834| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_19410_53) ) (!  (not (select (|PolymorphicMapType_31834_34857_53#PolymorphicMapType_31834| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31834_34857_53#PolymorphicMapType_31834| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_19410_1721) ) (!  (not (select (|PolymorphicMapType_31834_34857_1721#PolymorphicMapType_31834| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31834_34857_1721#PolymorphicMapType_31834| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_19407_34875) ) (!  (not (select (|PolymorphicMapType_31834_19407_107429#PolymorphicMapType_31834| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31834_19407_107429#PolymorphicMapType_31834| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_19407_19411) ) (!  (not (select (|PolymorphicMapType_31834_19407_34858#PolymorphicMapType_31834| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31834_19407_34858#PolymorphicMapType_31834| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_31358_31359) ) (!  (not (select (|PolymorphicMapType_31834_19407_31359#PolymorphicMapType_31834| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31834_19407_31359#PolymorphicMapType_31834| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_31345_53) ) (!  (not (select (|PolymorphicMapType_31834_19407_53#PolymorphicMapType_31834| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31834_19407_53#PolymorphicMapType_31834| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_34810_1721) ) (!  (not (select (|PolymorphicMapType_31834_19407_1721#PolymorphicMapType_31834| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_31834_19407_1721#PolymorphicMapType_31834| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a_2 T@IArrayDomainType) (i Int) ) (! (IsPredicateField_19410_19411 (access a_2 i))
 :qid |stdinbpl.283:15|
 :skolemid |25|
 :pattern ( (access a_2 i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_31285) (a_2@@0 T@IArrayDomainType) (i@@0 Int) ) (! (|access#everUsed_19410| (access a_2@@0 i@@0))
 :qid |stdinbpl.302:15|
 :skolemid |29|
 :pattern ( (|access#trigger_19410| Heap@@0 (access a_2@@0 i@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_31285) (ExhaleHeap T@PolymorphicMapType_31285) (Mask@@0 T@PolymorphicMapType_31306) (pm_f_34 T@Field_19407_19411) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_19407_19411 Mask@@0 null pm_f_34) (IsPredicateField_19407_106282 pm_f_34)) (= (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@1) null (PredicateMaskField_19407 pm_f_34)) (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| ExhaleHeap) null (PredicateMaskField_19407 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_19407_106282 pm_f_34) (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| ExhaleHeap) null (PredicateMaskField_19407 pm_f_34)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_31285) (ExhaleHeap@@0 T@PolymorphicMapType_31285) (Mask@@1 T@PolymorphicMapType_31306) (pm_f_34@@0 T@Field_34857_34858) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_19410_19411 Mask@@1 null pm_f_34@@0) (IsPredicateField_19410_19411 pm_f_34@@0)) (= (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@2) null (PredicateMaskField_19410 pm_f_34@@0)) (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| ExhaleHeap@@0) null (PredicateMaskField_19410 pm_f_34@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_19410_19411 pm_f_34@@0) (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| ExhaleHeap@@0) null (PredicateMaskField_19410 pm_f_34@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_31285) (ExhaleHeap@@1 T@PolymorphicMapType_31285) (Mask@@2 T@PolymorphicMapType_31306) (pm_f_34@@1 T@Field_19407_19411) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_19407_19411 Mask@@2 null pm_f_34@@1) (IsWandField_19407_109642 pm_f_34@@1)) (= (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@3) null (WandMaskField_19407 pm_f_34@@1)) (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| ExhaleHeap@@1) null (WandMaskField_19407 pm_f_34@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_19407_109642 pm_f_34@@1) (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| ExhaleHeap@@1) null (WandMaskField_19407 pm_f_34@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_31285) (ExhaleHeap@@2 T@PolymorphicMapType_31285) (Mask@@3 T@PolymorphicMapType_31306) (pm_f_34@@2 T@Field_34857_34858) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_19410_19411 Mask@@3 null pm_f_34@@2) (IsWandField_19410_109285 pm_f_34@@2)) (= (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@4) null (WandMaskField_19410 pm_f_34@@2)) (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| ExhaleHeap@@2) null (WandMaskField_19410 pm_f_34@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_19410_109285 pm_f_34@@2) (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| ExhaleHeap@@2) null (WandMaskField_19410 pm_f_34@@2)))
)))
(assert (forall ((a_2@@1 T@IArrayDomainType) (i@@1 Int) (a2 T@IArrayDomainType) (i2 Int) ) (!  (=> (= (access a_2@@1 i@@1) (access a2 i2)) (and (= a_2@@1 a2) (= i@@1 i2)))
 :qid |stdinbpl.293:15|
 :skolemid |27|
 :pattern ( (access a_2@@1 i@@1) (access a2 i2))
)))
(assert (forall ((a_2@@2 T@IArrayDomainType) (i@@2 Int) (a2@@0 T@IArrayDomainType) (i2@@0 Int) ) (!  (=> (= (|access#sm| a_2@@2 i@@2) (|access#sm| a2@@0 i2@@0)) (and (= a_2@@2 a2@@0) (= i@@2 i2@@0)))
 :qid |stdinbpl.297:15|
 :skolemid |28|
 :pattern ( (|access#sm| a_2@@2 i@@2) (|access#sm| a2@@0 i2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_31285) (ExhaleHeap@@3 T@PolymorphicMapType_31285) (Mask@@4 T@PolymorphicMapType_31306) (pm_f_34@@3 T@Field_19407_19411) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_19407_19411 Mask@@4 null pm_f_34@@3) (IsPredicateField_19407_106282 pm_f_34@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_34 T@Ref) (f_65 T@Field_34810_1721) ) (!  (=> (select (|PolymorphicMapType_31834_19407_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@5) null (PredicateMaskField_19407 pm_f_34@@3))) o2_34 f_65) (= (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@5) o2_34 f_65) (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34 f_65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34 f_65))
)) (forall ((o2_34@@0 T@Ref) (f_65@@0 T@Field_31345_53) ) (!  (=> (select (|PolymorphicMapType_31834_19407_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@5) null (PredicateMaskField_19407 pm_f_34@@3))) o2_34@@0 f_65@@0) (= (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@5) o2_34@@0 f_65@@0) (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@0 f_65@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@0 f_65@@0))
))) (forall ((o2_34@@1 T@Ref) (f_65@@1 T@Field_31358_31359) ) (!  (=> (select (|PolymorphicMapType_31834_19407_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@5) null (PredicateMaskField_19407 pm_f_34@@3))) o2_34@@1 f_65@@1) (= (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@5) o2_34@@1 f_65@@1) (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@1 f_65@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@1 f_65@@1))
))) (forall ((o2_34@@2 T@Ref) (f_65@@2 T@Field_19407_19411) ) (!  (=> (select (|PolymorphicMapType_31834_19407_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@5) null (PredicateMaskField_19407 pm_f_34@@3))) o2_34@@2 f_65@@2) (= (select (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@5) o2_34@@2 f_65@@2) (select (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@2 f_65@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@2 f_65@@2))
))) (forall ((o2_34@@3 T@Ref) (f_65@@3 T@Field_19407_34875) ) (!  (=> (select (|PolymorphicMapType_31834_19407_107429#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@5) null (PredicateMaskField_19407 pm_f_34@@3))) o2_34@@3 f_65@@3) (= (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@5) o2_34@@3 f_65@@3) (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@3 f_65@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@3 f_65@@3))
))) (forall ((o2_34@@4 T@Ref) (f_65@@4 T@Field_19410_1721) ) (!  (=> (select (|PolymorphicMapType_31834_34857_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@5) null (PredicateMaskField_19407 pm_f_34@@3))) o2_34@@4 f_65@@4) (= (select (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@5) o2_34@@4 f_65@@4) (select (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@4 f_65@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@4 f_65@@4))
))) (forall ((o2_34@@5 T@Ref) (f_65@@5 T@Field_19410_53) ) (!  (=> (select (|PolymorphicMapType_31834_34857_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@5) null (PredicateMaskField_19407 pm_f_34@@3))) o2_34@@5 f_65@@5) (= (select (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@5) o2_34@@5 f_65@@5) (select (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@5 f_65@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@5 f_65@@5))
))) (forall ((o2_34@@6 T@Ref) (f_65@@6 T@Field_19410_31359) ) (!  (=> (select (|PolymorphicMapType_31834_34857_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@5) null (PredicateMaskField_19407 pm_f_34@@3))) o2_34@@6 f_65@@6) (= (select (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@5) o2_34@@6 f_65@@6) (select (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@6 f_65@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@6 f_65@@6))
))) (forall ((o2_34@@7 T@Ref) (f_65@@7 T@Field_34857_34858) ) (!  (=> (select (|PolymorphicMapType_31834_34857_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@5) null (PredicateMaskField_19407 pm_f_34@@3))) o2_34@@7 f_65@@7) (= (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@5) o2_34@@7 f_65@@7) (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@7 f_65@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@7 f_65@@7))
))) (forall ((o2_34@@8 T@Ref) (f_65@@8 T@Field_34870_34875) ) (!  (=> (select (|PolymorphicMapType_31834_34857_108477#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@5) null (PredicateMaskField_19407 pm_f_34@@3))) o2_34@@8 f_65@@8) (= (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@5) o2_34@@8 f_65@@8) (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@8 f_65@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| ExhaleHeap@@3) o2_34@@8 f_65@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_19407_106282 pm_f_34@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_31285) (ExhaleHeap@@4 T@PolymorphicMapType_31285) (Mask@@5 T@PolymorphicMapType_31306) (pm_f_34@@4 T@Field_34857_34858) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_19410_19411 Mask@@5 null pm_f_34@@4) (IsPredicateField_19410_19411 pm_f_34@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@9 T@Ref) (f_65@@9 T@Field_34810_1721) ) (!  (=> (select (|PolymorphicMapType_31834_19407_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@6) null (PredicateMaskField_19410 pm_f_34@@4))) o2_34@@9 f_65@@9) (= (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@6) o2_34@@9 f_65@@9) (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@9 f_65@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@9 f_65@@9))
)) (forall ((o2_34@@10 T@Ref) (f_65@@10 T@Field_31345_53) ) (!  (=> (select (|PolymorphicMapType_31834_19407_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@6) null (PredicateMaskField_19410 pm_f_34@@4))) o2_34@@10 f_65@@10) (= (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@6) o2_34@@10 f_65@@10) (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@10 f_65@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@10 f_65@@10))
))) (forall ((o2_34@@11 T@Ref) (f_65@@11 T@Field_31358_31359) ) (!  (=> (select (|PolymorphicMapType_31834_19407_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@6) null (PredicateMaskField_19410 pm_f_34@@4))) o2_34@@11 f_65@@11) (= (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@6) o2_34@@11 f_65@@11) (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@11 f_65@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@11 f_65@@11))
))) (forall ((o2_34@@12 T@Ref) (f_65@@12 T@Field_19407_19411) ) (!  (=> (select (|PolymorphicMapType_31834_19407_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@6) null (PredicateMaskField_19410 pm_f_34@@4))) o2_34@@12 f_65@@12) (= (select (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@6) o2_34@@12 f_65@@12) (select (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@12 f_65@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@12 f_65@@12))
))) (forall ((o2_34@@13 T@Ref) (f_65@@13 T@Field_19407_34875) ) (!  (=> (select (|PolymorphicMapType_31834_19407_107429#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@6) null (PredicateMaskField_19410 pm_f_34@@4))) o2_34@@13 f_65@@13) (= (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@6) o2_34@@13 f_65@@13) (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@13 f_65@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@13 f_65@@13))
))) (forall ((o2_34@@14 T@Ref) (f_65@@14 T@Field_19410_1721) ) (!  (=> (select (|PolymorphicMapType_31834_34857_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@6) null (PredicateMaskField_19410 pm_f_34@@4))) o2_34@@14 f_65@@14) (= (select (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@6) o2_34@@14 f_65@@14) (select (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@14 f_65@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@14 f_65@@14))
))) (forall ((o2_34@@15 T@Ref) (f_65@@15 T@Field_19410_53) ) (!  (=> (select (|PolymorphicMapType_31834_34857_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@6) null (PredicateMaskField_19410 pm_f_34@@4))) o2_34@@15 f_65@@15) (= (select (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@6) o2_34@@15 f_65@@15) (select (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@15 f_65@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@15 f_65@@15))
))) (forall ((o2_34@@16 T@Ref) (f_65@@16 T@Field_19410_31359) ) (!  (=> (select (|PolymorphicMapType_31834_34857_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@6) null (PredicateMaskField_19410 pm_f_34@@4))) o2_34@@16 f_65@@16) (= (select (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@6) o2_34@@16 f_65@@16) (select (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@16 f_65@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@16 f_65@@16))
))) (forall ((o2_34@@17 T@Ref) (f_65@@17 T@Field_34857_34858) ) (!  (=> (select (|PolymorphicMapType_31834_34857_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@6) null (PredicateMaskField_19410 pm_f_34@@4))) o2_34@@17 f_65@@17) (= (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@6) o2_34@@17 f_65@@17) (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@17 f_65@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@17 f_65@@17))
))) (forall ((o2_34@@18 T@Ref) (f_65@@18 T@Field_34870_34875) ) (!  (=> (select (|PolymorphicMapType_31834_34857_108477#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@6) null (PredicateMaskField_19410 pm_f_34@@4))) o2_34@@18 f_65@@18) (= (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@6) o2_34@@18 f_65@@18) (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@18 f_65@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| ExhaleHeap@@4) o2_34@@18 f_65@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_19410_19411 pm_f_34@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_31285) (ExhaleHeap@@5 T@PolymorphicMapType_31285) (Mask@@6 T@PolymorphicMapType_31306) (pm_f_34@@5 T@Field_19407_19411) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_19407_19411 Mask@@6 null pm_f_34@@5) (IsWandField_19407_109642 pm_f_34@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@19 T@Ref) (f_65@@19 T@Field_34810_1721) ) (!  (=> (select (|PolymorphicMapType_31834_19407_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@7) null (WandMaskField_19407 pm_f_34@@5))) o2_34@@19 f_65@@19) (= (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@7) o2_34@@19 f_65@@19) (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@19 f_65@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@19 f_65@@19))
)) (forall ((o2_34@@20 T@Ref) (f_65@@20 T@Field_31345_53) ) (!  (=> (select (|PolymorphicMapType_31834_19407_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@7) null (WandMaskField_19407 pm_f_34@@5))) o2_34@@20 f_65@@20) (= (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@7) o2_34@@20 f_65@@20) (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@20 f_65@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@20 f_65@@20))
))) (forall ((o2_34@@21 T@Ref) (f_65@@21 T@Field_31358_31359) ) (!  (=> (select (|PolymorphicMapType_31834_19407_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@7) null (WandMaskField_19407 pm_f_34@@5))) o2_34@@21 f_65@@21) (= (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@7) o2_34@@21 f_65@@21) (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@21 f_65@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@21 f_65@@21))
))) (forall ((o2_34@@22 T@Ref) (f_65@@22 T@Field_19407_19411) ) (!  (=> (select (|PolymorphicMapType_31834_19407_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@7) null (WandMaskField_19407 pm_f_34@@5))) o2_34@@22 f_65@@22) (= (select (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@7) o2_34@@22 f_65@@22) (select (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@22 f_65@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@22 f_65@@22))
))) (forall ((o2_34@@23 T@Ref) (f_65@@23 T@Field_19407_34875) ) (!  (=> (select (|PolymorphicMapType_31834_19407_107429#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@7) null (WandMaskField_19407 pm_f_34@@5))) o2_34@@23 f_65@@23) (= (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@7) o2_34@@23 f_65@@23) (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@23 f_65@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@23 f_65@@23))
))) (forall ((o2_34@@24 T@Ref) (f_65@@24 T@Field_19410_1721) ) (!  (=> (select (|PolymorphicMapType_31834_34857_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@7) null (WandMaskField_19407 pm_f_34@@5))) o2_34@@24 f_65@@24) (= (select (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@7) o2_34@@24 f_65@@24) (select (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@24 f_65@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@24 f_65@@24))
))) (forall ((o2_34@@25 T@Ref) (f_65@@25 T@Field_19410_53) ) (!  (=> (select (|PolymorphicMapType_31834_34857_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@7) null (WandMaskField_19407 pm_f_34@@5))) o2_34@@25 f_65@@25) (= (select (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@7) o2_34@@25 f_65@@25) (select (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@25 f_65@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@25 f_65@@25))
))) (forall ((o2_34@@26 T@Ref) (f_65@@26 T@Field_19410_31359) ) (!  (=> (select (|PolymorphicMapType_31834_34857_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@7) null (WandMaskField_19407 pm_f_34@@5))) o2_34@@26 f_65@@26) (= (select (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@7) o2_34@@26 f_65@@26) (select (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@26 f_65@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@26 f_65@@26))
))) (forall ((o2_34@@27 T@Ref) (f_65@@27 T@Field_34857_34858) ) (!  (=> (select (|PolymorphicMapType_31834_34857_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@7) null (WandMaskField_19407 pm_f_34@@5))) o2_34@@27 f_65@@27) (= (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@7) o2_34@@27 f_65@@27) (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@27 f_65@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@27 f_65@@27))
))) (forall ((o2_34@@28 T@Ref) (f_65@@28 T@Field_34870_34875) ) (!  (=> (select (|PolymorphicMapType_31834_34857_108477#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@7) null (WandMaskField_19407 pm_f_34@@5))) o2_34@@28 f_65@@28) (= (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@7) o2_34@@28 f_65@@28) (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@28 f_65@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| ExhaleHeap@@5) o2_34@@28 f_65@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_19407_109642 pm_f_34@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_31285) (ExhaleHeap@@6 T@PolymorphicMapType_31285) (Mask@@7 T@PolymorphicMapType_31306) (pm_f_34@@6 T@Field_34857_34858) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_19410_19411 Mask@@7 null pm_f_34@@6) (IsWandField_19410_109285 pm_f_34@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@29 T@Ref) (f_65@@29 T@Field_34810_1721) ) (!  (=> (select (|PolymorphicMapType_31834_19407_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@8) null (WandMaskField_19410 pm_f_34@@6))) o2_34@@29 f_65@@29) (= (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@8) o2_34@@29 f_65@@29) (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@29 f_65@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@29 f_65@@29))
)) (forall ((o2_34@@30 T@Ref) (f_65@@30 T@Field_31345_53) ) (!  (=> (select (|PolymorphicMapType_31834_19407_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@8) null (WandMaskField_19410 pm_f_34@@6))) o2_34@@30 f_65@@30) (= (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@8) o2_34@@30 f_65@@30) (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@30 f_65@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@30 f_65@@30))
))) (forall ((o2_34@@31 T@Ref) (f_65@@31 T@Field_31358_31359) ) (!  (=> (select (|PolymorphicMapType_31834_19407_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@8) null (WandMaskField_19410 pm_f_34@@6))) o2_34@@31 f_65@@31) (= (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@8) o2_34@@31 f_65@@31) (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@31 f_65@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@31 f_65@@31))
))) (forall ((o2_34@@32 T@Ref) (f_65@@32 T@Field_19407_19411) ) (!  (=> (select (|PolymorphicMapType_31834_19407_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@8) null (WandMaskField_19410 pm_f_34@@6))) o2_34@@32 f_65@@32) (= (select (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@8) o2_34@@32 f_65@@32) (select (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@32 f_65@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@32 f_65@@32))
))) (forall ((o2_34@@33 T@Ref) (f_65@@33 T@Field_19407_34875) ) (!  (=> (select (|PolymorphicMapType_31834_19407_107429#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@8) null (WandMaskField_19410 pm_f_34@@6))) o2_34@@33 f_65@@33) (= (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@8) o2_34@@33 f_65@@33) (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@33 f_65@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@33 f_65@@33))
))) (forall ((o2_34@@34 T@Ref) (f_65@@34 T@Field_19410_1721) ) (!  (=> (select (|PolymorphicMapType_31834_34857_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@8) null (WandMaskField_19410 pm_f_34@@6))) o2_34@@34 f_65@@34) (= (select (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@8) o2_34@@34 f_65@@34) (select (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@34 f_65@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@34 f_65@@34))
))) (forall ((o2_34@@35 T@Ref) (f_65@@35 T@Field_19410_53) ) (!  (=> (select (|PolymorphicMapType_31834_34857_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@8) null (WandMaskField_19410 pm_f_34@@6))) o2_34@@35 f_65@@35) (= (select (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@8) o2_34@@35 f_65@@35) (select (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@35 f_65@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@35 f_65@@35))
))) (forall ((o2_34@@36 T@Ref) (f_65@@36 T@Field_19410_31359) ) (!  (=> (select (|PolymorphicMapType_31834_34857_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@8) null (WandMaskField_19410 pm_f_34@@6))) o2_34@@36 f_65@@36) (= (select (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@8) o2_34@@36 f_65@@36) (select (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@36 f_65@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@36 f_65@@36))
))) (forall ((o2_34@@37 T@Ref) (f_65@@37 T@Field_34857_34858) ) (!  (=> (select (|PolymorphicMapType_31834_34857_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@8) null (WandMaskField_19410 pm_f_34@@6))) o2_34@@37 f_65@@37) (= (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@8) o2_34@@37 f_65@@37) (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@37 f_65@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@37 f_65@@37))
))) (forall ((o2_34@@38 T@Ref) (f_65@@38 T@Field_34870_34875) ) (!  (=> (select (|PolymorphicMapType_31834_34857_108477#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@8) null (WandMaskField_19410 pm_f_34@@6))) o2_34@@38 f_65@@38) (= (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@8) o2_34@@38 f_65@@38) (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@38 f_65@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| ExhaleHeap@@6) o2_34@@38 f_65@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_19410_109285 pm_f_34@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_31285) (ExhaleHeap@@7 T@PolymorphicMapType_31285) (Mask@@8 T@PolymorphicMapType_31306) (o_47 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@9) o_47 $allocated) (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| ExhaleHeap@@7) o_47 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| ExhaleHeap@@7) o_47 $allocated))
)))
(assert (forall ((p T@Field_34857_34858) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_34857_34857 p v_1 p w))
 :qid |stdinbpl.228:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_34857_34857 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_19407_19411) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_31345_31345 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.228:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_31345_31345 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_19407_1721 val)))
(assert  (not (IsWandField_19407_1721 val)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_31285) (ExhaleHeap@@8 T@PolymorphicMapType_31285) (Mask@@9 T@PolymorphicMapType_31306) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_31306) (o_2@@9 T@Ref) (f_4@@9 T@Field_34870_34875) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_19410_116574 f_4@@9))) (not (IsWandField_19410_116590 f_4@@9))) (<= (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_31306) (o_2@@10 T@Ref) (f_4@@10 T@Field_19410_31359) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_19410_31359 f_4@@10))) (not (IsWandField_19410_31359 f_4@@10))) (<= (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_31306) (o_2@@11 T@Ref) (f_4@@11 T@Field_19410_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_19410_53 f_4@@11))) (not (IsWandField_19410_53 f_4@@11))) (<= (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_31306) (o_2@@12 T@Ref) (f_4@@12 T@Field_34857_34858) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_19410_19411 f_4@@12))) (not (IsWandField_19410_109285 f_4@@12))) (<= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_31306) (o_2@@13 T@Ref) (f_4@@13 T@Field_19410_1721) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_19410_1721 f_4@@13))) (not (IsWandField_19410_1721 f_4@@13))) (<= (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_31306) (o_2@@14 T@Ref) (f_4@@14 T@Field_19407_34875) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_19407_115743 f_4@@14))) (not (IsWandField_19407_115759 f_4@@14))) (<= (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_31306) (o_2@@15 T@Ref) (f_4@@15 T@Field_31358_31359) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_19407_31359 f_4@@15))) (not (IsWandField_19407_31359 f_4@@15))) (<= (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_31306) (o_2@@16 T@Ref) (f_4@@16 T@Field_31345_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_19407_53 f_4@@16))) (not (IsWandField_19407_53 f_4@@16))) (<= (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_31306) (o_2@@17 T@Ref) (f_4@@17 T@Field_19407_19411) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_19407_106282 f_4@@17))) (not (IsWandField_19407_109642 f_4@@17))) (<= (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_31306) (o_2@@18 T@Ref) (f_4@@18 T@Field_34810_1721) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_19407_1721 f_4@@18))) (not (IsWandField_19407_1721 f_4@@18))) (<= (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_31306) (o_2@@19 T@Ref) (f_4@@19 T@Field_19407_34875) ) (! (= (HasDirectPerm_19407_105669 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19407_105669 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_31306) (o_2@@20 T@Ref) (f_4@@20 T@Field_31358_31359) ) (! (= (HasDirectPerm_19407_31359 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19407_31359 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_31306) (o_2@@21 T@Ref) (f_4@@21 T@Field_31345_53) ) (! (= (HasDirectPerm_19407_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19407_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_31306) (o_2@@22 T@Ref) (f_4@@22 T@Field_34810_1721) ) (! (= (HasDirectPerm_19407_1721 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19407_1721 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_31306) (o_2@@23 T@Ref) (f_4@@23 T@Field_19407_19411) ) (! (= (HasDirectPerm_19407_19411 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19407_19411 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_31306) (o_2@@24 T@Ref) (f_4@@24 T@Field_34870_34875) ) (! (= (HasDirectPerm_19410_104596 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19410_104596 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_31306) (o_2@@25 T@Ref) (f_4@@25 T@Field_19410_31359) ) (! (= (HasDirectPerm_19410_31359 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19410_31359 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_31306) (o_2@@26 T@Ref) (f_4@@26 T@Field_19410_53) ) (! (= (HasDirectPerm_19410_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19410_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_31306) (o_2@@27 T@Ref) (f_4@@27 T@Field_19410_1721) ) (! (= (HasDirectPerm_19410_1721 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19410_1721 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_31306) (o_2@@28 T@Ref) (f_4@@28 T@Field_34857_34858) ) (! (= (HasDirectPerm_19410_19411 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19410_19411 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.216:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_31285) (ExhaleHeap@@9 T@PolymorphicMapType_31285) (Mask@@30 T@PolymorphicMapType_31306) (o_47@@0 T@Ref) (f_65@@39 T@Field_19407_34875) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_19407_105669 Mask@@30 o_47@@0 f_65@@39) (= (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@11) o_47@@0 f_65@@39) (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| ExhaleHeap@@9) o_47@@0 f_65@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| ExhaleHeap@@9) o_47@@0 f_65@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_31285) (ExhaleHeap@@10 T@PolymorphicMapType_31285) (Mask@@31 T@PolymorphicMapType_31306) (o_47@@1 T@Ref) (f_65@@40 T@Field_31358_31359) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_19407_31359 Mask@@31 o_47@@1 f_65@@40) (= (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@12) o_47@@1 f_65@@40) (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| ExhaleHeap@@10) o_47@@1 f_65@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| ExhaleHeap@@10) o_47@@1 f_65@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_31285) (ExhaleHeap@@11 T@PolymorphicMapType_31285) (Mask@@32 T@PolymorphicMapType_31306) (o_47@@2 T@Ref) (f_65@@41 T@Field_31345_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_19407_53 Mask@@32 o_47@@2 f_65@@41) (= (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@13) o_47@@2 f_65@@41) (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| ExhaleHeap@@11) o_47@@2 f_65@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| ExhaleHeap@@11) o_47@@2 f_65@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_31285) (ExhaleHeap@@12 T@PolymorphicMapType_31285) (Mask@@33 T@PolymorphicMapType_31306) (o_47@@3 T@Ref) (f_65@@42 T@Field_34810_1721) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_19407_1721 Mask@@33 o_47@@3 f_65@@42) (= (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@14) o_47@@3 f_65@@42) (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| ExhaleHeap@@12) o_47@@3 f_65@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| ExhaleHeap@@12) o_47@@3 f_65@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_31285) (ExhaleHeap@@13 T@PolymorphicMapType_31285) (Mask@@34 T@PolymorphicMapType_31306) (o_47@@4 T@Ref) (f_65@@43 T@Field_19407_19411) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_19407_19411 Mask@@34 o_47@@4 f_65@@43) (= (select (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@15) o_47@@4 f_65@@43) (select (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| ExhaleHeap@@13) o_47@@4 f_65@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| ExhaleHeap@@13) o_47@@4 f_65@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_31285) (ExhaleHeap@@14 T@PolymorphicMapType_31285) (Mask@@35 T@PolymorphicMapType_31306) (o_47@@5 T@Ref) (f_65@@44 T@Field_34870_34875) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_19410_104596 Mask@@35 o_47@@5 f_65@@44) (= (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@16) o_47@@5 f_65@@44) (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| ExhaleHeap@@14) o_47@@5 f_65@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| ExhaleHeap@@14) o_47@@5 f_65@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_31285) (ExhaleHeap@@15 T@PolymorphicMapType_31285) (Mask@@36 T@PolymorphicMapType_31306) (o_47@@6 T@Ref) (f_65@@45 T@Field_19410_31359) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_19410_31359 Mask@@36 o_47@@6 f_65@@45) (= (select (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@17) o_47@@6 f_65@@45) (select (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| ExhaleHeap@@15) o_47@@6 f_65@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| ExhaleHeap@@15) o_47@@6 f_65@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_31285) (ExhaleHeap@@16 T@PolymorphicMapType_31285) (Mask@@37 T@PolymorphicMapType_31306) (o_47@@7 T@Ref) (f_65@@46 T@Field_19410_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_19410_53 Mask@@37 o_47@@7 f_65@@46) (= (select (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@18) o_47@@7 f_65@@46) (select (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| ExhaleHeap@@16) o_47@@7 f_65@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| ExhaleHeap@@16) o_47@@7 f_65@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_31285) (ExhaleHeap@@17 T@PolymorphicMapType_31285) (Mask@@38 T@PolymorphicMapType_31306) (o_47@@8 T@Ref) (f_65@@47 T@Field_19410_1721) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_19410_1721 Mask@@38 o_47@@8 f_65@@47) (= (select (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@19) o_47@@8 f_65@@47) (select (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| ExhaleHeap@@17) o_47@@8 f_65@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| ExhaleHeap@@17) o_47@@8 f_65@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_31285) (ExhaleHeap@@18 T@PolymorphicMapType_31285) (Mask@@39 T@PolymorphicMapType_31306) (o_47@@9 T@Ref) (f_65@@48 T@Field_34857_34858) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_19410_19411 Mask@@39 o_47@@9 f_65@@48) (= (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@20) o_47@@9 f_65@@48) (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| ExhaleHeap@@18) o_47@@9 f_65@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| ExhaleHeap@@18) o_47@@9 f_65@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_34870_34875) ) (! (= (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_19410_31359) ) (! (= (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_19410_53) ) (! (= (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_34857_34858) ) (! (= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_19410_1721) ) (! (= (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_19407_34875) ) (! (= (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_31358_31359) ) (! (= (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_31345_53) ) (! (= (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_19407_19411) ) (! (= (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_34810_1721) ) (! (= (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_31306) (SummandMask1 T@PolymorphicMapType_31306) (SummandMask2 T@PolymorphicMapType_31306) (o_2@@39 T@Ref) (f_4@@39 T@Field_34870_34875) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_31306) (SummandMask1@@0 T@PolymorphicMapType_31306) (SummandMask2@@0 T@PolymorphicMapType_31306) (o_2@@40 T@Ref) (f_4@@40 T@Field_19410_31359) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_31306) (SummandMask1@@1 T@PolymorphicMapType_31306) (SummandMask2@@1 T@PolymorphicMapType_31306) (o_2@@41 T@Ref) (f_4@@41 T@Field_19410_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_31306) (SummandMask1@@2 T@PolymorphicMapType_31306) (SummandMask2@@2 T@PolymorphicMapType_31306) (o_2@@42 T@Ref) (f_4@@42 T@Field_34857_34858) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_31306) (SummandMask1@@3 T@PolymorphicMapType_31306) (SummandMask2@@3 T@PolymorphicMapType_31306) (o_2@@43 T@Ref) (f_4@@43 T@Field_19410_1721) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_31306) (SummandMask1@@4 T@PolymorphicMapType_31306) (SummandMask2@@4 T@PolymorphicMapType_31306) (o_2@@44 T@Ref) (f_4@@44 T@Field_19407_34875) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_31306) (SummandMask1@@5 T@PolymorphicMapType_31306) (SummandMask2@@5 T@PolymorphicMapType_31306) (o_2@@45 T@Ref) (f_4@@45 T@Field_31358_31359) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_31306) (SummandMask1@@6 T@PolymorphicMapType_31306) (SummandMask2@@6 T@PolymorphicMapType_31306) (o_2@@46 T@Ref) (f_4@@46 T@Field_31345_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_31306) (SummandMask1@@7 T@PolymorphicMapType_31306) (SummandMask2@@7 T@PolymorphicMapType_31306) (o_2@@47 T@Ref) (f_4@@47 T@Field_19407_19411) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_31306) (SummandMask1@@8 T@PolymorphicMapType_31306) (SummandMask2@@8 T@PolymorphicMapType_31306) (o_2@@48 T@Ref) (f_4@@48 T@Field_34810_1721) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a_2@@3 T@IArrayDomainType) ) (! (>= (len a_2@@3) 0)
 :qid |stdinbpl.259:15|
 :skolemid |23|
 :pattern ( (len a_2@@3))
)))
(assert (forall ((a_2@@4 T@IArrayDomainType) (i@@3 Int) ) (! (= (getPredWandId_19410_19411 (access a_2@@4 i@@3)) 0)
 :qid |stdinbpl.287:15|
 :skolemid |26|
 :pattern ( (access a_2@@4 i@@3))
)))
(assert (forall ((a_2@@5 T@IArrayDomainType) (i@@4 Int) ) (! (= (PredicateMaskField_19410 (access a_2@@5 i@@4)) (|access#sm| a_2@@5 i@@4))
 :qid |stdinbpl.279:15|
 :skolemid |24|
 :pattern ( (PredicateMaskField_19410 (access a_2@@5 i@@4)))
)))
(assert (forall ((a_2@@6 T@IArrayDomainType) (i@@5 Int) ) (!  (and (= (first_1 (loc a_2@@6 i@@5)) a_2@@6) (= (second_1 (loc a_2@@6 i@@5)) i@@5))
 :qid |stdinbpl.253:15|
 :skolemid |22|
 :pattern ( (loc a_2@@6 i@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_31285) (o_17 T@Ref) (f_19 T@Field_34870_34875) (v T@PolymorphicMapType_31834) ) (! (succHeap Heap@@21 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@21) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@21) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@21) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@21) (store (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@21) o_17 f_19 v) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@21) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@21) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@21) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@21) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@21) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@21) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@21) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@21) (store (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@21) o_17 f_19 v) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@21) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@21) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@21) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@21) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_31285) (o_17@@0 T@Ref) (f_19@@0 T@Field_19410_1721) (v@@0 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@22) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@22) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@22) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@22) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@22) (store (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@22) o_17@@0 f_19@@0 v@@0) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@22) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@22) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@22) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@22) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@22) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@22) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@22) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@22) (store (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@22) o_17@@0 f_19@@0 v@@0) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@22) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@22) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@22) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_31285) (o_17@@1 T@Ref) (f_19@@1 T@Field_34857_34858) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@23) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@23) (store (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@23) o_17@@1 f_19@@1 v@@1) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@23) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@23) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@23) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@23) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@23) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@23) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@23) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@23) (store (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@23) o_17@@1 f_19@@1 v@@1) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@23) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@23) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@23) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@23) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@23) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@23) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_31285) (o_17@@2 T@Ref) (f_19@@2 T@Field_19410_31359) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@24) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@24) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@24) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@24) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@24) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@24) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@24) (store (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@24) o_17@@2 f_19@@2 v@@2) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@24) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@24) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@24) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@24) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@24) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@24) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@24) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@24) (store (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@24) o_17@@2 f_19@@2 v@@2) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@24) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_31285) (o_17@@3 T@Ref) (f_19@@3 T@Field_19410_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@25) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@25) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@25) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@25) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@25) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@25) (store (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@25) o_17@@3 f_19@@3 v@@3) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@25) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@25) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@25) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@25) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@25) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@25) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@25) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@25) (store (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@25) o_17@@3 f_19@@3 v@@3) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@25) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@25) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_31285) (o_17@@4 T@Ref) (f_19@@4 T@Field_19407_34875) (v@@4 T@PolymorphicMapType_31834) ) (! (succHeap Heap@@26 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@26) (store (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@26) o_17@@4 f_19@@4 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@26) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@26) (store (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@26) o_17@@4 f_19@@4 v@@4)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_31285) (o_17@@5 T@Ref) (f_19@@5 T@Field_34810_1721) (v@@5 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@27) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@27) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@27) (store (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@27) o_17@@5 f_19@@5 v@@5) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@27) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@27) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@27) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@27) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@27) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@27) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@27) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@27) (store (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@27) o_17@@5 f_19@@5 v@@5) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@27) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@27) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@27) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@27) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@27) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_31285) (o_17@@6 T@Ref) (f_19@@6 T@Field_19407_19411) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@28) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@28) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@28) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@28) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@28) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@28) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@28) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@28) (store (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@28) o_17@@6 f_19@@6 v@@6) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@28) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@28) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@28) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@28) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@28) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@28) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@28) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@28) (store (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@28) o_17@@6 f_19@@6 v@@6) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_31285) (o_17@@7 T@Ref) (f_19@@7 T@Field_31358_31359) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@29) (store (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@29) o_17@@7 f_19@@7 v@@7) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@29) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@29) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@29) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@29) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@29) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@29) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@29) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@29) (store (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@29) o_17@@7 f_19@@7 v@@7) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@29) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@29) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@29) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@29) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@29) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@29) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@29) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_31285) (o_17@@8 T@Ref) (f_19@@8 T@Field_31345_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_31285 (store (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@30) o_17@@8 f_19@@8 v@@8) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_31285 (store (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@30) o_17@@8 f_19@@8 v@@8) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@30) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@30)))
)))
(assert (forall ((o_17@@9 T@Ref) (f_25 T@Field_31358_31359) (Heap@@31 T@PolymorphicMapType_31285) ) (!  (=> (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@31) o_17@@9 $allocated) (select (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@31) (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@31) o_17@@9 f_25) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@31) o_17@@9 f_25))
)))
(assert (forall ((p@@2 T@Field_34857_34858) (v_1@@1 T@FrameType) (q T@Field_34857_34858) (w@@1 T@FrameType) (r T@Field_34857_34858) (u T@FrameType) ) (!  (=> (and (InsidePredicate_34857_34857 p@@2 v_1@@1 q w@@1) (InsidePredicate_34857_34857 q w@@1 r u)) (InsidePredicate_34857_34857 p@@2 v_1@@1 r u))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34857_34857 p@@2 v_1@@1 q w@@1) (InsidePredicate_34857_34857 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_34857_34858) (v_1@@2 T@FrameType) (q@@0 T@Field_34857_34858) (w@@2 T@FrameType) (r@@0 T@Field_19407_19411) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_34857_34857 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_34857_31345 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_34857_31345 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34857_34857 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_34857_31345 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_34857_34858) (v_1@@3 T@FrameType) (q@@1 T@Field_19407_19411) (w@@3 T@FrameType) (r@@1 T@Field_34857_34858) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_34857_31345 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_31345_34857 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_34857_34857 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34857_31345 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_31345_34857 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_34857_34858) (v_1@@4 T@FrameType) (q@@2 T@Field_19407_19411) (w@@4 T@FrameType) (r@@2 T@Field_19407_19411) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_34857_31345 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_31345_31345 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_34857_31345 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34857_31345 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_31345_31345 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_19407_19411) (v_1@@5 T@FrameType) (q@@3 T@Field_34857_34858) (w@@5 T@FrameType) (r@@3 T@Field_34857_34858) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_31345_34857 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_34857_34857 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_31345_34857 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31345_34857 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_34857_34857 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_19407_19411) (v_1@@6 T@FrameType) (q@@4 T@Field_34857_34858) (w@@6 T@FrameType) (r@@4 T@Field_19407_19411) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_31345_34857 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_34857_31345 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_31345_31345 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31345_34857 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_34857_31345 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_19407_19411) (v_1@@7 T@FrameType) (q@@5 T@Field_19407_19411) (w@@7 T@FrameType) (r@@5 T@Field_34857_34858) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_31345_31345 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_31345_34857 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_31345_34857 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31345_31345 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_31345_34857 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_19407_19411) (v_1@@8 T@FrameType) (q@@6 T@Field_19407_19411) (w@@8 T@FrameType) (r@@6 T@Field_19407_19411) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_31345_31345 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_31345_31345 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_31345_31345 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.223:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_31345_31345 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_31345_31345 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered2 (Int) Bool)
(declare-fun a_2@@7 () T@IArrayDomainType)
(declare-fun PostHeap@0 () T@PolymorphicMapType_31285)
(declare-fun i@@6 () Int)
(declare-fun Heap@16 () T@PolymorphicMapType_31285)
(declare-fun Mask@16 () T@PolymorphicMapType_31306)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun Heap@15 () T@PolymorphicMapType_31285)
(declare-fun Mask@15 () T@PolymorphicMapType_31306)
(declare-fun Heap@12 () T@PolymorphicMapType_31285)
(declare-fun Heap@13 () T@PolymorphicMapType_31285)
(declare-fun Heap@14 () T@PolymorphicMapType_31285)
(declare-fun Heap@9 () T@PolymorphicMapType_31285)
(declare-fun Heap@10 () T@PolymorphicMapType_31285)
(declare-fun Heap@11 () T@PolymorphicMapType_31285)
(declare-fun freshVersion@1 () T@FrameType)
(declare-fun Mask@14 () T@PolymorphicMapType_31306)
(declare-fun FrameFragment_19373 (T@FrameType) T@FrameType)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1721 (Int) T@FrameType)
(declare-fun Mask@13 () T@PolymorphicMapType_31306)
(declare-fun Mask@12 () T@PolymorphicMapType_31306)
(declare-fun Mask@11 () T@PolymorphicMapType_31306)
(declare-fun sum_3@2 () Int)
(declare-fun sum_3@0 () Int)
(declare-fun Mask@8 () T@PolymorphicMapType_31306)
(declare-fun Mask@9 () T@PolymorphicMapType_31306)
(declare-fun Mask@10 () T@PolymorphicMapType_31306)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_31285)
(declare-fun Heap@8 () T@PolymorphicMapType_31285)
(declare-fun newVersion@1 () T@FrameType)
(declare-fun QPMask@2 () T@PolymorphicMapType_31306)
(declare-fun arg_i@0 () Int)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun Heap@@32 () T@PolymorphicMapType_31285)
(declare-fun QPMask@0 () T@PolymorphicMapType_31306)
(declare-fun invRecv4 (T@IArrayDomainType Int) Int)
(declare-fun qpRange4 (T@IArrayDomainType Int) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_31306)
(declare-fun getPredWandId_19407_1721 (T@Field_34810_1721) Int)
(declare-fun getPredWandId_19407_19411 (T@Field_19407_19411) Int)
(declare-fun getPredWandId_19407_53 (T@Field_31345_53) Int)
(declare-fun getPredWandId_19407_31359 (T@Field_31358_31359) Int)
(declare-fun getPredWandId_19407_122203 (T@Field_19407_34875) Int)
(declare-fun getPredWandId_19410_1721 (T@Field_19410_1721) Int)
(declare-fun getPredWandId_19410_53 (T@Field_19410_53) Int)
(declare-fun getPredWandId_19410_31359 (T@Field_19410_31359) Int)
(declare-fun getPredWandId_19410_123012 (T@Field_34870_34875) Int)
(declare-fun neverTriggered5 (Int) Bool)
(declare-fun invRecv5 (T@IArrayDomainType Int) Int)
(declare-fun qpRange5 (T@IArrayDomainType Int) Bool)
(declare-fun Heap@7 () T@PolymorphicMapType_31285)
(declare-fun Mask@7 () T@PolymorphicMapType_31306)
(declare-fun Heap@4 () T@PolymorphicMapType_31285)
(declare-fun Heap@5 () T@PolymorphicMapType_31285)
(declare-fun Heap@6 () T@PolymorphicMapType_31285)
(declare-fun Heap@1 () T@PolymorphicMapType_31285)
(declare-fun Heap@2 () T@PolymorphicMapType_31285)
(declare-fun Heap@3 () T@PolymorphicMapType_31285)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@6 () T@PolymorphicMapType_31306)
(declare-fun Mask@5 () T@PolymorphicMapType_31306)
(declare-fun Mask@4 () T@PolymorphicMapType_31306)
(declare-fun Mask@3 () T@PolymorphicMapType_31306)
(declare-fun sum_3@1 () Int)
(declare-fun Mask@0 () T@PolymorphicMapType_31306)
(declare-fun Mask@1 () T@PolymorphicMapType_31306)
(declare-fun Mask@2 () T@PolymorphicMapType_31306)
(declare-fun Heap@0 () T@PolymorphicMapType_31285)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun neverTriggered1 (Int) Bool)
(declare-fun invRecv1 (T@IArrayDomainType Int) Int)
(declare-fun qpRange1 (T@IArrayDomainType Int) Bool)
(set-info :boogie-vc-id totalSum)
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
 (=> (= (ControlFlow 0 0) 76) (let ((anon44_Else_correct  (=> (= (ControlFlow 0 71) (- 0 70)) (forall ((j_4_1 Int) (j_4_2 Int) ) (!  (=> (and (and (and (and (not (= j_4_1 j_4_2)) (and (>= j_4_1 0) (and (< j_4_1 (len a_2@@7)) (= (mod j_4_1 2) 0)))) (and (>= j_4_2 0) (and (< j_4_2 (len a_2@@7)) (= (mod j_4_2 2) 0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@7 a_2@@7)) (not (= j_4_1 j_4_2))))
 :qid |stdinbpl.502:17|
 :skolemid |36|
 :pattern ( (neverTriggered2 j_4_1) (neverTriggered2 j_4_2))
)))))
(let ((anon44_Then_correct true))
(let ((anon43_Then_correct  (=> (and (and (state PostHeap@0 ZeroMask) (>= i@@6 0)) (and (<= i@@6 (len a_2@@7)) (state PostHeap@0 ZeroMask))) (and (=> (= (ControlFlow 0 72) 69) anon44_Then_correct) (=> (= (ControlFlow 0 72) 71) anon44_Else_correct)))))
(let ((anon41_correct  (=> (state Heap@16 Mask@16) (and (=> (= (ControlFlow 0 3) (- 0 6)) (>= i@@6 0)) (=> (>= i@@6 0) (and (=> (= (ControlFlow 0 3) (- 0 5)) (<= i@@6 (len a_2@@7))) (=> (<= i@@6 (len a_2@@7)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((j_6_2 Int) (j_6_3 Int) ) (!  (=> (and (and (and (and (not (= j_6_2 j_6_3)) (and (>= j_6_2 0) (and (< j_6_2 (len a_2@@7)) (= (mod j_6_2 2) 0)))) (and (>= j_6_3 0) (and (< j_6_3 (len a_2@@7)) (= (mod j_6_3 2) 0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@7 a_2@@7)) (not (= j_6_2 j_6_3))))
 :qid |stdinbpl.818:17|
 :skolemid |55|
 :pattern ( (neverTriggered3 j_6_2) (neverTriggered3 j_6_3))
))) (=> (forall ((j_6_2@@0 Int) (j_6_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_6_2@@0 j_6_3@@0)) (and (>= j_6_2@@0 0) (and (< j_6_2@@0 (len a_2@@7)) (= (mod j_6_2@@0 2) 0)))) (and (>= j_6_3@@0 0) (and (< j_6_3@@0 (len a_2@@7)) (= (mod j_6_3@@0 2) 0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@7 a_2@@7)) (not (= j_6_2@@0 j_6_3@@0))))
 :qid |stdinbpl.818:17|
 :skolemid |55|
 :pattern ( (neverTriggered3 j_6_2@@0) (neverTriggered3 j_6_3@@0))
)) (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((j_6_2@@1 Int) ) (!  (=> (and (>= j_6_2@@1 0) (and (< j_6_2@@1 (len a_2@@7)) (= (mod j_6_2@@1 2) 0))) (>= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@16) null (access a_2@@7 j_6_2@@1)) FullPerm))
 :qid |stdinbpl.825:17|
 :skolemid |56|
 :pattern ( (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@16) null (access a_2@@7 j_6_2@@1)))
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@16) null (access a_2@@7 j_6_2@@1)))
))))))))))))
(let ((anon23_correct  (=> (state Heap@15 Mask@15) (=> (and (and (state Heap@15 Mask@15) (= Heap@16 Heap@15)) (and (= Mask@16 Mask@15) (= (ControlFlow 0 35) 3))) anon41_correct))))
(let ((anon53_Else_correct  (=> (not (= (mod i@@6 2) 0)) (=> (and (= Heap@15 Heap@12) (= (ControlFlow 0 37) 35)) anon23_correct))))
(let ((anon53_Then_correct  (=> (= (mod i@@6 2) 0) (=> (and (and (= Heap@13 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@12) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@12) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@12) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@12) (store (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@12) null (|access#sm| a_2@@7 i@@6) (PolymorphicMapType_31834 (store (|PolymorphicMapType_31834_19407_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@12) null (|access#sm| a_2@@7 i@@6))) (loc a_2@@7 i@@6) val true) (|PolymorphicMapType_31834_19407_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@12) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_19407_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@12) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_19407_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@12) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_19407_107429#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@12) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@12) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@12) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@12) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@12) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_108477#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@12) null (|access#sm| a_2@@7 i@@6))))) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@12) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@12) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@12) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@12) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@12))) (= Heap@14 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@13) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@13) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@13) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@13) (store (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@13) null (|access#sm| a_2@@7 i@@6) (PolymorphicMapType_31834 (store (|PolymorphicMapType_31834_19407_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@13) null (|access#sm| a_2@@7 i@@6))) (loc a_2@@7 (+ i@@6 1)) val true) (|PolymorphicMapType_31834_19407_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@13) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_19407_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@13) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_19407_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@13) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_19407_107429#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@13) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@13) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@13) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@13) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@13) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_108477#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@13) null (|access#sm| a_2@@7 i@@6))))) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@13) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@13) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@13) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@13) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@13)))) (and (= Heap@15 Heap@14) (= (ControlFlow 0 36) 35))) anon23_correct))))
(let ((anon52_Else_correct  (=> (and (HasDirectPerm_19410_19411 Mask@15 null (access a_2@@7 i@@6)) (= Heap@12 Heap@9)) (and (=> (= (ControlFlow 0 39) 36) anon53_Then_correct) (=> (= (ControlFlow 0 39) 37) anon53_Else_correct)))))
(let ((anon52_Then_correct  (=> (and (and (not (HasDirectPerm_19410_19411 Mask@15 null (access a_2@@7 i@@6))) (= Heap@10 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@9) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@9) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@9) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@9) (store (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@9) null (|access#sm| a_2@@7 i@@6) ZeroPMask) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@9) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@9) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@9) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@9) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@9)))) (and (= Heap@11 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@10) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@10) (store (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@10) null (access a_2@@7 i@@6) freshVersion@1) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@10) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@10) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@10) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@10) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@10) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@10) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@10))) (= Heap@12 Heap@11))) (and (=> (= (ControlFlow 0 38) 36) anon53_Then_correct) (=> (= (ControlFlow 0 38) 37) anon53_Else_correct)))))
(let ((anon19_correct  (=> (= Mask@15 (PolymorphicMapType_31306 (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@14) (store (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@14) null (access a_2@@7 i@@6) (+ (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@14) null (access a_2@@7 i@@6)) FullPerm)) (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| Mask@14) (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| Mask@14) (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| Mask@14) (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| Mask@14) (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| Mask@14) (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| Mask@14) (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| Mask@14) (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| Mask@14))) (=> (and (and (state Heap@9 Mask@15) (state Heap@9 Mask@15)) (and (|access#trigger_19410| Heap@9 (access a_2@@7 i@@6)) (= (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@9) null (access a_2@@7 i@@6)) (FrameFragment_19373 (ite (= (mod i@@6 2) 0) (CombineFrames (FrameFragment_1721 (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@9) (loc a_2@@7 i@@6) val)) (FrameFragment_1721 (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@9) (loc a_2@@7 (+ i@@6 1)) val))) EmptyFrame))))) (and (=> (= (ControlFlow 0 40) 38) anon52_Then_correct) (=> (= (ControlFlow 0 40) 39) anon52_Else_correct))))))
(let ((anon18_correct  (=> (= Mask@13 (PolymorphicMapType_31306 (store (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@12) (loc a_2@@7 (+ i@@6 1)) val (- (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@12) (loc a_2@@7 (+ i@@6 1)) val) FullPerm)) (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@12) (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| Mask@12) (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| Mask@12) (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| Mask@12) (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| Mask@12) (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| Mask@12) (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| Mask@12) (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| Mask@12) (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| Mask@12))) (=> (and (= Mask@14 Mask@13) (= (ControlFlow 0 42) 40)) anon19_correct))))
(let ((anon51_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 45) 42)) anon18_correct)))
(let ((anon51_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (<= FullPerm (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@12) (loc a_2@@7 (+ i@@6 1)) val))) (=> (<= FullPerm (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@12) (loc a_2@@7 (+ i@@6 1)) val)) (=> (= (ControlFlow 0 43) 42) anon18_correct))))))
(let ((anon16_correct  (=> (= Mask@12 (PolymorphicMapType_31306 (store (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@11) (loc a_2@@7 i@@6) val (- (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@11) (loc a_2@@7 i@@6) val) FullPerm)) (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@11) (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| Mask@11) (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| Mask@11) (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| Mask@11) (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| Mask@11) (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| Mask@11) (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| Mask@11) (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| Mask@11) (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| Mask@11))) (and (=> (= (ControlFlow 0 46) 43) anon51_Then_correct) (=> (= (ControlFlow 0 46) 45) anon51_Else_correct)))))
(let ((anon50_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 49) 46)) anon16_correct)))
(let ((anon50_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 47) (- 0 48)) (<= FullPerm (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@11) (loc a_2@@7 i@@6) val))) (=> (<= FullPerm (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@11) (loc a_2@@7 i@@6) val)) (=> (= (ControlFlow 0 47) 46) anon16_correct))))))
(let ((anon49_Then_correct  (=> (= (mod i@@6 2) 0) (and (=> (= (ControlFlow 0 50) 47) anon50_Then_correct) (=> (= (ControlFlow 0 50) 49) anon50_Else_correct)))))
(let ((anon49_Else_correct  (=> (not (= (mod i@@6 2) 0)) (=> (and (= Mask@14 Mask@11) (= (ControlFlow 0 41) 40)) anon19_correct))))
(let ((anon13_correct  (=> (and (state Heap@9 Mask@11) (state Heap@9 Mask@11)) (and (=> (= (ControlFlow 0 51) (- 0 53)) (HasDirectPerm_19407_1721 Mask@11 (loc a_2@@7 i@@6) val)) (=> (HasDirectPerm_19407_1721 Mask@11 (loc a_2@@7 i@@6) val) (and (=> (= (ControlFlow 0 51) (- 0 52)) (HasDirectPerm_19407_1721 Mask@11 (loc a_2@@7 (+ i@@6 1)) val)) (=> (HasDirectPerm_19407_1721 Mask@11 (loc a_2@@7 (+ i@@6 1)) val) (=> (and (= sum_3@2 (+ (+ sum_3@0 (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@9) (loc a_2@@7 i@@6) val)) (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@9) (loc a_2@@7 (+ i@@6 1)) val))) (state Heap@9 Mask@11)) (and (=> (= (ControlFlow 0 51) 50) anon49_Then_correct) (=> (= (ControlFlow 0 51) 41) anon49_Else_correct))))))))))
(let ((anon48_Else_correct  (=> (not (= (mod i@@6 2) 0)) (=> (and (= Mask@11 Mask@8) (= (ControlFlow 0 55) 51)) anon13_correct))))
(let ((anon48_Then_correct  (=> (= (mod i@@6 2) 0) (=> (and (and (and (not (= (loc a_2@@7 i@@6) null)) (= Mask@9 (PolymorphicMapType_31306 (store (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@8) (loc a_2@@7 i@@6) val (+ (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@8) (loc a_2@@7 i@@6) val) FullPerm)) (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@8) (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| Mask@8) (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| Mask@8) (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| Mask@8) (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| Mask@8) (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| Mask@8) (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| Mask@8) (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| Mask@8) (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| Mask@8)))) (and (state Heap@9 Mask@9) (not (= (loc a_2@@7 (+ i@@6 1)) null)))) (and (and (= Mask@10 (PolymorphicMapType_31306 (store (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@9) (loc a_2@@7 (+ i@@6 1)) val (+ (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@9) (loc a_2@@7 (+ i@@6 1)) val) FullPerm)) (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@9) (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| Mask@9) (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| Mask@9) (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| Mask@9) (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| Mask@9) (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| Mask@9) (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| Mask@9) (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| Mask@9) (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| Mask@9))) (state Heap@9 Mask@10)) (and (= Mask@11 Mask@10) (= (ControlFlow 0 54) 51)))) anon13_correct))))
(let ((anon47_Else_correct  (=> (and (HasDirectPerm_19410_19411 Mask@8 null (access a_2@@7 i@@6)) (= Heap@9 ExhaleHeap@0)) (and (=> (= (ControlFlow 0 57) 54) anon48_Then_correct) (=> (= (ControlFlow 0 57) 55) anon48_Else_correct)))))
(let ((anon47_Then_correct  (=> (not (HasDirectPerm_19410_19411 Mask@8 null (access a_2@@7 i@@6))) (=> (and (= Heap@8 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| ExhaleHeap@0) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| ExhaleHeap@0) (store (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| ExhaleHeap@0) null (access a_2@@7 i@@6) newVersion@1) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| ExhaleHeap@0) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| ExhaleHeap@0) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| ExhaleHeap@0) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| ExhaleHeap@0) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| ExhaleHeap@0) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| ExhaleHeap@0) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| ExhaleHeap@0))) (= Heap@9 Heap@8)) (and (=> (= (ControlFlow 0 56) 54) anon48_Then_correct) (=> (= (ControlFlow 0 56) 55) anon48_Else_correct))))))
(let ((anon9_correct  (=> (= Mask@8 (PolymorphicMapType_31306 (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| QPMask@2) (store (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@2) null (access a_2@@7 i@@6) (- (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@2) null (access a_2@@7 i@@6)) FullPerm)) (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| QPMask@2) (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| QPMask@2) (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| QPMask@2) (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| QPMask@2) (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| QPMask@2) (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| QPMask@2) (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| QPMask@2) (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| QPMask@2))) (and (=> (= (ControlFlow 0 58) 56) anon47_Then_correct) (=> (= (ControlFlow 0 58) 57) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 61) 58)) anon9_correct)))
(let ((anon46_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 59) (- 0 60)) (<= FullPerm (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@2) null (access a_2@@7 i@@6)))) (=> (<= FullPerm (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@2) null (access a_2@@7 i@@6))) (=> (= (ControlFlow 0 59) 58) anon9_correct))))))
(let ((anon45_Then_correct  (=> (and (< (+ i@@6 3) (len a_2@@7)) (= arg_i@0 (+ i@@6 2))) (and (=> (= (ControlFlow 0 62) (- 0 68)) (>= arg_i@0 0)) (=> (>= arg_i@0 0) (and (=> (= (ControlFlow 0 62) (- 0 67)) (< (+ arg_i@0 1) (len a_2@@7))) (=> (< (+ arg_i@0 1) (len a_2@@7)) (and (=> (= (ControlFlow 0 62) (- 0 66)) (= (mod arg_i@0 2) 0)) (=> (= (mod arg_i@0 2) 0) (and (=> (= (ControlFlow 0 62) (- 0 65)) (forall ((j_7_1 Int) (j_7_2 Int) ) (!  (=> (and (and (and (and (not (= j_7_1 j_7_2)) (and (>= j_7_1 0) (and (< j_7_1 (len a_2@@7)) (= (mod j_7_1 2) 0)))) (and (>= j_7_2 0) (and (< j_7_2 (len a_2@@7)) (= (mod j_7_2 2) 0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@7 a_2@@7)) (not (= j_7_1 j_7_2))))
 :qid |stdinbpl.563:23|
 :skolemid |42|
 :pattern ( (neverTriggered4 j_7_1) (neverTriggered4 j_7_2))
))) (=> (forall ((j_7_1@@0 Int) (j_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_7_1@@0 j_7_2@@0)) (and (>= j_7_1@@0 0) (and (< j_7_1@@0 (len a_2@@7)) (= (mod j_7_1@@0 2) 0)))) (and (>= j_7_2@@0 0) (and (< j_7_2@@0 (len a_2@@7)) (= (mod j_7_2@@0 2) 0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@7 a_2@@7)) (not (= j_7_1@@0 j_7_2@@0))))
 :qid |stdinbpl.563:23|
 :skolemid |42|
 :pattern ( (neverTriggered4 j_7_1@@0) (neverTriggered4 j_7_2@@0))
)) (and (=> (= (ControlFlow 0 62) (- 0 64)) (forall ((j_7_1@@1 Int) ) (!  (=> (and (>= j_7_1@@1 0) (and (< j_7_1@@1 (len a_2@@7)) (= (mod j_7_1@@1 2) 0))) (>= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) null (access a_2@@7 j_7_1@@1)) FullPerm))
 :qid |stdinbpl.570:23|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@32) null (access a_2@@7 j_7_1@@1)))
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) null (access a_2@@7 j_7_1@@1)))
))) (=> (forall ((j_7_1@@2 Int) ) (!  (=> (and (>= j_7_1@@2 0) (and (< j_7_1@@2 (len a_2@@7)) (= (mod j_7_1@@2 2) 0))) (>= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) null (access a_2@@7 j_7_1@@2)) FullPerm))
 :qid |stdinbpl.570:23|
 :skolemid |43|
 :pattern ( (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@32) null (access a_2@@7 j_7_1@@2)))
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) null (access a_2@@7 j_7_1@@2)))
)) (=> (and (and (forall ((j_7_1@@3 Int) ) (!  (=> (and (and (>= j_7_1@@3 0) (and (< j_7_1@@3 (len a_2@@7)) (= (mod j_7_1@@3 2) 0))) (< NoPerm FullPerm)) (and (= (invRecv4 a_2@@7 j_7_1@@3) j_7_1@@3) (qpRange4 a_2@@7 j_7_1@@3)))
 :qid |stdinbpl.576:28|
 :skolemid |44|
 :pattern ( (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@32) null (access a_2@@7 j_7_1@@3)))
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) null (access a_2@@7 j_7_1@@3)))
)) (forall ((a_4_1_1 T@IArrayDomainType) (i_4_1_1 Int) ) (!  (=> (and (and (and (>= (invRecv4 a_4_1_1 i_4_1_1) 0) (and (< (invRecv4 a_4_1_1 i_4_1_1) (len a_2@@7)) (= (mod (invRecv4 a_4_1_1 i_4_1_1) 2) 0))) (< NoPerm FullPerm)) (qpRange4 a_4_1_1 i_4_1_1)) (and (= a_2@@7 a_4_1_1) (= (invRecv4 a_4_1_1 i_4_1_1) i_4_1_1)))
 :qid |stdinbpl.580:28|
 :skolemid |45|
 :pattern ( (invRecv4 a_4_1_1 i_4_1_1))
))) (and (forall ((a_4_1_1@@0 T@IArrayDomainType) (i_4_1_1@@0 Int) ) (!  (=> (and (and (and (>= (invRecv4 a_4_1_1@@0 i_4_1_1@@0) 0) (and (< (invRecv4 a_4_1_1@@0 i_4_1_1@@0) (len a_2@@7)) (= (mod (invRecv4 a_4_1_1@@0 i_4_1_1@@0) 2) 0))) (< NoPerm FullPerm)) (qpRange4 a_4_1_1@@0 i_4_1_1@@0)) (and (and (= a_2@@7 a_4_1_1@@0) (= (invRecv4 a_4_1_1@@0 i_4_1_1@@0) i_4_1_1@@0)) (= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@1) null (access a_4_1_1@@0 i_4_1_1@@0)) (- (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) null (access a_4_1_1@@0 i_4_1_1@@0)) FullPerm))))
 :qid |stdinbpl.586:28|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@1) null (access a_4_1_1@@0 i_4_1_1@@0)))
)) (forall ((a_4_1_1@@1 T@IArrayDomainType) (i_4_1_1@@1 Int) ) (!  (=> (not (and (and (and (>= (invRecv4 a_4_1_1@@1 i_4_1_1@@1) 0) (and (< (invRecv4 a_4_1_1@@1 i_4_1_1@@1) (len a_2@@7)) (= (mod (invRecv4 a_4_1_1@@1 i_4_1_1@@1) 2) 0))) (< NoPerm FullPerm)) (qpRange4 a_4_1_1@@1 i_4_1_1@@1))) (= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@1) null (access a_4_1_1@@1 i_4_1_1@@1)) (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) null (access a_4_1_1@@1 i_4_1_1@@1))))
 :qid |stdinbpl.590:28|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@1) null (access a_4_1_1@@1 i_4_1_1@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_34810_1721) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_19407_1721 f_5))) (not (= (getPredWandId_19407_1721 f_5) 0))) (= (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| QPMask@0) o_9 f_5) (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| QPMask@1) o_9 f_5)))
 :qid |stdinbpl.596:35|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| QPMask@0) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| QPMask@1) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_19407_19411) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_19407_106282 f_5@@0))) (not (= (getPredWandId_19407_19411 f_5@@0) 0))) (= (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| QPMask@0) o_9@@0 f_5@@0) (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| QPMask@1) o_9@@0 f_5@@0)))
 :qid |stdinbpl.596:35|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| QPMask@0) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| QPMask@1) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_31345_53) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_19407_53 f_5@@1))) (not (= (getPredWandId_19407_53 f_5@@1) 0))) (= (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| QPMask@0) o_9@@1 f_5@@1) (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| QPMask@1) o_9@@1 f_5@@1)))
 :qid |stdinbpl.596:35|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| QPMask@0) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| QPMask@1) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_31358_31359) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_19407_31359 f_5@@2))) (not (= (getPredWandId_19407_31359 f_5@@2) 0))) (= (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| QPMask@0) o_9@@2 f_5@@2) (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| QPMask@1) o_9@@2 f_5@@2)))
 :qid |stdinbpl.596:35|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| QPMask@0) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| QPMask@1) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_19407_34875) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_19407_115743 f_5@@3))) (not (= (getPredWandId_19407_122203 f_5@@3) 0))) (= (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| QPMask@0) o_9@@3 f_5@@3) (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| QPMask@1) o_9@@3 f_5@@3)))
 :qid |stdinbpl.596:35|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| QPMask@0) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| QPMask@1) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_19410_1721) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_19410_1721 f_5@@4))) (not (= (getPredWandId_19410_1721 f_5@@4) 0))) (= (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| QPMask@0) o_9@@4 f_5@@4) (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| QPMask@1) o_9@@4 f_5@@4)))
 :qid |stdinbpl.596:35|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| QPMask@0) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| QPMask@1) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_34857_34858) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_19410_19411 f_5@@5))) (not (= (getPredWandId_19410_19411 f_5@@5) 0))) (= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) o_9@@5 f_5@@5) (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@1) o_9@@5 f_5@@5)))
 :qid |stdinbpl.596:35|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@1) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_19410_53) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_19410_53 f_5@@6))) (not (= (getPredWandId_19410_53 f_5@@6) 0))) (= (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| QPMask@0) o_9@@6 f_5@@6) (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| QPMask@1) o_9@@6 f_5@@6)))
 :qid |stdinbpl.596:35|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| QPMask@0) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| QPMask@1) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_19410_31359) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_19410_31359 f_5@@7))) (not (= (getPredWandId_19410_31359 f_5@@7) 0))) (= (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| QPMask@0) o_9@@7 f_5@@7) (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| QPMask@1) o_9@@7 f_5@@7)))
 :qid |stdinbpl.596:35|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| QPMask@0) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| QPMask@1) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_34870_34875) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_19410_116574 f_5@@8))) (not (= (getPredWandId_19410_123012 f_5@@8) 0))) (= (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| QPMask@0) o_9@@8 f_5@@8) (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| QPMask@1) o_9@@8 f_5@@8)))
 :qid |stdinbpl.596:35|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| QPMask@0) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| QPMask@1) o_9@@8 f_5@@8))
))) (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@0 QPMask@1)) (and (>= arg_i@0 0) (<= arg_i@0 (len a_2@@7)))) (and (=> (= (ControlFlow 0 62) (- 0 63)) (forall ((j_8_2 Int) (j_8_3 Int) ) (!  (=> (and (and (and (and (not (= j_8_2 j_8_3)) (and (>= j_8_2 0) (and (< j_8_2 (len a_2@@7)) (= (mod j_8_2 2) 0)))) (and (>= j_8_3 0) (and (< j_8_3 (len a_2@@7)) (= (mod j_8_3 2) 0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@7 a_2@@7)) (not (= j_8_2 j_8_3))))
 :qid |stdinbpl.616:23|
 :skolemid |49|
 :pattern ( (neverTriggered5 j_8_2) (neverTriggered5 j_8_3))
))) (=> (forall ((j_8_2@@0 Int) (j_8_3@@0 Int) ) (!  (=> (and (and (and (and (not (= j_8_2@@0 j_8_3@@0)) (and (>= j_8_2@@0 0) (and (< j_8_2@@0 (len a_2@@7)) (= (mod j_8_2@@0 2) 0)))) (and (>= j_8_3@@0 0) (and (< j_8_3@@0 (len a_2@@7)) (= (mod j_8_3@@0 2) 0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@7 a_2@@7)) (not (= j_8_2@@0 j_8_3@@0))))
 :qid |stdinbpl.616:23|
 :skolemid |49|
 :pattern ( (neverTriggered5 j_8_2@@0) (neverTriggered5 j_8_3@@0))
)) (=> (forall ((j_8_2@@1 Int) ) (!  (=> (and (and (>= j_8_2@@1 0) (and (< j_8_2@@1 (len a_2@@7)) (= (mod j_8_2@@1 2) 0))) (< NoPerm FullPerm)) (and (= (invRecv5 a_2@@7 j_8_2@@1) j_8_2@@1) (qpRange5 a_2@@7 j_8_2@@1)))
 :qid |stdinbpl.622:28|
 :skolemid |50|
 :pattern ( (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| ExhaleHeap@0) null (access a_2@@7 j_8_2@@1)))
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@1) null (access a_2@@7 j_8_2@@1)))
)) (=> (and (forall ((a_5_1_1 T@IArrayDomainType) (i_5_1_1 Int) ) (!  (=> (and (and (and (>= (invRecv5 a_5_1_1 i_5_1_1) 0) (and (< (invRecv5 a_5_1_1 i_5_1_1) (len a_2@@7)) (= (mod (invRecv5 a_5_1_1 i_5_1_1) 2) 0))) (< NoPerm FullPerm)) (qpRange5 a_5_1_1 i_5_1_1)) (and (= a_2@@7 a_5_1_1) (= (invRecv5 a_5_1_1 i_5_1_1) i_5_1_1)))
 :qid |stdinbpl.626:28|
 :skolemid |51|
 :pattern ( (invRecv5 a_5_1_1 i_5_1_1))
)) (forall ((a_5_1_1@@0 T@IArrayDomainType) (i_5_1_1@@0 Int) ) (!  (=> (and (and (and (>= (invRecv5 a_5_1_1@@0 i_5_1_1@@0) 0) (and (< (invRecv5 a_5_1_1@@0 i_5_1_1@@0) (len a_2@@7)) (= (mod (invRecv5 a_5_1_1@@0 i_5_1_1@@0) 2) 0))) (< NoPerm FullPerm)) (qpRange5 a_5_1_1@@0 i_5_1_1@@0)) (and (=> (< NoPerm FullPerm) (and (= a_2@@7 a_5_1_1@@0) (= (invRecv5 a_5_1_1@@0 i_5_1_1@@0) i_5_1_1@@0))) (= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@2) null (access a_5_1_1@@0 i_5_1_1@@0)) (+ (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@1) null (access a_5_1_1@@0 i_5_1_1@@0)) FullPerm))))
 :qid |stdinbpl.632:28|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@2) null (access a_5_1_1@@0 i_5_1_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@9 T@Ref) (f_5@@9 T@Field_34810_1721) ) (!  (=> (or (or (not (= o_9@@9 null)) (not (IsPredicateField_19407_1721 f_5@@9))) (not (= (getPredWandId_19407_1721 f_5@@9) 0))) (= (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| QPMask@1) o_9@@9 f_5@@9) (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| QPMask@2) o_9@@9 f_5@@9)))
 :qid |stdinbpl.638:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| QPMask@1) o_9@@9 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| QPMask@2) o_9@@9 f_5@@9))
)) (forall ((o_9@@10 T@Ref) (f_5@@10 T@Field_19407_19411) ) (!  (=> (or (or (not (= o_9@@10 null)) (not (IsPredicateField_19407_106282 f_5@@10))) (not (= (getPredWandId_19407_19411 f_5@@10) 0))) (= (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| QPMask@1) o_9@@10 f_5@@10) (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| QPMask@2) o_9@@10 f_5@@10)))
 :qid |stdinbpl.638:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| QPMask@1) o_9@@10 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| QPMask@2) o_9@@10 f_5@@10))
))) (forall ((o_9@@11 T@Ref) (f_5@@11 T@Field_31345_53) ) (!  (=> (or (or (not (= o_9@@11 null)) (not (IsPredicateField_19407_53 f_5@@11))) (not (= (getPredWandId_19407_53 f_5@@11) 0))) (= (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| QPMask@1) o_9@@11 f_5@@11) (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| QPMask@2) o_9@@11 f_5@@11)))
 :qid |stdinbpl.638:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| QPMask@1) o_9@@11 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| QPMask@2) o_9@@11 f_5@@11))
))) (forall ((o_9@@12 T@Ref) (f_5@@12 T@Field_31358_31359) ) (!  (=> (or (or (not (= o_9@@12 null)) (not (IsPredicateField_19407_31359 f_5@@12))) (not (= (getPredWandId_19407_31359 f_5@@12) 0))) (= (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| QPMask@1) o_9@@12 f_5@@12) (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| QPMask@2) o_9@@12 f_5@@12)))
 :qid |stdinbpl.638:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| QPMask@1) o_9@@12 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| QPMask@2) o_9@@12 f_5@@12))
))) (forall ((o_9@@13 T@Ref) (f_5@@13 T@Field_19407_34875) ) (!  (=> (or (or (not (= o_9@@13 null)) (not (IsPredicateField_19407_115743 f_5@@13))) (not (= (getPredWandId_19407_122203 f_5@@13) 0))) (= (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| QPMask@1) o_9@@13 f_5@@13) (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| QPMask@2) o_9@@13 f_5@@13)))
 :qid |stdinbpl.638:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| QPMask@1) o_9@@13 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| QPMask@2) o_9@@13 f_5@@13))
))) (forall ((o_9@@14 T@Ref) (f_5@@14 T@Field_19410_1721) ) (!  (=> (or (or (not (= o_9@@14 null)) (not (IsPredicateField_19410_1721 f_5@@14))) (not (= (getPredWandId_19410_1721 f_5@@14) 0))) (= (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| QPMask@1) o_9@@14 f_5@@14) (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| QPMask@2) o_9@@14 f_5@@14)))
 :qid |stdinbpl.638:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| QPMask@1) o_9@@14 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| QPMask@2) o_9@@14 f_5@@14))
))) (forall ((o_9@@15 T@Ref) (f_5@@15 T@Field_34857_34858) ) (!  (=> (or (or (not (= o_9@@15 null)) (not (IsPredicateField_19410_19411 f_5@@15))) (not (= (getPredWandId_19410_19411 f_5@@15) 0))) (= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@1) o_9@@15 f_5@@15) (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@2) o_9@@15 f_5@@15)))
 :qid |stdinbpl.638:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@1) o_9@@15 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@2) o_9@@15 f_5@@15))
))) (forall ((o_9@@16 T@Ref) (f_5@@16 T@Field_19410_53) ) (!  (=> (or (or (not (= o_9@@16 null)) (not (IsPredicateField_19410_53 f_5@@16))) (not (= (getPredWandId_19410_53 f_5@@16) 0))) (= (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| QPMask@1) o_9@@16 f_5@@16) (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| QPMask@2) o_9@@16 f_5@@16)))
 :qid |stdinbpl.638:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| QPMask@1) o_9@@16 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| QPMask@2) o_9@@16 f_5@@16))
))) (forall ((o_9@@17 T@Ref) (f_5@@17 T@Field_19410_31359) ) (!  (=> (or (or (not (= o_9@@17 null)) (not (IsPredicateField_19410_31359 f_5@@17))) (not (= (getPredWandId_19410_31359 f_5@@17) 0))) (= (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| QPMask@1) o_9@@17 f_5@@17) (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| QPMask@2) o_9@@17 f_5@@17)))
 :qid |stdinbpl.638:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| QPMask@1) o_9@@17 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| QPMask@2) o_9@@17 f_5@@17))
))) (forall ((o_9@@18 T@Ref) (f_5@@18 T@Field_34870_34875) ) (!  (=> (or (or (not (= o_9@@18 null)) (not (IsPredicateField_19410_116574 f_5@@18))) (not (= (getPredWandId_19410_123012 f_5@@18) 0))) (= (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| QPMask@1) o_9@@18 f_5@@18) (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| QPMask@2) o_9@@18 f_5@@18)))
 :qid |stdinbpl.638:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| QPMask@1) o_9@@18 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| QPMask@2) o_9@@18 f_5@@18))
))) (and (forall ((a_5_1_1@@1 T@IArrayDomainType) (i_5_1_1@@1 Int) ) (!  (=> (not (and (and (and (>= (invRecv5 a_5_1_1@@1 i_5_1_1@@1) 0) (and (< (invRecv5 a_5_1_1@@1 i_5_1_1@@1) (len a_2@@7)) (= (mod (invRecv5 a_5_1_1@@1 i_5_1_1@@1) 2) 0))) (< NoPerm FullPerm)) (qpRange5 a_5_1_1@@1 i_5_1_1@@1))) (= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@2) null (access a_5_1_1@@1 i_5_1_1@@1)) (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@1) null (access a_5_1_1@@1 i_5_1_1@@1))))
 :qid |stdinbpl.642:28|
 :skolemid |54|
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@2) null (access a_5_1_1@@1 i_5_1_1@@1)))
)) (state ExhaleHeap@0 QPMask@2))) (and (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2)) (and (|access#trigger_19410| ExhaleHeap@0 (access a_2@@7 i@@6)) (= (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| ExhaleHeap@0) null (access a_2@@7 i@@6)) (FrameFragment_19373 (ite (= (mod i@@6 2) 0) (CombineFrames (FrameFragment_1721 (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| ExhaleHeap@0) (loc a_2@@7 i@@6) val)) (FrameFragment_1721 (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| ExhaleHeap@0) (loc a_2@@7 (+ i@@6 1)) val))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 62) 59) anon46_Then_correct) (=> (= (ControlFlow 0 62) 61) anon46_Else_correct))))))))))))))))))))))
(let ((anon40_correct  (=> (state Heap@7 Mask@7) (=> (and (and (state Heap@7 Mask@7) (= Heap@16 Heap@7)) (and (= Mask@16 Mask@7) (= (ControlFlow 0 7) 3))) anon41_correct))))
(let ((anon61_Else_correct  (=> (not (= (mod i@@6 2) 0)) (=> (and (= Heap@7 Heap@4) (= (ControlFlow 0 9) 7)) anon40_correct))))
(let ((anon61_Then_correct  (=> (= (mod i@@6 2) 0) (=> (and (and (= Heap@5 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@4) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@4) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@4) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@4) (store (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@4) null (|access#sm| a_2@@7 i@@6) (PolymorphicMapType_31834 (store (|PolymorphicMapType_31834_19407_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@4) null (|access#sm| a_2@@7 i@@6))) (loc a_2@@7 i@@6) val true) (|PolymorphicMapType_31834_19407_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@4) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_19407_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@4) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_19407_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@4) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_19407_107429#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@4) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@4) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@4) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@4) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@4) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_108477#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@4) null (|access#sm| a_2@@7 i@@6))))) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@4) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@4) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@4) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@4) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@4))) (= Heap@6 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@5) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@5) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@5) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@5) (store (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@5) null (|access#sm| a_2@@7 i@@6) (PolymorphicMapType_31834 (store (|PolymorphicMapType_31834_19407_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@5) null (|access#sm| a_2@@7 i@@6))) (loc a_2@@7 (+ i@@6 1)) val true) (|PolymorphicMapType_31834_19407_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@5) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_19407_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@5) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_19407_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@5) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_19407_107429#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@5) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_1721#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@5) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_53#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@5) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_31359#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@5) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_34858#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@5) null (|access#sm| a_2@@7 i@@6))) (|PolymorphicMapType_31834_34857_108477#PolymorphicMapType_31834| (select (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@5) null (|access#sm| a_2@@7 i@@6))))) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@5) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@5) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@5) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@5) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@5)))) (and (= Heap@7 Heap@6) (= (ControlFlow 0 8) 7))) anon40_correct))))
(let ((anon60_Else_correct  (=> (and (HasDirectPerm_19410_19411 Mask@7 null (access a_2@@7 i@@6)) (= Heap@4 Heap@1)) (and (=> (= (ControlFlow 0 11) 8) anon61_Then_correct) (=> (= (ControlFlow 0 11) 9) anon61_Else_correct)))))
(let ((anon60_Then_correct  (=> (and (and (not (HasDirectPerm_19410_19411 Mask@7 null (access a_2@@7 i@@6))) (= Heap@2 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@1) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@1) (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@1) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@1) (store (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@1) null (|access#sm| a_2@@7 i@@6) ZeroPMask) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@1) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@1) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@1) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@1) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@1)))) (and (= Heap@3 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@2) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@2) (store (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@2) null (access a_2@@7 i@@6) freshVersion@0) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@2) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@2) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@2) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@2) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@2) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@2) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@2))) (= Heap@4 Heap@3))) (and (=> (= (ControlFlow 0 10) 8) anon61_Then_correct) (=> (= (ControlFlow 0 10) 9) anon61_Else_correct)))))
(let ((anon36_correct  (=> (= Mask@7 (PolymorphicMapType_31306 (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@6) (store (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@6) null (access a_2@@7 i@@6) (+ (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@6) null (access a_2@@7 i@@6)) FullPerm)) (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| Mask@6) (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| Mask@6) (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| Mask@6) (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| Mask@6) (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| Mask@6) (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| Mask@6) (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| Mask@6) (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| Mask@6))) (=> (and (and (state Heap@1 Mask@7) (state Heap@1 Mask@7)) (and (|access#trigger_19410| Heap@1 (access a_2@@7 i@@6)) (= (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@1) null (access a_2@@7 i@@6)) (FrameFragment_19373 (ite (= (mod i@@6 2) 0) (CombineFrames (FrameFragment_1721 (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@1) (loc a_2@@7 i@@6) val)) (FrameFragment_1721 (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@1) (loc a_2@@7 (+ i@@6 1)) val))) EmptyFrame))))) (and (=> (= (ControlFlow 0 12) 10) anon60_Then_correct) (=> (= (ControlFlow 0 12) 11) anon60_Else_correct))))))
(let ((anon35_correct  (=> (= Mask@5 (PolymorphicMapType_31306 (store (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@4) (loc a_2@@7 (+ i@@6 1)) val (- (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@4) (loc a_2@@7 (+ i@@6 1)) val) FullPerm)) (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@4) (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| Mask@4) (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| Mask@4) (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| Mask@4) (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| Mask@4) (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| Mask@4) (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| Mask@4) (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| Mask@4) (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| Mask@4))) (=> (and (= Mask@6 Mask@5) (= (ControlFlow 0 14) 12)) anon36_correct))))
(let ((anon59_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 17) 14)) anon35_correct)))
(let ((anon59_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (<= FullPerm (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@4) (loc a_2@@7 (+ i@@6 1)) val))) (=> (<= FullPerm (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@4) (loc a_2@@7 (+ i@@6 1)) val)) (=> (= (ControlFlow 0 15) 14) anon35_correct))))))
(let ((anon33_correct  (=> (= Mask@4 (PolymorphicMapType_31306 (store (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@3) (loc a_2@@7 i@@6) val (- (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@3) (loc a_2@@7 i@@6) val) FullPerm)) (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@3) (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| Mask@3) (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| Mask@3) (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| Mask@3) (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| Mask@3) (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| Mask@3) (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| Mask@3) (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| Mask@3) (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| Mask@3))) (and (=> (= (ControlFlow 0 18) 15) anon59_Then_correct) (=> (= (ControlFlow 0 18) 17) anon59_Else_correct)))))
(let ((anon58_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 21) 18)) anon33_correct)))
(let ((anon58_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (<= FullPerm (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@3) (loc a_2@@7 i@@6) val))) (=> (<= FullPerm (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@3) (loc a_2@@7 i@@6) val)) (=> (= (ControlFlow 0 19) 18) anon33_correct))))))
(let ((anon57_Then_correct  (=> (= (mod i@@6 2) 0) (and (=> (= (ControlFlow 0 22) 19) anon58_Then_correct) (=> (= (ControlFlow 0 22) 21) anon58_Else_correct)))))
(let ((anon57_Else_correct  (=> (not (= (mod i@@6 2) 0)) (=> (and (= Mask@6 Mask@3) (= (ControlFlow 0 13) 12)) anon36_correct))))
(let ((anon30_correct  (=> (and (state Heap@1 Mask@3) (state Heap@1 Mask@3)) (and (=> (= (ControlFlow 0 23) (- 0 25)) (HasDirectPerm_19407_1721 Mask@3 (loc a_2@@7 i@@6) val)) (=> (HasDirectPerm_19407_1721 Mask@3 (loc a_2@@7 i@@6) val) (and (=> (= (ControlFlow 0 23) (- 0 24)) (HasDirectPerm_19407_1721 Mask@3 (loc a_2@@7 (+ i@@6 1)) val)) (=> (HasDirectPerm_19407_1721 Mask@3 (loc a_2@@7 (+ i@@6 1)) val) (=> (and (= sum_3@1 (+ (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@1) (loc a_2@@7 i@@6) val) (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@1) (loc a_2@@7 (+ i@@6 1)) val))) (state Heap@1 Mask@3)) (and (=> (= (ControlFlow 0 23) 22) anon57_Then_correct) (=> (= (ControlFlow 0 23) 13) anon57_Else_correct))))))))))
(let ((anon56_Else_correct  (=> (not (= (mod i@@6 2) 0)) (=> (and (= Mask@3 Mask@0) (= (ControlFlow 0 27) 23)) anon30_correct))))
(let ((anon56_Then_correct  (=> (= (mod i@@6 2) 0) (=> (and (and (and (not (= (loc a_2@@7 i@@6) null)) (= Mask@1 (PolymorphicMapType_31306 (store (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@0) (loc a_2@@7 i@@6) val (+ (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@0) (loc a_2@@7 i@@6) val) FullPerm)) (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@0) (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| Mask@0) (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| Mask@0) (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| Mask@0) (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| Mask@0) (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| Mask@0) (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| Mask@0) (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| Mask@0) (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| Mask@0)))) (and (state Heap@1 Mask@1) (not (= (loc a_2@@7 (+ i@@6 1)) null)))) (and (and (= Mask@2 (PolymorphicMapType_31306 (store (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@1) (loc a_2@@7 (+ i@@6 1)) val (+ (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| Mask@1) (loc a_2@@7 (+ i@@6 1)) val) FullPerm)) (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| Mask@1) (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| Mask@1) (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| Mask@1) (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| Mask@1) (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| Mask@1) (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| Mask@1) (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| Mask@1) (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| Mask@1) (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| Mask@1))) (state Heap@1 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 26) 23)))) anon30_correct))))
(let ((anon55_Else_correct  (=> (and (HasDirectPerm_19410_19411 Mask@0 null (access a_2@@7 i@@6)) (= Heap@1 Heap@@32)) (and (=> (= (ControlFlow 0 29) 26) anon56_Then_correct) (=> (= (ControlFlow 0 29) 27) anon56_Else_correct)))))
(let ((anon55_Then_correct  (=> (not (HasDirectPerm_19410_19411 Mask@0 null (access a_2@@7 i@@6))) (=> (and (= Heap@0 (PolymorphicMapType_31285 (|PolymorphicMapType_31285_19237_53#PolymorphicMapType_31285| Heap@@32) (|PolymorphicMapType_31285_19240_19241#PolymorphicMapType_31285| Heap@@32) (store (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@32) null (access a_2@@7 i@@6) newVersion@0) (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@32) (|PolymorphicMapType_31285_19414_45743#PolymorphicMapType_31285| Heap@@32) (|PolymorphicMapType_31285_19410_1721#PolymorphicMapType_31285| Heap@@32) (|PolymorphicMapType_31285_19410_53#PolymorphicMapType_31285| Heap@@32) (|PolymorphicMapType_31285_19410_31359#PolymorphicMapType_31285| Heap@@32) (|PolymorphicMapType_31285_19407_19411#PolymorphicMapType_31285| Heap@@32) (|PolymorphicMapType_31285_19407_105711#PolymorphicMapType_31285| Heap@@32))) (= Heap@1 Heap@0)) (and (=> (= (ControlFlow 0 28) 26) anon56_Then_correct) (=> (= (ControlFlow 0 28) 27) anon56_Else_correct))))))
(let ((anon26_correct  (=> (= Mask@0 (PolymorphicMapType_31306 (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| QPMask@0) (store (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) null (access a_2@@7 i@@6) (- (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) null (access a_2@@7 i@@6)) FullPerm)) (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| QPMask@0) (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| QPMask@0) (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| QPMask@0) (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| QPMask@0) (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| QPMask@0) (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| QPMask@0) (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| QPMask@0) (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| QPMask@0))) (and (=> (= (ControlFlow 0 30) 28) anon55_Then_correct) (=> (= (ControlFlow 0 30) 29) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 33) 30)) anon26_correct)))
(let ((anon54_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (<= FullPerm (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) null (access a_2@@7 i@@6)))) (=> (<= FullPerm (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) null (access a_2@@7 i@@6))) (=> (= (ControlFlow 0 31) 30) anon26_correct))))))
(let ((anon45_Else_correct  (=> (<= (len a_2@@7) (+ i@@6 3)) (=> (and (|access#trigger_19410| Heap@@32 (access a_2@@7 i@@6)) (= (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@32) null (access a_2@@7 i@@6)) (FrameFragment_19373 (ite (= (mod i@@6 2) 0) (CombineFrames (FrameFragment_1721 (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@32) (loc a_2@@7 i@@6) val)) (FrameFragment_1721 (select (|PolymorphicMapType_31285_19407_1721#PolymorphicMapType_31285| Heap@@32) (loc a_2@@7 (+ i@@6 1)) val))) EmptyFrame)))) (and (=> (= (ControlFlow 0 34) 31) anon54_Then_correct) (=> (= (ControlFlow 0 34) 33) anon54_Else_correct))))))
(let ((anon42_Else_correct  (and (=> (= (ControlFlow 0 73) (- 0 74)) (forall ((j_1 Int) (j_1_1 Int) ) (!  (=> (and (and (and (and (not (= j_1 j_1_1)) (and (>= j_1 0) (and (< j_1 (len a_2@@7)) (= (mod j_1 2) 0)))) (and (>= j_1_1 0) (and (< j_1_1 (len a_2@@7)) (= (mod j_1_1 2) 0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@7 a_2@@7)) (not (= j_1 j_1_1))))
 :qid |stdinbpl.446:17|
 :skolemid |30|
 :pattern ( (neverTriggered1 j_1) (neverTriggered1 j_1_1))
))) (=> (forall ((j_1@@0 Int) (j_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_1@@0 j_1_1@@0)) (and (>= j_1@@0 0) (and (< j_1@@0 (len a_2@@7)) (= (mod j_1@@0 2) 0)))) (and (>= j_1_1@@0 0) (and (< j_1_1@@0 (len a_2@@7)) (= (mod j_1_1@@0 2) 0)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= a_2@@7 a_2@@7)) (not (= j_1@@0 j_1_1@@0))))
 :qid |stdinbpl.446:17|
 :skolemid |30|
 :pattern ( (neverTriggered1 j_1@@0) (neverTriggered1 j_1_1@@0))
)) (=> (forall ((j_1@@1 Int) ) (!  (=> (and (and (>= j_1@@1 0) (and (< j_1@@1 (len a_2@@7)) (= (mod j_1@@1 2) 0))) (< NoPerm FullPerm)) (and (= (invRecv1 a_2@@7 j_1@@1) j_1@@1) (qpRange1 a_2@@7 j_1@@1)))
 :qid |stdinbpl.452:22|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_31285_19410_19411#PolymorphicMapType_31285| Heap@@32) null (access a_2@@7 j_1@@1)))
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| ZeroMask) null (access a_2@@7 j_1@@1)))
)) (=> (and (forall ((a_1_1_1 T@IArrayDomainType) (i_1_1_1 Int) ) (!  (=> (and (and (and (>= (invRecv1 a_1_1_1 i_1_1_1) 0) (and (< (invRecv1 a_1_1_1 i_1_1_1) (len a_2@@7)) (= (mod (invRecv1 a_1_1_1 i_1_1_1) 2) 0))) (< NoPerm FullPerm)) (qpRange1 a_1_1_1 i_1_1_1)) (and (= a_2@@7 a_1_1_1) (= (invRecv1 a_1_1_1 i_1_1_1) i_1_1_1)))
 :qid |stdinbpl.456:22|
 :skolemid |32|
 :pattern ( (invRecv1 a_1_1_1 i_1_1_1))
)) (forall ((a_1_1_1@@0 T@IArrayDomainType) (i_1_1_1@@0 Int) ) (!  (=> (and (and (and (>= (invRecv1 a_1_1_1@@0 i_1_1_1@@0) 0) (and (< (invRecv1 a_1_1_1@@0 i_1_1_1@@0) (len a_2@@7)) (= (mod (invRecv1 a_1_1_1@@0 i_1_1_1@@0) 2) 0))) (< NoPerm FullPerm)) (qpRange1 a_1_1_1@@0 i_1_1_1@@0)) (and (=> (< NoPerm FullPerm) (and (= a_2@@7 a_1_1_1@@0) (= (invRecv1 a_1_1_1@@0 i_1_1_1@@0) i_1_1_1@@0))) (= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) null (access a_1_1_1@@0 i_1_1_1@@0)) (+ (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| ZeroMask) null (access a_1_1_1@@0 i_1_1_1@@0)) FullPerm))))
 :qid |stdinbpl.462:22|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) null (access a_1_1_1@@0 i_1_1_1@@0)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9@@19 T@Ref) (f_5@@19 T@Field_34810_1721) ) (!  (=> (or (or (not (= o_9@@19 null)) (not (IsPredicateField_19407_1721 f_5@@19))) (not (= (getPredWandId_19407_1721 f_5@@19) 0))) (= (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| ZeroMask) o_9@@19 f_5@@19) (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| QPMask@0) o_9@@19 f_5@@19)))
 :qid |stdinbpl.468:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| ZeroMask) o_9@@19 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_31306_19407_1721#PolymorphicMapType_31306| QPMask@0) o_9@@19 f_5@@19))
)) (forall ((o_9@@20 T@Ref) (f_5@@20 T@Field_19407_19411) ) (!  (=> (or (or (not (= o_9@@20 null)) (not (IsPredicateField_19407_106282 f_5@@20))) (not (= (getPredWandId_19407_19411 f_5@@20) 0))) (= (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| ZeroMask) o_9@@20 f_5@@20) (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| QPMask@0) o_9@@20 f_5@@20)))
 :qid |stdinbpl.468:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| ZeroMask) o_9@@20 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_31306_19407_19411#PolymorphicMapType_31306| QPMask@0) o_9@@20 f_5@@20))
))) (forall ((o_9@@21 T@Ref) (f_5@@21 T@Field_31345_53) ) (!  (=> (or (or (not (= o_9@@21 null)) (not (IsPredicateField_19407_53 f_5@@21))) (not (= (getPredWandId_19407_53 f_5@@21) 0))) (= (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| ZeroMask) o_9@@21 f_5@@21) (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| QPMask@0) o_9@@21 f_5@@21)))
 :qid |stdinbpl.468:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| ZeroMask) o_9@@21 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_31306_19407_53#PolymorphicMapType_31306| QPMask@0) o_9@@21 f_5@@21))
))) (forall ((o_9@@22 T@Ref) (f_5@@22 T@Field_31358_31359) ) (!  (=> (or (or (not (= o_9@@22 null)) (not (IsPredicateField_19407_31359 f_5@@22))) (not (= (getPredWandId_19407_31359 f_5@@22) 0))) (= (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| ZeroMask) o_9@@22 f_5@@22) (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| QPMask@0) o_9@@22 f_5@@22)))
 :qid |stdinbpl.468:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| ZeroMask) o_9@@22 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_31306_19407_31359#PolymorphicMapType_31306| QPMask@0) o_9@@22 f_5@@22))
))) (forall ((o_9@@23 T@Ref) (f_5@@23 T@Field_19407_34875) ) (!  (=> (or (or (not (= o_9@@23 null)) (not (IsPredicateField_19407_115743 f_5@@23))) (not (= (getPredWandId_19407_122203 f_5@@23) 0))) (= (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| ZeroMask) o_9@@23 f_5@@23) (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| QPMask@0) o_9@@23 f_5@@23)))
 :qid |stdinbpl.468:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| ZeroMask) o_9@@23 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_31306_19407_113871#PolymorphicMapType_31306| QPMask@0) o_9@@23 f_5@@23))
))) (forall ((o_9@@24 T@Ref) (f_5@@24 T@Field_19410_1721) ) (!  (=> (or (or (not (= o_9@@24 null)) (not (IsPredicateField_19410_1721 f_5@@24))) (not (= (getPredWandId_19410_1721 f_5@@24) 0))) (= (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| ZeroMask) o_9@@24 f_5@@24) (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| QPMask@0) o_9@@24 f_5@@24)))
 :qid |stdinbpl.468:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| ZeroMask) o_9@@24 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_31306_19410_1721#PolymorphicMapType_31306| QPMask@0) o_9@@24 f_5@@24))
))) (forall ((o_9@@25 T@Ref) (f_5@@25 T@Field_34857_34858) ) (!  (=> (or (or (not (= o_9@@25 null)) (not (IsPredicateField_19410_19411 f_5@@25))) (not (= (getPredWandId_19410_19411 f_5@@25) 0))) (= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| ZeroMask) o_9@@25 f_5@@25) (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) o_9@@25 f_5@@25)))
 :qid |stdinbpl.468:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| ZeroMask) o_9@@25 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) o_9@@25 f_5@@25))
))) (forall ((o_9@@26 T@Ref) (f_5@@26 T@Field_19410_53) ) (!  (=> (or (or (not (= o_9@@26 null)) (not (IsPredicateField_19410_53 f_5@@26))) (not (= (getPredWandId_19410_53 f_5@@26) 0))) (= (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| ZeroMask) o_9@@26 f_5@@26) (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| QPMask@0) o_9@@26 f_5@@26)))
 :qid |stdinbpl.468:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| ZeroMask) o_9@@26 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_31306_19410_53#PolymorphicMapType_31306| QPMask@0) o_9@@26 f_5@@26))
))) (forall ((o_9@@27 T@Ref) (f_5@@27 T@Field_19410_31359) ) (!  (=> (or (or (not (= o_9@@27 null)) (not (IsPredicateField_19410_31359 f_5@@27))) (not (= (getPredWandId_19410_31359 f_5@@27) 0))) (= (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| ZeroMask) o_9@@27 f_5@@27) (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| QPMask@0) o_9@@27 f_5@@27)))
 :qid |stdinbpl.468:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| ZeroMask) o_9@@27 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_31306_19410_31359#PolymorphicMapType_31306| QPMask@0) o_9@@27 f_5@@27))
))) (forall ((o_9@@28 T@Ref) (f_5@@28 T@Field_34870_34875) ) (!  (=> (or (or (not (= o_9@@28 null)) (not (IsPredicateField_19410_116574 f_5@@28))) (not (= (getPredWandId_19410_123012 f_5@@28) 0))) (= (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| ZeroMask) o_9@@28 f_5@@28) (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| QPMask@0) o_9@@28 f_5@@28)))
 :qid |stdinbpl.468:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| ZeroMask) o_9@@28 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_31306_19410_114282#PolymorphicMapType_31306| QPMask@0) o_9@@28 f_5@@28))
))) (forall ((a_1_1_1@@1 T@IArrayDomainType) (i_1_1_1@@1 Int) ) (!  (=> (not (and (and (and (>= (invRecv1 a_1_1_1@@1 i_1_1_1@@1) 0) (and (< (invRecv1 a_1_1_1@@1 i_1_1_1@@1) (len a_2@@7)) (= (mod (invRecv1 a_1_1_1@@1 i_1_1_1@@1) 2) 0))) (< NoPerm FullPerm)) (qpRange1 a_1_1_1@@1 i_1_1_1@@1))) (= (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) null (access a_1_1_1@@1 i_1_1_1@@1)) (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| ZeroMask) null (access a_1_1_1@@1 i_1_1_1@@1))))
 :qid |stdinbpl.472:22|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_31306_19410_19411#PolymorphicMapType_31306| QPMask@0) null (access a_1_1_1@@1 i_1_1_1@@1)))
))) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (and (=> (= (ControlFlow 0 73) 72) anon43_Then_correct) (=> (= (ControlFlow 0 73) 62) anon45_Then_correct)) (=> (= (ControlFlow 0 73) 34) anon45_Else_correct)))))))))
(let ((anon42_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and AssumePermUpperBound (>= i@@6 0)) (=> (and (and (< (+ i@@6 1) (len a_2@@7)) (state Heap@@32 ZeroMask)) (and (= (mod i@@6 2) 0) (state Heap@@32 ZeroMask))) (and (=> (= (ControlFlow 0 75) 1) anon42_Then_correct) (=> (= (ControlFlow 0 75) 73) anon42_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 76) 75) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
