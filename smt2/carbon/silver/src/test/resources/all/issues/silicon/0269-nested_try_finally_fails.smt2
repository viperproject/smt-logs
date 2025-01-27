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
(declare-sort T@Field_6965_53 0)
(declare-sort T@Field_6978_6979 0)
(declare-sort T@Field_12570_1733 0)
(declare-sort T@Field_6965_20336 0)
(declare-sort T@Field_6965_20203 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6926 0)) (((PolymorphicMapType_6926 (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| (Array T@Ref T@Field_6978_6979 Real)) (|PolymorphicMapType_6926_3266_1733#PolymorphicMapType_6926| (Array T@Ref T@Field_12570_1733 Real)) (|PolymorphicMapType_6926_3263_53#PolymorphicMapType_6926| (Array T@Ref T@Field_6965_53 Real)) (|PolymorphicMapType_6926_3263_20203#PolymorphicMapType_6926| (Array T@Ref T@Field_6965_20203 Real)) (|PolymorphicMapType_6926_3263_31619#PolymorphicMapType_6926| (Array T@Ref T@Field_6965_20336 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7470 0)) (((PolymorphicMapType_7470 (|PolymorphicMapType_7470_6965_53#PolymorphicMapType_7470| (Array T@Ref T@Field_6965_53 Bool)) (|PolymorphicMapType_7470_6965_6979#PolymorphicMapType_7470| (Array T@Ref T@Field_6978_6979 Bool)) (|PolymorphicMapType_7470_6965_1733#PolymorphicMapType_7470| (Array T@Ref T@Field_12570_1733 Bool)) (|PolymorphicMapType_7470_6965_20203#PolymorphicMapType_7470| (Array T@Ref T@Field_6965_20203 Bool)) (|PolymorphicMapType_7470_6965_21514#PolymorphicMapType_7470| (Array T@Ref T@Field_6965_20336 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6905 0)) (((PolymorphicMapType_6905 (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| (Array T@Ref T@Field_6965_53 Bool)) (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| (Array T@Ref T@Field_6978_6979 T@Ref)) (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| (Array T@Ref T@Field_12570_1733 Int)) (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| (Array T@Ref T@Field_6965_20336 T@PolymorphicMapType_7470)) (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| (Array T@Ref T@Field_6965_20203 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6965_53)
(declare-fun Container_value () T@Field_6978_6979)
(declare-fun f_7 () T@Field_12570_1733)
(declare-fun succHeap (T@PolymorphicMapType_6905 T@PolymorphicMapType_6905) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6905 T@PolymorphicMapType_6905) Bool)
(declare-fun state (T@PolymorphicMapType_6905 T@PolymorphicMapType_6926) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6926) Bool)
(declare-fun IdenticalOnKnownLocationsLiberal (T@PolymorphicMapType_6905 T@PolymorphicMapType_6905 T@PolymorphicMapType_6926) Bool)
(declare-fun IsPredicateField_6965_20294 (T@Field_6965_20203) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6965 (T@Field_6965_20203) T@Field_6965_20336)
(declare-fun HasDirectPerm_6965_20267 (T@PolymorphicMapType_6926 T@Ref T@Field_6965_20203) Bool)
(declare-fun IsWandField_6965_22041 (T@Field_6965_20203) Bool)
(declare-fun WandMaskField_6965 (T@Field_6965_20203) T@Field_6965_20336)
(declare-fun ZeroPMask () T@PolymorphicMapType_7470)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6905 T@PolymorphicMapType_6905 T@PolymorphicMapType_6926) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_6905)
(declare-fun ZeroMask () T@PolymorphicMapType_6926)
(declare-fun InsidePredicate_6965_6965 (T@Field_6965_20203 T@FrameType T@Field_6965_20203 T@FrameType) Bool)
(declare-fun IsPredicateField_3263_3264 (T@Field_6978_6979) Bool)
(declare-fun IsWandField_3263_3264 (T@Field_6978_6979) Bool)
(declare-fun IsPredicateField_3266_1733 (T@Field_12570_1733) Bool)
(declare-fun IsWandField_3266_1733 (T@Field_12570_1733) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3263_32734 (T@Field_6965_20336) Bool)
(declare-fun IsWandField_3263_32750 (T@Field_6965_20336) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3263_53 (T@Field_6965_53) Bool)
(declare-fun IsWandField_3263_53 (T@Field_6965_53) Bool)
(declare-fun HasDirectPerm_6965_24959 (T@PolymorphicMapType_6926 T@Ref T@Field_6965_20336) Bool)
(declare-fun HasDirectPerm_6965_1733 (T@PolymorphicMapType_6926 T@Ref T@Field_12570_1733) Bool)
(declare-fun HasDirectPerm_6965_6979 (T@PolymorphicMapType_6926 T@Ref T@Field_6978_6979) Bool)
(declare-fun HasDirectPerm_6965_53 (T@PolymorphicMapType_6926 T@Ref T@Field_6965_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6926 T@PolymorphicMapType_6926 T@PolymorphicMapType_6926) Bool)
(declare-fun SumHeap (T@PolymorphicMapType_6905 T@PolymorphicMapType_6905 T@PolymorphicMapType_6926 T@PolymorphicMapType_6905 T@PolymorphicMapType_6926) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6905) (Heap1 T@PolymorphicMapType_6905) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.95:15|
 :skolemid |12|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6905) (Mask T@PolymorphicMapType_6926) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.182:15|
 :skolemid |27|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6905) (Heap1@@0 T@PolymorphicMapType_6905) (Heap2 T@PolymorphicMapType_6905) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.100:15|
 :skolemid |13|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6905) (ExhaleHeap T@PolymorphicMapType_6905) (Mask@@0 T@PolymorphicMapType_6926) (pm_f_20 T@Field_6965_20203) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6965_20267 Mask@@0 null pm_f_20) (IsPredicateField_6965_20294 pm_f_20)) (and (and (and (and (forall ((o2_20 T@Ref) (f_53 T@Field_6965_53) ) (!  (=> (select (|PolymorphicMapType_7470_6965_53#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@0) null (PredicateMaskField_6965 pm_f_20))) o2_20 f_53) (select (|PolymorphicMapType_7470_6965_53#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap) null (PredicateMaskField_6965 pm_f_20))) o2_20 f_53))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7470_6965_53#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap) null (PredicateMaskField_6965 pm_f_20))) o2_20 f_53))
)) (forall ((o2_20@@0 T@Ref) (f_53@@0 T@Field_6978_6979) ) (!  (=> (select (|PolymorphicMapType_7470_6965_6979#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@0) null (PredicateMaskField_6965 pm_f_20))) o2_20@@0 f_53@@0) (select (|PolymorphicMapType_7470_6965_6979#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap) null (PredicateMaskField_6965 pm_f_20))) o2_20@@0 f_53@@0))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7470_6965_6979#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap) null (PredicateMaskField_6965 pm_f_20))) o2_20@@0 f_53@@0))
))) (forall ((o2_20@@1 T@Ref) (f_53@@1 T@Field_12570_1733) ) (!  (=> (select (|PolymorphicMapType_7470_6965_1733#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@0) null (PredicateMaskField_6965 pm_f_20))) o2_20@@1 f_53@@1) (select (|PolymorphicMapType_7470_6965_1733#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap) null (PredicateMaskField_6965 pm_f_20))) o2_20@@1 f_53@@1))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7470_6965_1733#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap) null (PredicateMaskField_6965 pm_f_20))) o2_20@@1 f_53@@1))
))) (forall ((o2_20@@2 T@Ref) (f_53@@2 T@Field_6965_20203) ) (!  (=> (select (|PolymorphicMapType_7470_6965_20203#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@0) null (PredicateMaskField_6965 pm_f_20))) o2_20@@2 f_53@@2) (select (|PolymorphicMapType_7470_6965_20203#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap) null (PredicateMaskField_6965 pm_f_20))) o2_20@@2 f_53@@2))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7470_6965_20203#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap) null (PredicateMaskField_6965 pm_f_20))) o2_20@@2 f_53@@2))
))) (forall ((o2_20@@3 T@Ref) (f_53@@3 T@Field_6965_20336) ) (!  (=> (select (|PolymorphicMapType_7470_6965_21514#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@0) null (PredicateMaskField_6965 pm_f_20))) o2_20@@3 f_53@@3) (select (|PolymorphicMapType_7470_6965_21514#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap) null (PredicateMaskField_6965 pm_f_20))) o2_20@@3 f_53@@3))
 :qid |stdinbpl.112:147|
 :skolemid |15|
 :pattern ( (select (|PolymorphicMapType_7470_6965_21514#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap) null (PredicateMaskField_6965 pm_f_20))) o2_20@@3 f_53@@3))
)))))
 :qid |stdinbpl.110:19|
 :skolemid |16|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6965_20294 pm_f_20) (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap) null (PredicateMaskField_6965 pm_f_20)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6905) (ExhaleHeap@@0 T@PolymorphicMapType_6905) (Mask@@1 T@PolymorphicMapType_6926) (pm_f_20@@0 T@Field_6965_20203) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6965_20267 Mask@@1 null pm_f_20@@0) (IsWandField_6965_22041 pm_f_20@@0)) (and (and (and (and (forall ((o2_20@@4 T@Ref) (f_53@@4 T@Field_6965_53) ) (!  (=> (select (|PolymorphicMapType_7470_6965_53#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@1) null (WandMaskField_6965 pm_f_20@@0))) o2_20@@4 f_53@@4) (select (|PolymorphicMapType_7470_6965_53#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@0) null (WandMaskField_6965 pm_f_20@@0))) o2_20@@4 f_53@@4))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7470_6965_53#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@0) null (WandMaskField_6965 pm_f_20@@0))) o2_20@@4 f_53@@4))
)) (forall ((o2_20@@5 T@Ref) (f_53@@5 T@Field_6978_6979) ) (!  (=> (select (|PolymorphicMapType_7470_6965_6979#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@1) null (WandMaskField_6965 pm_f_20@@0))) o2_20@@5 f_53@@5) (select (|PolymorphicMapType_7470_6965_6979#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@0) null (WandMaskField_6965 pm_f_20@@0))) o2_20@@5 f_53@@5))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7470_6965_6979#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@0) null (WandMaskField_6965 pm_f_20@@0))) o2_20@@5 f_53@@5))
))) (forall ((o2_20@@6 T@Ref) (f_53@@6 T@Field_12570_1733) ) (!  (=> (select (|PolymorphicMapType_7470_6965_1733#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@1) null (WandMaskField_6965 pm_f_20@@0))) o2_20@@6 f_53@@6) (select (|PolymorphicMapType_7470_6965_1733#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@0) null (WandMaskField_6965 pm_f_20@@0))) o2_20@@6 f_53@@6))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7470_6965_1733#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@0) null (WandMaskField_6965 pm_f_20@@0))) o2_20@@6 f_53@@6))
))) (forall ((o2_20@@7 T@Ref) (f_53@@7 T@Field_6965_20203) ) (!  (=> (select (|PolymorphicMapType_7470_6965_20203#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@1) null (WandMaskField_6965 pm_f_20@@0))) o2_20@@7 f_53@@7) (select (|PolymorphicMapType_7470_6965_20203#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@0) null (WandMaskField_6965 pm_f_20@@0))) o2_20@@7 f_53@@7))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7470_6965_20203#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@0) null (WandMaskField_6965 pm_f_20@@0))) o2_20@@7 f_53@@7))
))) (forall ((o2_20@@8 T@Ref) (f_53@@8 T@Field_6965_20336) ) (!  (=> (select (|PolymorphicMapType_7470_6965_21514#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@1) null (WandMaskField_6965 pm_f_20@@0))) o2_20@@8 f_53@@8) (select (|PolymorphicMapType_7470_6965_21514#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@0) null (WandMaskField_6965 pm_f_20@@0))) o2_20@@8 f_53@@8))
 :qid |stdinbpl.128:142|
 :skolemid |19|
 :pattern ( (select (|PolymorphicMapType_7470_6965_21514#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@0) null (WandMaskField_6965 pm_f_20@@0))) o2_20@@8 f_53@@8))
)))))
 :qid |stdinbpl.126:19|
 :skolemid |20|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_6965_22041 pm_f_20@@0) (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@0) null (WandMaskField_6965 pm_f_20@@0)))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6965_20336) ) (!  (not (select (|PolymorphicMapType_7470_6965_21514#PolymorphicMapType_7470| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7470_6965_21514#PolymorphicMapType_7470| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6965_20203) ) (!  (not (select (|PolymorphicMapType_7470_6965_20203#PolymorphicMapType_7470| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7470_6965_20203#PolymorphicMapType_7470| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12570_1733) ) (!  (not (select (|PolymorphicMapType_7470_6965_1733#PolymorphicMapType_7470| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7470_6965_1733#PolymorphicMapType_7470| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6978_6979) ) (!  (not (select (|PolymorphicMapType_7470_6965_6979#PolymorphicMapType_7470| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7470_6965_6979#PolymorphicMapType_7470| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6965_53) ) (!  (not (select (|PolymorphicMapType_7470_6965_53#PolymorphicMapType_7470| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.169:22|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_7470_6965_53#PolymorphicMapType_7470| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6905) (ExhaleHeap@@1 T@PolymorphicMapType_6905) (Mask@@2 T@PolymorphicMapType_6926) (pm_f_1 T@Field_6965_20203) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6965_20267 Mask@@2 null pm_f_1) (IsPredicateField_6965_20294 pm_f_1)) (= (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@2) null (PredicateMaskField_6965 pm_f_1)) (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@1) null (PredicateMaskField_6965 pm_f_1)))))
 :qid |stdinbpl.49:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_6965_20294 pm_f_1) (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@1) null (PredicateMaskField_6965 pm_f_1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6905) (ExhaleHeap@@2 T@PolymorphicMapType_6905) (Mask@@3 T@PolymorphicMapType_6926) (pm_f_1@@0 T@Field_6965_20203) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6965_20267 Mask@@3 null pm_f_1@@0) (IsWandField_6965_22041 pm_f_1@@0)) (= (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@3) null (WandMaskField_6965 pm_f_1@@0)) (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@2) null (WandMaskField_6965 pm_f_1@@0)))))
 :qid |stdinbpl.62:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_6965_22041 pm_f_1@@0) (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@2) null (WandMaskField_6965 pm_f_1@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6905) (ExhaleHeap@@3 T@PolymorphicMapType_6905) (Mask@@4 T@PolymorphicMapType_6926) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@4) o_4 $allocated) (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@3) o_4 $allocated)))
 :qid |stdinbpl.75:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@3) o_4 $allocated))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6905) (ExhaleHeap@@4 T@PolymorphicMapType_6905) (Mask@@5 T@PolymorphicMapType_6926) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@5) o_41 $allocated) (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@4) o_41 $allocated)))
 :qid |stdinbpl.142:15|
 :skolemid |23|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@5 ExhaleHeap@@4 Mask@@5) (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@4) o_41 $allocated))
)))
(assert (forall ((p T@Field_6965_20203) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6965_6965 p v_1 p w))
 :qid |stdinbpl.228:19|
 :skolemid |33|
 :pattern ( (InsidePredicate_6965_6965 p v_1 p w))
)))
(assert  (not (IsPredicateField_3263_3264 Container_value)))
(assert  (not (IsWandField_3263_3264 Container_value)))
(assert  (not (IsPredicateField_3266_1733 f_7)))
(assert  (not (IsWandField_3266_1733 f_7)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6905) (ExhaleHeap@@5 T@PolymorphicMapType_6905) (Mask@@6 T@PolymorphicMapType_6926) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (succHeap Heap@@6 ExhaleHeap@@5))
 :qid |stdinbpl.85:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6905) (ExhaleHeap@@6 T@PolymorphicMapType_6905) (Mask@@7 T@PolymorphicMapType_6926) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@7 ExhaleHeap@@6))
 :qid |stdinbpl.90:15|
 :skolemid |11|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@7 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6926) (o_2@@4 T@Ref) (f_4@@4 T@Field_6965_20336) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6926_3263_31619#PolymorphicMapType_6926| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3263_32734 f_4@@4))) (not (IsWandField_3263_32750 f_4@@4))) (<= (select (|PolymorphicMapType_6926_3263_31619#PolymorphicMapType_6926| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6926_3263_31619#PolymorphicMapType_6926| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6926) (o_2@@5 T@Ref) (f_4@@5 T@Field_6965_20203) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6926_3263_20203#PolymorphicMapType_6926| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6965_20294 f_4@@5))) (not (IsWandField_6965_22041 f_4@@5))) (<= (select (|PolymorphicMapType_6926_3263_20203#PolymorphicMapType_6926| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6926_3263_20203#PolymorphicMapType_6926| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6926) (o_2@@6 T@Ref) (f_4@@6 T@Field_6965_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6926_3263_53#PolymorphicMapType_6926| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3263_53 f_4@@6))) (not (IsWandField_3263_53 f_4@@6))) (<= (select (|PolymorphicMapType_6926_3263_53#PolymorphicMapType_6926| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6926_3263_53#PolymorphicMapType_6926| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6926) (o_2@@7 T@Ref) (f_4@@7 T@Field_12570_1733) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6926_3266_1733#PolymorphicMapType_6926| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3266_1733 f_4@@7))) (not (IsWandField_3266_1733 f_4@@7))) (<= (select (|PolymorphicMapType_6926_3266_1733#PolymorphicMapType_6926| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6926_3266_1733#PolymorphicMapType_6926| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6926) (o_2@@8 T@Ref) (f_4@@8 T@Field_6978_6979) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3263_3264 f_4@@8))) (not (IsWandField_3263_3264 f_4@@8))) (<= (select (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.186:22|
 :skolemid |28|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6926) (o_2@@9 T@Ref) (f_4@@9 T@Field_6965_20336) ) (! (= (HasDirectPerm_6965_24959 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6926_3263_31619#PolymorphicMapType_6926| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_6965_24959 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6926) (o_2@@10 T@Ref) (f_4@@10 T@Field_6965_20203) ) (! (= (HasDirectPerm_6965_20267 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6926_3263_20203#PolymorphicMapType_6926| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_6965_20267 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6926) (o_2@@11 T@Ref) (f_4@@11 T@Field_12570_1733) ) (! (= (HasDirectPerm_6965_1733 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6926_3266_1733#PolymorphicMapType_6926| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_6965_1733 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6926) (o_2@@12 T@Ref) (f_4@@12 T@Field_6978_6979) ) (! (= (HasDirectPerm_6965_6979 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_6965_6979 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6926) (o_2@@13 T@Ref) (f_4@@13 T@Field_6965_53) ) (! (= (HasDirectPerm_6965_53 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6926_3263_53#PolymorphicMapType_6926| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.191:22|
 :skolemid |29|
 :pattern ( (HasDirectPerm_6965_53 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6905) (ExhaleHeap@@7 T@PolymorphicMapType_6905) (Mask@@18 T@PolymorphicMapType_6926) (pm_f_1@@1 T@Field_6965_20203) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (and (HasDirectPerm_6965_20267 Mask@@18 null pm_f_1@@1) (IsPredicateField_6965_20294 pm_f_1@@1)) (and (and (and (and (forall ((o2_1 T@Ref) (f_9 T@Field_6965_53) ) (!  (=> (select (|PolymorphicMapType_7470_6965_53#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@8) null (PredicateMaskField_6965 pm_f_1@@1))) o2_1 f_9) (= (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@8) o2_1 f_9) (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@7) o2_1 f_9)))
 :qid |stdinbpl.56:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@7) o2_1 f_9))
)) (forall ((o2_1@@0 T@Ref) (f_9@@0 T@Field_6978_6979) ) (!  (=> (select (|PolymorphicMapType_7470_6965_6979#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@8) null (PredicateMaskField_6965 pm_f_1@@1))) o2_1@@0 f_9@@0) (= (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@8) o2_1@@0 f_9@@0) (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| ExhaleHeap@@7) o2_1@@0 f_9@@0)))
 :qid |stdinbpl.56:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| ExhaleHeap@@7) o2_1@@0 f_9@@0))
))) (forall ((o2_1@@1 T@Ref) (f_9@@1 T@Field_12570_1733) ) (!  (=> (select (|PolymorphicMapType_7470_6965_1733#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@8) null (PredicateMaskField_6965 pm_f_1@@1))) o2_1@@1 f_9@@1) (= (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@8) o2_1@@1 f_9@@1) (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| ExhaleHeap@@7) o2_1@@1 f_9@@1)))
 :qid |stdinbpl.56:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| ExhaleHeap@@7) o2_1@@1 f_9@@1))
))) (forall ((o2_1@@2 T@Ref) (f_9@@2 T@Field_6965_20203) ) (!  (=> (select (|PolymorphicMapType_7470_6965_20203#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@8) null (PredicateMaskField_6965 pm_f_1@@1))) o2_1@@2 f_9@@2) (= (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@8) o2_1@@2 f_9@@2) (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| ExhaleHeap@@7) o2_1@@2 f_9@@2)))
 :qid |stdinbpl.56:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| ExhaleHeap@@7) o2_1@@2 f_9@@2))
))) (forall ((o2_1@@3 T@Ref) (f_9@@3 T@Field_6965_20336) ) (!  (=> (select (|PolymorphicMapType_7470_6965_21514#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@8) null (PredicateMaskField_6965 pm_f_1@@1))) o2_1@@3 f_9@@3) (= (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@8) o2_1@@3 f_9@@3) (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@7) o2_1@@3 f_9@@3)))
 :qid |stdinbpl.56:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@7) o2_1@@3 f_9@@3))
)))))
 :qid |stdinbpl.54:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (IsPredicateField_6965_20294 pm_f_1@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6905) (ExhaleHeap@@8 T@PolymorphicMapType_6905) (Mask@@19 T@PolymorphicMapType_6926) (pm_f_1@@2 T@Field_6965_20203) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (and (HasDirectPerm_6965_20267 Mask@@19 null pm_f_1@@2) (IsWandField_6965_22041 pm_f_1@@2)) (and (and (and (and (forall ((o2_1@@4 T@Ref) (f_9@@4 T@Field_6965_53) ) (!  (=> (select (|PolymorphicMapType_7470_6965_53#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@9) null (WandMaskField_6965 pm_f_1@@2))) o2_1@@4 f_9@@4) (= (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@9) o2_1@@4 f_9@@4) (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@8) o2_1@@4 f_9@@4)))
 :qid |stdinbpl.69:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@8) o2_1@@4 f_9@@4))
)) (forall ((o2_1@@5 T@Ref) (f_9@@5 T@Field_6978_6979) ) (!  (=> (select (|PolymorphicMapType_7470_6965_6979#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@9) null (WandMaskField_6965 pm_f_1@@2))) o2_1@@5 f_9@@5) (= (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@9) o2_1@@5 f_9@@5) (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| ExhaleHeap@@8) o2_1@@5 f_9@@5)))
 :qid |stdinbpl.69:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| ExhaleHeap@@8) o2_1@@5 f_9@@5))
))) (forall ((o2_1@@6 T@Ref) (f_9@@6 T@Field_12570_1733) ) (!  (=> (select (|PolymorphicMapType_7470_6965_1733#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@9) null (WandMaskField_6965 pm_f_1@@2))) o2_1@@6 f_9@@6) (= (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@9) o2_1@@6 f_9@@6) (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| ExhaleHeap@@8) o2_1@@6 f_9@@6)))
 :qid |stdinbpl.69:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| ExhaleHeap@@8) o2_1@@6 f_9@@6))
))) (forall ((o2_1@@7 T@Ref) (f_9@@7 T@Field_6965_20203) ) (!  (=> (select (|PolymorphicMapType_7470_6965_20203#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@9) null (WandMaskField_6965 pm_f_1@@2))) o2_1@@7 f_9@@7) (= (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@9) o2_1@@7 f_9@@7) (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| ExhaleHeap@@8) o2_1@@7 f_9@@7)))
 :qid |stdinbpl.69:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| ExhaleHeap@@8) o2_1@@7 f_9@@7))
))) (forall ((o2_1@@8 T@Ref) (f_9@@8 T@Field_6965_20336) ) (!  (=> (select (|PolymorphicMapType_7470_6965_21514#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@9) null (WandMaskField_6965 pm_f_1@@2))) o2_1@@8 f_9@@8) (= (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@9) o2_1@@8 f_9@@8) (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@8) o2_1@@8 f_9@@8)))
 :qid |stdinbpl.69:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@8) o2_1@@8 f_9@@8))
)))))
 :qid |stdinbpl.67:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (IsWandField_6965_22041 pm_f_1@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6905) (ExhaleHeap@@9 T@PolymorphicMapType_6905) (Mask@@20 T@PolymorphicMapType_6926) (pm_f_20@@1 T@Field_6965_20203) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (and (HasDirectPerm_6965_20267 Mask@@20 null pm_f_20@@1) (IsPredicateField_6965_20294 pm_f_20@@1)) (and (and (and (and (forall ((o2_20@@9 T@Ref) (f_53@@9 T@Field_6965_53) ) (!  (=> (select (|PolymorphicMapType_7470_6965_53#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@10) null (PredicateMaskField_6965 pm_f_20@@1))) o2_20@@9 f_53@@9) (= (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@10) o2_20@@9 f_53@@9) (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@9) o2_20@@9 f_53@@9)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@9) o2_20@@9 f_53@@9))
)) (forall ((o2_20@@10 T@Ref) (f_53@@10 T@Field_6978_6979) ) (!  (=> (select (|PolymorphicMapType_7470_6965_6979#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@10) null (PredicateMaskField_6965 pm_f_20@@1))) o2_20@@10 f_53@@10) (= (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@10) o2_20@@10 f_53@@10) (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| ExhaleHeap@@9) o2_20@@10 f_53@@10)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| ExhaleHeap@@9) o2_20@@10 f_53@@10))
))) (forall ((o2_20@@11 T@Ref) (f_53@@11 T@Field_12570_1733) ) (!  (=> (select (|PolymorphicMapType_7470_6965_1733#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@10) null (PredicateMaskField_6965 pm_f_20@@1))) o2_20@@11 f_53@@11) (= (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@10) o2_20@@11 f_53@@11) (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| ExhaleHeap@@9) o2_20@@11 f_53@@11)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| ExhaleHeap@@9) o2_20@@11 f_53@@11))
))) (forall ((o2_20@@12 T@Ref) (f_53@@12 T@Field_6965_20203) ) (!  (=> (select (|PolymorphicMapType_7470_6965_20203#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@10) null (PredicateMaskField_6965 pm_f_20@@1))) o2_20@@12 f_53@@12) (= (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@10) o2_20@@12 f_53@@12) (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| ExhaleHeap@@9) o2_20@@12 f_53@@12)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| ExhaleHeap@@9) o2_20@@12 f_53@@12))
))) (forall ((o2_20@@13 T@Ref) (f_53@@13 T@Field_6965_20336) ) (!  (=> (select (|PolymorphicMapType_7470_6965_21514#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@10) null (PredicateMaskField_6965 pm_f_20@@1))) o2_20@@13 f_53@@13) (= (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@10) o2_20@@13 f_53@@13) (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@9) o2_20@@13 f_53@@13)))
 :qid |stdinbpl.120:147|
 :skolemid |17|
 :pattern ( (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@9) o2_20@@13 f_53@@13))
)))))
 :qid |stdinbpl.118:19|
 :skolemid |18|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@10 ExhaleHeap@@9 Mask@@20) (IsPredicateField_6965_20294 pm_f_20@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6905) (ExhaleHeap@@10 T@PolymorphicMapType_6905) (Mask@@21 T@PolymorphicMapType_6926) (pm_f_20@@2 T@Field_6965_20203) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@11 ExhaleHeap@@10 Mask@@21) (=> (and (HasDirectPerm_6965_20267 Mask@@21 null pm_f_20@@2) (IsWandField_6965_22041 pm_f_20@@2)) (and (and (and (and (forall ((o2_20@@14 T@Ref) (f_53@@14 T@Field_6965_53) ) (!  (=> (select (|PolymorphicMapType_7470_6965_53#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@11) null (WandMaskField_6965 pm_f_20@@2))) o2_20@@14 f_53@@14) (= (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@11) o2_20@@14 f_53@@14) (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@10) o2_20@@14 f_53@@14)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@10) o2_20@@14 f_53@@14))
)) (forall ((o2_20@@15 T@Ref) (f_53@@15 T@Field_6978_6979) ) (!  (=> (select (|PolymorphicMapType_7470_6965_6979#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@11) null (WandMaskField_6965 pm_f_20@@2))) o2_20@@15 f_53@@15) (= (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@11) o2_20@@15 f_53@@15) (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| ExhaleHeap@@10) o2_20@@15 f_53@@15)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| ExhaleHeap@@10) o2_20@@15 f_53@@15))
))) (forall ((o2_20@@16 T@Ref) (f_53@@16 T@Field_12570_1733) ) (!  (=> (select (|PolymorphicMapType_7470_6965_1733#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@11) null (WandMaskField_6965 pm_f_20@@2))) o2_20@@16 f_53@@16) (= (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@11) o2_20@@16 f_53@@16) (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| ExhaleHeap@@10) o2_20@@16 f_53@@16)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| ExhaleHeap@@10) o2_20@@16 f_53@@16))
))) (forall ((o2_20@@17 T@Ref) (f_53@@17 T@Field_6965_20203) ) (!  (=> (select (|PolymorphicMapType_7470_6965_20203#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@11) null (WandMaskField_6965 pm_f_20@@2))) o2_20@@17 f_53@@17) (= (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@11) o2_20@@17 f_53@@17) (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| ExhaleHeap@@10) o2_20@@17 f_53@@17)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| ExhaleHeap@@10) o2_20@@17 f_53@@17))
))) (forall ((o2_20@@18 T@Ref) (f_53@@18 T@Field_6965_20336) ) (!  (=> (select (|PolymorphicMapType_7470_6965_21514#PolymorphicMapType_7470| (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@11) null (WandMaskField_6965 pm_f_20@@2))) o2_20@@18 f_53@@18) (= (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@11) o2_20@@18 f_53@@18) (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@10) o2_20@@18 f_53@@18)))
 :qid |stdinbpl.136:142|
 :skolemid |21|
 :pattern ( (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@10) o2_20@@18 f_53@@18))
)))))
 :qid |stdinbpl.134:19|
 :skolemid |22|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@11 ExhaleHeap@@10 Mask@@21) (IsWandField_6965_22041 pm_f_20@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.216:15|
 :skolemid |31|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6905) (ExhaleHeap@@11 T@PolymorphicMapType_6905) (Mask@@22 T@PolymorphicMapType_6926) (o_4@@0 T@Ref) (f_9@@9 T@Field_6965_20336) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@22) (=> (HasDirectPerm_6965_24959 Mask@@22 o_4@@0 f_9@@9) (= (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@12) o_4@@0 f_9@@9) (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@11) o_4@@0 f_9@@9))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@22) (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@11) o_4@@0 f_9@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6905) (ExhaleHeap@@12 T@PolymorphicMapType_6905) (Mask@@23 T@PolymorphicMapType_6926) (o_4@@1 T@Ref) (f_9@@10 T@Field_6965_20203) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@23) (=> (HasDirectPerm_6965_20267 Mask@@23 o_4@@1 f_9@@10) (= (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@13) o_4@@1 f_9@@10) (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| ExhaleHeap@@12) o_4@@1 f_9@@10))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@23) (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| ExhaleHeap@@12) o_4@@1 f_9@@10))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6905) (ExhaleHeap@@13 T@PolymorphicMapType_6905) (Mask@@24 T@PolymorphicMapType_6926) (o_4@@2 T@Ref) (f_9@@11 T@Field_12570_1733) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@24) (=> (HasDirectPerm_6965_1733 Mask@@24 o_4@@2 f_9@@11) (= (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@14) o_4@@2 f_9@@11) (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| ExhaleHeap@@13) o_4@@2 f_9@@11))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@24) (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| ExhaleHeap@@13) o_4@@2 f_9@@11))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6905) (ExhaleHeap@@14 T@PolymorphicMapType_6905) (Mask@@25 T@PolymorphicMapType_6926) (o_4@@3 T@Ref) (f_9@@12 T@Field_6978_6979) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@25) (=> (HasDirectPerm_6965_6979 Mask@@25 o_4@@3 f_9@@12) (= (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@15) o_4@@3 f_9@@12) (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| ExhaleHeap@@14) o_4@@3 f_9@@12))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@25) (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| ExhaleHeap@@14) o_4@@3 f_9@@12))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6905) (ExhaleHeap@@15 T@PolymorphicMapType_6905) (Mask@@26 T@PolymorphicMapType_6926) (o_4@@4 T@Ref) (f_9@@13 T@Field_6965_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@26) (=> (HasDirectPerm_6965_53 Mask@@26 o_4@@4 f_9@@13) (= (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@16) o_4@@4 f_9@@13) (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@15) o_4@@4 f_9@@13))))
 :qid |stdinbpl.44:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@26) (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@15) o_4@@4 f_9@@13))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6905) (ExhaleHeap@@16 T@PolymorphicMapType_6905) (Mask@@27 T@PolymorphicMapType_6926) (o_41@@0 T@Ref) (f_53@@19 T@Field_6965_20336) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@16 Mask@@27) (=> (HasDirectPerm_6965_24959 Mask@@27 o_41@@0 f_53@@19) (= (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@17) o_41@@0 f_53@@19) (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@16) o_41@@0 f_53@@19))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@17 ExhaleHeap@@16 Mask@@27) (select (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| ExhaleHeap@@16) o_41@@0 f_53@@19))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6905) (ExhaleHeap@@17 T@PolymorphicMapType_6905) (Mask@@28 T@PolymorphicMapType_6926) (o_41@@1 T@Ref) (f_53@@20 T@Field_6965_20203) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@18 ExhaleHeap@@17 Mask@@28) (=> (HasDirectPerm_6965_20267 Mask@@28 o_41@@1 f_53@@20) (= (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@18) o_41@@1 f_53@@20) (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| ExhaleHeap@@17) o_41@@1 f_53@@20))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@18 ExhaleHeap@@17 Mask@@28) (select (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| ExhaleHeap@@17) o_41@@1 f_53@@20))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6905) (ExhaleHeap@@18 T@PolymorphicMapType_6905) (Mask@@29 T@PolymorphicMapType_6926) (o_41@@2 T@Ref) (f_53@@21 T@Field_12570_1733) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@18 Mask@@29) (=> (HasDirectPerm_6965_1733 Mask@@29 o_41@@2 f_53@@21) (= (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@19) o_41@@2 f_53@@21) (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| ExhaleHeap@@18) o_41@@2 f_53@@21))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@19 ExhaleHeap@@18 Mask@@29) (select (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| ExhaleHeap@@18) o_41@@2 f_53@@21))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6905) (ExhaleHeap@@19 T@PolymorphicMapType_6905) (Mask@@30 T@PolymorphicMapType_6926) (o_41@@3 T@Ref) (f_53@@22 T@Field_6978_6979) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@20 ExhaleHeap@@19 Mask@@30) (=> (HasDirectPerm_6965_6979 Mask@@30 o_41@@3 f_53@@22) (= (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@20) o_41@@3 f_53@@22) (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| ExhaleHeap@@19) o_41@@3 f_53@@22))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@20 ExhaleHeap@@19 Mask@@30) (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| ExhaleHeap@@19) o_41@@3 f_53@@22))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6905) (ExhaleHeap@@20 T@PolymorphicMapType_6905) (Mask@@31 T@PolymorphicMapType_6926) (o_41@@4 T@Ref) (f_53@@23 T@Field_6965_53) ) (!  (=> (IdenticalOnKnownLocationsLiberal Heap@@21 ExhaleHeap@@20 Mask@@31) (=> (HasDirectPerm_6965_53 Mask@@31 o_41@@4 f_53@@23) (= (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@21) o_41@@4 f_53@@23) (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@20) o_41@@4 f_53@@23))))
 :qid |stdinbpl.105:22|
 :skolemid |14|
 :pattern ( (IdenticalOnKnownLocationsLiberal Heap@@21 ExhaleHeap@@20 Mask@@31) (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| ExhaleHeap@@20) o_41@@4 f_53@@23))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6965_20336) ) (! (= (select (|PolymorphicMapType_6926_3263_31619#PolymorphicMapType_6926| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_6926_3263_31619#PolymorphicMapType_6926| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6965_20203) ) (! (= (select (|PolymorphicMapType_6926_3263_20203#PolymorphicMapType_6926| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_6926_3263_20203#PolymorphicMapType_6926| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6965_53) ) (! (= (select (|PolymorphicMapType_6926_3263_53#PolymorphicMapType_6926| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_6926_3263_53#PolymorphicMapType_6926| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12570_1733) ) (! (= (select (|PolymorphicMapType_6926_3266_1733#PolymorphicMapType_6926| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_6926_3266_1733#PolymorphicMapType_6926| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_6978_6979) ) (! (= (select (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.163:22|
 :skolemid |25|
 :pattern ( (select (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6926) (SummandMask1 T@PolymorphicMapType_6926) (SummandMask2 T@PolymorphicMapType_6926) (o_2@@19 T@Ref) (f_4@@19 T@Field_6965_20336) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6926_3263_31619#PolymorphicMapType_6926| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6926_3263_31619#PolymorphicMapType_6926| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6926_3263_31619#PolymorphicMapType_6926| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6926_3263_31619#PolymorphicMapType_6926| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6926_3263_31619#PolymorphicMapType_6926| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6926_3263_31619#PolymorphicMapType_6926| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6926) (SummandMask1@@0 T@PolymorphicMapType_6926) (SummandMask2@@0 T@PolymorphicMapType_6926) (o_2@@20 T@Ref) (f_4@@20 T@Field_6965_20203) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6926_3263_20203#PolymorphicMapType_6926| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6926_3263_20203#PolymorphicMapType_6926| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6926_3263_20203#PolymorphicMapType_6926| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6926_3263_20203#PolymorphicMapType_6926| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6926_3263_20203#PolymorphicMapType_6926| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6926_3263_20203#PolymorphicMapType_6926| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6926) (SummandMask1@@1 T@PolymorphicMapType_6926) (SummandMask2@@1 T@PolymorphicMapType_6926) (o_2@@21 T@Ref) (f_4@@21 T@Field_6965_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6926_3263_53#PolymorphicMapType_6926| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6926_3263_53#PolymorphicMapType_6926| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6926_3263_53#PolymorphicMapType_6926| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6926_3263_53#PolymorphicMapType_6926| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6926_3263_53#PolymorphicMapType_6926| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6926_3263_53#PolymorphicMapType_6926| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6926) (SummandMask1@@2 T@PolymorphicMapType_6926) (SummandMask2@@2 T@PolymorphicMapType_6926) (o_2@@22 T@Ref) (f_4@@22 T@Field_12570_1733) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6926_3266_1733#PolymorphicMapType_6926| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6926_3266_1733#PolymorphicMapType_6926| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6926_3266_1733#PolymorphicMapType_6926| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6926_3266_1733#PolymorphicMapType_6926| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6926_3266_1733#PolymorphicMapType_6926| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6926_3266_1733#PolymorphicMapType_6926| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6926) (SummandMask1@@3 T@PolymorphicMapType_6926) (SummandMask2@@3 T@PolymorphicMapType_6926) (o_2@@23 T@Ref) (f_4@@23 T@Field_6978_6979) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.196:22|
 :skolemid |30|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6905) (Heap1@@1 T@PolymorphicMapType_6905) (Mask1 T@PolymorphicMapType_6926) (Heap2@@0 T@PolymorphicMapType_6905) (Mask2 T@PolymorphicMapType_6926) ) (! (= (SumHeap Heap@@22 Heap1@@1 Mask1 Heap2@@0 Mask2)  (and (IdenticalOnKnownLocationsLiberal Heap1@@1 Heap@@22 Mask1) (IdenticalOnKnownLocationsLiberal Heap2@@0 Heap@@22 Mask2)))
 :qid |stdinbpl.150:15|
 :skolemid |24|
 :pattern ( (SumHeap Heap@@22 Heap1@@1 Mask1 Heap2@@0 Mask2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6905) (o_3 T@Ref) (f_10 T@Field_6965_20203) (v T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_6905 (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@23) (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@23) (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@23) (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@23) (store (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@23) o_3 f_10 v)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6905 (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@23) (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@23) (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@23) (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@23) (store (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@23) o_3 f_10 v)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6905) (o_3@@0 T@Ref) (f_10@@0 T@Field_6965_20336) (v@@0 T@PolymorphicMapType_7470) ) (! (succHeap Heap@@24 (PolymorphicMapType_6905 (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@24) (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@24) (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@24) (store (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@24) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@24)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6905 (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@24) (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@24) (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@24) (store (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@24) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6905) (o_3@@1 T@Ref) (f_10@@1 T@Field_12570_1733) (v@@1 Int) ) (! (succHeap Heap@@25 (PolymorphicMapType_6905 (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@25) (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@25) (store (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@25) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@25) (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@25)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6905 (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@25) (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@25) (store (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@25) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@25) (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6905) (o_3@@2 T@Ref) (f_10@@2 T@Field_6978_6979) (v@@2 T@Ref) ) (! (succHeap Heap@@26 (PolymorphicMapType_6905 (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@26) (store (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@26) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@26) (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@26) (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@26)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6905 (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@26) (store (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@26) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@26) (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@26) (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6905) (o_3@@3 T@Ref) (f_10@@3 T@Field_6965_53) (v@@3 Bool) ) (! (succHeap Heap@@27 (PolymorphicMapType_6905 (store (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@27) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@27) (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@27) (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@27) (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@27)))
 :qid |stdinbpl.80:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6905 (store (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@27) o_3@@3 f_10@@3 v@@3) (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@27) (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@27) (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@27) (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@27)))
)))
(assert (forall ((o_3@@4 T@Ref) (f_8 T@Field_6978_6979) (Heap@@28 T@PolymorphicMapType_6905) ) (!  (=> (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@28) o_3@@4 $allocated) (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@28) (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@28) o_3@@4 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@28) o_3@@4 f_8))
)))
(assert (forall ((p@@1 T@Field_6965_20203) (v_1@@0 T@FrameType) (q T@Field_6965_20203) (w@@0 T@FrameType) (r T@Field_6965_20203) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6965_6965 p@@1 v_1@@0 q w@@0) (InsidePredicate_6965_6965 q w@@0 r u)) (InsidePredicate_6965_6965 p@@1 v_1@@0 r u))
 :qid |stdinbpl.223:25|
 :skolemid |32|
 :pattern ( (InsidePredicate_6965_6965 p@@1 v_1@@0 q w@@0) (InsidePredicate_6965_6965 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun nonDet () Bool)
(declare-fun Heap@0 () T@PolymorphicMapType_6905)
(declare-fun LoopSumHeap@1 () T@PolymorphicMapType_6905)
(declare-fun Heap@@29 () T@PolymorphicMapType_6905)
(declare-fun Mask@0 () T@PolymorphicMapType_6926)
(declare-fun LoopSumMask@1 () T@PolymorphicMapType_6926)
(declare-fun Mask@1 () T@PolymorphicMapType_6926)
(declare-fun Heap@1 () T@PolymorphicMapType_6905)
(declare-fun LoopSumMask@0 () T@PolymorphicMapType_6926)
(declare-fun LoopSumHeap@0 () T@PolymorphicMapType_6905)
(declare-fun out () T@Ref)
(declare-fun error_0 () T@Ref)
(set-info :boogie-vc-id nested_try_finally_fails)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon21_Else_correct  (=> (and (and (not nonDet) (state Heap@0 ZeroMask)) (and (state Heap@0 ZeroMask) (= (ControlFlow 0 8) (- 0 7)))) false)))
(let ((__end_correct true))
(let ((anon21_Then_correct  (=> nonDet (=> (and (SumHeap LoopSumHeap@1 Heap@0 ZeroMask Heap@@29 Mask@0) (sumMask LoopSumMask@1 ZeroMask Mask@0)) (=> (and (and (state LoopSumHeap@1 LoopSumMask@1) (= Mask@1 LoopSumMask@1)) (and (= Heap@1 LoopSumHeap@1) (= (ControlFlow 0 6) 2))) __end_correct)))))
(let ((anon20_Then_correct  (=> (and (and (> 0 1) (state Heap@0 ZeroMask)) (and (state Heap@0 ZeroMask) (state Heap@0 ZeroMask))) (and (=> (= (ControlFlow 0 9) 6) anon21_Then_correct) (=> (= (ControlFlow 0 9) 8) anon21_Else_correct)))))
(let ((anon23_Else_correct  (=> (and (and (>= 0 0) (= Mask@1 LoopSumMask@0)) (and (= Heap@1 LoopSumHeap@0) (= (ControlFlow 0 4) 2))) __end_correct)))
(let ((anon23_Then_correct  (=> (and (and (> 0 0) (= Mask@1 LoopSumMask@0)) (and (= Heap@1 LoopSumHeap@0) (= (ControlFlow 0 3) 2))) __end_correct)))
(let ((anon20_Else_correct  (=> (>= 1 0) (=> (and (and (SumHeap LoopSumHeap@0 Heap@0 ZeroMask Heap@@29 Mask@0) (sumMask LoopSumMask@0 ZeroMask Mask@0)) (and (state LoopSumHeap@0 LoopSumMask@0) (state LoopSumHeap@0 LoopSumMask@0))) (and (=> (= (ControlFlow 0 5) 3) anon23_Then_correct) (=> (= (ControlFlow 0 5) 4) anon23_Else_correct))))))
(let ((anon24_Else_correct  (=> (state Heap@@29 ZeroMask) (=> (and (state Heap@@29 ZeroMask) (state Heap@@29 ZeroMask)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (= FullPerm (select (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| ZeroMask) out Container_value))) (=> (= FullPerm (select (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| ZeroMask) out Container_value)) (=> (= Heap@0 (PolymorphicMapType_6905 (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@29) (store (|PolymorphicMapType_6905_3085_3086#PolymorphicMapType_6905| Heap@@29) out Container_value null) (|PolymorphicMapType_6905_6965_1733#PolymorphicMapType_6905| Heap@@29) (|PolymorphicMapType_6905_6965_20380#PolymorphicMapType_6905| Heap@@29) (|PolymorphicMapType_6905_6965_20203#PolymorphicMapType_6905| Heap@@29))) (=> (and (and (state Heap@0 ZeroMask) (state Heap@0 ZeroMask)) (and (state Heap@0 ZeroMask) (state Heap@0 ZeroMask))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (= 0 0)) (=> (= 0 0) (=> (state Heap@0 ZeroMask) (and (=> (= (ControlFlow 0 10) 9) anon20_Then_correct) (=> (= (ControlFlow 0 10) 5) anon20_Else_correct)))))))))))))
(let ((anon24_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@29 ZeroMask) AssumePermUpperBound) (=> (and (and (and (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@29) out $allocated) (not (= out null))) (and (= Mask@0 (PolymorphicMapType_6926 (store (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| ZeroMask) out Container_value (+ (select (|PolymorphicMapType_6926_3263_3264#PolymorphicMapType_6926| ZeroMask) out Container_value) FullPerm)) (|PolymorphicMapType_6926_3266_1733#PolymorphicMapType_6926| ZeroMask) (|PolymorphicMapType_6926_3263_53#PolymorphicMapType_6926| ZeroMask) (|PolymorphicMapType_6926_3263_20203#PolymorphicMapType_6926| ZeroMask) (|PolymorphicMapType_6926_3263_31619#PolymorphicMapType_6926| ZeroMask))) (state Heap@@29 Mask@0))) (and (and (state Heap@@29 Mask@0) (select (|PolymorphicMapType_6905_3082_53#PolymorphicMapType_6905| Heap@@29) error_0 $allocated)) (and (state Heap@@29 Mask@0) (state Heap@@29 Mask@0)))) (and (=> (= (ControlFlow 0 13) 1) anon24_Then_correct) (=> (= (ControlFlow 0 13) 10) anon24_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14) 13) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 10) (- 12))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
