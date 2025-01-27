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
(declare-sort T@Field_10427_53 0)
(declare-sort T@Field_10440_10441 0)
(declare-sort T@Field_16990_16991 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_19631_19636 0)
(declare-sort T@Field_6083_6138 0)
(declare-sort T@Field_6083_19636 0)
(declare-sort T@Field_6137_6084 0)
(declare-sort T@Field_6137_53 0)
(declare-datatypes ((T@PolymorphicMapType_10388 0)) (((PolymorphicMapType_10388 (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| (Array T@Ref T@Field_16990_16991 Real)) (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| (Array T@Ref T@Field_10440_10441 Real)) (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| (Array T@Ref T@Field_6137_6084 Real)) (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| (Array T@Ref T@Field_6137_53 Real)) (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| (Array T@Ref T@Field_19631_19636 Real)) (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| (Array T@Ref T@Field_6083_6138 Real)) (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| (Array T@Ref T@Field_10427_53 Real)) (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| (Array T@Ref T@Field_6083_19636 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10916 0)) (((PolymorphicMapType_10916 (|PolymorphicMapType_10916_6083_6084#PolymorphicMapType_10916| (Array T@Ref T@Field_10440_10441 Bool)) (|PolymorphicMapType_10916_6083_53#PolymorphicMapType_10916| (Array T@Ref T@Field_10427_53 Bool)) (|PolymorphicMapType_10916_6083_16991#PolymorphicMapType_10916| (Array T@Ref T@Field_6083_6138 Bool)) (|PolymorphicMapType_10916_6083_34059#PolymorphicMapType_10916| (Array T@Ref T@Field_6083_19636 Bool)) (|PolymorphicMapType_10916_16990_6084#PolymorphicMapType_10916| (Array T@Ref T@Field_6137_6084 Bool)) (|PolymorphicMapType_10916_16990_53#PolymorphicMapType_10916| (Array T@Ref T@Field_6137_53 Bool)) (|PolymorphicMapType_10916_16990_16991#PolymorphicMapType_10916| (Array T@Ref T@Field_16990_16991 Bool)) (|PolymorphicMapType_10916_16990_34909#PolymorphicMapType_10916| (Array T@Ref T@Field_19631_19636 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10367 0)) (((PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| (Array T@Ref T@Field_10427_53 Bool)) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| (Array T@Ref T@Field_10440_10441 T@Ref)) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| (Array T@Ref T@Field_16990_16991 T@FrameType)) (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| (Array T@Ref T@Field_19631_19636 T@PolymorphicMapType_10916)) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| (Array T@Ref T@Field_6083_6138 T@FrameType)) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| (Array T@Ref T@Field_6083_19636 T@PolymorphicMapType_10916)) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| (Array T@Ref T@Field_6137_6084 T@Ref)) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| (Array T@Ref T@Field_6137_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_10427_53)
(declare-fun sibling () T@Field_10440_10441)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun succHeap (T@PolymorphicMapType_10367 T@PolymorphicMapType_10367) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10367 T@PolymorphicMapType_10367) Bool)
(declare-fun state (T@PolymorphicMapType_10367 T@PolymorphicMapType_10388) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10388) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10367 T@PolymorphicMapType_10367 T@PolymorphicMapType_10388) Bool)
(declare-fun IsPredicateField_6137_6138 (T@Field_16990_16991) Bool)
(declare-fun HasDirectPerm_6137_6138 (T@PolymorphicMapType_10388 T@Ref T@Field_16990_16991) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6137 (T@Field_16990_16991) T@Field_19631_19636)
(declare-fun IsPredicateField_6083_32788 (T@Field_6083_6138) Bool)
(declare-fun HasDirectPerm_6083_6138 (T@PolymorphicMapType_10388 T@Ref T@Field_6083_6138) Bool)
(declare-fun PredicateMaskField_6083 (T@Field_6083_6138) T@Field_6083_19636)
(declare-fun IsWandField_6137_36074 (T@Field_16990_16991) Bool)
(declare-fun WandMaskField_6137 (T@Field_16990_16991) T@Field_19631_19636)
(declare-fun IsWandField_6083_35717 (T@Field_6083_6138) Bool)
(declare-fun WandMaskField_6083 (T@Field_6083_6138) T@Field_6083_19636)
(declare-fun ZeroPMask () T@PolymorphicMapType_10916)
(declare-fun |degrees'| (T@PolymorphicMapType_10367 T@Ref T@Ref) T@Seq_2867)
(declare-fun |degrees#triggerStateless| (T@Ref T@Ref) T@Seq_2867)
(declare-fun |lseg#trigger_6137| (T@PolymorphicMapType_10367 T@Field_16990_16991) Bool)
(declare-fun lseg (T@Ref T@Ref) T@Field_16990_16991)
(declare-fun |degrees#frame| (T@FrameType T@Ref T@Ref) T@Seq_2867)
(declare-fun dummyFunction_16590 (T@Seq_2867) Bool)
(declare-fun |lseg#everUsed_6137| (T@Field_16990_16991) Bool)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_3154| () T@Seq_2867)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Singleton_3| (Int) T@Seq_2867)
(declare-fun degrees (T@PolymorphicMapType_10367 T@Ref T@Ref) T@Seq_2867)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Append_3| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun |lseg#sm| (T@Ref T@Ref) T@Field_19631_19636)
(declare-fun dummyHeap () T@PolymorphicMapType_10367)
(declare-fun ZeroMask () T@PolymorphicMapType_10388)
(declare-fun InsidePredicate_10427_10427 (T@Field_6083_6138 T@FrameType T@Field_6083_6138 T@FrameType) Bool)
(declare-fun InsidePredicate_6137_6137 (T@Field_16990_16991 T@FrameType T@Field_16990_16991 T@FrameType) Bool)
(declare-fun IsPredicateField_6083_6084 (T@Field_10440_10441) Bool)
(declare-fun IsWandField_6083_6084 (T@Field_10440_10441) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6083_41785 (T@Field_6083_19636) Bool)
(declare-fun IsWandField_6083_41801 (T@Field_6083_19636) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6083_53 (T@Field_10427_53) Bool)
(declare-fun IsWandField_6083_53 (T@Field_10427_53) Bool)
(declare-fun IsPredicateField_6137_41136 (T@Field_19631_19636) Bool)
(declare-fun IsWandField_6137_41152 (T@Field_19631_19636) Bool)
(declare-fun IsPredicateField_6137_53 (T@Field_6137_53) Bool)
(declare-fun IsWandField_6137_53 (T@Field_6137_53) Bool)
(declare-fun IsPredicateField_6137_6084 (T@Field_6137_6084) Bool)
(declare-fun IsWandField_6137_6084 (T@Field_6137_6084) Bool)
(declare-fun HasDirectPerm_6137_32543 (T@PolymorphicMapType_10388 T@Ref T@Field_19631_19636) Bool)
(declare-fun HasDirectPerm_6137_53 (T@PolymorphicMapType_10388 T@Ref T@Field_6137_53) Bool)
(declare-fun HasDirectPerm_6137_6084 (T@PolymorphicMapType_10388 T@Ref T@Field_6137_6084) Bool)
(declare-fun HasDirectPerm_6083_31623 (T@PolymorphicMapType_10388 T@Ref T@Field_6083_19636) Bool)
(declare-fun HasDirectPerm_6083_53 (T@PolymorphicMapType_10388 T@Ref T@Field_10427_53) Bool)
(declare-fun HasDirectPerm_6083_6084 (T@PolymorphicMapType_10388 T@Ref T@Field_10440_10441) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10388 T@PolymorphicMapType_10388 T@PolymorphicMapType_10388) Bool)
(declare-fun |Seq#Equal_4288| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun getPredWandId_6137_6138 (T@Field_16990_16991) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_10427_6137 (T@Field_6083_6138 T@FrameType T@Field_16990_16991 T@FrameType) Bool)
(declare-fun InsidePredicate_6137_10427 (T@Field_16990_16991 T@FrameType T@Field_6083_6138 T@FrameType) Bool)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.276:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_2867| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10367) (Heap1 T@PolymorphicMapType_10367) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10367) (Mask T@PolymorphicMapType_10388) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10367) (ExhaleHeap T@PolymorphicMapType_10367) (Mask@@0 T@PolymorphicMapType_10388) (pm_f_19 T@Field_16990_16991) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6137_6138 Mask@@0 null pm_f_19) (IsPredicateField_6137_6138 pm_f_19)) (and (and (and (and (and (and (and (forall ((o2_19 T@Ref) (f_19 T@Field_10440_10441) ) (!  (=> (select (|PolymorphicMapType_10916_6083_6084#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@0) null (PredicateMaskField_6137 pm_f_19))) o2_19 f_19) (= (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@0) o2_19 f_19) (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| ExhaleHeap) o2_19 f_19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| ExhaleHeap) o2_19 f_19))
)) (forall ((o2_19@@0 T@Ref) (f_19@@0 T@Field_10427_53) ) (!  (=> (select (|PolymorphicMapType_10916_6083_53#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@0) null (PredicateMaskField_6137 pm_f_19))) o2_19@@0 f_19@@0) (= (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@0) o2_19@@0 f_19@@0) (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| ExhaleHeap) o2_19@@0 f_19@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| ExhaleHeap) o2_19@@0 f_19@@0))
))) (forall ((o2_19@@1 T@Ref) (f_19@@1 T@Field_6083_6138) ) (!  (=> (select (|PolymorphicMapType_10916_6083_16991#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@0) null (PredicateMaskField_6137 pm_f_19))) o2_19@@1 f_19@@1) (= (select (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@0) o2_19@@1 f_19@@1) (select (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| ExhaleHeap) o2_19@@1 f_19@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| ExhaleHeap) o2_19@@1 f_19@@1))
))) (forall ((o2_19@@2 T@Ref) (f_19@@2 T@Field_6083_19636) ) (!  (=> (select (|PolymorphicMapType_10916_6083_34059#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@0) null (PredicateMaskField_6137 pm_f_19))) o2_19@@2 f_19@@2) (= (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@0) o2_19@@2 f_19@@2) (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| ExhaleHeap) o2_19@@2 f_19@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| ExhaleHeap) o2_19@@2 f_19@@2))
))) (forall ((o2_19@@3 T@Ref) (f_19@@3 T@Field_6137_6084) ) (!  (=> (select (|PolymorphicMapType_10916_16990_6084#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@0) null (PredicateMaskField_6137 pm_f_19))) o2_19@@3 f_19@@3) (= (select (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@0) o2_19@@3 f_19@@3) (select (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| ExhaleHeap) o2_19@@3 f_19@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| ExhaleHeap) o2_19@@3 f_19@@3))
))) (forall ((o2_19@@4 T@Ref) (f_19@@4 T@Field_6137_53) ) (!  (=> (select (|PolymorphicMapType_10916_16990_53#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@0) null (PredicateMaskField_6137 pm_f_19))) o2_19@@4 f_19@@4) (= (select (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@0) o2_19@@4 f_19@@4) (select (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| ExhaleHeap) o2_19@@4 f_19@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| ExhaleHeap) o2_19@@4 f_19@@4))
))) (forall ((o2_19@@5 T@Ref) (f_19@@5 T@Field_16990_16991) ) (!  (=> (select (|PolymorphicMapType_10916_16990_16991#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@0) null (PredicateMaskField_6137 pm_f_19))) o2_19@@5 f_19@@5) (= (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@0) o2_19@@5 f_19@@5) (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| ExhaleHeap) o2_19@@5 f_19@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| ExhaleHeap) o2_19@@5 f_19@@5))
))) (forall ((o2_19@@6 T@Ref) (f_19@@6 T@Field_19631_19636) ) (!  (=> (select (|PolymorphicMapType_10916_16990_34909#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@0) null (PredicateMaskField_6137 pm_f_19))) o2_19@@6 f_19@@6) (= (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@0) o2_19@@6 f_19@@6) (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| ExhaleHeap) o2_19@@6 f_19@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| ExhaleHeap) o2_19@@6 f_19@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6137_6138 pm_f_19))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10367) (ExhaleHeap@@0 T@PolymorphicMapType_10367) (Mask@@1 T@PolymorphicMapType_10388) (pm_f_19@@0 T@Field_6083_6138) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6083_6138 Mask@@1 null pm_f_19@@0) (IsPredicateField_6083_32788 pm_f_19@@0)) (and (and (and (and (and (and (and (forall ((o2_19@@7 T@Ref) (f_19@@7 T@Field_10440_10441) ) (!  (=> (select (|PolymorphicMapType_10916_6083_6084#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@1) null (PredicateMaskField_6083 pm_f_19@@0))) o2_19@@7 f_19@@7) (= (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@1) o2_19@@7 f_19@@7) (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@7 f_19@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@7 f_19@@7))
)) (forall ((o2_19@@8 T@Ref) (f_19@@8 T@Field_10427_53) ) (!  (=> (select (|PolymorphicMapType_10916_6083_53#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@1) null (PredicateMaskField_6083 pm_f_19@@0))) o2_19@@8 f_19@@8) (= (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@1) o2_19@@8 f_19@@8) (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@8 f_19@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@8 f_19@@8))
))) (forall ((o2_19@@9 T@Ref) (f_19@@9 T@Field_6083_6138) ) (!  (=> (select (|PolymorphicMapType_10916_6083_16991#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@1) null (PredicateMaskField_6083 pm_f_19@@0))) o2_19@@9 f_19@@9) (= (select (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@1) o2_19@@9 f_19@@9) (select (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@9 f_19@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@9 f_19@@9))
))) (forall ((o2_19@@10 T@Ref) (f_19@@10 T@Field_6083_19636) ) (!  (=> (select (|PolymorphicMapType_10916_6083_34059#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@1) null (PredicateMaskField_6083 pm_f_19@@0))) o2_19@@10 f_19@@10) (= (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@1) o2_19@@10 f_19@@10) (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@10 f_19@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@10 f_19@@10))
))) (forall ((o2_19@@11 T@Ref) (f_19@@11 T@Field_6137_6084) ) (!  (=> (select (|PolymorphicMapType_10916_16990_6084#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@1) null (PredicateMaskField_6083 pm_f_19@@0))) o2_19@@11 f_19@@11) (= (select (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@1) o2_19@@11 f_19@@11) (select (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@11 f_19@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@11 f_19@@11))
))) (forall ((o2_19@@12 T@Ref) (f_19@@12 T@Field_6137_53) ) (!  (=> (select (|PolymorphicMapType_10916_16990_53#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@1) null (PredicateMaskField_6083 pm_f_19@@0))) o2_19@@12 f_19@@12) (= (select (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@1) o2_19@@12 f_19@@12) (select (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@12 f_19@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@12 f_19@@12))
))) (forall ((o2_19@@13 T@Ref) (f_19@@13 T@Field_16990_16991) ) (!  (=> (select (|PolymorphicMapType_10916_16990_16991#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@1) null (PredicateMaskField_6083 pm_f_19@@0))) o2_19@@13 f_19@@13) (= (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@1) o2_19@@13 f_19@@13) (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@13 f_19@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@13 f_19@@13))
))) (forall ((o2_19@@14 T@Ref) (f_19@@14 T@Field_19631_19636) ) (!  (=> (select (|PolymorphicMapType_10916_16990_34909#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@1) null (PredicateMaskField_6083 pm_f_19@@0))) o2_19@@14 f_19@@14) (= (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@1) o2_19@@14 f_19@@14) (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@14 f_19@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| ExhaleHeap@@0) o2_19@@14 f_19@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6083_32788 pm_f_19@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10367) (ExhaleHeap@@1 T@PolymorphicMapType_10367) (Mask@@2 T@PolymorphicMapType_10388) (pm_f_19@@1 T@Field_16990_16991) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6137_6138 Mask@@2 null pm_f_19@@1) (IsWandField_6137_36074 pm_f_19@@1)) (and (and (and (and (and (and (and (forall ((o2_19@@15 T@Ref) (f_19@@15 T@Field_10440_10441) ) (!  (=> (select (|PolymorphicMapType_10916_6083_6084#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@2) null (WandMaskField_6137 pm_f_19@@1))) o2_19@@15 f_19@@15) (= (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@2) o2_19@@15 f_19@@15) (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@15 f_19@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@15 f_19@@15))
)) (forall ((o2_19@@16 T@Ref) (f_19@@16 T@Field_10427_53) ) (!  (=> (select (|PolymorphicMapType_10916_6083_53#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@2) null (WandMaskField_6137 pm_f_19@@1))) o2_19@@16 f_19@@16) (= (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@2) o2_19@@16 f_19@@16) (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@16 f_19@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@16 f_19@@16))
))) (forall ((o2_19@@17 T@Ref) (f_19@@17 T@Field_6083_6138) ) (!  (=> (select (|PolymorphicMapType_10916_6083_16991#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@2) null (WandMaskField_6137 pm_f_19@@1))) o2_19@@17 f_19@@17) (= (select (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@2) o2_19@@17 f_19@@17) (select (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@17 f_19@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@17 f_19@@17))
))) (forall ((o2_19@@18 T@Ref) (f_19@@18 T@Field_6083_19636) ) (!  (=> (select (|PolymorphicMapType_10916_6083_34059#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@2) null (WandMaskField_6137 pm_f_19@@1))) o2_19@@18 f_19@@18) (= (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@2) o2_19@@18 f_19@@18) (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@18 f_19@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@18 f_19@@18))
))) (forall ((o2_19@@19 T@Ref) (f_19@@19 T@Field_6137_6084) ) (!  (=> (select (|PolymorphicMapType_10916_16990_6084#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@2) null (WandMaskField_6137 pm_f_19@@1))) o2_19@@19 f_19@@19) (= (select (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@2) o2_19@@19 f_19@@19) (select (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@19 f_19@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@19 f_19@@19))
))) (forall ((o2_19@@20 T@Ref) (f_19@@20 T@Field_6137_53) ) (!  (=> (select (|PolymorphicMapType_10916_16990_53#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@2) null (WandMaskField_6137 pm_f_19@@1))) o2_19@@20 f_19@@20) (= (select (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@2) o2_19@@20 f_19@@20) (select (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@20 f_19@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@20 f_19@@20))
))) (forall ((o2_19@@21 T@Ref) (f_19@@21 T@Field_16990_16991) ) (!  (=> (select (|PolymorphicMapType_10916_16990_16991#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@2) null (WandMaskField_6137 pm_f_19@@1))) o2_19@@21 f_19@@21) (= (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@2) o2_19@@21 f_19@@21) (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@21 f_19@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@21 f_19@@21))
))) (forall ((o2_19@@22 T@Ref) (f_19@@22 T@Field_19631_19636) ) (!  (=> (select (|PolymorphicMapType_10916_16990_34909#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@2) null (WandMaskField_6137 pm_f_19@@1))) o2_19@@22 f_19@@22) (= (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@2) o2_19@@22 f_19@@22) (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@22 f_19@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| ExhaleHeap@@1) o2_19@@22 f_19@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_6137_36074 pm_f_19@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10367) (ExhaleHeap@@2 T@PolymorphicMapType_10367) (Mask@@3 T@PolymorphicMapType_10388) (pm_f_19@@2 T@Field_6083_6138) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6083_6138 Mask@@3 null pm_f_19@@2) (IsWandField_6083_35717 pm_f_19@@2)) (and (and (and (and (and (and (and (forall ((o2_19@@23 T@Ref) (f_19@@23 T@Field_10440_10441) ) (!  (=> (select (|PolymorphicMapType_10916_6083_6084#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@3) null (WandMaskField_6083 pm_f_19@@2))) o2_19@@23 f_19@@23) (= (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@3) o2_19@@23 f_19@@23) (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@23 f_19@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@23 f_19@@23))
)) (forall ((o2_19@@24 T@Ref) (f_19@@24 T@Field_10427_53) ) (!  (=> (select (|PolymorphicMapType_10916_6083_53#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@3) null (WandMaskField_6083 pm_f_19@@2))) o2_19@@24 f_19@@24) (= (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@3) o2_19@@24 f_19@@24) (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@24 f_19@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@24 f_19@@24))
))) (forall ((o2_19@@25 T@Ref) (f_19@@25 T@Field_6083_6138) ) (!  (=> (select (|PolymorphicMapType_10916_6083_16991#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@3) null (WandMaskField_6083 pm_f_19@@2))) o2_19@@25 f_19@@25) (= (select (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@3) o2_19@@25 f_19@@25) (select (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@25 f_19@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@25 f_19@@25))
))) (forall ((o2_19@@26 T@Ref) (f_19@@26 T@Field_6083_19636) ) (!  (=> (select (|PolymorphicMapType_10916_6083_34059#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@3) null (WandMaskField_6083 pm_f_19@@2))) o2_19@@26 f_19@@26) (= (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@3) o2_19@@26 f_19@@26) (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@26 f_19@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@26 f_19@@26))
))) (forall ((o2_19@@27 T@Ref) (f_19@@27 T@Field_6137_6084) ) (!  (=> (select (|PolymorphicMapType_10916_16990_6084#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@3) null (WandMaskField_6083 pm_f_19@@2))) o2_19@@27 f_19@@27) (= (select (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@3) o2_19@@27 f_19@@27) (select (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@27 f_19@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@27 f_19@@27))
))) (forall ((o2_19@@28 T@Ref) (f_19@@28 T@Field_6137_53) ) (!  (=> (select (|PolymorphicMapType_10916_16990_53#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@3) null (WandMaskField_6083 pm_f_19@@2))) o2_19@@28 f_19@@28) (= (select (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@3) o2_19@@28 f_19@@28) (select (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@28 f_19@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@28 f_19@@28))
))) (forall ((o2_19@@29 T@Ref) (f_19@@29 T@Field_16990_16991) ) (!  (=> (select (|PolymorphicMapType_10916_16990_16991#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@3) null (WandMaskField_6083 pm_f_19@@2))) o2_19@@29 f_19@@29) (= (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@3) o2_19@@29 f_19@@29) (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@29 f_19@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@29 f_19@@29))
))) (forall ((o2_19@@30 T@Ref) (f_19@@30 T@Field_19631_19636) ) (!  (=> (select (|PolymorphicMapType_10916_16990_34909#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@3) null (WandMaskField_6083 pm_f_19@@2))) o2_19@@30 f_19@@30) (= (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@3) o2_19@@30 f_19@@30) (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@30 f_19@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| ExhaleHeap@@2) o2_19@@30 f_19@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_6083_35717 pm_f_19@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10367) (Heap1@@0 T@PolymorphicMapType_10367) (Heap2 T@PolymorphicMapType_10367) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19631_19636) ) (!  (not (select (|PolymorphicMapType_10916_16990_34909#PolymorphicMapType_10916| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10916_16990_34909#PolymorphicMapType_10916| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16990_16991) ) (!  (not (select (|PolymorphicMapType_10916_16990_16991#PolymorphicMapType_10916| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10916_16990_16991#PolymorphicMapType_10916| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6137_53) ) (!  (not (select (|PolymorphicMapType_10916_16990_53#PolymorphicMapType_10916| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10916_16990_53#PolymorphicMapType_10916| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6137_6084) ) (!  (not (select (|PolymorphicMapType_10916_16990_6084#PolymorphicMapType_10916| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10916_16990_6084#PolymorphicMapType_10916| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6083_19636) ) (!  (not (select (|PolymorphicMapType_10916_6083_34059#PolymorphicMapType_10916| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10916_6083_34059#PolymorphicMapType_10916| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6083_6138) ) (!  (not (select (|PolymorphicMapType_10916_6083_16991#PolymorphicMapType_10916| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10916_6083_16991#PolymorphicMapType_10916| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_10427_53) ) (!  (not (select (|PolymorphicMapType_10916_6083_53#PolymorphicMapType_10916| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10916_6083_53#PolymorphicMapType_10916| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_10440_10441) ) (!  (not (select (|PolymorphicMapType_10916_6083_6084#PolymorphicMapType_10916| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10916_6083_6084#PolymorphicMapType_10916| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10367) (Mask@@4 T@PolymorphicMapType_10388) (this T@Ref) (last T@Ref) ) (!  (=> (state Heap@@4 Mask@@4) (= (|degrees'| Heap@@4 this last) (|degrees#frame| (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@4) null (lseg this last)) this last)))
 :qid |stdinbpl.575:15|
 :skolemid |61|
 :pattern ( (state Heap@@4 Mask@@4) (|degrees'| Heap@@4 this last))
 :pattern ( (state Heap@@4 Mask@@4) (|degrees#triggerStateless| this last) (|lseg#trigger_6137| Heap@@4 (lseg this last)))
)))
(assert (forall ((this@@0 T@Ref) (end_1 T@Ref) ) (! (IsPredicateField_6137_6138 (lseg this@@0 end_1))
 :qid |stdinbpl.696:15|
 :skolemid |64|
 :pattern ( (lseg this@@0 end_1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10367) (this@@1 T@Ref) (last@@0 T@Ref) ) (! (dummyFunction_16590 (|degrees#triggerStateless| this@@1 last@@0))
 :qid |stdinbpl.562:15|
 :skolemid |59|
 :pattern ( (|degrees'| Heap@@5 this@@1 last@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10367) (this@@2 T@Ref) (end_1@@0 T@Ref) ) (! (|lseg#everUsed_6137| (lseg this@@2 end_1@@0))
 :qid |stdinbpl.715:15|
 :skolemid |68|
 :pattern ( (|lseg#trigger_6137| Heap@@6 (lseg this@@2 end_1@@0)))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.297:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_3154|) 0))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.252:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) 0)))
 :qid |stdinbpl.263:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2867| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.537:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2867) (x Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x)) (< (|Seq#Skolem_2867| s@@3 x) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x)) x)))
 :qid |stdinbpl.395:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_2867| s@@4 n@@3) s@@4))
 :qid |stdinbpl.379:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.232:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.230:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10367) (ExhaleHeap@@3 T@PolymorphicMapType_10367) (Mask@@5 T@PolymorphicMapType_10388) (pm_f_19@@3 T@Field_16990_16991) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_6137_6138 Mask@@5 null pm_f_19@@3) (IsPredicateField_6137_6138 pm_f_19@@3)) (= (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@7) null (PredicateMaskField_6137 pm_f_19@@3)) (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| ExhaleHeap@@3) null (PredicateMaskField_6137 pm_f_19@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (IsPredicateField_6137_6138 pm_f_19@@3) (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| ExhaleHeap@@3) null (PredicateMaskField_6137 pm_f_19@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10367) (ExhaleHeap@@4 T@PolymorphicMapType_10367) (Mask@@6 T@PolymorphicMapType_10388) (pm_f_19@@4 T@Field_6083_6138) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_6083_6138 Mask@@6 null pm_f_19@@4) (IsPredicateField_6083_32788 pm_f_19@@4)) (= (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@8) null (PredicateMaskField_6083 pm_f_19@@4)) (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| ExhaleHeap@@4) null (PredicateMaskField_6083 pm_f_19@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (IsPredicateField_6083_32788 pm_f_19@@4) (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| ExhaleHeap@@4) null (PredicateMaskField_6083 pm_f_19@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10367) (ExhaleHeap@@5 T@PolymorphicMapType_10367) (Mask@@7 T@PolymorphicMapType_10388) (pm_f_19@@5 T@Field_16990_16991) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_6137_6138 Mask@@7 null pm_f_19@@5) (IsWandField_6137_36074 pm_f_19@@5)) (= (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@9) null (WandMaskField_6137 pm_f_19@@5)) (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| ExhaleHeap@@5) null (WandMaskField_6137 pm_f_19@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (IsWandField_6137_36074 pm_f_19@@5) (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| ExhaleHeap@@5) null (WandMaskField_6137 pm_f_19@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10367) (ExhaleHeap@@6 T@PolymorphicMapType_10367) (Mask@@8 T@PolymorphicMapType_10388) (pm_f_19@@6 T@Field_6083_6138) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_6083_6138 Mask@@8 null pm_f_19@@6) (IsWandField_6083_35717 pm_f_19@@6)) (= (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@10) null (WandMaskField_6083 pm_f_19@@6)) (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| ExhaleHeap@@6) null (WandMaskField_6083 pm_f_19@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (IsWandField_6083_35717 pm_f_19@@6) (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| ExhaleHeap@@6) null (WandMaskField_6083 pm_f_19@@6)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.520:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3| x@@0) y))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10367) (Mask@@9 T@PolymorphicMapType_10388) (this@@3 T@Ref) (last@@1 T@Ref) ) (!  (=> (and (state Heap@@11 Mask@@9) (< AssumeFunctionsAbove 0)) (=> (not (= this@@3 null)) (= (degrees Heap@@11 this@@3 last@@1) (ite (= this@@3 last@@1) |Seq#Empty_3154| (ite (= (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@11) this@@3 sibling) null) (|Seq#Singleton_3| 0) (|Seq#Append_3| (|Seq#Singleton_3| 0) (|degrees'| Heap@@11 (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@11) this@@3 sibling) last@@1)))))))
 :qid |stdinbpl.568:15|
 :skolemid |60|
 :pattern ( (state Heap@@11 Mask@@9) (degrees Heap@@11 this@@3 last@@1))
 :pattern ( (state Heap@@11 Mask@@9) (|degrees#triggerStateless| this@@3 last@@1) (|lseg#trigger_6137| Heap@@11 (lseg this@@3 last@@1)))
)))
(assert (forall ((this@@4 T@Ref) (end_1@@1 T@Ref) (this2 T@Ref) (end2 T@Ref) ) (!  (=> (= (lseg this@@4 end_1@@1) (lseg this2 end2)) (and (= this@@4 this2) (= end_1@@1 end2)))
 :qid |stdinbpl.706:15|
 :skolemid |66|
 :pattern ( (lseg this@@4 end_1@@1) (lseg this2 end2))
)))
(assert (forall ((this@@5 T@Ref) (end_1@@2 T@Ref) (this2@@0 T@Ref) (end2@@0 T@Ref) ) (!  (=> (= (|lseg#sm| this@@5 end_1@@2) (|lseg#sm| this2@@0 end2@@0)) (and (= this@@5 this2@@0) (= end_1@@2 end2@@0)))
 :qid |stdinbpl.710:15|
 :skolemid |67|
 :pattern ( (|lseg#sm| this@@5 end_1@@2) (|lseg#sm| this2@@0 end2@@0))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.271:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_3| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_3| s@@6 t) n@@5) (|Seq#Append_3| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.356:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10367) (ExhaleHeap@@7 T@PolymorphicMapType_10367) (Mask@@10 T@PolymorphicMapType_10388) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@12) o_12 $allocated) (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_6083_6138) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10427_10427 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10427_10427 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_16990_16991) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_6137_6137 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6137_6137 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3154|)) (not (= s1 |Seq#Empty_3154|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_3| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_3| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_6083_6084 sibling)))
(assert  (not (IsWandField_6083_6084 sibling)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10367) (ExhaleHeap@@8 T@PolymorphicMapType_10367) (Mask@@11 T@PolymorphicMapType_10388) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@13 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10388) (o_2@@7 T@Ref) (f_4@@7 T@Field_6083_19636) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| Mask@@12) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6083_41785 f_4@@7))) (not (IsWandField_6083_41801 f_4@@7))) (<= (select (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| Mask@@12) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| Mask@@12) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10388) (o_2@@8 T@Ref) (f_4@@8 T@Field_10427_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| Mask@@13) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6083_53 f_4@@8))) (not (IsWandField_6083_53 f_4@@8))) (<= (select (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| Mask@@13) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| Mask@@13) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10388) (o_2@@9 T@Ref) (f_4@@9 T@Field_10440_10441) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| Mask@@14) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6083_6084 f_4@@9))) (not (IsWandField_6083_6084 f_4@@9))) (<= (select (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| Mask@@14) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| Mask@@14) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10388) (o_2@@10 T@Ref) (f_4@@10 T@Field_6083_6138) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| Mask@@15) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6083_32788 f_4@@10))) (not (IsWandField_6083_35717 f_4@@10))) (<= (select (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| Mask@@15) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| Mask@@15) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10388) (o_2@@11 T@Ref) (f_4@@11 T@Field_19631_19636) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| Mask@@16) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6137_41136 f_4@@11))) (not (IsWandField_6137_41152 f_4@@11))) (<= (select (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| Mask@@16) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| Mask@@16) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10388) (o_2@@12 T@Ref) (f_4@@12 T@Field_6137_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| Mask@@17) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6137_53 f_4@@12))) (not (IsWandField_6137_53 f_4@@12))) (<= (select (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| Mask@@17) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| Mask@@17) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10388) (o_2@@13 T@Ref) (f_4@@13 T@Field_6137_6084) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| Mask@@18) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6137_6084 f_4@@13))) (not (IsWandField_6137_6084 f_4@@13))) (<= (select (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| Mask@@18) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| Mask@@18) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10388) (o_2@@14 T@Ref) (f_4@@14 T@Field_16990_16991) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| Mask@@19) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6137_6138 f_4@@14))) (not (IsWandField_6137_36074 f_4@@14))) (<= (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| Mask@@19) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| Mask@@19) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10388) (o_2@@15 T@Ref) (f_4@@15 T@Field_19631_19636) ) (! (= (HasDirectPerm_6137_32543 Mask@@20 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| Mask@@20) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6137_32543 Mask@@20 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10388) (o_2@@16 T@Ref) (f_4@@16 T@Field_6137_53) ) (! (= (HasDirectPerm_6137_53 Mask@@21 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| Mask@@21) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6137_53 Mask@@21 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10388) (o_2@@17 T@Ref) (f_4@@17 T@Field_16990_16991) ) (! (= (HasDirectPerm_6137_6138 Mask@@22 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| Mask@@22) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6137_6138 Mask@@22 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10388) (o_2@@18 T@Ref) (f_4@@18 T@Field_6137_6084) ) (! (= (HasDirectPerm_6137_6084 Mask@@23 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| Mask@@23) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6137_6084 Mask@@23 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10388) (o_2@@19 T@Ref) (f_4@@19 T@Field_6083_19636) ) (! (= (HasDirectPerm_6083_31623 Mask@@24 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| Mask@@24) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6083_31623 Mask@@24 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10388) (o_2@@20 T@Ref) (f_4@@20 T@Field_10427_53) ) (! (= (HasDirectPerm_6083_53 Mask@@25 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| Mask@@25) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6083_53 Mask@@25 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10388) (o_2@@21 T@Ref) (f_4@@21 T@Field_6083_6138) ) (! (= (HasDirectPerm_6083_6138 Mask@@26 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| Mask@@26) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6083_6138 Mask@@26 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10388) (o_2@@22 T@Ref) (f_4@@22 T@Field_10440_10441) ) (! (= (HasDirectPerm_6083_6084 Mask@@27 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| Mask@@27) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6083_6084 Mask@@27 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.535:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10367) (ExhaleHeap@@9 T@PolymorphicMapType_10367) (Mask@@28 T@PolymorphicMapType_10388) (o_12@@0 T@Ref) (f_19@@31 T@Field_19631_19636) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@28) (=> (HasDirectPerm_6137_32543 Mask@@28 o_12@@0 f_19@@31) (= (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@14) o_12@@0 f_19@@31) (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| ExhaleHeap@@9) o_12@@0 f_19@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@28) (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| ExhaleHeap@@9) o_12@@0 f_19@@31))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10367) (ExhaleHeap@@10 T@PolymorphicMapType_10367) (Mask@@29 T@PolymorphicMapType_10388) (o_12@@1 T@Ref) (f_19@@32 T@Field_6137_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@29) (=> (HasDirectPerm_6137_53 Mask@@29 o_12@@1 f_19@@32) (= (select (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@15) o_12@@1 f_19@@32) (select (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| ExhaleHeap@@10) o_12@@1 f_19@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@29) (select (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| ExhaleHeap@@10) o_12@@1 f_19@@32))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10367) (ExhaleHeap@@11 T@PolymorphicMapType_10367) (Mask@@30 T@PolymorphicMapType_10388) (o_12@@2 T@Ref) (f_19@@33 T@Field_16990_16991) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@30) (=> (HasDirectPerm_6137_6138 Mask@@30 o_12@@2 f_19@@33) (= (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@16) o_12@@2 f_19@@33) (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| ExhaleHeap@@11) o_12@@2 f_19@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@30) (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| ExhaleHeap@@11) o_12@@2 f_19@@33))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10367) (ExhaleHeap@@12 T@PolymorphicMapType_10367) (Mask@@31 T@PolymorphicMapType_10388) (o_12@@3 T@Ref) (f_19@@34 T@Field_6137_6084) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@31) (=> (HasDirectPerm_6137_6084 Mask@@31 o_12@@3 f_19@@34) (= (select (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@17) o_12@@3 f_19@@34) (select (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| ExhaleHeap@@12) o_12@@3 f_19@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@31) (select (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| ExhaleHeap@@12) o_12@@3 f_19@@34))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10367) (ExhaleHeap@@13 T@PolymorphicMapType_10367) (Mask@@32 T@PolymorphicMapType_10388) (o_12@@4 T@Ref) (f_19@@35 T@Field_6083_19636) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@32) (=> (HasDirectPerm_6083_31623 Mask@@32 o_12@@4 f_19@@35) (= (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@18) o_12@@4 f_19@@35) (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| ExhaleHeap@@13) o_12@@4 f_19@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@32) (select (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| ExhaleHeap@@13) o_12@@4 f_19@@35))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10367) (ExhaleHeap@@14 T@PolymorphicMapType_10367) (Mask@@33 T@PolymorphicMapType_10388) (o_12@@5 T@Ref) (f_19@@36 T@Field_10427_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@33) (=> (HasDirectPerm_6083_53 Mask@@33 o_12@@5 f_19@@36) (= (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@19) o_12@@5 f_19@@36) (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| ExhaleHeap@@14) o_12@@5 f_19@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@33) (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| ExhaleHeap@@14) o_12@@5 f_19@@36))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10367) (ExhaleHeap@@15 T@PolymorphicMapType_10367) (Mask@@34 T@PolymorphicMapType_10388) (o_12@@6 T@Ref) (f_19@@37 T@Field_6083_6138) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@34) (=> (HasDirectPerm_6083_6138 Mask@@34 o_12@@6 f_19@@37) (= (select (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@20) o_12@@6 f_19@@37) (select (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| ExhaleHeap@@15) o_12@@6 f_19@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@34) (select (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| ExhaleHeap@@15) o_12@@6 f_19@@37))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10367) (ExhaleHeap@@16 T@PolymorphicMapType_10367) (Mask@@35 T@PolymorphicMapType_10388) (o_12@@7 T@Ref) (f_19@@38 T@Field_10440_10441) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@35) (=> (HasDirectPerm_6083_6084 Mask@@35 o_12@@7 f_19@@38) (= (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@21) o_12@@7 f_19@@38) (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| ExhaleHeap@@16) o_12@@7 f_19@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@35) (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| ExhaleHeap@@16) o_12@@7 f_19@@38))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3154|)) (not (= s1@@0 |Seq#Empty_3154|))) (= (|Seq#Length_2867| (|Seq#Append_3| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.212:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_6083_19636) ) (! (= (select (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_10427_53) ) (! (= (select (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_10440_10441) ) (! (= (select (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_6083_6138) ) (! (= (select (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_19631_19636) ) (! (= (select (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_6137_53) ) (! (= (select (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_6137_6084) ) (! (= (select (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_16990_16991) ) (! (= (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_2867| (|Seq#Append_3| s@@7 t@@0) n@@7) (|Seq#Drop_2867| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.369:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_3| s@@7 t@@0) n@@7))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10367) (this@@6 T@Ref) (last@@2 T@Ref) ) (!  (and (= (degrees Heap@@22 this@@6 last@@2) (|degrees'| Heap@@22 this@@6 last@@2)) (dummyFunction_16590 (|degrees#triggerStateless| this@@6 last@@2)))
 :qid |stdinbpl.558:15|
 :skolemid |58|
 :pattern ( (degrees Heap@@22 this@@6 last@@2))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10388) (SummandMask1 T@PolymorphicMapType_10388) (SummandMask2 T@PolymorphicMapType_10388) (o_2@@31 T@Ref) (f_4@@31 T@Field_6083_19636) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10388) (SummandMask1@@0 T@PolymorphicMapType_10388) (SummandMask2@@0 T@PolymorphicMapType_10388) (o_2@@32 T@Ref) (f_4@@32 T@Field_10427_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10388) (SummandMask1@@1 T@PolymorphicMapType_10388) (SummandMask2@@1 T@PolymorphicMapType_10388) (o_2@@33 T@Ref) (f_4@@33 T@Field_10440_10441) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10388) (SummandMask1@@2 T@PolymorphicMapType_10388) (SummandMask2@@2 T@PolymorphicMapType_10388) (o_2@@34 T@Ref) (f_4@@34 T@Field_6083_6138) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10388) (SummandMask1@@3 T@PolymorphicMapType_10388) (SummandMask2@@3 T@PolymorphicMapType_10388) (o_2@@35 T@Ref) (f_4@@35 T@Field_19631_19636) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10388) (SummandMask1@@4 T@PolymorphicMapType_10388) (SummandMask2@@4 T@PolymorphicMapType_10388) (o_2@@36 T@Ref) (f_4@@36 T@Field_6137_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10388) (SummandMask1@@5 T@PolymorphicMapType_10388) (SummandMask2@@5 T@PolymorphicMapType_10388) (o_2@@37 T@Ref) (f_4@@37 T@Field_6137_6084) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10388) (SummandMask1@@6 T@PolymorphicMapType_10388) (SummandMask2@@6 T@PolymorphicMapType_10388) (o_2@@38 T@Ref) (f_4@@38 T@Field_16990_16991) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.534:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_4288| a b) (= a b))
 :qid |stdinbpl.507:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_4288| a b))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@2)))
 :qid |stdinbpl.400:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_3154|) (= (|Seq#Append_3| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3154|) (= (|Seq#Append_3| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.218:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3| t@@1) 0) t@@1)
 :qid |stdinbpl.222:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.201:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((this@@7 T@Ref) (end_1@@3 T@Ref) ) (! (= (getPredWandId_6137_6138 (lseg this@@7 end_1@@3)) 0)
 :qid |stdinbpl.700:15|
 :skolemid |65|
 :pattern ( (lseg this@@7 end_1@@3))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_4288| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.497:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.494:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_4288| s0@@2 s1@@2))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3| t@@2)) 1)
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3| t@@2))
)))
(assert (forall ((this@@8 T@Ref) (end_1@@4 T@Ref) ) (! (= (PredicateMaskField_6137 (lseg this@@8 end_1@@4)) (|lseg#sm| this@@8 end_1@@4))
 :qid |stdinbpl.692:15|
 :skolemid |63|
 :pattern ( (PredicateMaskField_6137 (lseg this@@8 end_1@@4)))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_2867| (|Seq#Append_3| s@@10 t@@3) n@@8) (|Seq#Take_2867| s@@10 n@@8)))
 :qid |stdinbpl.351:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.250:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10367) (o_1 T@Ref) (f_51 T@Field_19631_19636) (v@@2 T@PolymorphicMapType_10916) ) (! (succHeap Heap@@23 (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@23) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@23) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@23) (store (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@23) o_1 f_51 v@@2) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@23) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@23) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@23) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@23) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@23) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@23) (store (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@23) o_1 f_51 v@@2) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@23) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@23) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@23) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10367) (o_1@@0 T@Ref) (f_51@@0 T@Field_16990_16991) (v@@3 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@24) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@24) (store (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@24) o_1@@0 f_51@@0 v@@3) (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@24) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@24) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@24) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@24) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@24) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@24) (store (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@24) o_1@@0 f_51@@0 v@@3) (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@24) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@24) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@24) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@24) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10367) (o_1@@1 T@Ref) (f_51@@1 T@Field_6137_6084) (v@@4 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@25) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@25) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@25) (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@25) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@25) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@25) (store (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@25) o_1@@1 f_51@@1 v@@4) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@25) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@25) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@25) (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@25) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@25) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@25) (store (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@25) o_1@@1 f_51@@1 v@@4) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10367) (o_1@@2 T@Ref) (f_51@@2 T@Field_6137_53) (v@@5 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@26) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@26) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@26) (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@26) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@26) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@26) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@26) (store (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@26) o_1@@2 f_51@@2 v@@5)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@26) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@26) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@26) (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@26) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@26) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@26) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@26) (store (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@26) o_1@@2 f_51@@2 v@@5)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10367) (o_1@@3 T@Ref) (f_51@@3 T@Field_6083_19636) (v@@6 T@PolymorphicMapType_10916) ) (! (succHeap Heap@@27 (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@27) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@27) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@27) (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@27) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@27) (store (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@27) o_1@@3 f_51@@3 v@@6) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@27) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@27) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@27) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@27) (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@27) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@27) (store (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@27) o_1@@3 f_51@@3 v@@6) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@27) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10367) (o_1@@4 T@Ref) (f_51@@4 T@Field_6083_6138) (v@@7 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@28) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@28) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@28) (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@28) (store (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@28) o_1@@4 f_51@@4 v@@7) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@28) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@28) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@28) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@28) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@28) (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@28) (store (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@28) o_1@@4 f_51@@4 v@@7) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@28) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@28) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10367) (o_1@@5 T@Ref) (f_51@@5 T@Field_10440_10441) (v@@8 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@29) (store (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@29) o_1@@5 f_51@@5 v@@8) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@29) (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@29) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@29) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@29) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@29) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@29) (store (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@29) o_1@@5 f_51@@5 v@@8) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@29) (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@29) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@29) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@29) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@29) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10367) (o_1@@6 T@Ref) (f_51@@6 T@Field_10427_53) (v@@9 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_10367 (store (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@30) o_1@@6 f_51@@6 v@@9) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@30) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@30) (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@30) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@30) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@30) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@30) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10367 (store (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@30) o_1@@6 f_51@@6 v@@9) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@30) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@30) (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@30) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@30) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@30) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@30) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@30)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_2867| (|Seq#Append_3| s@@12 t@@4) n@@9) (|Seq#Append_3| (|Seq#Drop_2867| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.365:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_3| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2867| s@@13 i@@4))))
 :qid |stdinbpl.301:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3154|)) (not (= s1@@3 |Seq#Empty_3154|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_3| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3154|)) (not (= s1@@4 |Seq#Empty_3154|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.246:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_3| s0@@4 s1@@4))
)))
(assert (forall ((o_1@@7 T@Ref) (f_2 T@Field_10440_10441) (Heap@@31 T@PolymorphicMapType_10367) ) (!  (=> (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@31) o_1@@7 $allocated) (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@31) (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@31) o_1@@7 f_2) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@31) o_1@@7 f_2))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@1)) (|Seq#Contains_2867| s@@14 x@@1))
 :qid |stdinbpl.398:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@1) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_4288| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_4288| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_4288| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.502:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_4288| s0@@5 s1@@5))
)))
(assert (forall ((p@@2 T@Field_6083_6138) (v_1@@1 T@FrameType) (q T@Field_6083_6138) (w@@1 T@FrameType) (r T@Field_6083_6138) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10427_10427 p@@2 v_1@@1 q w@@1) (InsidePredicate_10427_10427 q w@@1 r u)) (InsidePredicate_10427_10427 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10427_10427 p@@2 v_1@@1 q w@@1) (InsidePredicate_10427_10427 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_6083_6138) (v_1@@2 T@FrameType) (q@@0 T@Field_6083_6138) (w@@2 T@FrameType) (r@@0 T@Field_16990_16991) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_10427_10427 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_10427_6137 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_10427_6137 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10427_10427 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_10427_6137 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_6083_6138) (v_1@@3 T@FrameType) (q@@1 T@Field_16990_16991) (w@@3 T@FrameType) (r@@1 T@Field_6083_6138) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_10427_6137 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6137_10427 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_10427_10427 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10427_6137 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6137_10427 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_6083_6138) (v_1@@4 T@FrameType) (q@@2 T@Field_16990_16991) (w@@4 T@FrameType) (r@@2 T@Field_16990_16991) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_10427_6137 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6137_6137 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_10427_6137 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10427_6137 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6137_6137 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_16990_16991) (v_1@@5 T@FrameType) (q@@3 T@Field_6083_6138) (w@@5 T@FrameType) (r@@3 T@Field_6083_6138) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_6137_10427 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_10427_10427 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_6137_10427 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6137_10427 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_10427_10427 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_16990_16991) (v_1@@6 T@FrameType) (q@@4 T@Field_6083_6138) (w@@6 T@FrameType) (r@@4 T@Field_16990_16991) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_6137_10427 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_10427_6137 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_6137_6137 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6137_10427 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_10427_6137 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_16990_16991) (v_1@@7 T@FrameType) (q@@5 T@Field_16990_16991) (w@@7 T@FrameType) (r@@5 T@Field_6083_6138) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_6137_6137 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6137_10427 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_6137_10427 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6137_6137 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6137_10427 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_16990_16991) (v_1@@8 T@FrameType) (q@@6 T@Field_16990_16991) (w@@8 T@FrameType) (r@@6 T@Field_16990_16991) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_6137_6137 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6137_6137 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_6137_6137 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6137_6137 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6137_6137 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_3154|))
 :qid |stdinbpl.205:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2867| s@@16 n@@12) |Seq#Empty_3154|))
 :qid |stdinbpl.381:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@2 () T@PolymorphicMapType_10367)
(declare-fun Mask@0 () T@PolymorphicMapType_10388)
(declare-fun this@@9 () T@Ref)
(declare-fun last@@3 () T@Ref)
(declare-fun Heap@@32 () T@PolymorphicMapType_10367)
(declare-fun Heap@0 () T@PolymorphicMapType_10367)
(declare-fun newPMask@0 () T@PolymorphicMapType_10916)
(declare-fun Heap@1 () T@PolymorphicMapType_10367)
(declare-fun |degrees#trigger| (T@FrameType T@Ref T@Ref) Bool)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_10388)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_10388)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_10388)
(declare-fun FrameFragment_6001 (T@FrameType) T@FrameType)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_6084 (T@Ref) T@FrameType)
(set-info :boogie-vc-id |degrees#definedness|)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon12_correct true))
(let ((anon11_correct  (=> (and (state Heap@2 Mask@0) (= (ControlFlow 0 6) 4)) anon12_correct)))
(let ((anon17_Else_correct  (=> (= this@@9 last@@3) (=> (and (= Heap@2 Heap@@32) (= (ControlFlow 0 8) 6)) anon11_correct))))
(let ((anon17_Then_correct  (=> (and (not (= this@@9 last@@3)) (= Heap@0 (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@32) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@32) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@32) (store (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@32) null (|lseg#sm| this@@9 last@@3) (PolymorphicMapType_10916 (store (|PolymorphicMapType_10916_6083_6084#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@32) null (|lseg#sm| this@@9 last@@3))) this@@9 sibling true) (|PolymorphicMapType_10916_6083_53#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@32) null (|lseg#sm| this@@9 last@@3))) (|PolymorphicMapType_10916_6083_16991#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@32) null (|lseg#sm| this@@9 last@@3))) (|PolymorphicMapType_10916_6083_34059#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@32) null (|lseg#sm| this@@9 last@@3))) (|PolymorphicMapType_10916_16990_6084#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@32) null (|lseg#sm| this@@9 last@@3))) (|PolymorphicMapType_10916_16990_53#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@32) null (|lseg#sm| this@@9 last@@3))) (|PolymorphicMapType_10916_16990_16991#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@32) null (|lseg#sm| this@@9 last@@3))) (|PolymorphicMapType_10916_16990_34909#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@@32) null (|lseg#sm| this@@9 last@@3))))) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@@32) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@@32) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@@32) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@@32)))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_5 T@Ref) (f_11 T@Field_10440_10441) ) (!  (=> (or (select (|PolymorphicMapType_10916_6083_6084#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| this@@9 last@@3))) o_5 f_11) (select (|PolymorphicMapType_10916_6083_6084#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@0) this@@9 sibling) last@@3))) o_5 f_11)) (select (|PolymorphicMapType_10916_6083_6084#PolymorphicMapType_10916| newPMask@0) o_5 f_11))
 :qid |stdinbpl.672:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_10916_6083_6084#PolymorphicMapType_10916| newPMask@0) o_5 f_11))
)) (forall ((o_5@@0 T@Ref) (f_11@@0 T@Field_10427_53) ) (!  (=> (or (select (|PolymorphicMapType_10916_6083_53#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| this@@9 last@@3))) o_5@@0 f_11@@0) (select (|PolymorphicMapType_10916_6083_53#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@0) this@@9 sibling) last@@3))) o_5@@0 f_11@@0)) (select (|PolymorphicMapType_10916_6083_53#PolymorphicMapType_10916| newPMask@0) o_5@@0 f_11@@0))
 :qid |stdinbpl.672:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_10916_6083_53#PolymorphicMapType_10916| newPMask@0) o_5@@0 f_11@@0))
))) (forall ((o_5@@1 T@Ref) (f_11@@1 T@Field_6083_6138) ) (!  (=> (or (select (|PolymorphicMapType_10916_6083_16991#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| this@@9 last@@3))) o_5@@1 f_11@@1) (select (|PolymorphicMapType_10916_6083_16991#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@0) this@@9 sibling) last@@3))) o_5@@1 f_11@@1)) (select (|PolymorphicMapType_10916_6083_16991#PolymorphicMapType_10916| newPMask@0) o_5@@1 f_11@@1))
 :qid |stdinbpl.672:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_10916_6083_16991#PolymorphicMapType_10916| newPMask@0) o_5@@1 f_11@@1))
))) (forall ((o_5@@2 T@Ref) (f_11@@2 T@Field_6083_19636) ) (!  (=> (or (select (|PolymorphicMapType_10916_6083_34059#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| this@@9 last@@3))) o_5@@2 f_11@@2) (select (|PolymorphicMapType_10916_6083_34059#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@0) this@@9 sibling) last@@3))) o_5@@2 f_11@@2)) (select (|PolymorphicMapType_10916_6083_34059#PolymorphicMapType_10916| newPMask@0) o_5@@2 f_11@@2))
 :qid |stdinbpl.672:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_10916_6083_34059#PolymorphicMapType_10916| newPMask@0) o_5@@2 f_11@@2))
))) (forall ((o_5@@3 T@Ref) (f_11@@3 T@Field_6137_6084) ) (!  (=> (or (select (|PolymorphicMapType_10916_16990_6084#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| this@@9 last@@3))) o_5@@3 f_11@@3) (select (|PolymorphicMapType_10916_16990_6084#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@0) this@@9 sibling) last@@3))) o_5@@3 f_11@@3)) (select (|PolymorphicMapType_10916_16990_6084#PolymorphicMapType_10916| newPMask@0) o_5@@3 f_11@@3))
 :qid |stdinbpl.672:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_10916_16990_6084#PolymorphicMapType_10916| newPMask@0) o_5@@3 f_11@@3))
))) (forall ((o_5@@4 T@Ref) (f_11@@4 T@Field_6137_53) ) (!  (=> (or (select (|PolymorphicMapType_10916_16990_53#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| this@@9 last@@3))) o_5@@4 f_11@@4) (select (|PolymorphicMapType_10916_16990_53#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@0) this@@9 sibling) last@@3))) o_5@@4 f_11@@4)) (select (|PolymorphicMapType_10916_16990_53#PolymorphicMapType_10916| newPMask@0) o_5@@4 f_11@@4))
 :qid |stdinbpl.672:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_10916_16990_53#PolymorphicMapType_10916| newPMask@0) o_5@@4 f_11@@4))
))) (forall ((o_5@@5 T@Ref) (f_11@@5 T@Field_16990_16991) ) (!  (=> (or (select (|PolymorphicMapType_10916_16990_16991#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| this@@9 last@@3))) o_5@@5 f_11@@5) (select (|PolymorphicMapType_10916_16990_16991#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@0) this@@9 sibling) last@@3))) o_5@@5 f_11@@5)) (select (|PolymorphicMapType_10916_16990_16991#PolymorphicMapType_10916| newPMask@0) o_5@@5 f_11@@5))
 :qid |stdinbpl.672:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_10916_16990_16991#PolymorphicMapType_10916| newPMask@0) o_5@@5 f_11@@5))
))) (forall ((o_5@@6 T@Ref) (f_11@@6 T@Field_19631_19636) ) (!  (=> (or (select (|PolymorphicMapType_10916_16990_34909#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| this@@9 last@@3))) o_5@@6 f_11@@6) (select (|PolymorphicMapType_10916_16990_34909#PolymorphicMapType_10916| (select (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@0) this@@9 sibling) last@@3))) o_5@@6 f_11@@6)) (select (|PolymorphicMapType_10916_16990_34909#PolymorphicMapType_10916| newPMask@0) o_5@@6 f_11@@6))
 :qid |stdinbpl.672:35|
 :skolemid |62|
 :pattern ( (select (|PolymorphicMapType_10916_16990_34909#PolymorphicMapType_10916| newPMask@0) o_5@@6 f_11@@6))
))) (= Heap@1 (PolymorphicMapType_10367 (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@0) (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@0) (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@0) (store (|PolymorphicMapType_10367_6142_19728#PolymorphicMapType_10367| Heap@0) null (|lseg#sm| this@@9 last@@3) newPMask@0) (|PolymorphicMapType_10367_6083_6138#PolymorphicMapType_10367| Heap@0) (|PolymorphicMapType_10367_6083_31665#PolymorphicMapType_10367| Heap@0) (|PolymorphicMapType_10367_6137_6084#PolymorphicMapType_10367| Heap@0) (|PolymorphicMapType_10367_6137_53#PolymorphicMapType_10367| Heap@0)))) (and (= Heap@2 Heap@1) (= (ControlFlow 0 7) 6))) anon11_correct))))
(let ((anon16_Else_correct  (=> (|degrees#trigger| (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@32) null (lseg (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@32) this@@9 sibling) last@@3)) (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@32) this@@9 sibling) last@@3) (and (=> (= (ControlFlow 0 10) 7) anon17_Then_correct) (=> (= (ControlFlow 0 10) 8) anon17_Else_correct)))))
(let ((anon15_Then_correct  (=> (= (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@32) this@@9 sibling) null) (and (=> (= (ControlFlow 0 9) 7) anon17_Then_correct) (=> (= (ControlFlow 0 9) 8) anon17_Else_correct)))))
(let ((anon13_Then_correct  (=> (and (= this@@9 last@@3) (= (ControlFlow 0 5) 4)) anon12_correct)))
(let ((anon16_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (= (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@32) this@@9 sibling) null))) (=> (not (= (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@32) this@@9 sibling) null)) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| UnfoldingMask@2) null (lseg (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@32) this@@9 sibling) last@@3)))))))))
(let ((anon15_Else_correct  (=> (not (= (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@32) this@@9 sibling) null)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_6083_6084 UnfoldingMask@2 this@@9 sibling)) (=> (HasDirectPerm_6083_6084 UnfoldingMask@2 this@@9 sibling) (and (=> (= (ControlFlow 0 11) 2) anon16_Then_correct) (=> (= (ControlFlow 0 11) 10) anon16_Else_correct)))))))
(let ((anon4_correct  (=> (state Heap@@32 UnfoldingMask@2) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_6083_6084 UnfoldingMask@2 this@@9 sibling)) (=> (HasDirectPerm_6083_6084 UnfoldingMask@2 this@@9 sibling) (and (=> (= (ControlFlow 0 13) 9) anon15_Then_correct) (=> (= (ControlFlow 0 13) 11) anon15_Else_correct)))))))
(let ((anon14_Else_correct  (=> (= this@@9 last@@3) (=> (and (= UnfoldingMask@2 Mask@0) (= (ControlFlow 0 16) 13)) anon4_correct))))
(let ((anon14_Then_correct  (=> (and (not (= this@@9 last@@3)) (not (= this@@9 null))) (=> (and (and (and (= UnfoldingMask@0 (PolymorphicMapType_10388 (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| Mask@0) (store (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| Mask@0) this@@9 sibling (+ (select (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| Mask@0) this@@9 sibling) FullPerm)) (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| Mask@0) (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| Mask@0) (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| Mask@0) (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| Mask@0) (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| Mask@0) (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| Mask@0))) (state Heap@@32 UnfoldingMask@0)) (and (not (= (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@32) this@@9 sibling) null)) (= UnfoldingMask@1 (PolymorphicMapType_10388 (store (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| UnfoldingMask@0) null (lseg (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@32) this@@9 sibling) last@@3) (+ (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| UnfoldingMask@0) null (lseg (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@32) this@@9 sibling) last@@3)) FullPerm)) (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| UnfoldingMask@0) (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| UnfoldingMask@0) (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| UnfoldingMask@0) (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| UnfoldingMask@0) (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| UnfoldingMask@0) (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| UnfoldingMask@0) (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| UnfoldingMask@0))))) (and (and (InsidePredicate_6137_6137 (lseg this@@9 last@@3) (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@32) null (lseg this@@9 last@@3)) (lseg (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@32) this@@9 sibling) last@@3) (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@32) null (lseg (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@32) this@@9 sibling) last@@3))) (state Heap@@32 UnfoldingMask@1)) (and (= UnfoldingMask@2 UnfoldingMask@1) (= (ControlFlow 0 15) 13)))) anon4_correct))))
(let ((anon13_Else_correct  (=> (not (= this@@9 last@@3)) (=> (and (|lseg#trigger_6137| Heap@@32 (lseg this@@9 last@@3)) (= (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@32) null (lseg this@@9 last@@3)) (FrameFragment_6001 (ite (not (= this@@9 last@@3)) (CombineFrames (FrameFragment_6084 (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@32) this@@9 sibling)) (select (|PolymorphicMapType_10367_6137_6138#PolymorphicMapType_10367| Heap@@32) null (lseg (select (|PolymorphicMapType_10367_5898_5899#PolymorphicMapType_10367| Heap@@32) this@@9 sibling) last@@3))) EmptyFrame)))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| Mask@0) null (lseg this@@9 last@@3))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| Mask@0) null (lseg this@@9 last@@3)))) (and (=> (= (ControlFlow 0 17) 15) anon14_Then_correct) (=> (= (ControlFlow 0 17) 16) anon14_Else_correct))))))))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@32) this@@9 $allocated)) (and (select (|PolymorphicMapType_10367_5895_53#PolymorphicMapType_10367| Heap@@32) last@@3 $allocated) (= AssumeFunctionsAbove 0))) (and (and (not (= this@@9 null)) (= Mask@0 (PolymorphicMapType_10388 (store (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| ZeroMask) null (lseg this@@9 last@@3) (+ (select (|PolymorphicMapType_10388_6137_6138#PolymorphicMapType_10388| ZeroMask) null (lseg this@@9 last@@3)) FullPerm)) (|PolymorphicMapType_10388_6083_6084#PolymorphicMapType_10388| ZeroMask) (|PolymorphicMapType_10388_6137_6084#PolymorphicMapType_10388| ZeroMask) (|PolymorphicMapType_10388_6137_53#PolymorphicMapType_10388| ZeroMask) (|PolymorphicMapType_10388_6137_39630#PolymorphicMapType_10388| ZeroMask) (|PolymorphicMapType_10388_6083_6138#PolymorphicMapType_10388| ZeroMask) (|PolymorphicMapType_10388_6083_53#PolymorphicMapType_10388| ZeroMask) (|PolymorphicMapType_10388_6083_39961#PolymorphicMapType_10388| ZeroMask)))) (and (state Heap@@32 Mask@0) (state Heap@@32 Mask@0)))) (and (=> (= (ControlFlow 0 19) 5) anon13_Then_correct) (=> (= (ControlFlow 0 19) 17) anon13_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 20) 19) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
