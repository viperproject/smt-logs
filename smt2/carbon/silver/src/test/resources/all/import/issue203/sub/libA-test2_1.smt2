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
(declare-sort T@Field_2607_53 0)
(declare-sort T@Field_2620_2621 0)
(declare-sort T@Field_2607_6873 0)
(declare-sort T@Field_2607_6740 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_2568 0)) (((PolymorphicMapType_2568 (|PolymorphicMapType_2568_2607_53#PolymorphicMapType_2568| (Array T@Ref T@Field_2607_53 Real)) (|PolymorphicMapType_2568_2607_2621#PolymorphicMapType_2568| (Array T@Ref T@Field_2620_2621 Real)) (|PolymorphicMapType_2568_2607_6740#PolymorphicMapType_2568| (Array T@Ref T@Field_2607_6740 Real)) (|PolymorphicMapType_2568_2607_10434#PolymorphicMapType_2568| (Array T@Ref T@Field_2607_6873 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3096 0)) (((PolymorphicMapType_3096 (|PolymorphicMapType_3096_2607_53#PolymorphicMapType_3096| (Array T@Ref T@Field_2607_53 Bool)) (|PolymorphicMapType_3096_2607_2621#PolymorphicMapType_3096| (Array T@Ref T@Field_2620_2621 Bool)) (|PolymorphicMapType_3096_2607_6740#PolymorphicMapType_3096| (Array T@Ref T@Field_2607_6740 Bool)) (|PolymorphicMapType_3096_2607_7853#PolymorphicMapType_3096| (Array T@Ref T@Field_2607_6873 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_2547 0)) (((PolymorphicMapType_2547 (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| (Array T@Ref T@Field_2607_53 Bool)) (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| (Array T@Ref T@Field_2620_2621 T@Ref)) (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| (Array T@Ref T@Field_2607_6873 T@PolymorphicMapType_3096)) (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| (Array T@Ref T@Field_2607_6740 T@FrameType)) ) ) ))
(declare-fun b2_1 () Bool)
(declare-fun b1_1 () Bool)
(declare-fun succHeap (T@PolymorphicMapType_2547 T@PolymorphicMapType_2547) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_2547 T@PolymorphicMapType_2547) Bool)
(declare-fun state (T@PolymorphicMapType_2547 T@PolymorphicMapType_2568) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_2568) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3096)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_2547 T@PolymorphicMapType_2547 T@PolymorphicMapType_2568) Bool)
(declare-fun IsPredicateField_2607_6831 (T@Field_2607_6740) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2607 (T@Field_2607_6740) T@Field_2607_6873)
(declare-fun HasDirectPerm_2607_6804 (T@PolymorphicMapType_2568 T@Ref T@Field_2607_6740) Bool)
(declare-fun IsWandField_2607_8380 (T@Field_2607_6740) Bool)
(declare-fun WandMaskField_2607 (T@Field_2607_6740) T@Field_2607_6873)
(declare-fun dummyHeap () T@PolymorphicMapType_2547)
(declare-fun ZeroMask () T@PolymorphicMapType_2568)
(declare-fun $allocated () T@Field_2607_53)
(declare-fun InsidePredicate_2607_2607 (T@Field_2607_6740 T@FrameType T@Field_2607_6740 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2607_11343 (T@Field_2607_6873) Bool)
(declare-fun IsWandField_2607_11359 (T@Field_2607_6873) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2607_2621 (T@Field_2620_2621) Bool)
(declare-fun IsWandField_2607_2621 (T@Field_2620_2621) Bool)
(declare-fun IsPredicateField_2607_53 (T@Field_2607_53) Bool)
(declare-fun IsWandField_2607_53 (T@Field_2607_53) Bool)
(declare-fun HasDirectPerm_2607_11714 (T@PolymorphicMapType_2568 T@Ref T@Field_2607_6873) Bool)
(declare-fun HasDirectPerm_2607_2621 (T@PolymorphicMapType_2568 T@Ref T@Field_2620_2621) Bool)
(declare-fun HasDirectPerm_2607_53 (T@PolymorphicMapType_2568 T@Ref T@Field_2607_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_2568 T@PolymorphicMapType_2568 T@PolymorphicMapType_2568) Bool)
(assert b2_1)
(assert b1_1)
(assert (forall ((Heap0 T@PolymorphicMapType_2547) (Heap1 T@PolymorphicMapType_2547) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_2547) (Mask T@PolymorphicMapType_2568) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_2547) (Heap1@@0 T@PolymorphicMapType_2547) (Heap2 T@PolymorphicMapType_2547) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2607_6873) ) (!  (not (select (|PolymorphicMapType_3096_2607_7853#PolymorphicMapType_3096| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3096_2607_7853#PolymorphicMapType_3096| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2607_6740) ) (!  (not (select (|PolymorphicMapType_3096_2607_6740#PolymorphicMapType_3096| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3096_2607_6740#PolymorphicMapType_3096| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_2620_2621) ) (!  (not (select (|PolymorphicMapType_3096_2607_2621#PolymorphicMapType_3096| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3096_2607_2621#PolymorphicMapType_3096| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_2607_53) ) (!  (not (select (|PolymorphicMapType_3096_2607_53#PolymorphicMapType_3096| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3096_2607_53#PolymorphicMapType_3096| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_2547) (ExhaleHeap T@PolymorphicMapType_2547) (Mask@@0 T@PolymorphicMapType_2568) (pm_f T@Field_2607_6740) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2607_6804 Mask@@0 null pm_f) (IsPredicateField_2607_6831 pm_f)) (= (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@0) null (PredicateMaskField_2607 pm_f)) (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| ExhaleHeap) null (PredicateMaskField_2607 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2607_6831 pm_f) (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| ExhaleHeap) null (PredicateMaskField_2607 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_2547) (ExhaleHeap@@0 T@PolymorphicMapType_2547) (Mask@@1 T@PolymorphicMapType_2568) (pm_f@@0 T@Field_2607_6740) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2607_6804 Mask@@1 null pm_f@@0) (IsWandField_2607_8380 pm_f@@0)) (= (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@1) null (WandMaskField_2607 pm_f@@0)) (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| ExhaleHeap@@0) null (WandMaskField_2607 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_2607_8380 pm_f@@0) (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| ExhaleHeap@@0) null (WandMaskField_2607 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_2547) (ExhaleHeap@@1 T@PolymorphicMapType_2547) (Mask@@2 T@PolymorphicMapType_2568) (pm_f@@1 T@Field_2607_6740) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_2607_6804 Mask@@2 null pm_f@@1) (IsPredicateField_2607_6831 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_2607_53) ) (!  (=> (select (|PolymorphicMapType_3096_2607_53#PolymorphicMapType_3096| (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@2) null (PredicateMaskField_2607 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| Heap@@2) o2 f_2) (select (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_2620_2621) ) (!  (=> (select (|PolymorphicMapType_3096_2607_2621#PolymorphicMapType_3096| (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@2) null (PredicateMaskField_2607 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| Heap@@2) o2@@0 f_2@@0) (select (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_2607_6740) ) (!  (=> (select (|PolymorphicMapType_3096_2607_6740#PolymorphicMapType_3096| (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@2) null (PredicateMaskField_2607 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| Heap@@2) o2@@1 f_2@@1) (select (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_2607_6873) ) (!  (=> (select (|PolymorphicMapType_3096_2607_7853#PolymorphicMapType_3096| (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@2) null (PredicateMaskField_2607 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@2) o2@@2 f_2@@2) (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_2607_6831 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_2547) (ExhaleHeap@@2 T@PolymorphicMapType_2547) (Mask@@3 T@PolymorphicMapType_2568) (pm_f@@2 T@Field_2607_6740) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2607_6804 Mask@@3 null pm_f@@2) (IsWandField_2607_8380 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_2607_53) ) (!  (=> (select (|PolymorphicMapType_3096_2607_53#PolymorphicMapType_3096| (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@3) null (WandMaskField_2607 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| Heap@@3) o2@@3 f_2@@3) (select (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_2620_2621) ) (!  (=> (select (|PolymorphicMapType_3096_2607_2621#PolymorphicMapType_3096| (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@3) null (WandMaskField_2607 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| Heap@@3) o2@@4 f_2@@4) (select (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_2607_6740) ) (!  (=> (select (|PolymorphicMapType_3096_2607_6740#PolymorphicMapType_3096| (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@3) null (WandMaskField_2607 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| Heap@@3) o2@@5 f_2@@5) (select (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_2607_6873) ) (!  (=> (select (|PolymorphicMapType_3096_2607_7853#PolymorphicMapType_3096| (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@3) null (WandMaskField_2607 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@3) o2@@6 f_2@@6) (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_2607_8380 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_2547) (ExhaleHeap@@3 T@PolymorphicMapType_2547) (Mask@@4 T@PolymorphicMapType_2568) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| Heap@@4) o_1 $allocated) (select (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_2607_6740) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_2607_2607 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_2607_2607 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_2547) (ExhaleHeap@@4 T@PolymorphicMapType_2547) (Mask@@5 T@PolymorphicMapType_2568) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_2568) (o_2@@3 T@Ref) (f_4@@3 T@Field_2607_6873) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_2568_2607_10434#PolymorphicMapType_2568| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2607_11343 f_4@@3))) (not (IsWandField_2607_11359 f_4@@3))) (<= (select (|PolymorphicMapType_2568_2607_10434#PolymorphicMapType_2568| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_2568_2607_10434#PolymorphicMapType_2568| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_2568) (o_2@@4 T@Ref) (f_4@@4 T@Field_2607_6740) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_2568_2607_6740#PolymorphicMapType_2568| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2607_6831 f_4@@4))) (not (IsWandField_2607_8380 f_4@@4))) (<= (select (|PolymorphicMapType_2568_2607_6740#PolymorphicMapType_2568| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_2568_2607_6740#PolymorphicMapType_2568| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_2568) (o_2@@5 T@Ref) (f_4@@5 T@Field_2620_2621) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_2568_2607_2621#PolymorphicMapType_2568| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2607_2621 f_4@@5))) (not (IsWandField_2607_2621 f_4@@5))) (<= (select (|PolymorphicMapType_2568_2607_2621#PolymorphicMapType_2568| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_2568_2607_2621#PolymorphicMapType_2568| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_2568) (o_2@@6 T@Ref) (f_4@@6 T@Field_2607_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_2568_2607_53#PolymorphicMapType_2568| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_2607_53 f_4@@6))) (not (IsWandField_2607_53 f_4@@6))) (<= (select (|PolymorphicMapType_2568_2607_53#PolymorphicMapType_2568| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_2568_2607_53#PolymorphicMapType_2568| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_2568) (o_2@@7 T@Ref) (f_4@@7 T@Field_2607_6873) ) (! (= (HasDirectPerm_2607_11714 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_2568_2607_10434#PolymorphicMapType_2568| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2607_11714 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_2568) (o_2@@8 T@Ref) (f_4@@8 T@Field_2607_6740) ) (! (= (HasDirectPerm_2607_6804 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_2568_2607_6740#PolymorphicMapType_2568| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2607_6804 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_2568) (o_2@@9 T@Ref) (f_4@@9 T@Field_2620_2621) ) (! (= (HasDirectPerm_2607_2621 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_2568_2607_2621#PolymorphicMapType_2568| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2607_2621 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_2568) (o_2@@10 T@Ref) (f_4@@10 T@Field_2607_53) ) (! (= (HasDirectPerm_2607_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_2568_2607_53#PolymorphicMapType_2568| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2607_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_2547) (ExhaleHeap@@5 T@PolymorphicMapType_2547) (Mask@@14 T@PolymorphicMapType_2568) (o_1@@0 T@Ref) (f_2@@7 T@Field_2607_6873) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_2607_11714 Mask@@14 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@6) o_1@@0 f_2@@7) (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_2547) (ExhaleHeap@@6 T@PolymorphicMapType_2547) (Mask@@15 T@PolymorphicMapType_2568) (o_1@@1 T@Ref) (f_2@@8 T@Field_2607_6740) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_2607_6804 Mask@@15 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| Heap@@7) o_1@@1 f_2@@8) (select (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_2547) (ExhaleHeap@@7 T@PolymorphicMapType_2547) (Mask@@16 T@PolymorphicMapType_2568) (o_1@@2 T@Ref) (f_2@@9 T@Field_2620_2621) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_2607_2621 Mask@@16 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| Heap@@8) o_1@@2 f_2@@9) (select (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_2547) (ExhaleHeap@@8 T@PolymorphicMapType_2547) (Mask@@17 T@PolymorphicMapType_2568) (o_1@@3 T@Ref) (f_2@@10 T@Field_2607_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_2607_53 Mask@@17 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| Heap@@9) o_1@@3 f_2@@10) (select (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_2607_6873) ) (! (= (select (|PolymorphicMapType_2568_2607_10434#PolymorphicMapType_2568| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2568_2607_10434#PolymorphicMapType_2568| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_2607_6740) ) (! (= (select (|PolymorphicMapType_2568_2607_6740#PolymorphicMapType_2568| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2568_2607_6740#PolymorphicMapType_2568| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_2620_2621) ) (! (= (select (|PolymorphicMapType_2568_2607_2621#PolymorphicMapType_2568| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2568_2607_2621#PolymorphicMapType_2568| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2607_53) ) (! (= (select (|PolymorphicMapType_2568_2607_53#PolymorphicMapType_2568| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2568_2607_53#PolymorphicMapType_2568| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_2568) (SummandMask1 T@PolymorphicMapType_2568) (SummandMask2 T@PolymorphicMapType_2568) (o_2@@15 T@Ref) (f_4@@15 T@Field_2607_6873) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_2568_2607_10434#PolymorphicMapType_2568| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_2568_2607_10434#PolymorphicMapType_2568| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_2568_2607_10434#PolymorphicMapType_2568| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2568_2607_10434#PolymorphicMapType_2568| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2568_2607_10434#PolymorphicMapType_2568| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2568_2607_10434#PolymorphicMapType_2568| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_2568) (SummandMask1@@0 T@PolymorphicMapType_2568) (SummandMask2@@0 T@PolymorphicMapType_2568) (o_2@@16 T@Ref) (f_4@@16 T@Field_2607_6740) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_2568_2607_6740#PolymorphicMapType_2568| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_2568_2607_6740#PolymorphicMapType_2568| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_2568_2607_6740#PolymorphicMapType_2568| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2568_2607_6740#PolymorphicMapType_2568| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2568_2607_6740#PolymorphicMapType_2568| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2568_2607_6740#PolymorphicMapType_2568| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_2568) (SummandMask1@@1 T@PolymorphicMapType_2568) (SummandMask2@@1 T@PolymorphicMapType_2568) (o_2@@17 T@Ref) (f_4@@17 T@Field_2620_2621) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_2568_2607_2621#PolymorphicMapType_2568| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_2568_2607_2621#PolymorphicMapType_2568| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_2568_2607_2621#PolymorphicMapType_2568| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2568_2607_2621#PolymorphicMapType_2568| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2568_2607_2621#PolymorphicMapType_2568| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2568_2607_2621#PolymorphicMapType_2568| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_2568) (SummandMask1@@2 T@PolymorphicMapType_2568) (SummandMask2@@2 T@PolymorphicMapType_2568) (o_2@@18 T@Ref) (f_4@@18 T@Field_2607_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_2568_2607_53#PolymorphicMapType_2568| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_2568_2607_53#PolymorphicMapType_2568| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_2568_2607_53#PolymorphicMapType_2568| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2568_2607_53#PolymorphicMapType_2568| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2568_2607_53#PolymorphicMapType_2568| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2568_2607_53#PolymorphicMapType_2568| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_2547) (o T@Ref) (f_3 T@Field_2607_6740) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_2547 (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| Heap@@10) (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| Heap@@10) (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@10) (store (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| Heap@@10) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2547 (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| Heap@@10) (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| Heap@@10) (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@10) (store (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| Heap@@10) o f_3 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_2547) (o@@0 T@Ref) (f_3@@0 T@Field_2607_6873) (v@@0 T@PolymorphicMapType_3096) ) (! (succHeap Heap@@11 (PolymorphicMapType_2547 (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| Heap@@11) (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| Heap@@11) (store (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@11) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2547 (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| Heap@@11) (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| Heap@@11) (store (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@11) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_2547) (o@@1 T@Ref) (f_3@@1 T@Field_2620_2621) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_2547 (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| Heap@@12) (store (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| Heap@@12) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@12) (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2547 (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| Heap@@12) (store (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| Heap@@12) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@12) (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_2547) (o@@2 T@Ref) (f_3@@2 T@Field_2607_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_2547 (store (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| Heap@@13) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| Heap@@13) (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@13) (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2547 (store (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| Heap@@13) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| Heap@@13) (|PolymorphicMapType_2547_2607_6917#PolymorphicMapType_2547| Heap@@13) (|PolymorphicMapType_2547_2607_6740#PolymorphicMapType_2547| Heap@@13)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_2620_2621) (Heap@@14 T@PolymorphicMapType_2547) ) (!  (=> (select (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| Heap@@14) o@@3 $allocated) (select (|PolymorphicMapType_2547_1275_53#PolymorphicMapType_2547| Heap@@14) (select (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| Heap@@14) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_2547_1278_1279#PolymorphicMapType_2547| Heap@@14) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_2607_6740) (v_1@@0 T@FrameType) (q T@Field_2607_6740) (w@@0 T@FrameType) (r T@Field_2607_6740) (u T@FrameType) ) (!  (=> (and (InsidePredicate_2607_2607 p@@1 v_1@@0 q w@@0) (InsidePredicate_2607_2607 q w@@0 r u)) (InsidePredicate_2607_2607 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2607_2607 p@@1 v_1@@0 q w@@0) (InsidePredicate_2607_2607 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_2547)
(set-info :boogie-vc-id test2_1)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (state Heap@@15 ZeroMask) (=> (and AssumePermUpperBound (= (ControlFlow 0 2) (- 0 1))) b2_1))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
