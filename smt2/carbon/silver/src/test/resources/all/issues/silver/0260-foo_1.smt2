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
(declare-sort T@Field_2976_53 0)
(declare-sort T@Field_2989_2990 0)
(declare-sort T@Field_2976_7989 0)
(declare-sort T@Field_2976_7856 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_2937 0)) (((PolymorphicMapType_2937 (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| (Array T@Ref T@Field_2989_2990 Real)) (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| (Array T@Ref T@Field_2976_53 Real)) (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| (Array T@Ref T@Field_2976_7856 Real)) (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| (Array T@Ref T@Field_2976_7989 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3465 0)) (((PolymorphicMapType_3465 (|PolymorphicMapType_3465_2976_53#PolymorphicMapType_3465| (Array T@Ref T@Field_2976_53 Bool)) (|PolymorphicMapType_3465_2976_2990#PolymorphicMapType_3465| (Array T@Ref T@Field_2989_2990 Bool)) (|PolymorphicMapType_3465_2976_7856#PolymorphicMapType_3465| (Array T@Ref T@Field_2976_7856 Bool)) (|PolymorphicMapType_3465_2976_8969#PolymorphicMapType_3465| (Array T@Ref T@Field_2976_7989 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_2916 0)) (((PolymorphicMapType_2916 (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| (Array T@Ref T@Field_2976_53 Bool)) (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| (Array T@Ref T@Field_2989_2990 T@Ref)) (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| (Array T@Ref T@Field_2976_7989 T@PolymorphicMapType_3465)) (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| (Array T@Ref T@Field_2976_7856 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_2976_53)
(declare-fun f_7 () T@Field_2989_2990)
(declare-fun g () T@Field_2989_2990)
(declare-fun succHeap (T@PolymorphicMapType_2916 T@PolymorphicMapType_2916) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_2916 T@PolymorphicMapType_2916) Bool)
(declare-fun state (T@PolymorphicMapType_2916 T@PolymorphicMapType_2937) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_2937) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3465)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_2916 T@PolymorphicMapType_2916 T@PolymorphicMapType_2937) Bool)
(declare-fun IsPredicateField_2976_7947 (T@Field_2976_7856) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2976 (T@Field_2976_7856) T@Field_2976_7989)
(declare-fun HasDirectPerm_2976_7920 (T@PolymorphicMapType_2937 T@Ref T@Field_2976_7856) Bool)
(declare-fun IsWandField_2976_9496 (T@Field_2976_7856) Bool)
(declare-fun WandMaskField_2976 (T@Field_2976_7856) T@Field_2976_7989)
(declare-fun dummyHeap () T@PolymorphicMapType_2916)
(declare-fun ZeroMask () T@PolymorphicMapType_2937)
(declare-fun InsidePredicate_2976_2976 (T@Field_2976_7856 T@FrameType T@Field_2976_7856 T@FrameType) Bool)
(declare-fun IsPredicateField_1666_1667 (T@Field_2989_2990) Bool)
(declare-fun IsWandField_1666_1667 (T@Field_2989_2990) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_1666_12430 (T@Field_2976_7989) Bool)
(declare-fun IsWandField_1666_12446 (T@Field_2976_7989) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_1666_53 (T@Field_2976_53) Bool)
(declare-fun IsWandField_1666_53 (T@Field_2976_53) Bool)
(declare-fun HasDirectPerm_2976_12801 (T@PolymorphicMapType_2937 T@Ref T@Field_2976_7989) Bool)
(declare-fun HasDirectPerm_2976_2990 (T@PolymorphicMapType_2937 T@Ref T@Field_2989_2990) Bool)
(declare-fun HasDirectPerm_2976_53 (T@PolymorphicMapType_2937 T@Ref T@Field_2976_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_2937 T@PolymorphicMapType_2937 T@PolymorphicMapType_2937) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((Heap0 T@PolymorphicMapType_2916) (Heap1 T@PolymorphicMapType_2916) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_2916) (Mask T@PolymorphicMapType_2937) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_2916) (Heap1@@0 T@PolymorphicMapType_2916) (Heap2 T@PolymorphicMapType_2916) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2976_7989) ) (!  (not (select (|PolymorphicMapType_3465_2976_8969#PolymorphicMapType_3465| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3465_2976_8969#PolymorphicMapType_3465| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2976_7856) ) (!  (not (select (|PolymorphicMapType_3465_2976_7856#PolymorphicMapType_3465| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3465_2976_7856#PolymorphicMapType_3465| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_2989_2990) ) (!  (not (select (|PolymorphicMapType_3465_2976_2990#PolymorphicMapType_3465| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3465_2976_2990#PolymorphicMapType_3465| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_2976_53) ) (!  (not (select (|PolymorphicMapType_3465_2976_53#PolymorphicMapType_3465| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3465_2976_53#PolymorphicMapType_3465| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_2916) (ExhaleHeap T@PolymorphicMapType_2916) (Mask@@0 T@PolymorphicMapType_2937) (pm_f_5 T@Field_2976_7856) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2976_7920 Mask@@0 null pm_f_5) (IsPredicateField_2976_7947 pm_f_5)) (= (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@0) null (PredicateMaskField_2976 pm_f_5)) (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| ExhaleHeap) null (PredicateMaskField_2976 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2976_7947 pm_f_5) (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| ExhaleHeap) null (PredicateMaskField_2976 pm_f_5)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_2916) (ExhaleHeap@@0 T@PolymorphicMapType_2916) (Mask@@1 T@PolymorphicMapType_2937) (pm_f_5@@0 T@Field_2976_7856) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2976_7920 Mask@@1 null pm_f_5@@0) (IsWandField_2976_9496 pm_f_5@@0)) (= (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@1) null (WandMaskField_2976 pm_f_5@@0)) (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| ExhaleHeap@@0) null (WandMaskField_2976 pm_f_5@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_2976_9496 pm_f_5@@0) (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| ExhaleHeap@@0) null (WandMaskField_2976 pm_f_5@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_2916) (ExhaleHeap@@1 T@PolymorphicMapType_2916) (Mask@@2 T@PolymorphicMapType_2937) (pm_f_5@@1 T@Field_2976_7856) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_2976_7920 Mask@@2 null pm_f_5@@1) (IsPredicateField_2976_7947 pm_f_5@@1)) (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_2976_53) ) (!  (=> (select (|PolymorphicMapType_3465_2976_53#PolymorphicMapType_3465| (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@2) null (PredicateMaskField_2976 pm_f_5@@1))) o2_5 f_16) (= (select (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| Heap@@2) o2_5 f_16) (select (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| ExhaleHeap@@1) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| ExhaleHeap@@1) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_2989_2990) ) (!  (=> (select (|PolymorphicMapType_3465_2976_2990#PolymorphicMapType_3465| (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@2) null (PredicateMaskField_2976 pm_f_5@@1))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| Heap@@2) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| ExhaleHeap@@1) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| ExhaleHeap@@1) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_2976_7856) ) (!  (=> (select (|PolymorphicMapType_3465_2976_7856#PolymorphicMapType_3465| (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@2) null (PredicateMaskField_2976 pm_f_5@@1))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| Heap@@2) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| ExhaleHeap@@1) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| ExhaleHeap@@1) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_2976_7989) ) (!  (=> (select (|PolymorphicMapType_3465_2976_8969#PolymorphicMapType_3465| (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@2) null (PredicateMaskField_2976 pm_f_5@@1))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@2) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| ExhaleHeap@@1) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| ExhaleHeap@@1) o2_5@@2 f_16@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_2976_7947 pm_f_5@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_2916) (ExhaleHeap@@2 T@PolymorphicMapType_2916) (Mask@@3 T@PolymorphicMapType_2937) (pm_f_5@@2 T@Field_2976_7856) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2976_7920 Mask@@3 null pm_f_5@@2) (IsWandField_2976_9496 pm_f_5@@2)) (and (and (and (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_2976_53) ) (!  (=> (select (|PolymorphicMapType_3465_2976_53#PolymorphicMapType_3465| (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@3) null (WandMaskField_2976 pm_f_5@@2))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| Heap@@3) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| ExhaleHeap@@2) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| ExhaleHeap@@2) o2_5@@3 f_16@@3))
)) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_2989_2990) ) (!  (=> (select (|PolymorphicMapType_3465_2976_2990#PolymorphicMapType_3465| (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@3) null (WandMaskField_2976 pm_f_5@@2))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| Heap@@3) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| ExhaleHeap@@2) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| ExhaleHeap@@2) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_2976_7856) ) (!  (=> (select (|PolymorphicMapType_3465_2976_7856#PolymorphicMapType_3465| (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@3) null (WandMaskField_2976 pm_f_5@@2))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| Heap@@3) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| ExhaleHeap@@2) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| ExhaleHeap@@2) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_2976_7989) ) (!  (=> (select (|PolymorphicMapType_3465_2976_8969#PolymorphicMapType_3465| (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@3) null (WandMaskField_2976 pm_f_5@@2))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@3) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| ExhaleHeap@@2) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| ExhaleHeap@@2) o2_5@@6 f_16@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_2976_9496 pm_f_5@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_2916) (ExhaleHeap@@3 T@PolymorphicMapType_2916) (Mask@@4 T@PolymorphicMapType_2937) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| Heap@@4) o_12 $allocated) (select (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| ExhaleHeap@@3) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| ExhaleHeap@@3) o_12 $allocated))
)))
(assert (forall ((p T@Field_2976_7856) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_2976_2976 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_2976_2976 p v_1 p w))
)))
(assert  (not (IsPredicateField_1666_1667 f_7)))
(assert  (not (IsWandField_1666_1667 f_7)))
(assert  (not (IsPredicateField_1666_1667 g)))
(assert  (not (IsWandField_1666_1667 g)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_2916) (ExhaleHeap@@4 T@PolymorphicMapType_2916) (Mask@@5 T@PolymorphicMapType_2937) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_2937) (o_2@@3 T@Ref) (f_4@@3 T@Field_2976_7989) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_1666_12430 f_4@@3))) (not (IsWandField_1666_12446 f_4@@3))) (<= (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_2937) (o_2@@4 T@Ref) (f_4@@4 T@Field_2976_7856) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2976_7947 f_4@@4))) (not (IsWandField_2976_9496 f_4@@4))) (<= (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_2937) (o_2@@5 T@Ref) (f_4@@5 T@Field_2976_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_1666_53 f_4@@5))) (not (IsWandField_1666_53 f_4@@5))) (<= (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_2937) (o_2@@6 T@Ref) (f_4@@6 T@Field_2989_2990) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_1666_1667 f_4@@6))) (not (IsWandField_1666_1667 f_4@@6))) (<= (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_2937) (o_2@@7 T@Ref) (f_4@@7 T@Field_2976_7989) ) (! (= (HasDirectPerm_2976_12801 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2976_12801 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_2937) (o_2@@8 T@Ref) (f_4@@8 T@Field_2976_7856) ) (! (= (HasDirectPerm_2976_7920 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2976_7920 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_2937) (o_2@@9 T@Ref) (f_4@@9 T@Field_2989_2990) ) (! (= (HasDirectPerm_2976_2990 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2976_2990 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_2937) (o_2@@10 T@Ref) (f_4@@10 T@Field_2976_53) ) (! (= (HasDirectPerm_2976_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2976_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_2916) (ExhaleHeap@@5 T@PolymorphicMapType_2916) (Mask@@14 T@PolymorphicMapType_2937) (o_12@@0 T@Ref) (f_16@@7 T@Field_2976_7989) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_2976_12801 Mask@@14 o_12@@0 f_16@@7) (= (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@6) o_12@@0 f_16@@7) (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| ExhaleHeap@@5) o_12@@0 f_16@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| ExhaleHeap@@5) o_12@@0 f_16@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_2916) (ExhaleHeap@@6 T@PolymorphicMapType_2916) (Mask@@15 T@PolymorphicMapType_2937) (o_12@@1 T@Ref) (f_16@@8 T@Field_2976_7856) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_2976_7920 Mask@@15 o_12@@1 f_16@@8) (= (select (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| Heap@@7) o_12@@1 f_16@@8) (select (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| ExhaleHeap@@6) o_12@@1 f_16@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| ExhaleHeap@@6) o_12@@1 f_16@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_2916) (ExhaleHeap@@7 T@PolymorphicMapType_2916) (Mask@@16 T@PolymorphicMapType_2937) (o_12@@2 T@Ref) (f_16@@9 T@Field_2989_2990) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_2976_2990 Mask@@16 o_12@@2 f_16@@9) (= (select (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| Heap@@8) o_12@@2 f_16@@9) (select (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| ExhaleHeap@@7) o_12@@2 f_16@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| ExhaleHeap@@7) o_12@@2 f_16@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_2916) (ExhaleHeap@@8 T@PolymorphicMapType_2916) (Mask@@17 T@PolymorphicMapType_2937) (o_12@@3 T@Ref) (f_16@@10 T@Field_2976_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_2976_53 Mask@@17 o_12@@3 f_16@@10) (= (select (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| Heap@@9) o_12@@3 f_16@@10) (select (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| ExhaleHeap@@8) o_12@@3 f_16@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| ExhaleHeap@@8) o_12@@3 f_16@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_2976_7989) ) (! (= (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_2976_7856) ) (! (= (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_2976_53) ) (! (= (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_2989_2990) ) (! (= (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_2937) (SummandMask1 T@PolymorphicMapType_2937) (SummandMask2 T@PolymorphicMapType_2937) (o_2@@15 T@Ref) (f_4@@15 T@Field_2976_7989) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_2937) (SummandMask1@@0 T@PolymorphicMapType_2937) (SummandMask2@@0 T@PolymorphicMapType_2937) (o_2@@16 T@Ref) (f_4@@16 T@Field_2976_7856) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_2937) (SummandMask1@@1 T@PolymorphicMapType_2937) (SummandMask2@@1 T@PolymorphicMapType_2937) (o_2@@17 T@Ref) (f_4@@17 T@Field_2976_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_2937) (SummandMask1@@2 T@PolymorphicMapType_2937) (SummandMask2@@2 T@PolymorphicMapType_2937) (o_2@@18 T@Ref) (f_4@@18 T@Field_2989_2990) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_2916) (o_11 T@Ref) (f_17 T@Field_2976_7856) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_2916 (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| Heap@@10) (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| Heap@@10) (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@10) (store (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| Heap@@10) o_11 f_17 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2916 (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| Heap@@10) (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| Heap@@10) (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@10) (store (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| Heap@@10) o_11 f_17 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_2916) (o_11@@0 T@Ref) (f_17@@0 T@Field_2976_7989) (v@@0 T@PolymorphicMapType_3465) ) (! (succHeap Heap@@11 (PolymorphicMapType_2916 (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| Heap@@11) (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| Heap@@11) (store (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@11) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2916 (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| Heap@@11) (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| Heap@@11) (store (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@11) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_2916) (o_11@@1 T@Ref) (f_17@@1 T@Field_2989_2990) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_2916 (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| Heap@@12) (store (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| Heap@@12) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@12) (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2916 (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| Heap@@12) (store (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| Heap@@12) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@12) (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_2916) (o_11@@2 T@Ref) (f_17@@2 T@Field_2976_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_2916 (store (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| Heap@@13) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| Heap@@13) (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@13) (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_2916 (store (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| Heap@@13) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| Heap@@13) (|PolymorphicMapType_2916_2976_8033#PolymorphicMapType_2916| Heap@@13) (|PolymorphicMapType_2916_2976_7856#PolymorphicMapType_2916| Heap@@13)))
)))
(assert (forall ((o_11@@3 T@Ref) (f_10 T@Field_2989_2990) (Heap@@14 T@PolymorphicMapType_2916) ) (!  (=> (select (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| Heap@@14) o_11@@3 $allocated) (select (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| Heap@@14) (select (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| Heap@@14) o_11@@3 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_2916_1539_1540#PolymorphicMapType_2916| Heap@@14) o_11@@3 f_10))
)))
(assert (forall ((p@@1 T@Field_2976_7856) (v_1@@0 T@FrameType) (q T@Field_2976_7856) (w@@0 T@FrameType) (r T@Field_2976_7856) (u T@FrameType) ) (!  (=> (and (InsidePredicate_2976_2976 p@@1 v_1@@0 q w@@0) (InsidePredicate_2976_2976 q w@@0 r u)) (InsidePredicate_2976_2976 p@@1 v_1@@0 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2976_2976 p@@1 v_1@@0 q w@@0) (InsidePredicate_2976_2976 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun k () Int)
(declare-fun s_2 () T@Ref)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_2937)
(declare-fun Heap@@15 () T@PolymorphicMapType_2916)
(set-info :boogie-vc-id foo_1)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon6_Else_correct true))
(let ((anon6_Then_correct true))
(let ((anon5_Else_correct  (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((j_1 Int) (j_1_1 Int) ) (!  (=> (and (and (and (and (not (= j_1 j_1_1)) (= j_1 k)) (= j_1_1 k)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= s_2 s_2)))
 :qid |stdinbpl.236:15|
 :skolemid |22|
))) (=> (forall ((j_1@@0 Int) (j_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_1@@0 j_1_1@@0)) (= j_1@@0 k)) (= j_1_1@@0 k)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= s_2 s_2)))
 :qid |stdinbpl.236:15|
 :skolemid |22|
)) (=> (and (and (forall ((j_1@@1 Int) ) (!  (=> (and (= j_1@@1 k) (< NoPerm FullPerm)) (and (qpRange1 s_2) (= (invRecv1 s_2) j_1@@1)))
 :qid |stdinbpl.242:22|
 :skolemid |23|
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (= (invRecv1 o_4) k) (< NoPerm FullPerm)) (qpRange1 o_4)) (= s_2 o_4))
 :qid |stdinbpl.246:22|
 :skolemid |24|
 :pattern ( (invRecv1 o_4))
))) (and (forall ((j_1@@2 Int) ) (!  (=> (= j_1@@2 k) (not (= s_2 null)))
 :qid |stdinbpl.252:22|
 :skolemid |25|
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (= (invRecv1 o_4@@0) k) (< NoPerm FullPerm)) (qpRange1 o_4@@0)) (and (=> (< NoPerm FullPerm) (= s_2 o_4@@0)) (= (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| ZeroMask) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (= (invRecv1 o_4@@0) k) (< NoPerm FullPerm)) (qpRange1 o_4@@0))) (= (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.258:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_2976_53) ) (!  (=> true (= (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.262:29|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_2937_1666_53#PolymorphicMapType_2937| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_2989_2990) ) (!  (=> (not (= f_5@@0 f_7)) (= (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.262:29|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_2937_1666_1667#PolymorphicMapType_2937| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_2976_7856) ) (!  (=> true (= (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.262:29|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_2937_1666_7856#PolymorphicMapType_2937| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_2976_7989) ) (!  (=> true (= (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.262:29|
 :skolemid |27|
 :pattern ( (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_2937_1666_11535#PolymorphicMapType_2937| QPMask@0) o_4@@4 f_5@@2))
))) (state Heap@@15 QPMask@0)) (and (=> (= (ControlFlow 0 4) 2) anon6_Then_correct) (=> (= (ControlFlow 0 4) 3) anon6_Else_correct))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@15 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_2916_1536_53#PolymorphicMapType_2916| Heap@@15) s_2 $allocated)) (and (=> (= (ControlFlow 0 6) 1) anon5_Then_correct) (=> (= (ControlFlow 0 6) 4) anon5_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 6) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
