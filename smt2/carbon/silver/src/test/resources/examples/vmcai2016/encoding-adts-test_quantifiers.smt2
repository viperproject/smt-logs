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
(declare-sort T@Field_4043_53 0)
(declare-sort T@Field_4056_4057 0)
(declare-sort T@Field_4043_10918 0)
(declare-sort T@Field_4043_10785 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4004 0)) (((PolymorphicMapType_4004 (|PolymorphicMapType_4004_4043_53#PolymorphicMapType_4004| (Array T@Ref T@Field_4043_53 Real)) (|PolymorphicMapType_4004_4043_4057#PolymorphicMapType_4004| (Array T@Ref T@Field_4056_4057 Real)) (|PolymorphicMapType_4004_4043_10785#PolymorphicMapType_4004| (Array T@Ref T@Field_4043_10785 Real)) (|PolymorphicMapType_4004_4043_14479#PolymorphicMapType_4004| (Array T@Ref T@Field_4043_10918 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4532 0)) (((PolymorphicMapType_4532 (|PolymorphicMapType_4532_4043_53#PolymorphicMapType_4532| (Array T@Ref T@Field_4043_53 Bool)) (|PolymorphicMapType_4532_4043_4057#PolymorphicMapType_4532| (Array T@Ref T@Field_4056_4057 Bool)) (|PolymorphicMapType_4532_4043_10785#PolymorphicMapType_4532| (Array T@Ref T@Field_4043_10785 Bool)) (|PolymorphicMapType_4532_4043_11898#PolymorphicMapType_4532| (Array T@Ref T@Field_4043_10918 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3983 0)) (((PolymorphicMapType_3983 (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| (Array T@Ref T@Field_4043_53 Bool)) (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| (Array T@Ref T@Field_4056_4057 T@Ref)) (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| (Array T@Ref T@Field_4043_10918 T@PolymorphicMapType_4532)) (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| (Array T@Ref T@Field_4043_10785 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_4043_53)
(declare-fun type_Nil () Int)
(declare-fun type_Cons () Int)
(declare-fun succHeap (T@PolymorphicMapType_3983 T@PolymorphicMapType_3983) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3983 T@PolymorphicMapType_3983) Bool)
(declare-fun state (T@PolymorphicMapType_3983 T@PolymorphicMapType_4004) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4004) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4532)
(declare-sort T@listDomainType 0)
(declare-fun vtype (T@listDomainType) Int)
(declare-fun Nil () T@listDomainType)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3983 T@PolymorphicMapType_3983 T@PolymorphicMapType_4004) Bool)
(declare-fun IsPredicateField_4043_10876 (T@Field_4043_10785) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4043 (T@Field_4043_10785) T@Field_4043_10918)
(declare-fun HasDirectPerm_4043_10849 (T@PolymorphicMapType_4004 T@Ref T@Field_4043_10785) Bool)
(declare-fun IsWandField_4043_12425 (T@Field_4043_10785) Bool)
(declare-fun WandMaskField_4043 (T@Field_4043_10785) T@Field_4043_10918)
(declare-fun is_Nil (T@listDomainType) Bool)
(declare-fun is_Cons (T@listDomainType) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_3983)
(declare-fun ZeroMask () T@PolymorphicMapType_4004)
(declare-fun InsidePredicate_4043_4043 (T@Field_4043_10785 T@FrameType T@Field_4043_10785 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4043_15388 (T@Field_4043_10918) Bool)
(declare-fun IsWandField_4043_15404 (T@Field_4043_10918) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4043_4057 (T@Field_4056_4057) Bool)
(declare-fun IsWandField_4043_4057 (T@Field_4056_4057) Bool)
(declare-fun IsPredicateField_4043_53 (T@Field_4043_53) Bool)
(declare-fun IsWandField_4043_53 (T@Field_4043_53) Bool)
(declare-fun HasDirectPerm_4043_15759 (T@PolymorphicMapType_4004 T@Ref T@Field_4043_10918) Bool)
(declare-fun HasDirectPerm_4043_4057 (T@PolymorphicMapType_4004 T@Ref T@Field_4056_4057) Bool)
(declare-fun HasDirectPerm_4043_53 (T@PolymorphicMapType_4004 T@Ref T@Field_4043_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4004 T@PolymorphicMapType_4004 T@PolymorphicMapType_4004) Bool)
(declare-fun Cons (Int T@listDomainType) T@listDomainType)
(declare-fun head_Cons (T@listDomainType) Int)
(declare-fun tail_Cons (T@listDomainType) T@listDomainType)
(assert (distinct type_Nil type_Cons)
)
(assert (forall ((Heap0 T@PolymorphicMapType_3983) (Heap1 T@PolymorphicMapType_3983) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3983) (Mask T@PolymorphicMapType_4004) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3983) (Heap1@@0 T@PolymorphicMapType_3983) (Heap2 T@PolymorphicMapType_3983) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4043_10918) ) (!  (not (select (|PolymorphicMapType_4532_4043_11898#PolymorphicMapType_4532| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4532_4043_11898#PolymorphicMapType_4532| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4043_10785) ) (!  (not (select (|PolymorphicMapType_4532_4043_10785#PolymorphicMapType_4532| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4532_4043_10785#PolymorphicMapType_4532| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4056_4057) ) (!  (not (select (|PolymorphicMapType_4532_4043_4057#PolymorphicMapType_4532| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4532_4043_4057#PolymorphicMapType_4532| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4043_53) ) (!  (not (select (|PolymorphicMapType_4532_4043_53#PolymorphicMapType_4532| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4532_4043_53#PolymorphicMapType_4532| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (= (vtype Nil) type_Nil))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3983) (ExhaleHeap T@PolymorphicMapType_3983) (Mask@@0 T@PolymorphicMapType_4004) (pm_f_5 T@Field_4043_10785) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4043_10849 Mask@@0 null pm_f_5) (IsPredicateField_4043_10876 pm_f_5)) (= (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@0) null (PredicateMaskField_4043 pm_f_5)) (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| ExhaleHeap) null (PredicateMaskField_4043 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4043_10876 pm_f_5) (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| ExhaleHeap) null (PredicateMaskField_4043 pm_f_5)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3983) (ExhaleHeap@@0 T@PolymorphicMapType_3983) (Mask@@1 T@PolymorphicMapType_4004) (pm_f_5@@0 T@Field_4043_10785) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4043_10849 Mask@@1 null pm_f_5@@0) (IsWandField_4043_12425 pm_f_5@@0)) (= (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@1) null (WandMaskField_4043 pm_f_5@@0)) (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| ExhaleHeap@@0) null (WandMaskField_4043 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4043_12425 pm_f_5@@0) (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| ExhaleHeap@@0) null (WandMaskField_4043 pm_f_5@@0)))
)))
(assert (forall ((xs T@listDomainType) ) (! (= (= (vtype xs) type_Nil) (is_Nil xs))
 :qid |stdinbpl.238:15|
 :skolemid |26|
 :pattern ( (vtype xs))
 :pattern ( (is_Nil xs))
)))
(assert (forall ((xs@@0 T@listDomainType) ) (! (= (= (vtype xs@@0) type_Cons) (is_Cons xs@@0))
 :qid |stdinbpl.244:15|
 :skolemid |27|
 :pattern ( (vtype xs@@0))
 :pattern ( (is_Cons xs@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3983) (ExhaleHeap@@1 T@PolymorphicMapType_3983) (Mask@@2 T@PolymorphicMapType_4004) (pm_f_5@@1 T@Field_4043_10785) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4043_10849 Mask@@2 null pm_f_5@@1) (IsPredicateField_4043_10876 pm_f_5@@1)) (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_4043_53) ) (!  (=> (select (|PolymorphicMapType_4532_4043_53#PolymorphicMapType_4532| (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@2) null (PredicateMaskField_4043 pm_f_5@@1))) o2_5 f_16) (= (select (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| Heap@@2) o2_5 f_16) (select (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| ExhaleHeap@@1) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| ExhaleHeap@@1) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_4056_4057) ) (!  (=> (select (|PolymorphicMapType_4532_4043_4057#PolymorphicMapType_4532| (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@2) null (PredicateMaskField_4043 pm_f_5@@1))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| Heap@@2) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| ExhaleHeap@@1) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| ExhaleHeap@@1) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_4043_10785) ) (!  (=> (select (|PolymorphicMapType_4532_4043_10785#PolymorphicMapType_4532| (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@2) null (PredicateMaskField_4043 pm_f_5@@1))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| Heap@@2) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| ExhaleHeap@@1) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| ExhaleHeap@@1) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_4043_10918) ) (!  (=> (select (|PolymorphicMapType_4532_4043_11898#PolymorphicMapType_4532| (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@2) null (PredicateMaskField_4043 pm_f_5@@1))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@2) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| ExhaleHeap@@1) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| ExhaleHeap@@1) o2_5@@2 f_16@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4043_10876 pm_f_5@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3983) (ExhaleHeap@@2 T@PolymorphicMapType_3983) (Mask@@3 T@PolymorphicMapType_4004) (pm_f_5@@2 T@Field_4043_10785) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4043_10849 Mask@@3 null pm_f_5@@2) (IsWandField_4043_12425 pm_f_5@@2)) (and (and (and (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_4043_53) ) (!  (=> (select (|PolymorphicMapType_4532_4043_53#PolymorphicMapType_4532| (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@3) null (WandMaskField_4043 pm_f_5@@2))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| Heap@@3) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| ExhaleHeap@@2) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| ExhaleHeap@@2) o2_5@@3 f_16@@3))
)) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_4056_4057) ) (!  (=> (select (|PolymorphicMapType_4532_4043_4057#PolymorphicMapType_4532| (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@3) null (WandMaskField_4043 pm_f_5@@2))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| Heap@@3) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| ExhaleHeap@@2) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| ExhaleHeap@@2) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_4043_10785) ) (!  (=> (select (|PolymorphicMapType_4532_4043_10785#PolymorphicMapType_4532| (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@3) null (WandMaskField_4043 pm_f_5@@2))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| Heap@@3) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| ExhaleHeap@@2) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| ExhaleHeap@@2) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_4043_10918) ) (!  (=> (select (|PolymorphicMapType_4532_4043_11898#PolymorphicMapType_4532| (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@3) null (WandMaskField_4043 pm_f_5@@2))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@3) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| ExhaleHeap@@2) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| ExhaleHeap@@2) o2_5@@6 f_16@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4043_12425 pm_f_5@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3983) (ExhaleHeap@@3 T@PolymorphicMapType_3983) (Mask@@4 T@PolymorphicMapType_4004) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| Heap@@4) o_12 $allocated) (select (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| ExhaleHeap@@3) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| ExhaleHeap@@3) o_12 $allocated))
)))
(assert (forall ((p T@Field_4043_10785) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4043_4043 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4043_4043 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3983) (ExhaleHeap@@4 T@PolymorphicMapType_3983) (Mask@@5 T@PolymorphicMapType_4004) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4004) (o_2@@3 T@Ref) (f_4@@3 T@Field_4043_10918) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4004_4043_14479#PolymorphicMapType_4004| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4043_15388 f_4@@3))) (not (IsWandField_4043_15404 f_4@@3))) (<= (select (|PolymorphicMapType_4004_4043_14479#PolymorphicMapType_4004| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4004_4043_14479#PolymorphicMapType_4004| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4004) (o_2@@4 T@Ref) (f_4@@4 T@Field_4043_10785) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4004_4043_10785#PolymorphicMapType_4004| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4043_10876 f_4@@4))) (not (IsWandField_4043_12425 f_4@@4))) (<= (select (|PolymorphicMapType_4004_4043_10785#PolymorphicMapType_4004| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4004_4043_10785#PolymorphicMapType_4004| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4004) (o_2@@5 T@Ref) (f_4@@5 T@Field_4056_4057) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4004_4043_4057#PolymorphicMapType_4004| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4043_4057 f_4@@5))) (not (IsWandField_4043_4057 f_4@@5))) (<= (select (|PolymorphicMapType_4004_4043_4057#PolymorphicMapType_4004| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4004_4043_4057#PolymorphicMapType_4004| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4004) (o_2@@6 T@Ref) (f_4@@6 T@Field_4043_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_4004_4043_53#PolymorphicMapType_4004| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4043_53 f_4@@6))) (not (IsWandField_4043_53 f_4@@6))) (<= (select (|PolymorphicMapType_4004_4043_53#PolymorphicMapType_4004| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_4004_4043_53#PolymorphicMapType_4004| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4004) (o_2@@7 T@Ref) (f_4@@7 T@Field_4043_10918) ) (! (= (HasDirectPerm_4043_15759 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_4004_4043_14479#PolymorphicMapType_4004| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4043_15759 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4004) (o_2@@8 T@Ref) (f_4@@8 T@Field_4043_10785) ) (! (= (HasDirectPerm_4043_10849 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_4004_4043_10785#PolymorphicMapType_4004| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4043_10849 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4004) (o_2@@9 T@Ref) (f_4@@9 T@Field_4056_4057) ) (! (= (HasDirectPerm_4043_4057 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4004_4043_4057#PolymorphicMapType_4004| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4043_4057 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4004) (o_2@@10 T@Ref) (f_4@@10 T@Field_4043_53) ) (! (= (HasDirectPerm_4043_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4004_4043_53#PolymorphicMapType_4004| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4043_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3983) (ExhaleHeap@@5 T@PolymorphicMapType_3983) (Mask@@14 T@PolymorphicMapType_4004) (o_12@@0 T@Ref) (f_16@@7 T@Field_4043_10918) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_4043_15759 Mask@@14 o_12@@0 f_16@@7) (= (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@6) o_12@@0 f_16@@7) (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| ExhaleHeap@@5) o_12@@0 f_16@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| ExhaleHeap@@5) o_12@@0 f_16@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3983) (ExhaleHeap@@6 T@PolymorphicMapType_3983) (Mask@@15 T@PolymorphicMapType_4004) (o_12@@1 T@Ref) (f_16@@8 T@Field_4043_10785) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_4043_10849 Mask@@15 o_12@@1 f_16@@8) (= (select (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| Heap@@7) o_12@@1 f_16@@8) (select (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| ExhaleHeap@@6) o_12@@1 f_16@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| ExhaleHeap@@6) o_12@@1 f_16@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3983) (ExhaleHeap@@7 T@PolymorphicMapType_3983) (Mask@@16 T@PolymorphicMapType_4004) (o_12@@2 T@Ref) (f_16@@9 T@Field_4056_4057) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_4043_4057 Mask@@16 o_12@@2 f_16@@9) (= (select (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| Heap@@8) o_12@@2 f_16@@9) (select (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| ExhaleHeap@@7) o_12@@2 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| ExhaleHeap@@7) o_12@@2 f_16@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3983) (ExhaleHeap@@8 T@PolymorphicMapType_3983) (Mask@@17 T@PolymorphicMapType_4004) (o_12@@3 T@Ref) (f_16@@10 T@Field_4043_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_4043_53 Mask@@17 o_12@@3 f_16@@10) (= (select (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| Heap@@9) o_12@@3 f_16@@10) (select (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| ExhaleHeap@@8) o_12@@3 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| ExhaleHeap@@8) o_12@@3 f_16@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4043_10918) ) (! (= (select (|PolymorphicMapType_4004_4043_14479#PolymorphicMapType_4004| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4004_4043_14479#PolymorphicMapType_4004| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_4043_10785) ) (! (= (select (|PolymorphicMapType_4004_4043_10785#PolymorphicMapType_4004| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4004_4043_10785#PolymorphicMapType_4004| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_4056_4057) ) (! (= (select (|PolymorphicMapType_4004_4043_4057#PolymorphicMapType_4004| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4004_4043_4057#PolymorphicMapType_4004| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4043_53) ) (! (= (select (|PolymorphicMapType_4004_4043_53#PolymorphicMapType_4004| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4004_4043_53#PolymorphicMapType_4004| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4004) (SummandMask1 T@PolymorphicMapType_4004) (SummandMask2 T@PolymorphicMapType_4004) (o_2@@15 T@Ref) (f_4@@15 T@Field_4043_10918) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4004_4043_14479#PolymorphicMapType_4004| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_4004_4043_14479#PolymorphicMapType_4004| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_4004_4043_14479#PolymorphicMapType_4004| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4004_4043_14479#PolymorphicMapType_4004| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4004_4043_14479#PolymorphicMapType_4004| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4004_4043_14479#PolymorphicMapType_4004| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4004) (SummandMask1@@0 T@PolymorphicMapType_4004) (SummandMask2@@0 T@PolymorphicMapType_4004) (o_2@@16 T@Ref) (f_4@@16 T@Field_4043_10785) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4004_4043_10785#PolymorphicMapType_4004| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_4004_4043_10785#PolymorphicMapType_4004| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_4004_4043_10785#PolymorphicMapType_4004| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4004_4043_10785#PolymorphicMapType_4004| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4004_4043_10785#PolymorphicMapType_4004| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4004_4043_10785#PolymorphicMapType_4004| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4004) (SummandMask1@@1 T@PolymorphicMapType_4004) (SummandMask2@@1 T@PolymorphicMapType_4004) (o_2@@17 T@Ref) (f_4@@17 T@Field_4056_4057) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4004_4043_4057#PolymorphicMapType_4004| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_4004_4043_4057#PolymorphicMapType_4004| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_4004_4043_4057#PolymorphicMapType_4004| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4004_4043_4057#PolymorphicMapType_4004| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4004_4043_4057#PolymorphicMapType_4004| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4004_4043_4057#PolymorphicMapType_4004| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4004) (SummandMask1@@2 T@PolymorphicMapType_4004) (SummandMask2@@2 T@PolymorphicMapType_4004) (o_2@@18 T@Ref) (f_4@@18 T@Field_4043_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4004_4043_53#PolymorphicMapType_4004| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_4004_4043_53#PolymorphicMapType_4004| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_4004_4043_53#PolymorphicMapType_4004| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4004_4043_53#PolymorphicMapType_4004| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4004_4043_53#PolymorphicMapType_4004| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4004_4043_53#PolymorphicMapType_4004| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((head_1 Int) (tail_1 T@listDomainType) ) (! (= (vtype (Cons head_1 tail_1)) type_Cons)
 :qid |stdinbpl.226:15|
 :skolemid |24|
 :pattern ( (vtype (Cons head_1 tail_1)))
)))
(assert (forall ((xs@@1 T@listDomainType) ) (!  (or (= (vtype xs@@1) type_Nil) (= (vtype xs@@1) type_Cons))
 :qid |stdinbpl.232:15|
 :skolemid |25|
 :pattern ( (vtype xs@@1))
)))
(assert (forall ((head_1@@0 Int) (tail_1@@0 T@listDomainType) ) (!  (and (= (head_Cons (Cons head_1@@0 tail_1@@0)) head_1@@0) (= (tail_Cons (Cons head_1@@0 tail_1@@0)) tail_1@@0))
 :qid |stdinbpl.211:15|
 :skolemid |22|
 :pattern ( (Cons head_1@@0 tail_1@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3983) (o_11 T@Ref) (f_17 T@Field_4043_10785) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_3983 (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| Heap@@10) (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| Heap@@10) (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@10) (store (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| Heap@@10) o_11 f_17 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3983 (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| Heap@@10) (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| Heap@@10) (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@10) (store (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| Heap@@10) o_11 f_17 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3983) (o_11@@0 T@Ref) (f_17@@0 T@Field_4043_10918) (v@@0 T@PolymorphicMapType_4532) ) (! (succHeap Heap@@11 (PolymorphicMapType_3983 (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| Heap@@11) (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| Heap@@11) (store (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@11) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3983 (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| Heap@@11) (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| Heap@@11) (store (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@11) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3983) (o_11@@1 T@Ref) (f_17@@1 T@Field_4056_4057) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_3983 (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| Heap@@12) (store (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| Heap@@12) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@12) (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3983 (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| Heap@@12) (store (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| Heap@@12) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@12) (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3983) (o_11@@2 T@Ref) (f_17@@2 T@Field_4043_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_3983 (store (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| Heap@@13) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| Heap@@13) (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@13) (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3983 (store (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| Heap@@13) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| Heap@@13) (|PolymorphicMapType_3983_4043_10962#PolymorphicMapType_3983| Heap@@13) (|PolymorphicMapType_3983_4043_10785#PolymorphicMapType_3983| Heap@@13)))
)))
(assert (forall ((xs@@2 T@listDomainType) ) (!  (=> (is_Cons xs@@2) (= xs@@2 (Cons (head_Cons xs@@2) (tail_Cons xs@@2))))
 :qid |stdinbpl.217:15|
 :skolemid |23|
 :pattern ( (head_Cons xs@@2))
 :pattern ( (tail_Cons xs@@2))
)))
(assert (forall ((o_11@@3 T@Ref) (f_10 T@Field_4056_4057) (Heap@@14 T@PolymorphicMapType_3983) ) (!  (=> (select (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| Heap@@14) o_11@@3 $allocated) (select (|PolymorphicMapType_3983_2430_53#PolymorphicMapType_3983| Heap@@14) (select (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| Heap@@14) o_11@@3 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3983_2433_2434#PolymorphicMapType_3983| Heap@@14) o_11@@3 f_10))
)))
(assert (forall ((p@@1 T@Field_4043_10785) (v_1@@0 T@FrameType) (q T@Field_4043_10785) (w@@0 T@FrameType) (r T@Field_4043_10785) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4043_4043 p@@1 v_1@@0 q w@@0) (InsidePredicate_4043_4043 q w@@0 r u)) (InsidePredicate_4043_4043 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4043_4043 p@@1 v_1@@0 q w@@0) (InsidePredicate_4043_4043 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun head1_1 () Int)
(declare-fun tail1_1 () T@listDomainType)
(declare-fun head2_1 () Int)
(declare-fun tail2_1 () T@listDomainType)
(declare-fun Heap@@15 () T@PolymorphicMapType_3983)
(declare-fun xs_1_2 () T@listDomainType)
(declare-fun head_1_1 () Int)
(declare-fun tail_1_1 () T@listDomainType)
(set-info :boogie-vc-id test_quantifiers)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon15_Else_correct true))
(let ((anon15_Then_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (= (= (Cons head1_1 tail1_1) (Cons head2_1 tail2_1))  (and (= head1_1 head2_1) (= tail1_1 tail2_1))))))
(let ((anon14_Then_correct true))
(let ((anon12_Else_correct  (=> (and (forall ((head_2_1 Int) (tail_2_1 T@listDomainType) (xs_2_1 T@listDomainType) ) (!  (=> (is_Cons xs_2_1) (=  (and (= head_2_1 (head_Cons xs_2_1)) (= tail_2_1 (tail_Cons xs_2_1))) (= (Cons head_2_1 tail_2_1) xs_2_1)))
 :qid |stdinbpl.331:20|
 :skolemid |28|
 :pattern ( (is_Cons xs_2_1) (Cons head_2_1 tail_2_1))
 :pattern ( (head_Cons xs_2_1) (Cons head_2_1 tail_2_1))
 :pattern ( (tail_Cons xs_2_1) (Cons head_2_1 tail_2_1))
)) (state Heap@@15 ZeroMask)) (and (and (=> (= (ControlFlow 0 10) 6) anon14_Then_correct) (=> (= (ControlFlow 0 10) 8) anon15_Then_correct)) (=> (= (ControlFlow 0 10) 9) anon15_Else_correct)))))
(let ((anon5_correct true))
(let ((anon13_Else_correct  (=> (and (not (is_Cons xs_1_2)) (= (ControlFlow 0 5) 2)) anon5_correct)))
(let ((anon13_Then_correct  (=> (is_Cons xs_1_2) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=  (and (= head_1_1 (head_Cons xs_1_2)) (= tail_1_1 (tail_Cons xs_1_2))) (= (Cons head_1_1 tail_1_1) xs_1_2))) (=> (=  (and (= head_1_1 (head_Cons xs_1_2)) (= tail_1_1 (tail_Cons xs_1_2))) (= (Cons head_1_1 tail_1_1) xs_1_2)) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (and (and (=> (= (ControlFlow 0 11) 1) anon11_Then_correct) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct)) (=> (= (ControlFlow 0 11) 3) anon13_Then_correct)) (=> (= (ControlFlow 0 11) 5) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 11) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid