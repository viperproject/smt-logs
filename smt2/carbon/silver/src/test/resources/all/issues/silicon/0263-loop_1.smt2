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
(declare-sort T@Field_4036_53 0)
(declare-sort T@Field_4049_4050 0)
(declare-sort T@Field_4036_10757 0)
(declare-sort T@Field_4036_10624 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_3997 0)) (((PolymorphicMapType_3997 (|PolymorphicMapType_3997_4036_53#PolymorphicMapType_3997| (Array T@Ref T@Field_4036_53 Real)) (|PolymorphicMapType_3997_4036_4050#PolymorphicMapType_3997| (Array T@Ref T@Field_4049_4050 Real)) (|PolymorphicMapType_3997_4036_10624#PolymorphicMapType_3997| (Array T@Ref T@Field_4036_10624 Real)) (|PolymorphicMapType_3997_4036_20364#PolymorphicMapType_3997| (Array T@Ref T@Field_4036_10757 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4541 0)) (((PolymorphicMapType_4541 (|PolymorphicMapType_4541_4036_53#PolymorphicMapType_4541| (Array T@Ref T@Field_4036_53 Bool)) (|PolymorphicMapType_4541_4036_4050#PolymorphicMapType_4541| (Array T@Ref T@Field_4049_4050 Bool)) (|PolymorphicMapType_4541_4036_10624#PolymorphicMapType_4541| (Array T@Ref T@Field_4036_10624 Bool)) (|PolymorphicMapType_4541_4036_11737#PolymorphicMapType_4541| (Array T@Ref T@Field_4036_10757 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3976 0)) (((PolymorphicMapType_3976 (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| (Array T@Ref T@Field_4036_53 Bool)) (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| (Array T@Ref T@Field_4049_4050 T@Ref)) (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| (Array T@Ref T@Field_4036_10757 T@PolymorphicMapType_4541)) (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| (Array T@Ref T@Field_4036_10624 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_3976 T@PolymorphicMapType_3976) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3976 T@PolymorphicMapType_3976) Bool)
(declare-fun state (T@PolymorphicMapType_3976 T@PolymorphicMapType_3997) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3997) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4541)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3976 T@PolymorphicMapType_3976 T@PolymorphicMapType_3997) Bool)
(declare-fun IsPredicateField_4036_10715 (T@Field_4036_10624) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4036 (T@Field_4036_10624) T@Field_4036_10757)
(declare-fun HasDirectPerm_4036_10688 (T@PolymorphicMapType_3997 T@Ref T@Field_4036_10624) Bool)
(declare-fun IsWandField_4036_12264 (T@Field_4036_10624) Bool)
(declare-fun WandMaskField_4036 (T@Field_4036_10624) T@Field_4036_10757)
(declare-fun IdenticalOnKnownLocationsLiberal (T@PolymorphicMapType_3976 T@PolymorphicMapType_3976 T@PolymorphicMapType_3997) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_3976)
(declare-fun ZeroMask () T@PolymorphicMapType_3997)
(declare-fun $allocated () T@Field_4036_53)
(declare-fun InsidePredicate_4036_4036 (T@Field_4036_10624 T@FrameType T@Field_4036_10624 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4036_21273 (T@Field_4036_10757) Bool)
(declare-fun IsWandField_4036_21289 (T@Field_4036_10757) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4036_4050 (T@Field_4049_4050) Bool)
(declare-fun IsWandField_4036_4050 (T@Field_4049_4050) Bool)
(declare-fun IsPredicateField_4036_53 (T@Field_4036_53) Bool)
(declare-fun IsWandField_4036_53 (T@Field_4036_53) Bool)
(declare-fun HasDirectPerm_4036_14699 (T@PolymorphicMapType_3997 T@Ref T@Field_4036_10757) Bool)
(declare-fun HasDirectPerm_4036_4050 (T@PolymorphicMapType_3997 T@Ref T@Field_4049_4050) Bool)
(declare-fun HasDirectPerm_4036_53 (T@PolymorphicMapType_3997 T@Ref T@Field_4036_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3997 T@PolymorphicMapType_3997 T@PolymorphicMapType_3997) Bool)
(declare-fun SumHeap (T@PolymorphicMapType_3976 T@PolymorphicMapType_3976 T@PolymorphicMapType_3997 T@PolymorphicMapType_3976 T@PolymorphicMapType_3997) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3976) (Heap1 T@PolymorphicMapType_3976) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.95:15|
 :skolemid |12|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3976) (Mask T@PolymorphicMapType_3997) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.182:15|
 :skolemid |27|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3976) (Heap1@@0 T@PolymorphicMapType_3976) (Heap2 T@PolymorphicMapType_3976) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.100:15|
 :skolemid |13|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4036_10757) ) (!  (not (select (|PolymorphicMapType_4541_4036_11737#PolymorphicMapType_4541| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_4541_4036_11737#PolymorphicMapType_4541| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4036_10624) ) (!  (not (select (|PolymorphicMapType_4541_4036_10624#PolymorphicMapType_4541| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_4541_4036_10624#PolymorphicMapType_4541| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4049_4050) ) (!  (not (select (|PolymorphicMapType_4541_4036_4050#PolymorphicMapType_4541| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_4541_4036_4050#PolymorphicMapType_4541| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4036_53) ) (!  (not (select (|PolymorphicMapType_4541_4036_53#PolymorphicMapType_4541| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_4541_4036_53#PolymorphicMapType_4541| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3976) (ExhaleHeap T@PolymorphicMapType_3976) (Mask@@0 T@PolymorphicMapType_3997) (pm_f_13 T@Field_4036_10624) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4036_10688 Mask@@0 null pm_f_13) (IsPredicateField_4036_10715 pm_f_13)) (= (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@0) null (PredicateMaskField_4036 pm_f_13)) (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap) null (PredicateMaskField_4036 pm_f_13)))))
 :qid |stdinbpl.49:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4036_10715 pm_f_13) (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap) null (PredicateMaskField_4036 pm_f_13)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3976) (ExhaleHeap@@0 T@PolymorphicMapType_3976) (Mask@@1 T@PolymorphicMapType_3997) (pm_f_13@@0 T@Field_4036_10624) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4036_10688 Mask@@1 null pm_f_13@@0) (IsWandField_4036_12264 pm_f_13@@0)) (= (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@1) null (WandMaskField_4036 pm_f_13@@0)) (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@0) null (WandMaskField_4036 pm_f_13@@0)))))
 :qid |stdinbpl.62:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4036_12264 pm_f_13@@0) (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@0) null (WandMaskField_4036 pm_f_13@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3976) (ExhaleHeap@@1 T@PolymorphicMapType_3976) (Mask@@2 T@PolymorphicMapType_3997) (pm_f_13@@1 T@Field_4036_10624) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_4036_10688 Mask@@2 null pm_f_13@@1) (IsPredicateField_4036_10715 pm_f_13@@1)) (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_4036_53) ) (!  (=> (select (|PolymorphicMapType_4541_4036_53#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@2) null (PredicateMaskField_4036 pm_f_13@@1))) o2_13 f_30) (= (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@2) o2_13 f_30) (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@1) o2_13 f_30)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@1) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_4049_4050) ) (!  (=> (select (|PolymorphicMapType_4541_4036_4050#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@2) null (PredicateMaskField_4036 pm_f_13@@1))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@2) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| ExhaleHeap@@1) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| ExhaleHeap@@1) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_4036_10624) ) (!  (=> (select (|PolymorphicMapType_4541_4036_10624#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@2) null (PredicateMaskField_4036 pm_f_13@@1))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| Heap@@2) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| ExhaleHeap@@1) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| ExhaleHeap@@1) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_4036_10757) ) (!  (=> (select (|PolymorphicMapType_4541_4036_11737#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@2) null (PredicateMaskField_4036 pm_f_13@@1))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@2) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@1) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.56:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@1) o2_13@@2 f_30@@2))
)))))
 :qid |stdinbpl.54:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_4036_10715 pm_f_13@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3976) (ExhaleHeap@@2 T@PolymorphicMapType_3976) (Mask@@3 T@PolymorphicMapType_3997) (pm_f_13@@2 T@Field_4036_10624) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4036_10688 Mask@@3 null pm_f_13@@2) (IsWandField_4036_12264 pm_f_13@@2)) (and (and (and (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_4036_53) ) (!  (=> (select (|PolymorphicMapType_4541_4036_53#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@3) null (WandMaskField_4036 pm_f_13@@2))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@3) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@2) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@2) o2_13@@3 f_30@@3))
)) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_4049_4050) ) (!  (=> (select (|PolymorphicMapType_4541_4036_4050#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@3) null (WandMaskField_4036 pm_f_13@@2))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@3) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| ExhaleHeap@@2) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| ExhaleHeap@@2) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_4036_10624) ) (!  (=> (select (|PolymorphicMapType_4541_4036_10624#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@3) null (WandMaskField_4036 pm_f_13@@2))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| Heap@@3) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| ExhaleHeap@@2) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| ExhaleHeap@@2) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_4036_10757) ) (!  (=> (select (|PolymorphicMapType_4541_4036_11737#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@3) null (WandMaskField_4036 pm_f_13@@2))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@3) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@2) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.69:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@2) o2_13@@6 f_30@@6))
)))))
 :qid |stdinbpl.67:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4036_12264 pm_f_13@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3976) (ExhaleHeap@@3 T@PolymorphicMapType_3976) (Mask@@4 T@PolymorphicMapType_3997) (pm_f_22 T@Field_4036_10624) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_4036_10688 Mask@@4 null pm_f_22) (IsPredicateField_4036_10715 pm_f_22)) (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_4036_53) ) (!  (=> (select (|PolymorphicMapType_4541_4036_53#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@4) null (PredicateMaskField_4036 pm_f_22))) o2_22 f_37) (= (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@4) o2_22 f_37) (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@3) o2_22 f_37)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@3) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_4049_4050) ) (!  (=> (select (|PolymorphicMapType_4541_4036_4050#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@4) null (PredicateMaskField_4036 pm_f_22))) o2_22@@0 f_37@@0) (= (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@4) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| ExhaleHeap@@3) o2_22@@0 f_37@@0)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| ExhaleHeap@@3) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_4036_10624) ) (!  (=> (select (|PolymorphicMapType_4541_4036_10624#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@4) null (PredicateMaskField_4036 pm_f_22))) o2_22@@1 f_37@@1) (= (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| Heap@@4) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| ExhaleHeap@@3) o2_22@@1 f_37@@1)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| ExhaleHeap@@3) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_4036_10757) ) (!  (=> (select (|PolymorphicMapType_4541_4036_11737#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@4) null (PredicateMaskField_4036 pm_f_22))) o2_22@@2 f_37@@2) (= (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@4) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@3) o2_22@@2 f_37@@2)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@3) o2_22@@2 f_37@@2))
)))))
 :qid |stdinbpl.118:19|
 :skolemid |18|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@4 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4036_10715 pm_f_22))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3976) (ExhaleHeap@@4 T@PolymorphicMapType_3976) (Mask@@5 T@PolymorphicMapType_3997) (pm_f_22@@0 T@Field_4036_10624) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4036_10688 Mask@@5 null pm_f_22@@0) (IsWandField_4036_12264 pm_f_22@@0)) (and (and (and (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_4036_53) ) (!  (=> (select (|PolymorphicMapType_4541_4036_53#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@5) null (WandMaskField_4036 pm_f_22@@0))) o2_22@@3 f_37@@3) (= (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@5) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@4) o2_22@@3 f_37@@3)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@4) o2_22@@3 f_37@@3))
)) (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_4049_4050) ) (!  (=> (select (|PolymorphicMapType_4541_4036_4050#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@5) null (WandMaskField_4036 pm_f_22@@0))) o2_22@@4 f_37@@4) (= (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@5) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| ExhaleHeap@@4) o2_22@@4 f_37@@4)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| ExhaleHeap@@4) o2_22@@4 f_37@@4))
))) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_4036_10624) ) (!  (=> (select (|PolymorphicMapType_4541_4036_10624#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@5) null (WandMaskField_4036 pm_f_22@@0))) o2_22@@5 f_37@@5) (= (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| Heap@@5) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| ExhaleHeap@@4) o2_22@@5 f_37@@5)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| ExhaleHeap@@4) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_4036_10757) ) (!  (=> (select (|PolymorphicMapType_4541_4036_11737#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@5) null (WandMaskField_4036 pm_f_22@@0))) o2_22@@6 f_37@@6) (= (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@5) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@4) o2_22@@6 f_37@@6)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@4) o2_22@@6 f_37@@6))
)))))
 :qid |stdinbpl.134:19|
 :skolemid |22|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (IsWandField_4036_12264 pm_f_22@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3976) (ExhaleHeap@@5 T@PolymorphicMapType_3976) (Mask@@6 T@PolymorphicMapType_3997) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@6) o_22 $allocated) (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@5) o_22 $allocated)))
 :qid |stdinbpl.75:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@5) o_22 $allocated))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3976) (ExhaleHeap@@6 T@PolymorphicMapType_3976) (Mask@@7 T@PolymorphicMapType_3997) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7) (=> (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@7) o_46 $allocated) (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@6) o_46 $allocated)))
 :qid |stdinbpl.142:15|
 :skolemid |23|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7) (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@6) o_46 $allocated))
)))
(assert (forall ((p T@Field_4036_10624) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4036_4036 p v_1 p w))
 :qid |stdinbpl.228:19|
 :skolemid |33|
 :pattern ( (InsidePredicate_4036_4036 p v_1 p w))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3976) (ExhaleHeap@@7 T@PolymorphicMapType_3976) (Mask@@8 T@PolymorphicMapType_3997) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (succHeap Heap@@8 ExhaleHeap@@7))
 :qid |stdinbpl.85:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3976) (ExhaleHeap@@8 T@PolymorphicMapType_3976) (Mask@@9 T@PolymorphicMapType_3997) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@9 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@9 ExhaleHeap@@8))
 :qid |stdinbpl.90:15|
 :skolemid |11|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@9 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3976) (ExhaleHeap@@9 T@PolymorphicMapType_3976) (Mask@@10 T@PolymorphicMapType_3997) (pm_f_22@@1 T@Field_4036_10624) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@10 ExhaleHeap@@9 Mask@@10) (=> (and (HasDirectPerm_4036_10688 Mask@@10 null pm_f_22@@1) (IsPredicateField_4036_10715 pm_f_22@@1)) (and (and (and (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_4036_53) ) (!  (=> (select (|PolymorphicMapType_4541_4036_53#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@10) null (PredicateMaskField_4036 pm_f_22@@1))) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_4541_4036_53#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@9) null (PredicateMaskField_4036 pm_f_22@@1))) o2_22@@7 f_37@@7))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_4541_4036_53#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@9) null (PredicateMaskField_4036 pm_f_22@@1))) o2_22@@7 f_37@@7))
)) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_4049_4050) ) (!  (=> (select (|PolymorphicMapType_4541_4036_4050#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@10) null (PredicateMaskField_4036 pm_f_22@@1))) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_4541_4036_4050#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@9) null (PredicateMaskField_4036 pm_f_22@@1))) o2_22@@8 f_37@@8))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_4541_4036_4050#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@9) null (PredicateMaskField_4036 pm_f_22@@1))) o2_22@@8 f_37@@8))
))) (forall ((o2_22@@9 T@Ref) (f_37@@9 T@Field_4036_10624) ) (!  (=> (select (|PolymorphicMapType_4541_4036_10624#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@10) null (PredicateMaskField_4036 pm_f_22@@1))) o2_22@@9 f_37@@9) (select (|PolymorphicMapType_4541_4036_10624#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@9) null (PredicateMaskField_4036 pm_f_22@@1))) o2_22@@9 f_37@@9))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_4541_4036_10624#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@9) null (PredicateMaskField_4036 pm_f_22@@1))) o2_22@@9 f_37@@9))
))) (forall ((o2_22@@10 T@Ref) (f_37@@10 T@Field_4036_10757) ) (!  (=> (select (|PolymorphicMapType_4541_4036_11737#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@10) null (PredicateMaskField_4036 pm_f_22@@1))) o2_22@@10 f_37@@10) (select (|PolymorphicMapType_4541_4036_11737#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@9) null (PredicateMaskField_4036 pm_f_22@@1))) o2_22@@10 f_37@@10))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_4541_4036_11737#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@9) null (PredicateMaskField_4036 pm_f_22@@1))) o2_22@@10 f_37@@10))
)))))
 :qid |stdinbpl.110:19|
 :skolemid |16|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@10 ExhaleHeap@@9 Mask@@10) (IsPredicateField_4036_10715 pm_f_22@@1) (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@9) null (PredicateMaskField_4036 pm_f_22@@1)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3976) (ExhaleHeap@@10 T@PolymorphicMapType_3976) (Mask@@11 T@PolymorphicMapType_3997) (pm_f_22@@2 T@Field_4036_10624) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@11 ExhaleHeap@@10 Mask@@11) (=> (and (HasDirectPerm_4036_10688 Mask@@11 null pm_f_22@@2) (IsWandField_4036_12264 pm_f_22@@2)) (and (and (and (forall ((o2_22@@11 T@Ref) (f_37@@11 T@Field_4036_53) ) (!  (=> (select (|PolymorphicMapType_4541_4036_53#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@11) null (WandMaskField_4036 pm_f_22@@2))) o2_22@@11 f_37@@11) (select (|PolymorphicMapType_4541_4036_53#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@10) null (WandMaskField_4036 pm_f_22@@2))) o2_22@@11 f_37@@11))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_4541_4036_53#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@10) null (WandMaskField_4036 pm_f_22@@2))) o2_22@@11 f_37@@11))
)) (forall ((o2_22@@12 T@Ref) (f_37@@12 T@Field_4049_4050) ) (!  (=> (select (|PolymorphicMapType_4541_4036_4050#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@11) null (WandMaskField_4036 pm_f_22@@2))) o2_22@@12 f_37@@12) (select (|PolymorphicMapType_4541_4036_4050#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@10) null (WandMaskField_4036 pm_f_22@@2))) o2_22@@12 f_37@@12))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_4541_4036_4050#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@10) null (WandMaskField_4036 pm_f_22@@2))) o2_22@@12 f_37@@12))
))) (forall ((o2_22@@13 T@Ref) (f_37@@13 T@Field_4036_10624) ) (!  (=> (select (|PolymorphicMapType_4541_4036_10624#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@11) null (WandMaskField_4036 pm_f_22@@2))) o2_22@@13 f_37@@13) (select (|PolymorphicMapType_4541_4036_10624#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@10) null (WandMaskField_4036 pm_f_22@@2))) o2_22@@13 f_37@@13))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_4541_4036_10624#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@10) null (WandMaskField_4036 pm_f_22@@2))) o2_22@@13 f_37@@13))
))) (forall ((o2_22@@14 T@Ref) (f_37@@14 T@Field_4036_10757) ) (!  (=> (select (|PolymorphicMapType_4541_4036_11737#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@11) null (WandMaskField_4036 pm_f_22@@2))) o2_22@@14 f_37@@14) (select (|PolymorphicMapType_4541_4036_11737#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@10) null (WandMaskField_4036 pm_f_22@@2))) o2_22@@14 f_37@@14))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_4541_4036_11737#PolymorphicMapType_4541| (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@10) null (WandMaskField_4036 pm_f_22@@2))) o2_22@@14 f_37@@14))
)))))
 :qid |stdinbpl.126:19|
 :skolemid |20|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@11 ExhaleHeap@@10 Mask@@11) (IsWandField_4036_12264 pm_f_22@@2) (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@10) null (WandMaskField_4036 pm_f_22@@2)))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3997) (o_2@@3 T@Ref) (f_4@@3 T@Field_4036_10757) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_3997_4036_20364#PolymorphicMapType_3997| Mask@@12) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4036_21273 f_4@@3))) (not (IsWandField_4036_21289 f_4@@3))) (<= (select (|PolymorphicMapType_3997_4036_20364#PolymorphicMapType_3997| Mask@@12) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_3997_4036_20364#PolymorphicMapType_3997| Mask@@12) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3997) (o_2@@4 T@Ref) (f_4@@4 T@Field_4036_10624) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_3997_4036_10624#PolymorphicMapType_3997| Mask@@13) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4036_10715 f_4@@4))) (not (IsWandField_4036_12264 f_4@@4))) (<= (select (|PolymorphicMapType_3997_4036_10624#PolymorphicMapType_3997| Mask@@13) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_3997_4036_10624#PolymorphicMapType_3997| Mask@@13) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3997) (o_2@@5 T@Ref) (f_4@@5 T@Field_4049_4050) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_3997_4036_4050#PolymorphicMapType_3997| Mask@@14) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4036_4050 f_4@@5))) (not (IsWandField_4036_4050 f_4@@5))) (<= (select (|PolymorphicMapType_3997_4036_4050#PolymorphicMapType_3997| Mask@@14) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_3997_4036_4050#PolymorphicMapType_3997| Mask@@14) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3997) (o_2@@6 T@Ref) (f_4@@6 T@Field_4036_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_3997_4036_53#PolymorphicMapType_3997| Mask@@15) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4036_53 f_4@@6))) (not (IsWandField_4036_53 f_4@@6))) (<= (select (|PolymorphicMapType_3997_4036_53#PolymorphicMapType_3997| Mask@@15) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_3997_4036_53#PolymorphicMapType_3997| Mask@@15) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_3997) (o_2@@7 T@Ref) (f_4@@7 T@Field_4036_10757) ) (! (= (HasDirectPerm_4036_14699 Mask@@16 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_3997_4036_20364#PolymorphicMapType_3997| Mask@@16) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_4036_14699 Mask@@16 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_3997) (o_2@@8 T@Ref) (f_4@@8 T@Field_4036_10624) ) (! (= (HasDirectPerm_4036_10688 Mask@@17 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_3997_4036_10624#PolymorphicMapType_3997| Mask@@17) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_4036_10688 Mask@@17 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_3997) (o_2@@9 T@Ref) (f_4@@9 T@Field_4049_4050) ) (! (= (HasDirectPerm_4036_4050 Mask@@18 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_3997_4036_4050#PolymorphicMapType_3997| Mask@@18) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_4036_4050 Mask@@18 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_3997) (o_2@@10 T@Ref) (f_4@@10 T@Field_4036_53) ) (! (= (HasDirectPerm_4036_53 Mask@@19 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_3997_4036_53#PolymorphicMapType_3997| Mask@@19) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_4036_53 Mask@@19 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.216:15|
 :skolemid |31|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3976) (ExhaleHeap@@11 T@PolymorphicMapType_3976) (Mask@@20 T@PolymorphicMapType_3997) (o_22@@0 T@Ref) (f_30@@7 T@Field_4036_10757) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@20) (=> (HasDirectPerm_4036_14699 Mask@@20 o_22@@0 f_30@@7) (= (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@12) o_22@@0 f_30@@7) (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@11) o_22@@0 f_30@@7))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@20) (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@11) o_22@@0 f_30@@7))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3976) (ExhaleHeap@@12 T@PolymorphicMapType_3976) (Mask@@21 T@PolymorphicMapType_3997) (o_22@@1 T@Ref) (f_30@@8 T@Field_4036_10624) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@21) (=> (HasDirectPerm_4036_10688 Mask@@21 o_22@@1 f_30@@8) (= (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| Heap@@13) o_22@@1 f_30@@8) (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| ExhaleHeap@@12) o_22@@1 f_30@@8))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@21) (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| ExhaleHeap@@12) o_22@@1 f_30@@8))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3976) (ExhaleHeap@@13 T@PolymorphicMapType_3976) (Mask@@22 T@PolymorphicMapType_3997) (o_22@@2 T@Ref) (f_30@@9 T@Field_4049_4050) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@22) (=> (HasDirectPerm_4036_4050 Mask@@22 o_22@@2 f_30@@9) (= (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@14) o_22@@2 f_30@@9) (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| ExhaleHeap@@13) o_22@@2 f_30@@9))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@22) (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| ExhaleHeap@@13) o_22@@2 f_30@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3976) (ExhaleHeap@@14 T@PolymorphicMapType_3976) (Mask@@23 T@PolymorphicMapType_3997) (o_22@@3 T@Ref) (f_30@@10 T@Field_4036_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@23) (=> (HasDirectPerm_4036_53 Mask@@23 o_22@@3 f_30@@10) (= (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@15) o_22@@3 f_30@@10) (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@14) o_22@@3 f_30@@10))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@23) (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@14) o_22@@3 f_30@@10))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3976) (ExhaleHeap@@15 T@PolymorphicMapType_3976) (Mask@@24 T@PolymorphicMapType_3997) (o_46@@0 T@Ref) (f_37@@15 T@Field_4036_10757) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@16 ExhaleHeap@@15 Mask@@24) (=> (HasDirectPerm_4036_14699 Mask@@24 o_46@@0 f_37@@15) (= (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@16) o_46@@0 f_37@@15) (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@15) o_46@@0 f_37@@15))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@16 ExhaleHeap@@15 Mask@@24) (select (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| ExhaleHeap@@15) o_46@@0 f_37@@15))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3976) (ExhaleHeap@@16 T@PolymorphicMapType_3976) (Mask@@25 T@PolymorphicMapType_3997) (o_46@@1 T@Ref) (f_37@@16 T@Field_4036_10624) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@16 Mask@@25) (=> (HasDirectPerm_4036_10688 Mask@@25 o_46@@1 f_37@@16) (= (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| Heap@@17) o_46@@1 f_37@@16) (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| ExhaleHeap@@16) o_46@@1 f_37@@16))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@16 Mask@@25) (select (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| ExhaleHeap@@16) o_46@@1 f_37@@16))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3976) (ExhaleHeap@@17 T@PolymorphicMapType_3976) (Mask@@26 T@PolymorphicMapType_3997) (o_46@@2 T@Ref) (f_37@@17 T@Field_4049_4050) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@18 ExhaleHeap@@17 Mask@@26) (=> (HasDirectPerm_4036_4050 Mask@@26 o_46@@2 f_37@@17) (= (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@18) o_46@@2 f_37@@17) (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| ExhaleHeap@@17) o_46@@2 f_37@@17))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@18 ExhaleHeap@@17 Mask@@26) (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| ExhaleHeap@@17) o_46@@2 f_37@@17))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3976) (ExhaleHeap@@18 T@PolymorphicMapType_3976) (Mask@@27 T@PolymorphicMapType_3997) (o_46@@3 T@Ref) (f_37@@18 T@Field_4036_53) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@18 Mask@@27) (=> (HasDirectPerm_4036_53 Mask@@27 o_46@@3 f_37@@18) (= (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@19) o_46@@3 f_37@@18) (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@18) o_46@@3 f_37@@18))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@18 Mask@@27) (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| ExhaleHeap@@18) o_46@@3 f_37@@18))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_4036_10757) ) (! (= (select (|PolymorphicMapType_3997_4036_20364#PolymorphicMapType_3997| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_3997_4036_20364#PolymorphicMapType_3997| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_4036_10624) ) (! (= (select (|PolymorphicMapType_3997_4036_10624#PolymorphicMapType_3997| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_3997_4036_10624#PolymorphicMapType_3997| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_4049_4050) ) (! (= (select (|PolymorphicMapType_3997_4036_4050#PolymorphicMapType_3997| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_3997_4036_4050#PolymorphicMapType_3997| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4036_53) ) (! (= (select (|PolymorphicMapType_3997_4036_53#PolymorphicMapType_3997| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_3997_4036_53#PolymorphicMapType_3997| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3997) (SummandMask1 T@PolymorphicMapType_3997) (SummandMask2 T@PolymorphicMapType_3997) (o_2@@15 T@Ref) (f_4@@15 T@Field_4036_10757) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3997_4036_20364#PolymorphicMapType_3997| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_3997_4036_20364#PolymorphicMapType_3997| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_3997_4036_20364#PolymorphicMapType_3997| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3997_4036_20364#PolymorphicMapType_3997| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3997_4036_20364#PolymorphicMapType_3997| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3997_4036_20364#PolymorphicMapType_3997| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3997) (SummandMask1@@0 T@PolymorphicMapType_3997) (SummandMask2@@0 T@PolymorphicMapType_3997) (o_2@@16 T@Ref) (f_4@@16 T@Field_4036_10624) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3997_4036_10624#PolymorphicMapType_3997| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_3997_4036_10624#PolymorphicMapType_3997| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_3997_4036_10624#PolymorphicMapType_3997| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3997_4036_10624#PolymorphicMapType_3997| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3997_4036_10624#PolymorphicMapType_3997| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3997_4036_10624#PolymorphicMapType_3997| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3997) (SummandMask1@@1 T@PolymorphicMapType_3997) (SummandMask2@@1 T@PolymorphicMapType_3997) (o_2@@17 T@Ref) (f_4@@17 T@Field_4049_4050) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3997_4036_4050#PolymorphicMapType_3997| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_3997_4036_4050#PolymorphicMapType_3997| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_3997_4036_4050#PolymorphicMapType_3997| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3997_4036_4050#PolymorphicMapType_3997| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3997_4036_4050#PolymorphicMapType_3997| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3997_4036_4050#PolymorphicMapType_3997| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3997) (SummandMask1@@2 T@PolymorphicMapType_3997) (SummandMask2@@2 T@PolymorphicMapType_3997) (o_2@@18 T@Ref) (f_4@@18 T@Field_4036_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3997_4036_53#PolymorphicMapType_3997| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_3997_4036_53#PolymorphicMapType_3997| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_3997_4036_53#PolymorphicMapType_3997| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3997_4036_53#PolymorphicMapType_3997| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3997_4036_53#PolymorphicMapType_3997| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3997_4036_53#PolymorphicMapType_3997| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3976) (Heap1@@1 T@PolymorphicMapType_3976) (Mask1 T@PolymorphicMapType_3997) (Heap2@@0 T@PolymorphicMapType_3976) (Mask2 T@PolymorphicMapType_3997) ) (! (= (SumHeap Heap@@20 Heap1@@1 Mask1 Heap2@@0 Mask2)  (and (IdenticalOnKnownLocationsLiberal Heap1@@1 Heap@@20 Mask1) (IdenticalOnKnownLocationsLiberal Heap2@@0 Heap@@20 Mask2)))
 :qid |stdinbpl.150:15|
 :skolemid |24|
 :pattern ( (SumHeap Heap@@20 Heap1@@1 Mask1 Heap2@@0 Mask2))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3976) (o_35 T@Ref) (f_11 T@Field_4036_10624) (v T@FrameType) ) (! (succHeap Heap@@21 (PolymorphicMapType_3976 (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@21) (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@21) (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@21) (store (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| Heap@@21) o_35 f_11 v)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3976 (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@21) (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@21) (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@21) (store (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| Heap@@21) o_35 f_11 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3976) (o_35@@0 T@Ref) (f_11@@0 T@Field_4036_10757) (v@@0 T@PolymorphicMapType_4541) ) (! (succHeap Heap@@22 (PolymorphicMapType_3976 (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@22) (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@22) (store (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@22) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| Heap@@22)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3976 (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@22) (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@22) (store (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@22) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3976) (o_35@@1 T@Ref) (f_11@@1 T@Field_4049_4050) (v@@1 T@Ref) ) (! (succHeap Heap@@23 (PolymorphicMapType_3976 (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@23) (store (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@23) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@23) (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| Heap@@23)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3976 (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@23) (store (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@23) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@23) (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3976) (o_35@@2 T@Ref) (f_11@@2 T@Field_4036_53) (v@@2 Bool) ) (! (succHeap Heap@@24 (PolymorphicMapType_3976 (store (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@24) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@24) (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@24) (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| Heap@@24)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3976 (store (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@24) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@24) (|PolymorphicMapType_3976_4036_10801#PolymorphicMapType_3976| Heap@@24) (|PolymorphicMapType_3976_4036_10624#PolymorphicMapType_3976| Heap@@24)))
)))
(assert (forall ((o_35@@3 T@Ref) (f_31 T@Field_4049_4050) (Heap@@25 T@PolymorphicMapType_3976) ) (!  (=> (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@25) o_35@@3 $allocated) (select (|PolymorphicMapType_3976_1846_53#PolymorphicMapType_3976| Heap@@25) (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@25) o_35@@3 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3976_1849_1850#PolymorphicMapType_3976| Heap@@25) o_35@@3 f_31))
)))
(assert (forall ((p@@1 T@Field_4036_10624) (v_1@@0 T@FrameType) (q T@Field_4036_10624) (w@@0 T@FrameType) (r T@Field_4036_10624) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4036_4036 p@@1 v_1@@0 q w@@0) (InsidePredicate_4036_4036 q w@@0 r u)) (InsidePredicate_4036_4036 p@@1 v_1@@0 r u))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_4036_4036 p@@1 v_1@@0 q w@@0) (InsidePredicate_4036_4036 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id loop_1)
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
 (=> (= (ControlFlow 0 0) 6) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
