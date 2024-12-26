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
(declare-sort T@Field_14308_53 0)
(declare-sort T@Field_14321_14322 0)
(declare-sort T@Field_23178_23179 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_14308_23179 0)
(declare-sort T@Field_14308_23196 0)
(declare-sort T@Field_23178_53 0)
(declare-sort T@Field_23178_14322 0)
(declare-sort T@Field_23191_23196 0)
(declare-datatypes ((T@PolymorphicMapType_14269 0)) (((PolymorphicMapType_14269 (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| (Array T@Ref T@Field_23178_23179 Real)) (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| (Array T@Ref T@Field_14321_14322 Real)) (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| (Array T@Ref T@Field_23178_14322 Real)) (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| (Array T@Ref T@Field_23178_53 Real)) (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| (Array T@Ref T@Field_23191_23196 Real)) (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| (Array T@Ref T@Field_14308_23179 Real)) (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| (Array T@Ref T@Field_14308_53 Real)) (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| (Array T@Ref T@Field_14308_23196 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14797 0)) (((PolymorphicMapType_14797 (|PolymorphicMapType_14797_14308_53#PolymorphicMapType_14797| (Array T@Ref T@Field_14308_53 Bool)) (|PolymorphicMapType_14797_14308_14322#PolymorphicMapType_14797| (Array T@Ref T@Field_14321_14322 Bool)) (|PolymorphicMapType_14797_14308_23179#PolymorphicMapType_14797| (Array T@Ref T@Field_14308_23179 Bool)) (|PolymorphicMapType_14797_14308_43042#PolymorphicMapType_14797| (Array T@Ref T@Field_14308_23196 Bool)) (|PolymorphicMapType_14797_23178_53#PolymorphicMapType_14797| (Array T@Ref T@Field_23178_53 Bool)) (|PolymorphicMapType_14797_23178_14322#PolymorphicMapType_14797| (Array T@Ref T@Field_23178_14322 Bool)) (|PolymorphicMapType_14797_23178_23179#PolymorphicMapType_14797| (Array T@Ref T@Field_23178_23179 Bool)) (|PolymorphicMapType_14797_23178_43892#PolymorphicMapType_14797| (Array T@Ref T@Field_23191_23196 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14248 0)) (((PolymorphicMapType_14248 (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| (Array T@Ref T@Field_14308_53 Bool)) (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| (Array T@Ref T@Field_14321_14322 T@Ref)) (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| (Array T@Ref T@Field_23178_23179 T@FrameType)) (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| (Array T@Ref T@Field_14308_23179 T@FrameType)) (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| (Array T@Ref T@Field_14308_23196 T@PolymorphicMapType_14797)) (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| (Array T@Ref T@Field_23178_53 Bool)) (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| (Array T@Ref T@Field_23178_14322 T@Ref)) (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| (Array T@Ref T@Field_23191_23196 T@PolymorphicMapType_14797)) ) ) ))
(declare-fun $allocated () T@Field_14308_53)
(declare-fun f_7 () T@Field_14321_14322)
(declare-sort T@Seq_21669 0)
(declare-fun |Seq#Length_9449| (T@Seq_21669) Int)
(declare-fun |Seq#Drop_9449| (T@Seq_21669 Int) T@Seq_21669)
(declare-sort T@Seq_3083 0)
(declare-fun |Seq#Length_3083| (T@Seq_3083) Int)
(declare-fun |Seq#Drop_3083| (T@Seq_3083 Int) T@Seq_3083)
(declare-fun succHeap (T@PolymorphicMapType_14248 T@PolymorphicMapType_14248) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_14248 T@PolymorphicMapType_14248) Bool)
(declare-fun state (T@PolymorphicMapType_14248 T@PolymorphicMapType_14269) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_14269) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_14248 T@PolymorphicMapType_14248 T@PolymorphicMapType_14269) Bool)
(declare-fun IsPredicateField_9510_9511 (T@Field_23178_23179) Bool)
(declare-fun HasDirectPerm_23178_23179 (T@PolymorphicMapType_14269 T@Ref T@Field_23178_23179) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9510 (T@Field_23178_23179) T@Field_23191_23196)
(declare-fun IsPredicateField_14308_41756 (T@Field_14308_23179) Bool)
(declare-fun HasDirectPerm_14308_23179 (T@PolymorphicMapType_14269 T@Ref T@Field_14308_23179) Bool)
(declare-fun PredicateMaskField_14308 (T@Field_14308_23179) T@Field_14308_23196)
(declare-fun IsWandField_23178_45057 (T@Field_23178_23179) Bool)
(declare-fun WandMaskField_23178 (T@Field_23178_23179) T@Field_23191_23196)
(declare-fun IsWandField_14308_44700 (T@Field_14308_23179) Bool)
(declare-fun WandMaskField_14308 (T@Field_14308_23179) T@Field_14308_23196)
(declare-fun ZeroPMask () T@PolymorphicMapType_14797)
(declare-fun |fun'| (T@PolymorphicMapType_14248 T@Ref Int) T@Ref)
(declare-fun dummyFunction_9401 (T@Ref) Bool)
(declare-fun |fun#triggerStateless| (T@Ref Int) T@Ref)
(declare-fun |at1'| (T@PolymorphicMapType_14248 T@Seq_21669 Int) T@Ref)
(declare-fun |at1#triggerStateless| (T@Seq_21669 Int) T@Ref)
(declare-fun |at2'| (T@PolymorphicMapType_14248 Int T@Seq_21669) T@Ref)
(declare-fun |at2#triggerStateless| (Int T@Seq_21669) T@Ref)
(declare-fun |Seq#Index_9449| (T@Seq_21669 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3083| (T@Seq_3083 Int) Int)
(declare-fun |fun#frame| (T@FrameType T@Ref Int) T@Ref)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |at1#frame| (T@FrameType T@Seq_21669 Int) T@Ref)
(declare-fun |at2#frame| (T@FrameType Int T@Seq_21669) T@Ref)
(declare-fun |Seq#Empty_9449| () T@Seq_21669)
(declare-fun |Seq#Empty_3083| () T@Seq_3083)
(declare-fun pred_3 (T@Ref) T@Field_23178_23179)
(declare-fun |fun2'| (T@PolymorphicMapType_14248 T@Ref) T@Ref)
(declare-fun |fun2#triggerStateless| (T@Ref) T@Ref)
(declare-fun |pred#trigger_9510| (T@PolymorphicMapType_14248 T@Field_23178_23179) Bool)
(declare-fun |pred#everUsed_9510| (T@Field_23178_23179) Bool)
(declare-fun |Seq#Update_9449| (T@Seq_21669 Int T@Ref) T@Seq_21669)
(declare-fun |Seq#Update_3083| (T@Seq_3083 Int Int) T@Seq_3083)
(declare-fun |Seq#Take_9449| (T@Seq_21669 Int) T@Seq_21669)
(declare-fun |Seq#Take_3083| (T@Seq_3083 Int) T@Seq_3083)
(declare-fun |Seq#Contains_3083| (T@Seq_3083 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3083)
(declare-fun |Seq#Contains_9533| (T@Seq_21669 T@Ref) Bool)
(declare-fun |Seq#Skolem_9533| (T@Seq_21669 T@Ref) Int)
(declare-fun |Seq#Skolem_3083| (T@Seq_3083 Int) Int)
(declare-fun fun2 (T@PolymorphicMapType_14248 T@Ref) T@Ref)
(declare-fun |Seq#Singleton_9449| (T@Ref) T@Seq_21669)
(declare-fun |Seq#Singleton_3083| (Int) T@Seq_3083)
(declare-fun |pred#sm| (T@Ref) T@Field_23191_23196)
(declare-fun |Seq#Append_21669| (T@Seq_21669 T@Seq_21669) T@Seq_21669)
(declare-fun |Seq#Append_3083| (T@Seq_3083 T@Seq_3083) T@Seq_3083)
(declare-fun fun (T@PolymorphicMapType_14248 T@Ref Int) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_14248)
(declare-fun ZeroMask () T@PolymorphicMapType_14269)
(declare-fun InsidePredicate_23178_23178 (T@Field_23178_23179 T@FrameType T@Field_23178_23179 T@FrameType) Bool)
(declare-fun InsidePredicate_14308_14308 (T@Field_14308_23179 T@FrameType T@Field_14308_23179 T@FrameType) Bool)
(declare-fun IsPredicateField_9376_9377 (T@Field_14321_14322) Bool)
(declare-fun IsWandField_9376_9377 (T@Field_14321_14322) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9376_50768 (T@Field_14308_23196) Bool)
(declare-fun IsWandField_9376_50784 (T@Field_14308_23196) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9376_53 (T@Field_14308_53) Bool)
(declare-fun IsWandField_9376_53 (T@Field_14308_53) Bool)
(declare-fun IsPredicateField_9510_50119 (T@Field_23191_23196) Bool)
(declare-fun IsWandField_9510_50135 (T@Field_23191_23196) Bool)
(declare-fun IsPredicateField_9510_53 (T@Field_23178_53) Bool)
(declare-fun IsWandField_9510_53 (T@Field_23178_53) Bool)
(declare-fun IsPredicateField_9510_9377 (T@Field_23178_14322) Bool)
(declare-fun IsWandField_9510_9377 (T@Field_23178_14322) Bool)
(declare-fun HasDirectPerm_23178_41468 (T@PolymorphicMapType_14269 T@Ref T@Field_23191_23196) Bool)
(declare-fun HasDirectPerm_23178_14322 (T@PolymorphicMapType_14269 T@Ref T@Field_23178_14322) Bool)
(declare-fun HasDirectPerm_23178_53 (T@PolymorphicMapType_14269 T@Ref T@Field_23178_53) Bool)
(declare-fun HasDirectPerm_14308_40528 (T@PolymorphicMapType_14269 T@Ref T@Field_14308_23196) Bool)
(declare-fun HasDirectPerm_14308_14322 (T@PolymorphicMapType_14269 T@Ref T@Field_14321_14322) Bool)
(declare-fun HasDirectPerm_14308_53 (T@PolymorphicMapType_14269 T@Ref T@Field_14308_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun at1 (T@PolymorphicMapType_14248 T@Seq_21669 Int) T@Ref)
(declare-fun at2 (T@PolymorphicMapType_14248 Int T@Seq_21669) T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_14269 T@PolymorphicMapType_14269 T@PolymorphicMapType_14269) Bool)
(declare-fun |Seq#Equal_21669| (T@Seq_21669 T@Seq_21669) Bool)
(declare-fun |Seq#Equal_3083| (T@Seq_3083 T@Seq_3083) Bool)
(declare-fun |Seq#ContainsTrigger_9449| (T@Seq_21669 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3083| (T@Seq_3083 Int) Bool)
(declare-fun getPredWandId_9510_9511 (T@Field_23178_23179) Int)
(declare-fun |fun2#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |Seq#SkolemDiff_21669| (T@Seq_21669 T@Seq_21669) Int)
(declare-fun |Seq#SkolemDiff_3083| (T@Seq_3083 T@Seq_3083) Int)
(declare-fun InsidePredicate_23178_14308 (T@Field_23178_23179 T@FrameType T@Field_14308_23179 T@FrameType) Bool)
(declare-fun InsidePredicate_14308_23178 (T@Field_14308_23179 T@FrameType T@Field_23178_23179 T@FrameType) Bool)
(declare-fun D (T@Ref T@Ref) Bool)
(assert (forall ((s T@Seq_21669) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_9449| s)) (= (|Seq#Length_9449| (|Seq#Drop_9449| s n)) (- (|Seq#Length_9449| s) n))) (=> (< (|Seq#Length_9449| s) n) (= (|Seq#Length_9449| (|Seq#Drop_9449| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_9449| (|Seq#Drop_9449| s n)) (|Seq#Length_9449| s))))
 :qid |stdinbpl.318:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_9449| (|Seq#Drop_9449| s n)))
 :pattern ( (|Seq#Length_9449| s) (|Seq#Drop_9449| s n))
)))
(assert (forall ((s@@0 T@Seq_3083) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3083| s@@0)) (= (|Seq#Length_3083| (|Seq#Drop_3083| s@@0 n@@0)) (- (|Seq#Length_3083| s@@0) n@@0))) (=> (< (|Seq#Length_3083| s@@0) n@@0) (= (|Seq#Length_3083| (|Seq#Drop_3083| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3083| (|Seq#Drop_3083| s@@0 n@@0)) (|Seq#Length_3083| s@@0))))
 :qid |stdinbpl.318:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3083| (|Seq#Drop_3083| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3083| s@@0) (|Seq#Drop_3083| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_14248) (Heap1 T@PolymorphicMapType_14248) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_14248) (Mask T@PolymorphicMapType_14269) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_14248) (ExhaleHeap T@PolymorphicMapType_14248) (Mask@@0 T@PolymorphicMapType_14269) (pm_f_48 T@Field_23178_23179) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_23178_23179 Mask@@0 null pm_f_48) (IsPredicateField_9510_9511 pm_f_48)) (and (and (and (and (and (and (and (forall ((o2_48 T@Ref) (f_54 T@Field_14308_53) ) (!  (=> (select (|PolymorphicMapType_14797_14308_53#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@0) null (PredicateMaskField_9510 pm_f_48))) o2_48 f_54) (= (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@0) o2_48 f_54) (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| ExhaleHeap) o2_48 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| ExhaleHeap) o2_48 f_54))
)) (forall ((o2_48@@0 T@Ref) (f_54@@0 T@Field_14321_14322) ) (!  (=> (select (|PolymorphicMapType_14797_14308_14322#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@0) null (PredicateMaskField_9510 pm_f_48))) o2_48@@0 f_54@@0) (= (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@0) o2_48@@0 f_54@@0) (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| ExhaleHeap) o2_48@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| ExhaleHeap) o2_48@@0 f_54@@0))
))) (forall ((o2_48@@1 T@Ref) (f_54@@1 T@Field_14308_23179) ) (!  (=> (select (|PolymorphicMapType_14797_14308_23179#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@0) null (PredicateMaskField_9510 pm_f_48))) o2_48@@1 f_54@@1) (= (select (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@0) o2_48@@1 f_54@@1) (select (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| ExhaleHeap) o2_48@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| ExhaleHeap) o2_48@@1 f_54@@1))
))) (forall ((o2_48@@2 T@Ref) (f_54@@2 T@Field_14308_23196) ) (!  (=> (select (|PolymorphicMapType_14797_14308_43042#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@0) null (PredicateMaskField_9510 pm_f_48))) o2_48@@2 f_54@@2) (= (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@0) o2_48@@2 f_54@@2) (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| ExhaleHeap) o2_48@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| ExhaleHeap) o2_48@@2 f_54@@2))
))) (forall ((o2_48@@3 T@Ref) (f_54@@3 T@Field_23178_53) ) (!  (=> (select (|PolymorphicMapType_14797_23178_53#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@0) null (PredicateMaskField_9510 pm_f_48))) o2_48@@3 f_54@@3) (= (select (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@0) o2_48@@3 f_54@@3) (select (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| ExhaleHeap) o2_48@@3 f_54@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| ExhaleHeap) o2_48@@3 f_54@@3))
))) (forall ((o2_48@@4 T@Ref) (f_54@@4 T@Field_23178_14322) ) (!  (=> (select (|PolymorphicMapType_14797_23178_14322#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@0) null (PredicateMaskField_9510 pm_f_48))) o2_48@@4 f_54@@4) (= (select (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@0) o2_48@@4 f_54@@4) (select (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| ExhaleHeap) o2_48@@4 f_54@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| ExhaleHeap) o2_48@@4 f_54@@4))
))) (forall ((o2_48@@5 T@Ref) (f_54@@5 T@Field_23178_23179) ) (!  (=> (select (|PolymorphicMapType_14797_23178_23179#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@0) null (PredicateMaskField_9510 pm_f_48))) o2_48@@5 f_54@@5) (= (select (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@0) o2_48@@5 f_54@@5) (select (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| ExhaleHeap) o2_48@@5 f_54@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| ExhaleHeap) o2_48@@5 f_54@@5))
))) (forall ((o2_48@@6 T@Ref) (f_54@@6 T@Field_23191_23196) ) (!  (=> (select (|PolymorphicMapType_14797_23178_43892#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@0) null (PredicateMaskField_9510 pm_f_48))) o2_48@@6 f_54@@6) (= (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@0) o2_48@@6 f_54@@6) (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| ExhaleHeap) o2_48@@6 f_54@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| ExhaleHeap) o2_48@@6 f_54@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_9510_9511 pm_f_48))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_14248) (ExhaleHeap@@0 T@PolymorphicMapType_14248) (Mask@@1 T@PolymorphicMapType_14269) (pm_f_48@@0 T@Field_14308_23179) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_14308_23179 Mask@@1 null pm_f_48@@0) (IsPredicateField_14308_41756 pm_f_48@@0)) (and (and (and (and (and (and (and (forall ((o2_48@@7 T@Ref) (f_54@@7 T@Field_14308_53) ) (!  (=> (select (|PolymorphicMapType_14797_14308_53#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@1) null (PredicateMaskField_14308 pm_f_48@@0))) o2_48@@7 f_54@@7) (= (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@1) o2_48@@7 f_54@@7) (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@7 f_54@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@7 f_54@@7))
)) (forall ((o2_48@@8 T@Ref) (f_54@@8 T@Field_14321_14322) ) (!  (=> (select (|PolymorphicMapType_14797_14308_14322#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@1) null (PredicateMaskField_14308 pm_f_48@@0))) o2_48@@8 f_54@@8) (= (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@1) o2_48@@8 f_54@@8) (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@8 f_54@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@8 f_54@@8))
))) (forall ((o2_48@@9 T@Ref) (f_54@@9 T@Field_14308_23179) ) (!  (=> (select (|PolymorphicMapType_14797_14308_23179#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@1) null (PredicateMaskField_14308 pm_f_48@@0))) o2_48@@9 f_54@@9) (= (select (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@1) o2_48@@9 f_54@@9) (select (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@9 f_54@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@9 f_54@@9))
))) (forall ((o2_48@@10 T@Ref) (f_54@@10 T@Field_14308_23196) ) (!  (=> (select (|PolymorphicMapType_14797_14308_43042#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@1) null (PredicateMaskField_14308 pm_f_48@@0))) o2_48@@10 f_54@@10) (= (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@1) o2_48@@10 f_54@@10) (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@10 f_54@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@10 f_54@@10))
))) (forall ((o2_48@@11 T@Ref) (f_54@@11 T@Field_23178_53) ) (!  (=> (select (|PolymorphicMapType_14797_23178_53#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@1) null (PredicateMaskField_14308 pm_f_48@@0))) o2_48@@11 f_54@@11) (= (select (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@1) o2_48@@11 f_54@@11) (select (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@11 f_54@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@11 f_54@@11))
))) (forall ((o2_48@@12 T@Ref) (f_54@@12 T@Field_23178_14322) ) (!  (=> (select (|PolymorphicMapType_14797_23178_14322#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@1) null (PredicateMaskField_14308 pm_f_48@@0))) o2_48@@12 f_54@@12) (= (select (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@1) o2_48@@12 f_54@@12) (select (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@12 f_54@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@12 f_54@@12))
))) (forall ((o2_48@@13 T@Ref) (f_54@@13 T@Field_23178_23179) ) (!  (=> (select (|PolymorphicMapType_14797_23178_23179#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@1) null (PredicateMaskField_14308 pm_f_48@@0))) o2_48@@13 f_54@@13) (= (select (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@1) o2_48@@13 f_54@@13) (select (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@13 f_54@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@13 f_54@@13))
))) (forall ((o2_48@@14 T@Ref) (f_54@@14 T@Field_23191_23196) ) (!  (=> (select (|PolymorphicMapType_14797_23178_43892#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@1) null (PredicateMaskField_14308 pm_f_48@@0))) o2_48@@14 f_54@@14) (= (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@1) o2_48@@14 f_54@@14) (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@14 f_54@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| ExhaleHeap@@0) o2_48@@14 f_54@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_14308_41756 pm_f_48@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_14248) (ExhaleHeap@@1 T@PolymorphicMapType_14248) (Mask@@2 T@PolymorphicMapType_14269) (pm_f_48@@1 T@Field_23178_23179) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_23178_23179 Mask@@2 null pm_f_48@@1) (IsWandField_23178_45057 pm_f_48@@1)) (and (and (and (and (and (and (and (forall ((o2_48@@15 T@Ref) (f_54@@15 T@Field_14308_53) ) (!  (=> (select (|PolymorphicMapType_14797_14308_53#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@2) null (WandMaskField_23178 pm_f_48@@1))) o2_48@@15 f_54@@15) (= (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@2) o2_48@@15 f_54@@15) (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@15 f_54@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@15 f_54@@15))
)) (forall ((o2_48@@16 T@Ref) (f_54@@16 T@Field_14321_14322) ) (!  (=> (select (|PolymorphicMapType_14797_14308_14322#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@2) null (WandMaskField_23178 pm_f_48@@1))) o2_48@@16 f_54@@16) (= (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@2) o2_48@@16 f_54@@16) (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@16 f_54@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@16 f_54@@16))
))) (forall ((o2_48@@17 T@Ref) (f_54@@17 T@Field_14308_23179) ) (!  (=> (select (|PolymorphicMapType_14797_14308_23179#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@2) null (WandMaskField_23178 pm_f_48@@1))) o2_48@@17 f_54@@17) (= (select (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@2) o2_48@@17 f_54@@17) (select (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@17 f_54@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@17 f_54@@17))
))) (forall ((o2_48@@18 T@Ref) (f_54@@18 T@Field_14308_23196) ) (!  (=> (select (|PolymorphicMapType_14797_14308_43042#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@2) null (WandMaskField_23178 pm_f_48@@1))) o2_48@@18 f_54@@18) (= (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@2) o2_48@@18 f_54@@18) (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@18 f_54@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@18 f_54@@18))
))) (forall ((o2_48@@19 T@Ref) (f_54@@19 T@Field_23178_53) ) (!  (=> (select (|PolymorphicMapType_14797_23178_53#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@2) null (WandMaskField_23178 pm_f_48@@1))) o2_48@@19 f_54@@19) (= (select (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@2) o2_48@@19 f_54@@19) (select (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@19 f_54@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@19 f_54@@19))
))) (forall ((o2_48@@20 T@Ref) (f_54@@20 T@Field_23178_14322) ) (!  (=> (select (|PolymorphicMapType_14797_23178_14322#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@2) null (WandMaskField_23178 pm_f_48@@1))) o2_48@@20 f_54@@20) (= (select (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@2) o2_48@@20 f_54@@20) (select (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@20 f_54@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@20 f_54@@20))
))) (forall ((o2_48@@21 T@Ref) (f_54@@21 T@Field_23178_23179) ) (!  (=> (select (|PolymorphicMapType_14797_23178_23179#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@2) null (WandMaskField_23178 pm_f_48@@1))) o2_48@@21 f_54@@21) (= (select (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@2) o2_48@@21 f_54@@21) (select (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@21 f_54@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@21 f_54@@21))
))) (forall ((o2_48@@22 T@Ref) (f_54@@22 T@Field_23191_23196) ) (!  (=> (select (|PolymorphicMapType_14797_23178_43892#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@2) null (WandMaskField_23178 pm_f_48@@1))) o2_48@@22 f_54@@22) (= (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@2) o2_48@@22 f_54@@22) (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@22 f_54@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| ExhaleHeap@@1) o2_48@@22 f_54@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_23178_45057 pm_f_48@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_14248) (ExhaleHeap@@2 T@PolymorphicMapType_14248) (Mask@@3 T@PolymorphicMapType_14269) (pm_f_48@@2 T@Field_14308_23179) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_14308_23179 Mask@@3 null pm_f_48@@2) (IsWandField_14308_44700 pm_f_48@@2)) (and (and (and (and (and (and (and (forall ((o2_48@@23 T@Ref) (f_54@@23 T@Field_14308_53) ) (!  (=> (select (|PolymorphicMapType_14797_14308_53#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@3) null (WandMaskField_14308 pm_f_48@@2))) o2_48@@23 f_54@@23) (= (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@3) o2_48@@23 f_54@@23) (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@23 f_54@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@23 f_54@@23))
)) (forall ((o2_48@@24 T@Ref) (f_54@@24 T@Field_14321_14322) ) (!  (=> (select (|PolymorphicMapType_14797_14308_14322#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@3) null (WandMaskField_14308 pm_f_48@@2))) o2_48@@24 f_54@@24) (= (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@3) o2_48@@24 f_54@@24) (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@24 f_54@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@24 f_54@@24))
))) (forall ((o2_48@@25 T@Ref) (f_54@@25 T@Field_14308_23179) ) (!  (=> (select (|PolymorphicMapType_14797_14308_23179#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@3) null (WandMaskField_14308 pm_f_48@@2))) o2_48@@25 f_54@@25) (= (select (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@3) o2_48@@25 f_54@@25) (select (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@25 f_54@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@25 f_54@@25))
))) (forall ((o2_48@@26 T@Ref) (f_54@@26 T@Field_14308_23196) ) (!  (=> (select (|PolymorphicMapType_14797_14308_43042#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@3) null (WandMaskField_14308 pm_f_48@@2))) o2_48@@26 f_54@@26) (= (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@3) o2_48@@26 f_54@@26) (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@26 f_54@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@26 f_54@@26))
))) (forall ((o2_48@@27 T@Ref) (f_54@@27 T@Field_23178_53) ) (!  (=> (select (|PolymorphicMapType_14797_23178_53#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@3) null (WandMaskField_14308 pm_f_48@@2))) o2_48@@27 f_54@@27) (= (select (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@3) o2_48@@27 f_54@@27) (select (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@27 f_54@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@27 f_54@@27))
))) (forall ((o2_48@@28 T@Ref) (f_54@@28 T@Field_23178_14322) ) (!  (=> (select (|PolymorphicMapType_14797_23178_14322#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@3) null (WandMaskField_14308 pm_f_48@@2))) o2_48@@28 f_54@@28) (= (select (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@3) o2_48@@28 f_54@@28) (select (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@28 f_54@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@28 f_54@@28))
))) (forall ((o2_48@@29 T@Ref) (f_54@@29 T@Field_23178_23179) ) (!  (=> (select (|PolymorphicMapType_14797_23178_23179#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@3) null (WandMaskField_14308 pm_f_48@@2))) o2_48@@29 f_54@@29) (= (select (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@3) o2_48@@29 f_54@@29) (select (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@29 f_54@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@29 f_54@@29))
))) (forall ((o2_48@@30 T@Ref) (f_54@@30 T@Field_23191_23196) ) (!  (=> (select (|PolymorphicMapType_14797_23178_43892#PolymorphicMapType_14797| (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@3) null (WandMaskField_14308 pm_f_48@@2))) o2_48@@30 f_54@@30) (= (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@3) o2_48@@30 f_54@@30) (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@30 f_54@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| ExhaleHeap@@2) o2_48@@30 f_54@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_14308_44700 pm_f_48@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_14248) (Heap1@@0 T@PolymorphicMapType_14248) (Heap2 T@PolymorphicMapType_14248) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_23191_23196) ) (!  (not (select (|PolymorphicMapType_14797_23178_43892#PolymorphicMapType_14797| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14797_23178_43892#PolymorphicMapType_14797| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_23178_23179) ) (!  (not (select (|PolymorphicMapType_14797_23178_23179#PolymorphicMapType_14797| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14797_23178_23179#PolymorphicMapType_14797| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_23178_14322) ) (!  (not (select (|PolymorphicMapType_14797_23178_14322#PolymorphicMapType_14797| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14797_23178_14322#PolymorphicMapType_14797| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_23178_53) ) (!  (not (select (|PolymorphicMapType_14797_23178_53#PolymorphicMapType_14797| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14797_23178_53#PolymorphicMapType_14797| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14308_23196) ) (!  (not (select (|PolymorphicMapType_14797_14308_43042#PolymorphicMapType_14797| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14797_14308_43042#PolymorphicMapType_14797| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_14308_23179) ) (!  (not (select (|PolymorphicMapType_14797_14308_23179#PolymorphicMapType_14797| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14797_14308_23179#PolymorphicMapType_14797| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_14321_14322) ) (!  (not (select (|PolymorphicMapType_14797_14308_14322#PolymorphicMapType_14797| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14797_14308_14322#PolymorphicMapType_14797| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_14308_53) ) (!  (not (select (|PolymorphicMapType_14797_14308_53#PolymorphicMapType_14797| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14797_14308_53#PolymorphicMapType_14797| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_14248) (r_1 T@Ref) (i Int) ) (! (dummyFunction_9401 (|fun#triggerStateless| r_1 i))
 :qid |stdinbpl.620:15|
 :skolemid |60|
 :pattern ( (|fun'| Heap@@4 r_1 i))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_14248) (xs T@Seq_21669) (i@@0 Int) ) (! (dummyFunction_9401 (|at1#triggerStateless| xs i@@0))
 :qid |stdinbpl.722:15|
 :skolemid |68|
 :pattern ( (|at1'| Heap@@5 xs i@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_14248) (i@@1 Int) (xs@@0 T@Seq_21669) ) (! (dummyFunction_9401 (|at2#triggerStateless| i@@1 xs@@0))
 :qid |stdinbpl.785:15|
 :skolemid |72|
 :pattern ( (|at2'| Heap@@6 i@@1 xs@@0))
)))
(assert (forall ((s@@1 T@Seq_21669) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_9449| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_9449| (|Seq#Drop_9449| s@@1 n@@1) j) (|Seq#Index_9449| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.339:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_9449| (|Seq#Drop_9449| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3083) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3083| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3083| (|Seq#Drop_3083| s@@2 n@@2) j@@0) (|Seq#Index_3083| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.339:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3083| (|Seq#Drop_3083| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_14248) (Mask@@4 T@PolymorphicMapType_14269) (r_1@@0 T@Ref) (i@@2 Int) ) (!  (=> (state Heap@@7 Mask@@4) (= (|fun'| Heap@@7 r_1@@0 i@@2) (|fun#frame| EmptyFrame r_1@@0 i@@2)))
 :qid |stdinbpl.633:15|
 :skolemid |62|
 :pattern ( (state Heap@@7 Mask@@4) (|fun'| Heap@@7 r_1@@0 i@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_14248) (Mask@@5 T@PolymorphicMapType_14269) (xs@@1 T@Seq_21669) (i@@3 Int) ) (!  (=> (state Heap@@8 Mask@@5) (= (|at1'| Heap@@8 xs@@1 i@@3) (|at1#frame| EmptyFrame xs@@1 i@@3)))
 :qid |stdinbpl.735:15|
 :skolemid |70|
 :pattern ( (state Heap@@8 Mask@@5) (|at1'| Heap@@8 xs@@1 i@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_14248) (Mask@@6 T@PolymorphicMapType_14269) (i@@4 Int) (xs@@2 T@Seq_21669) ) (!  (=> (state Heap@@9 Mask@@6) (= (|at2'| Heap@@9 i@@4 xs@@2) (|at2#frame| EmptyFrame i@@4 xs@@2)))
 :qid |stdinbpl.798:15|
 :skolemid |74|
 :pattern ( (state Heap@@9 Mask@@6) (|at2'| Heap@@9 i@@4 xs@@2))
)))
(assert (= (|Seq#Length_9449| |Seq#Empty_9449|) 0))
(assert (= (|Seq#Length_3083| |Seq#Empty_3083|) 0))
(assert (forall ((r_1@@1 T@Ref) ) (! (IsPredicateField_9510_9511 (pred_3 r_1@@1))
 :qid |stdinbpl.848:15|
 :skolemid |76|
 :pattern ( (pred_3 r_1@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_14248) (r_1@@2 T@Ref) ) (! (dummyFunction_9401 (|fun2#triggerStateless| r_1@@2))
 :qid |stdinbpl.671:15|
 :skolemid |64|
 :pattern ( (|fun2'| Heap@@10 r_1@@2))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_14248) (r_1@@3 T@Ref) ) (! (|pred#everUsed_9510| (pred_3 r_1@@3))
 :qid |stdinbpl.867:15|
 :skolemid |80|
 :pattern ( (|pred#trigger_9510| Heap@@11 (pred_3 r_1@@3)))
)))
(assert (forall ((s@@3 T@Seq_21669) (i@@5 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_9449| s@@3))) (and (=> (= i@@5 n@@3) (= (|Seq#Index_9449| (|Seq#Update_9449| s@@3 i@@5 v) n@@3) v)) (=> (not (= i@@5 n@@3)) (= (|Seq#Index_9449| (|Seq#Update_9449| s@@3 i@@5 v) n@@3) (|Seq#Index_9449| s@@3 n@@3)))))
 :qid |stdinbpl.294:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_9449| (|Seq#Update_9449| s@@3 i@@5 v) n@@3))
 :pattern ( (|Seq#Index_9449| s@@3 n@@3) (|Seq#Update_9449| s@@3 i@@5 v))
)))
(assert (forall ((s@@4 T@Seq_3083) (i@@6 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3083| s@@4))) (and (=> (= i@@6 n@@4) (= (|Seq#Index_3083| (|Seq#Update_3083| s@@4 i@@6 v@@0) n@@4) v@@0)) (=> (not (= i@@6 n@@4)) (= (|Seq#Index_3083| (|Seq#Update_3083| s@@4 i@@6 v@@0) n@@4) (|Seq#Index_3083| s@@4 n@@4)))))
 :qid |stdinbpl.294:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3083| (|Seq#Update_3083| s@@4 i@@6 v@@0) n@@4))
 :pattern ( (|Seq#Index_3083| s@@4 n@@4) (|Seq#Update_3083| s@@4 i@@6 v@@0))
)))
(assert (forall ((s@@5 T@Seq_21669) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_9449| s@@5)) (= (|Seq#Length_9449| (|Seq#Take_9449| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_9449| s@@5) n@@5) (= (|Seq#Length_9449| (|Seq#Take_9449| s@@5 n@@5)) (|Seq#Length_9449| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_9449| (|Seq#Take_9449| s@@5 n@@5)) 0)))
 :qid |stdinbpl.305:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_9449| (|Seq#Take_9449| s@@5 n@@5)))
 :pattern ( (|Seq#Take_9449| s@@5 n@@5) (|Seq#Length_9449| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3083) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3083| s@@6)) (= (|Seq#Length_3083| (|Seq#Take_3083| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3083| s@@6) n@@6) (= (|Seq#Length_3083| (|Seq#Take_3083| s@@6 n@@6)) (|Seq#Length_3083| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3083| (|Seq#Take_3083| s@@6 n@@6)) 0)))
 :qid |stdinbpl.305:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3083| (|Seq#Take_3083| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3083| s@@6 n@@6) (|Seq#Length_3083| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3083| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.579:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3083| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_21669) (x T@Ref) ) (!  (=> (|Seq#Contains_9533| s@@7 x) (and (and (<= 0 (|Seq#Skolem_9533| s@@7 x)) (< (|Seq#Skolem_9533| s@@7 x) (|Seq#Length_9449| s@@7))) (= (|Seq#Index_9449| s@@7 (|Seq#Skolem_9533| s@@7 x)) x)))
 :qid |stdinbpl.437:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_9533| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3083) (x@@0 Int) ) (!  (=> (|Seq#Contains_3083| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3083| s@@8 x@@0)) (< (|Seq#Skolem_3083| s@@8 x@@0) (|Seq#Length_3083| s@@8))) (= (|Seq#Index_3083| s@@8 (|Seq#Skolem_3083| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.437:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3083| s@@8 x@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_14248) (r_1@@4 T@Ref) ) (!  (and (= (fun2 Heap@@12 r_1@@4) (|fun2'| Heap@@12 r_1@@4)) (dummyFunction_9401 (|fun2#triggerStateless| r_1@@4)))
 :qid |stdinbpl.667:15|
 :skolemid |63|
 :pattern ( (fun2 Heap@@12 r_1@@4))
)))
(assert (forall ((s@@9 T@Seq_21669) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_9449| s@@9 n@@7) s@@9))
 :qid |stdinbpl.421:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_9449| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3083) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3083| s@@10 n@@8) s@@10))
 :qid |stdinbpl.421:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3083| s@@10 n@@8))
)))
(assert (forall ((i@@7 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@7 j@@1) (- i@@7 j@@1))
 :qid |stdinbpl.274:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@7 j@@1))
)))
(assert (forall ((i@@8 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@8 j@@2) (+ i@@8 j@@2))
 :qid |stdinbpl.272:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@8 j@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_14248) (ExhaleHeap@@3 T@PolymorphicMapType_14248) (Mask@@7 T@PolymorphicMapType_14269) (pm_f_48@@3 T@Field_23178_23179) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@7) (=> (and (HasDirectPerm_23178_23179 Mask@@7 null pm_f_48@@3) (IsPredicateField_9510_9511 pm_f_48@@3)) (= (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@13) null (PredicateMaskField_9510 pm_f_48@@3)) (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| ExhaleHeap@@3) null (PredicateMaskField_9510 pm_f_48@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@3 Mask@@7) (IsPredicateField_9510_9511 pm_f_48@@3) (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| ExhaleHeap@@3) null (PredicateMaskField_9510 pm_f_48@@3)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_14248) (ExhaleHeap@@4 T@PolymorphicMapType_14248) (Mask@@8 T@PolymorphicMapType_14269) (pm_f_48@@4 T@Field_14308_23179) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@8) (=> (and (HasDirectPerm_14308_23179 Mask@@8 null pm_f_48@@4) (IsPredicateField_14308_41756 pm_f_48@@4)) (= (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@14) null (PredicateMaskField_14308 pm_f_48@@4)) (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| ExhaleHeap@@4) null (PredicateMaskField_14308 pm_f_48@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@4 Mask@@8) (IsPredicateField_14308_41756 pm_f_48@@4) (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| ExhaleHeap@@4) null (PredicateMaskField_14308 pm_f_48@@4)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_14248) (ExhaleHeap@@5 T@PolymorphicMapType_14248) (Mask@@9 T@PolymorphicMapType_14269) (pm_f_48@@5 T@Field_23178_23179) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@9) (=> (and (HasDirectPerm_23178_23179 Mask@@9 null pm_f_48@@5) (IsWandField_23178_45057 pm_f_48@@5)) (= (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@15) null (WandMaskField_23178 pm_f_48@@5)) (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| ExhaleHeap@@5) null (WandMaskField_23178 pm_f_48@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@5 Mask@@9) (IsWandField_23178_45057 pm_f_48@@5) (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| ExhaleHeap@@5) null (WandMaskField_23178 pm_f_48@@5)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_14248) (ExhaleHeap@@6 T@PolymorphicMapType_14248) (Mask@@10 T@PolymorphicMapType_14269) (pm_f_48@@6 T@Field_14308_23179) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@10) (=> (and (HasDirectPerm_14308_23179 Mask@@10 null pm_f_48@@6) (IsWandField_14308_44700 pm_f_48@@6)) (= (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@16) null (WandMaskField_14308 pm_f_48@@6)) (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| ExhaleHeap@@6) null (WandMaskField_14308 pm_f_48@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@6 Mask@@10) (IsWandField_14308_44700 pm_f_48@@6) (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| ExhaleHeap@@6) null (WandMaskField_14308 pm_f_48@@6)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_9533| (|Seq#Singleton_9449| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.562:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_9533| (|Seq#Singleton_9449| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3083| (|Seq#Singleton_3083| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.562:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3083| (|Seq#Singleton_3083| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_21669) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_9449| s@@11))) (= (|Seq#Index_9449| (|Seq#Take_9449| s@@11 n@@9) j@@3) (|Seq#Index_9449| s@@11 j@@3)))
 :qid |stdinbpl.313:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_9449| (|Seq#Take_9449| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_9449| s@@11 j@@3) (|Seq#Take_9449| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3083) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3083| s@@12))) (= (|Seq#Index_3083| (|Seq#Take_3083| s@@12 n@@10) j@@4) (|Seq#Index_3083| s@@12 j@@4)))
 :qid |stdinbpl.313:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3083| (|Seq#Take_3083| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3083| s@@12 j@@4) (|Seq#Take_3083| s@@12 n@@10))
)))
(assert (forall ((r_1@@5 T@Ref) (r2 T@Ref) ) (!  (=> (= (pred_3 r_1@@5) (pred_3 r2)) (= r_1@@5 r2))
 :qid |stdinbpl.858:15|
 :skolemid |78|
 :pattern ( (pred_3 r_1@@5) (pred_3 r2))
)))
(assert (forall ((r_1@@6 T@Ref) (r2@@0 T@Ref) ) (!  (=> (= (|pred#sm| r_1@@6) (|pred#sm| r2@@0)) (= r_1@@6 r2@@0))
 :qid |stdinbpl.862:15|
 :skolemid |79|
 :pattern ( (|pred#sm| r_1@@6) (|pred#sm| r2@@0))
)))
(assert (forall ((s@@13 T@Seq_21669) (t T@Seq_21669) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_9449| s@@13))) (< n@@11 (|Seq#Length_9449| (|Seq#Append_21669| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_9449| s@@13)) (|Seq#Length_9449| s@@13)) n@@11) (= (|Seq#Take_9449| (|Seq#Append_21669| s@@13 t) n@@11) (|Seq#Append_21669| s@@13 (|Seq#Take_9449| t (|Seq#Sub| n@@11 (|Seq#Length_9449| s@@13)))))))
 :qid |stdinbpl.398:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_9449| (|Seq#Append_21669| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3083) (t@@0 T@Seq_3083) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3083| s@@14))) (< n@@12 (|Seq#Length_3083| (|Seq#Append_3083| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3083| s@@14)) (|Seq#Length_3083| s@@14)) n@@12) (= (|Seq#Take_3083| (|Seq#Append_3083| s@@14 t@@0) n@@12) (|Seq#Append_3083| s@@14 (|Seq#Take_3083| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3083| s@@14)))))))
 :qid |stdinbpl.398:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3083| (|Seq#Append_3083| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_14248) (Mask@@11 T@PolymorphicMapType_14269) (r_1@@7 T@Ref) (i@@9 Int) ) (!  (=> (and (state Heap@@17 Mask@@11) (< AssumeFunctionsAbove 0)) (= (fun Heap@@17 r_1@@7 i@@9) r_1@@7))
 :qid |stdinbpl.626:15|
 :skolemid |61|
 :pattern ( (state Heap@@17 Mask@@11) (fun Heap@@17 r_1@@7 i@@9))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@18 T@PolymorphicMapType_14248) (ExhaleHeap@@7 T@PolymorphicMapType_14248) (Mask@@12 T@PolymorphicMapType_14269) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@12) (=> (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@18) o_55 $allocated) (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| ExhaleHeap@@7) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@12) (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| ExhaleHeap@@7) o_55 $allocated))
)))
(assert (forall ((p T@Field_23178_23179) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_23178_23178 p v_1 p w))
 :qid |stdinbpl.216:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_23178_23178 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_14308_23179) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_14308_14308 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.216:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14308_14308 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_21669) (s1 T@Seq_21669) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_9449|)) (not (= s1 |Seq#Empty_9449|))) (<= (|Seq#Length_9449| s0) n@@13)) (< n@@13 (|Seq#Length_9449| (|Seq#Append_21669| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_9449| s0)) (|Seq#Length_9449| s0)) n@@13) (= (|Seq#Index_9449| (|Seq#Append_21669| s0 s1) n@@13) (|Seq#Index_9449| s1 (|Seq#Sub| n@@13 (|Seq#Length_9449| s0))))))
 :qid |stdinbpl.285:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_9449| (|Seq#Append_21669| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3083) (s1@@0 T@Seq_3083) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3083|)) (not (= s1@@0 |Seq#Empty_3083|))) (<= (|Seq#Length_3083| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3083| (|Seq#Append_3083| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3083| s0@@0)) (|Seq#Length_3083| s0@@0)) n@@14) (= (|Seq#Index_3083| (|Seq#Append_3083| s0@@0 s1@@0) n@@14) (|Seq#Index_3083| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3083| s0@@0))))))
 :qid |stdinbpl.285:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3083| (|Seq#Append_3083| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_9376_9377 f_7)))
(assert  (not (IsWandField_9376_9377 f_7)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_14248) (ExhaleHeap@@8 T@PolymorphicMapType_14248) (Mask@@13 T@PolymorphicMapType_14269) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@13) (succHeap Heap@@19 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_14269) (o_2@@7 T@Ref) (f_4@@7 T@Field_14308_23196) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| Mask@@14) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_9376_50768 f_4@@7))) (not (IsWandField_9376_50784 f_4@@7))) (<= (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| Mask@@14) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| Mask@@14) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_14269) (o_2@@8 T@Ref) (f_4@@8 T@Field_14308_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| Mask@@15) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_9376_53 f_4@@8))) (not (IsWandField_9376_53 f_4@@8))) (<= (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| Mask@@15) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| Mask@@15) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_14269) (o_2@@9 T@Ref) (f_4@@9 T@Field_14321_14322) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| Mask@@16) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9376_9377 f_4@@9))) (not (IsWandField_9376_9377 f_4@@9))) (<= (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| Mask@@16) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| Mask@@16) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_14269) (o_2@@10 T@Ref) (f_4@@10 T@Field_14308_23179) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| Mask@@17) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_14308_41756 f_4@@10))) (not (IsWandField_14308_44700 f_4@@10))) (<= (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| Mask@@17) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| Mask@@17) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_14269) (o_2@@11 T@Ref) (f_4@@11 T@Field_23191_23196) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| Mask@@18) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_9510_50119 f_4@@11))) (not (IsWandField_9510_50135 f_4@@11))) (<= (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| Mask@@18) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| Mask@@18) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_14269) (o_2@@12 T@Ref) (f_4@@12 T@Field_23178_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| Mask@@19) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9510_53 f_4@@12))) (not (IsWandField_9510_53 f_4@@12))) (<= (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| Mask@@19) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| Mask@@19) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_14269) (o_2@@13 T@Ref) (f_4@@13 T@Field_23178_14322) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| Mask@@20) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_9510_9377 f_4@@13))) (not (IsWandField_9510_9377 f_4@@13))) (<= (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| Mask@@20) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| Mask@@20) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_14269) (o_2@@14 T@Ref) (f_4@@14 T@Field_23178_23179) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| Mask@@21) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_9510_9511 f_4@@14))) (not (IsWandField_23178_45057 f_4@@14))) (<= (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| Mask@@21) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| Mask@@21) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_14269) (o_2@@15 T@Ref) (f_4@@15 T@Field_23191_23196) ) (! (= (HasDirectPerm_23178_41468 Mask@@22 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| Mask@@22) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23178_41468 Mask@@22 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_14269) (o_2@@16 T@Ref) (f_4@@16 T@Field_23178_23179) ) (! (= (HasDirectPerm_23178_23179 Mask@@23 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| Mask@@23) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23178_23179 Mask@@23 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_14269) (o_2@@17 T@Ref) (f_4@@17 T@Field_23178_14322) ) (! (= (HasDirectPerm_23178_14322 Mask@@24 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| Mask@@24) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23178_14322 Mask@@24 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_14269) (o_2@@18 T@Ref) (f_4@@18 T@Field_23178_53) ) (! (= (HasDirectPerm_23178_53 Mask@@25 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| Mask@@25) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_23178_53 Mask@@25 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_14269) (o_2@@19 T@Ref) (f_4@@19 T@Field_14308_23196) ) (! (= (HasDirectPerm_14308_40528 Mask@@26 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| Mask@@26) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14308_40528 Mask@@26 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_14269) (o_2@@20 T@Ref) (f_4@@20 T@Field_14308_23179) ) (! (= (HasDirectPerm_14308_23179 Mask@@27 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| Mask@@27) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14308_23179 Mask@@27 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_14269) (o_2@@21 T@Ref) (f_4@@21 T@Field_14321_14322) ) (! (= (HasDirectPerm_14308_14322 Mask@@28 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| Mask@@28) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14308_14322 Mask@@28 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_14269) (o_2@@22 T@Ref) (f_4@@22 T@Field_14308_53) ) (! (= (HasDirectPerm_14308_53 Mask@@29 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| Mask@@29) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14308_53 Mask@@29 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.204:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3083| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.577:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3083| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_14248) (ExhaleHeap@@9 T@PolymorphicMapType_14248) (Mask@@30 T@PolymorphicMapType_14269) (o_55@@0 T@Ref) (f_54@@31 T@Field_23191_23196) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_23178_41468 Mask@@30 o_55@@0 f_54@@31) (= (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@20) o_55@@0 f_54@@31) (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| ExhaleHeap@@9) o_55@@0 f_54@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| ExhaleHeap@@9) o_55@@0 f_54@@31))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_14248) (ExhaleHeap@@10 T@PolymorphicMapType_14248) (Mask@@31 T@PolymorphicMapType_14269) (o_55@@1 T@Ref) (f_54@@32 T@Field_23178_23179) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_23178_23179 Mask@@31 o_55@@1 f_54@@32) (= (select (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@21) o_55@@1 f_54@@32) (select (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| ExhaleHeap@@10) o_55@@1 f_54@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| ExhaleHeap@@10) o_55@@1 f_54@@32))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_14248) (ExhaleHeap@@11 T@PolymorphicMapType_14248) (Mask@@32 T@PolymorphicMapType_14269) (o_55@@2 T@Ref) (f_54@@33 T@Field_23178_14322) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_23178_14322 Mask@@32 o_55@@2 f_54@@33) (= (select (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@22) o_55@@2 f_54@@33) (select (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| ExhaleHeap@@11) o_55@@2 f_54@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| ExhaleHeap@@11) o_55@@2 f_54@@33))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_14248) (ExhaleHeap@@12 T@PolymorphicMapType_14248) (Mask@@33 T@PolymorphicMapType_14269) (o_55@@3 T@Ref) (f_54@@34 T@Field_23178_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_23178_53 Mask@@33 o_55@@3 f_54@@34) (= (select (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@23) o_55@@3 f_54@@34) (select (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| ExhaleHeap@@12) o_55@@3 f_54@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| ExhaleHeap@@12) o_55@@3 f_54@@34))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_14248) (ExhaleHeap@@13 T@PolymorphicMapType_14248) (Mask@@34 T@PolymorphicMapType_14269) (o_55@@4 T@Ref) (f_54@@35 T@Field_14308_23196) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_14308_40528 Mask@@34 o_55@@4 f_54@@35) (= (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@24) o_55@@4 f_54@@35) (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| ExhaleHeap@@13) o_55@@4 f_54@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| ExhaleHeap@@13) o_55@@4 f_54@@35))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_14248) (ExhaleHeap@@14 T@PolymorphicMapType_14248) (Mask@@35 T@PolymorphicMapType_14269) (o_55@@5 T@Ref) (f_54@@36 T@Field_14308_23179) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_14308_23179 Mask@@35 o_55@@5 f_54@@36) (= (select (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@25) o_55@@5 f_54@@36) (select (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| ExhaleHeap@@14) o_55@@5 f_54@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| ExhaleHeap@@14) o_55@@5 f_54@@36))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_14248) (ExhaleHeap@@15 T@PolymorphicMapType_14248) (Mask@@36 T@PolymorphicMapType_14269) (o_55@@6 T@Ref) (f_54@@37 T@Field_14321_14322) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_14308_14322 Mask@@36 o_55@@6 f_54@@37) (= (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@26) o_55@@6 f_54@@37) (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| ExhaleHeap@@15) o_55@@6 f_54@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| ExhaleHeap@@15) o_55@@6 f_54@@37))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_14248) (ExhaleHeap@@16 T@PolymorphicMapType_14248) (Mask@@37 T@PolymorphicMapType_14269) (o_55@@7 T@Ref) (f_54@@38 T@Field_14308_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_14308_53 Mask@@37 o_55@@7 f_54@@38) (= (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@27) o_55@@7 f_54@@38) (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| ExhaleHeap@@16) o_55@@7 f_54@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| ExhaleHeap@@16) o_55@@7 f_54@@38))
)))
(assert (forall ((s0@@1 T@Seq_21669) (s1@@1 T@Seq_21669) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_9449|)) (not (= s1@@1 |Seq#Empty_9449|))) (= (|Seq#Length_9449| (|Seq#Append_21669| s0@@1 s1@@1)) (+ (|Seq#Length_9449| s0@@1) (|Seq#Length_9449| s1@@1))))
 :qid |stdinbpl.254:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_9449| (|Seq#Append_21669| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3083) (s1@@2 T@Seq_3083) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3083|)) (not (= s1@@2 |Seq#Empty_3083|))) (= (|Seq#Length_3083| (|Seq#Append_3083| s0@@2 s1@@2)) (+ (|Seq#Length_3083| s0@@2) (|Seq#Length_3083| s1@@2))))
 :qid |stdinbpl.254:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3083| (|Seq#Append_3083| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_14308_23196) ) (! (= (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_14308_53) ) (! (= (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_14321_14322) ) (! (= (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_14308_23179) ) (! (= (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_23191_23196) ) (! (= (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_23178_53) ) (! (= (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_23178_14322) ) (! (= (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_23178_23179) ) (! (= (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((s@@15 T@Seq_21669) (t@@1 T@Seq_21669) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_9449| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_9449| s@@15)) (|Seq#Length_9449| s@@15)) n@@15) (= (|Seq#Drop_9449| (|Seq#Append_21669| s@@15 t@@1) n@@15) (|Seq#Drop_9449| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_9449| s@@15))))))
 :qid |stdinbpl.411:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_9449| (|Seq#Append_21669| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3083) (t@@2 T@Seq_3083) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3083| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3083| s@@16)) (|Seq#Length_3083| s@@16)) n@@16) (= (|Seq#Drop_3083| (|Seq#Append_3083| s@@16 t@@2) n@@16) (|Seq#Drop_3083| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3083| s@@16))))))
 :qid |stdinbpl.411:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3083| (|Seq#Append_3083| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_14248) (r_1@@8 T@Ref) (i@@10 Int) ) (!  (and (= (fun Heap@@28 r_1@@8 i@@10) (|fun'| Heap@@28 r_1@@8 i@@10)) (dummyFunction_9401 (|fun#triggerStateless| r_1@@8 i@@10)))
 :qid |stdinbpl.616:15|
 :skolemid |59|
 :pattern ( (fun Heap@@28 r_1@@8 i@@10))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_14248) (xs@@3 T@Seq_21669) (i@@11 Int) ) (!  (and (= (at1 Heap@@29 xs@@3 i@@11) (|at1'| Heap@@29 xs@@3 i@@11)) (dummyFunction_9401 (|at1#triggerStateless| xs@@3 i@@11)))
 :qid |stdinbpl.718:15|
 :skolemid |67|
 :pattern ( (at1 Heap@@29 xs@@3 i@@11))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_14248) (i@@12 Int) (xs@@4 T@Seq_21669) ) (!  (and (= (at2 Heap@@30 i@@12 xs@@4) (|at2'| Heap@@30 i@@12 xs@@4)) (dummyFunction_9401 (|at2#triggerStateless| i@@12 xs@@4)))
 :qid |stdinbpl.781:15|
 :skolemid |71|
 :pattern ( (at2 Heap@@30 i@@12 xs@@4))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_14269) (SummandMask1 T@PolymorphicMapType_14269) (SummandMask2 T@PolymorphicMapType_14269) (o_2@@31 T@Ref) (f_4@@31 T@Field_14308_23196) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_14269) (SummandMask1@@0 T@PolymorphicMapType_14269) (SummandMask2@@0 T@PolymorphicMapType_14269) (o_2@@32 T@Ref) (f_4@@32 T@Field_14308_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_14269) (SummandMask1@@1 T@PolymorphicMapType_14269) (SummandMask2@@1 T@PolymorphicMapType_14269) (o_2@@33 T@Ref) (f_4@@33 T@Field_14321_14322) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_14269) (SummandMask1@@2 T@PolymorphicMapType_14269) (SummandMask2@@2 T@PolymorphicMapType_14269) (o_2@@34 T@Ref) (f_4@@34 T@Field_14308_23179) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_14269) (SummandMask1@@3 T@PolymorphicMapType_14269) (SummandMask2@@3 T@PolymorphicMapType_14269) (o_2@@35 T@Ref) (f_4@@35 T@Field_23191_23196) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_14269) (SummandMask1@@4 T@PolymorphicMapType_14269) (SummandMask2@@4 T@PolymorphicMapType_14269) (o_2@@36 T@Ref) (f_4@@36 T@Field_23178_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_14269) (SummandMask1@@5 T@PolymorphicMapType_14269) (SummandMask2@@5 T@PolymorphicMapType_14269) (o_2@@37 T@Ref) (f_4@@37 T@Field_23178_14322) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_14269) (SummandMask1@@6 T@PolymorphicMapType_14269) (SummandMask2@@6 T@PolymorphicMapType_14269) (o_2@@38 T@Ref) (f_4@@38 T@Field_23178_23179) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3083| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3083| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.576:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3083| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_21669) (b T@Seq_21669) ) (!  (=> (|Seq#Equal_21669| a b) (= a b))
 :qid |stdinbpl.549:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_21669| a b))
)))
(assert (forall ((a@@0 T@Seq_3083) (b@@0 T@Seq_3083) ) (!  (=> (|Seq#Equal_3083| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.549:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3083| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_21669) (i@@13 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 (|Seq#Length_9449| s@@17))) (|Seq#ContainsTrigger_9449| s@@17 (|Seq#Index_9449| s@@17 i@@13)))
 :qid |stdinbpl.442:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_9449| s@@17 i@@13))
)))
(assert (forall ((s@@18 T@Seq_3083) (i@@14 Int) ) (!  (=> (and (<= 0 i@@14) (< i@@14 (|Seq#Length_3083| s@@18))) (|Seq#ContainsTrigger_3083| s@@18 (|Seq#Index_3083| s@@18 i@@14)))
 :qid |stdinbpl.442:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3083| s@@18 i@@14))
)))
(assert (forall ((s0@@3 T@Seq_21669) (s1@@3 T@Seq_21669) ) (!  (and (=> (= s0@@3 |Seq#Empty_9449|) (= (|Seq#Append_21669| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_9449|) (= (|Seq#Append_21669| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.260:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_21669| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3083) (s1@@4 T@Seq_3083) ) (!  (and (=> (= s0@@4 |Seq#Empty_3083|) (= (|Seq#Append_3083| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3083|) (= (|Seq#Append_3083| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.260:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3083| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_9449| (|Seq#Singleton_9449| t@@3) 0) t@@3)
 :qid |stdinbpl.264:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_9449| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3083| (|Seq#Singleton_3083| t@@4) 0) t@@4)
 :qid |stdinbpl.264:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3083| t@@4))
)))
(assert (forall ((s@@19 T@Seq_21669) ) (! (<= 0 (|Seq#Length_9449| s@@19))
 :qid |stdinbpl.243:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_9449| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3083) ) (! (<= 0 (|Seq#Length_3083| s@@20))
 :qid |stdinbpl.243:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3083| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_21669) (s1@@5 T@Seq_21669) ) (!  (=> (|Seq#Equal_21669| s0@@5 s1@@5) (and (= (|Seq#Length_9449| s0@@5) (|Seq#Length_9449| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_9449| s0@@5))) (= (|Seq#Index_9449| s0@@5 j@@6) (|Seq#Index_9449| s1@@5 j@@6)))
 :qid |stdinbpl.539:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_9449| s0@@5 j@@6))
 :pattern ( (|Seq#Index_9449| s1@@5 j@@6))
))))
 :qid |stdinbpl.536:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_21669| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3083) (s1@@6 T@Seq_3083) ) (!  (=> (|Seq#Equal_3083| s0@@6 s1@@6) (and (= (|Seq#Length_3083| s0@@6) (|Seq#Length_3083| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3083| s0@@6))) (= (|Seq#Index_3083| s0@@6 j@@7) (|Seq#Index_3083| s1@@6 j@@7)))
 :qid |stdinbpl.539:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3083| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3083| s1@@6 j@@7))
))))
 :qid |stdinbpl.536:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3083| s0@@6 s1@@6))
)))
(assert (forall ((r_1@@9 T@Ref) ) (! (= (getPredWandId_9510_9511 (pred_3 r_1@@9)) 0)
 :qid |stdinbpl.852:15|
 :skolemid |77|
 :pattern ( (pred_3 r_1@@9))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_9449| (|Seq#Singleton_9449| t@@5)) 1)
 :qid |stdinbpl.251:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_9449| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3083| (|Seq#Singleton_3083| t@@6)) 1)
 :qid |stdinbpl.251:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3083| t@@6))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_14248) (Mask@@38 T@PolymorphicMapType_14269) (r_1@@10 T@Ref) ) (!  (=> (state Heap@@31 Mask@@38) (= (|fun2'| Heap@@31 r_1@@10) (|fun2#frame| EmptyFrame r_1@@10)))
 :qid |stdinbpl.684:15|
 :skolemid |66|
 :pattern ( (state Heap@@31 Mask@@38) (|fun2'| Heap@@31 r_1@@10))
)))
(assert (forall ((s@@21 T@Seq_21669) (t@@7 T@Seq_21669) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_9449| s@@21))) (= (|Seq#Take_9449| (|Seq#Append_21669| s@@21 t@@7) n@@17) (|Seq#Take_9449| s@@21 n@@17)))
 :qid |stdinbpl.393:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_9449| (|Seq#Append_21669| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3083) (t@@8 T@Seq_3083) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3083| s@@22))) (= (|Seq#Take_3083| (|Seq#Append_3083| s@@22 t@@8) n@@18) (|Seq#Take_3083| s@@22 n@@18)))
 :qid |stdinbpl.393:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3083| (|Seq#Append_3083| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_21669) (i@@15 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@15) (< i@@15 (|Seq#Length_9449| s@@23))) (= (|Seq#Length_9449| (|Seq#Update_9449| s@@23 i@@15 v@@2)) (|Seq#Length_9449| s@@23)))
 :qid |stdinbpl.292:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_9449| (|Seq#Update_9449| s@@23 i@@15 v@@2)))
 :pattern ( (|Seq#Length_9449| s@@23) (|Seq#Update_9449| s@@23 i@@15 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3083) (i@@16 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@16) (< i@@16 (|Seq#Length_3083| s@@24))) (= (|Seq#Length_3083| (|Seq#Update_3083| s@@24 i@@16 v@@3)) (|Seq#Length_3083| s@@24)))
 :qid |stdinbpl.292:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3083| (|Seq#Update_3083| s@@24 i@@16 v@@3)))
 :pattern ( (|Seq#Length_3083| s@@24) (|Seq#Update_3083| s@@24 i@@16 v@@3))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_14248) (o_46 T@Ref) (f_25 T@Field_23191_23196) (v@@4 T@PolymorphicMapType_14797) ) (! (succHeap Heap@@32 (PolymorphicMapType_14248 (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@32) (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@32) (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@32) (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@32) (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@32) (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@32) (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@32) (store (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@32) o_46 f_25 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14248 (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@32) (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@32) (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@32) (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@32) (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@32) (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@32) (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@32) (store (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@32) o_46 f_25 v@@4)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_14248) (o_46@@0 T@Ref) (f_25@@0 T@Field_23178_23179) (v@@5 T@FrameType) ) (! (succHeap Heap@@33 (PolymorphicMapType_14248 (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@33) (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@33) (store (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@33) o_46@@0 f_25@@0 v@@5) (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@33) (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@33) (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@33) (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@33) (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14248 (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@33) (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@33) (store (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@33) o_46@@0 f_25@@0 v@@5) (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@33) (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@33) (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@33) (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@33) (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_14248) (o_46@@1 T@Ref) (f_25@@1 T@Field_23178_14322) (v@@6 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_14248 (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@34) (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@34) (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@34) (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@34) (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@34) (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@34) (store (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@34) o_46@@1 f_25@@1 v@@6) (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14248 (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@34) (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@34) (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@34) (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@34) (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@34) (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@34) (store (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@34) o_46@@1 f_25@@1 v@@6) (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_14248) (o_46@@2 T@Ref) (f_25@@2 T@Field_23178_53) (v@@7 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_14248 (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@35) (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@35) (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@35) (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@35) (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@35) (store (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@35) o_46@@2 f_25@@2 v@@7) (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@35) (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14248 (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@35) (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@35) (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@35) (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@35) (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@35) (store (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@35) o_46@@2 f_25@@2 v@@7) (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@35) (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_14248) (o_46@@3 T@Ref) (f_25@@3 T@Field_14308_23196) (v@@8 T@PolymorphicMapType_14797) ) (! (succHeap Heap@@36 (PolymorphicMapType_14248 (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@36) (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@36) (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@36) (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@36) (store (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@36) o_46@@3 f_25@@3 v@@8) (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@36) (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@36) (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14248 (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@36) (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@36) (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@36) (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@36) (store (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@36) o_46@@3 f_25@@3 v@@8) (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@36) (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@36) (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_14248) (o_46@@4 T@Ref) (f_25@@4 T@Field_14308_23179) (v@@9 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_14248 (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@37) (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@37) (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@37) (store (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@37) o_46@@4 f_25@@4 v@@9) (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@37) (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@37) (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@37) (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14248 (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@37) (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@37) (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@37) (store (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@37) o_46@@4 f_25@@4 v@@9) (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@37) (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@37) (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@37) (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_14248) (o_46@@5 T@Ref) (f_25@@5 T@Field_14321_14322) (v@@10 T@Ref) ) (! (succHeap Heap@@38 (PolymorphicMapType_14248 (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@38) (store (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@38) o_46@@5 f_25@@5 v@@10) (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@38) (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@38) (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@38) (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@38) (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@38) (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14248 (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@38) (store (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@38) o_46@@5 f_25@@5 v@@10) (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@38) (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@38) (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@38) (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@38) (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@38) (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_14248) (o_46@@6 T@Ref) (f_25@@6 T@Field_14308_53) (v@@11 Bool) ) (! (succHeap Heap@@39 (PolymorphicMapType_14248 (store (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@39) o_46@@6 f_25@@6 v@@11) (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@39) (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@39) (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@39) (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@39) (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@39) (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@39) (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14248 (store (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@39) o_46@@6 f_25@@6 v@@11) (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@39) (|PolymorphicMapType_14248_9510_9511#PolymorphicMapType_14248| Heap@@39) (|PolymorphicMapType_14248_14308_23179#PolymorphicMapType_14248| Heap@@39) (|PolymorphicMapType_14248_14308_40570#PolymorphicMapType_14248| Heap@@39) (|PolymorphicMapType_14248_23178_53#PolymorphicMapType_14248| Heap@@39) (|PolymorphicMapType_14248_23178_14322#PolymorphicMapType_14248| Heap@@39) (|PolymorphicMapType_14248_23178_41510#PolymorphicMapType_14248| Heap@@39)))
)))
(assert (forall ((r_1@@11 T@Ref) ) (! (= (PredicateMaskField_9510 (pred_3 r_1@@11)) (|pred#sm| r_1@@11))
 :qid |stdinbpl.844:15|
 :skolemid |75|
 :pattern ( (PredicateMaskField_9510 (pred_3 r_1@@11)))
)))
(assert (forall ((s@@25 T@Seq_21669) (t@@9 T@Seq_21669) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_9449| s@@25))) (= (|Seq#Drop_9449| (|Seq#Append_21669| s@@25 t@@9) n@@19) (|Seq#Append_21669| (|Seq#Drop_9449| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.407:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_9449| (|Seq#Append_21669| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3083) (t@@10 T@Seq_3083) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3083| s@@26))) (= (|Seq#Drop_3083| (|Seq#Append_3083| s@@26 t@@10) n@@20) (|Seq#Append_3083| (|Seq#Drop_3083| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.407:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3083| (|Seq#Append_3083| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_21669) (n@@21 Int) (i@@17 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@17)) (< i@@17 (|Seq#Length_9449| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@17 n@@21) n@@21) i@@17) (= (|Seq#Index_9449| (|Seq#Drop_9449| s@@27 n@@21) (|Seq#Sub| i@@17 n@@21)) (|Seq#Index_9449| s@@27 i@@17))))
 :qid |stdinbpl.343:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_9449| s@@27 n@@21) (|Seq#Index_9449| s@@27 i@@17))
)))
(assert (forall ((s@@28 T@Seq_3083) (n@@22 Int) (i@@18 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@18)) (< i@@18 (|Seq#Length_3083| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@18 n@@22) n@@22) i@@18) (= (|Seq#Index_3083| (|Seq#Drop_3083| s@@28 n@@22) (|Seq#Sub| i@@18 n@@22)) (|Seq#Index_3083| s@@28 i@@18))))
 :qid |stdinbpl.343:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3083| s@@28 n@@22) (|Seq#Index_3083| s@@28 i@@18))
)))
(assert (forall ((s0@@7 T@Seq_21669) (s1@@7 T@Seq_21669) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_9449|)) (not (= s1@@7 |Seq#Empty_9449|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_9449| s0@@7))) (= (|Seq#Index_9449| (|Seq#Append_21669| s0@@7 s1@@7) n@@23) (|Seq#Index_9449| s0@@7 n@@23)))
 :qid |stdinbpl.283:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_9449| (|Seq#Append_21669| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_9449| s0@@7 n@@23) (|Seq#Append_21669| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3083) (s1@@8 T@Seq_3083) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3083|)) (not (= s1@@8 |Seq#Empty_3083|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3083| s0@@8))) (= (|Seq#Index_3083| (|Seq#Append_3083| s0@@8 s1@@8) n@@24) (|Seq#Index_3083| s0@@8 n@@24)))
 :qid |stdinbpl.283:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3083| (|Seq#Append_3083| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3083| s0@@8 n@@24) (|Seq#Append_3083| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_21669) (s1@@9 T@Seq_21669) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_9449|)) (not (= s1@@9 |Seq#Empty_9449|))) (<= 0 m)) (< m (|Seq#Length_9449| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_9449| s0@@9)) (|Seq#Length_9449| s0@@9)) m) (= (|Seq#Index_9449| (|Seq#Append_21669| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_9449| s0@@9))) (|Seq#Index_9449| s1@@9 m))))
 :qid |stdinbpl.288:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_9449| s1@@9 m) (|Seq#Append_21669| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3083) (s1@@10 T@Seq_3083) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3083|)) (not (= s1@@10 |Seq#Empty_3083|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3083| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3083| s0@@10)) (|Seq#Length_3083| s0@@10)) m@@0) (= (|Seq#Index_3083| (|Seq#Append_3083| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3083| s0@@10))) (|Seq#Index_3083| s1@@10 m@@0))))
 :qid |stdinbpl.288:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3083| s1@@10 m@@0) (|Seq#Append_3083| s0@@10 s1@@10))
)))
(assert (forall ((o_46@@7 T@Ref) (f_37 T@Field_14321_14322) (Heap@@40 T@PolymorphicMapType_14248) ) (!  (=> (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@40) o_46@@7 $allocated) (select (|PolymorphicMapType_14248_9160_53#PolymorphicMapType_14248| Heap@@40) (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@40) o_46@@7 f_37) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_14248_9163_9164#PolymorphicMapType_14248| Heap@@40) o_46@@7 f_37))
)))
(assert (forall ((s@@29 T@Seq_21669) (x@@3 T@Ref) (i@@19 Int) ) (!  (=> (and (and (<= 0 i@@19) (< i@@19 (|Seq#Length_9449| s@@29))) (= (|Seq#Index_9449| s@@29 i@@19) x@@3)) (|Seq#Contains_9533| s@@29 x@@3))
 :qid |stdinbpl.440:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_9533| s@@29 x@@3) (|Seq#Index_9449| s@@29 i@@19))
)))
(assert (forall ((s@@30 T@Seq_3083) (x@@4 Int) (i@@20 Int) ) (!  (=> (and (and (<= 0 i@@20) (< i@@20 (|Seq#Length_3083| s@@30))) (= (|Seq#Index_3083| s@@30 i@@20) x@@4)) (|Seq#Contains_3083| s@@30 x@@4))
 :qid |stdinbpl.440:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3083| s@@30 x@@4) (|Seq#Index_3083| s@@30 i@@20))
)))
(assert (forall ((s0@@11 T@Seq_21669) (s1@@11 T@Seq_21669) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_21669| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21669| s0@@11 s1@@11))) (not (= (|Seq#Length_9449| s0@@11) (|Seq#Length_9449| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21669| s0@@11 s1@@11))) (= (|Seq#Length_9449| s0@@11) (|Seq#Length_9449| s1@@11))) (= (|Seq#SkolemDiff_21669| s0@@11 s1@@11) (|Seq#SkolemDiff_21669| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_21669| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_21669| s0@@11 s1@@11) (|Seq#Length_9449| s0@@11))) (not (= (|Seq#Index_9449| s0@@11 (|Seq#SkolemDiff_21669| s0@@11 s1@@11)) (|Seq#Index_9449| s1@@11 (|Seq#SkolemDiff_21669| s0@@11 s1@@11))))))
 :qid |stdinbpl.544:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_21669| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3083) (s1@@12 T@Seq_3083) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3083| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3083| s0@@12 s1@@12))) (not (= (|Seq#Length_3083| s0@@12) (|Seq#Length_3083| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3083| s0@@12 s1@@12))) (= (|Seq#Length_3083| s0@@12) (|Seq#Length_3083| s1@@12))) (= (|Seq#SkolemDiff_3083| s0@@12 s1@@12) (|Seq#SkolemDiff_3083| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3083| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3083| s0@@12 s1@@12) (|Seq#Length_3083| s0@@12))) (not (= (|Seq#Index_3083| s0@@12 (|Seq#SkolemDiff_3083| s0@@12 s1@@12)) (|Seq#Index_3083| s1@@12 (|Seq#SkolemDiff_3083| s0@@12 s1@@12))))))
 :qid |stdinbpl.544:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3083| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_23178_23179) (v_1@@1 T@FrameType) (q T@Field_23178_23179) (w@@1 T@FrameType) (r T@Field_23178_23179) (u T@FrameType) ) (!  (=> (and (InsidePredicate_23178_23178 p@@2 v_1@@1 q w@@1) (InsidePredicate_23178_23178 q w@@1 r u)) (InsidePredicate_23178_23178 p@@2 v_1@@1 r u))
 :qid |stdinbpl.211:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23178_23178 p@@2 v_1@@1 q w@@1) (InsidePredicate_23178_23178 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_23178_23179) (v_1@@2 T@FrameType) (q@@0 T@Field_23178_23179) (w@@2 T@FrameType) (r@@0 T@Field_14308_23179) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_23178_23178 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_23178_14308 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_23178_14308 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.211:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23178_23178 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_23178_14308 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_23178_23179) (v_1@@3 T@FrameType) (q@@1 T@Field_14308_23179) (w@@3 T@FrameType) (r@@1 T@Field_23178_23179) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_23178_14308 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_14308_23178 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_23178_23178 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.211:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23178_14308 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_14308_23178 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_23178_23179) (v_1@@4 T@FrameType) (q@@2 T@Field_14308_23179) (w@@4 T@FrameType) (r@@2 T@Field_14308_23179) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_23178_14308 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_14308_14308 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_23178_14308 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.211:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_23178_14308 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_14308_14308 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_14308_23179) (v_1@@5 T@FrameType) (q@@3 T@Field_23178_23179) (w@@5 T@FrameType) (r@@3 T@Field_23178_23179) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_14308_23178 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_23178_23178 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_14308_23178 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.211:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14308_23178 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_23178_23178 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_14308_23179) (v_1@@6 T@FrameType) (q@@4 T@Field_23178_23179) (w@@6 T@FrameType) (r@@4 T@Field_14308_23179) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_14308_23178 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_23178_14308 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_14308_14308 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.211:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14308_23178 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_23178_14308 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_14308_23179) (v_1@@7 T@FrameType) (q@@5 T@Field_14308_23179) (w@@7 T@FrameType) (r@@5 T@Field_23178_23179) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_14308_14308 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_14308_23178 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_14308_23178 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.211:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14308_14308 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_14308_23178 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_14308_23179) (v_1@@8 T@FrameType) (q@@6 T@Field_14308_23179) (w@@8 T@FrameType) (r@@6 T@Field_14308_23179) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_14308_14308 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_14308_14308 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_14308_14308 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.211:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14308_14308 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_14308_14308 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_14248) (Mask@@39 T@PolymorphicMapType_14269) (r_1@@12 T@Ref) ) (!  (=> (and (state Heap@@41 Mask@@39) (< AssumeFunctionsAbove 2)) (= (fun2 Heap@@41 r_1@@12) r_1@@12))
 :qid |stdinbpl.677:15|
 :skolemid |65|
 :pattern ( (state Heap@@41 Mask@@39) (fun2 Heap@@41 r_1@@12))
)))
(assert (forall ((s@@31 T@Seq_21669) ) (!  (=> (= (|Seq#Length_9449| s@@31) 0) (= s@@31 |Seq#Empty_9449|))
 :qid |stdinbpl.247:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_9449| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3083) ) (!  (=> (= (|Seq#Length_3083| s@@32) 0) (= s@@32 |Seq#Empty_3083|))
 :qid |stdinbpl.247:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3083| s@@32))
)))
(assert (forall ((s@@33 T@Seq_21669) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_9449| s@@33 n@@25) |Seq#Empty_9449|))
 :qid |stdinbpl.423:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_9449| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3083) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3083| s@@34 n@@26) |Seq#Empty_3083|))
 :qid |stdinbpl.423:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3083| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@42 T@PolymorphicMapType_14248) (Mask@@40 T@PolymorphicMapType_14269) (xs@@5 T@Seq_21669) (i@@21 Int) ) (!  (=> (and (state Heap@@42 Mask@@40) (< AssumeFunctionsAbove 1)) (=> (and (<= 0 i@@21) (< i@@21 (|Seq#Length_9449| xs@@5))) (= (at1 Heap@@42 xs@@5 i@@21) (|Seq#Index_9449| xs@@5 i@@21))))
 :qid |stdinbpl.728:15|
 :skolemid |69|
 :pattern ( (state Heap@@42 Mask@@40) (at1 Heap@@42 xs@@5 i@@21))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_14248) (Mask@@41 T@PolymorphicMapType_14269) (i@@22 Int) (xs@@6 T@Seq_21669) ) (!  (=> (and (state Heap@@43 Mask@@41) (< AssumeFunctionsAbove 3)) (=> (and (<= 0 i@@22) (< i@@22 (|Seq#Length_9449| xs@@6))) (= (at2 Heap@@43 i@@22 xs@@6) (|Seq#Index_9449| xs@@6 i@@22))))
 :qid |stdinbpl.791:15|
 :skolemid |73|
 :pattern ( (state Heap@@43 Mask@@41) (at2 Heap@@43 i@@22 xs@@6))
)))
(assert (forall ((r1 T@Ref) (r2@@1 T@Ref) ) (! (D r1 r2@@1)
 :qid |stdinbpl.596:15|
 :skolemid |58|
 :pattern ( (D r1 r2@@1))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_12 () Int)
(declare-fun xs@@7 () T@Seq_21669)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun Heap@@44 () T@PolymorphicMapType_14248)
(declare-fun QPMask@0 () T@PolymorphicMapType_14269)
(declare-fun i_5 () Int)
(declare-fun i_11 () Int)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun i_10 () Int)
(declare-fun i_9 () Int)
(declare-fun j_10 () Int)
(set-info :boogie-vc-id test02b)
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
 (=> (= (ControlFlow 0 0) 41) (let ((anon39_Then_correct  (and (=> (= (ControlFlow 0 33) (- 0 34)) (<= 0 i_12)) (=> (<= 0 i_12) (=> (= (ControlFlow 0 33) (- 0 32)) (< i_12 (|Seq#Length_9449| xs@@7)))))))
(let ((anon24_correct true))
(let ((anon38_Then_correct  (=> (and (<= 0 i_12) (< i_12 (|Seq#Length_9449| xs@@7))) (and (=> (= (ControlFlow 0 35) 33) anon39_Then_correct) (=> (= (ControlFlow 0 35) 30) anon24_correct)))))
(let ((anon38_Else_correct  (=> (and (not (and (<= 0 i_12) (< i_12 (|Seq#Length_9449| xs@@7)))) (= (ControlFlow 0 31) 30)) anon24_correct)))
(let ((anon37_Else_correct  (and (=> (= (ControlFlow 0 28) (- 0 29)) (forall ((i_8_2 Int) (i_8_3 Int) ) (!  (=> (and (and (and (and (not (= i_8_2 i_8_3)) (and (<= 0 i_8_2) (< i_8_2 (|Seq#Length_9449| xs@@7)))) (and (<= 0 i_8_3) (< i_8_3 (|Seq#Length_9449| xs@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (at2 Heap@@44 i_8_2 xs@@7) (at2 Heap@@44 i_8_3 xs@@7))))
 :qid |stdinbpl.1478:17|
 :skolemid |122|
 :pattern ( (neverTriggered7 i_8_2) (neverTriggered7 i_8_3))
))) (=> (forall ((i_8_2@@0 Int) (i_8_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_8_2@@0 i_8_3@@0)) (and (<= 0 i_8_2@@0) (< i_8_2@@0 (|Seq#Length_9449| xs@@7)))) (and (<= 0 i_8_3@@0) (< i_8_3@@0 (|Seq#Length_9449| xs@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (at2 Heap@@44 i_8_2@@0 xs@@7) (at2 Heap@@44 i_8_3@@0 xs@@7))))
 :qid |stdinbpl.1478:17|
 :skolemid |122|
 :pattern ( (neverTriggered7 i_8_2@@0) (neverTriggered7 i_8_3@@0))
)) (=> (= (ControlFlow 0 28) (- 0 27)) (forall ((i_8_2@@1 Int) ) (!  (=> (and (<= 0 i_8_2@@1) (< i_8_2@@1 (|Seq#Length_9449| xs@@7))) (>= (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| QPMask@0) (at2 Heap@@44 i_8_2@@1 xs@@7) f_7) FullPerm))
 :qid |stdinbpl.1485:17|
 :skolemid |123|
 :pattern ( (|at2#frame| EmptyFrame i_8_2@@1 xs@@7))
 :pattern ( (|at2#frame| EmptyFrame i_8_2@@1 xs@@7))
)))))))
(let ((anon35_Else_correct  (=> (and (forall ((i_6_1_1 Int) ) (!  (=> (and (<= 0 i_6_1_1) (< i_6_1_1 (|Seq#Length_9449| xs@@7))) (= (at1 Heap@@44 xs@@7 i_6_1_1) (at2 Heap@@44 i_6_1_1 xs@@7)))
 :qid |stdinbpl.1440:20|
 :skolemid |121|
 :pattern ( (|at1#frame| EmptyFrame xs@@7 i_6_1_1))
 :pattern ( (|at2#frame| EmptyFrame i_6_1_1 xs@@7))
)) (state Heap@@44 QPMask@0)) (and (and (=> (= (ControlFlow 0 36) 28) anon37_Else_correct) (=> (= (ControlFlow 0 36) 35) anon38_Then_correct)) (=> (= (ControlFlow 0 36) 31) anon38_Else_correct)))))
(let ((anon19_correct true))
(let ((anon36_Else_correct  (=> (and (not (and (<= 0 i_5) (< i_5 (|Seq#Length_9449| xs@@7)))) (= (ControlFlow 0 26) 23)) anon19_correct)))
(let ((anon36_Then_correct  (=> (and (<= 0 i_5) (< i_5 (|Seq#Length_9449| xs@@7))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (= (at1 Heap@@44 xs@@7 i_5) (at2 Heap@@44 i_5 xs@@7))) (=> (= (at1 Heap@@44 xs@@7 i_5) (at2 Heap@@44 i_5 xs@@7)) (=> (= (ControlFlow 0 24) 23) anon19_correct))))))
(let ((anon34_Then_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (<= 0 i_11)) (=> (<= 0 i_11) (=> (= (ControlFlow 0 20) (- 0 19)) (< i_11 (|Seq#Length_9449| xs@@7)))))))
(let ((anon33_Then_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (<= 0 i_11)) (=> (<= 0 i_11) (=> (= (ControlFlow 0 17) (- 0 16)) (< i_11 (|Seq#Length_9449| xs@@7)))))))
(let ((anon15_correct true))
(let ((anon32_Then_correct  (=> (and (<= 0 i_11) (< i_11 (|Seq#Length_9449| xs@@7))) (and (and (=> (= (ControlFlow 0 22) 17) anon33_Then_correct) (=> (= (ControlFlow 0 22) 20) anon34_Then_correct)) (=> (= (ControlFlow 0 22) 14) anon15_correct)))))
(let ((anon32_Else_correct  (=> (and (not (and (<= 0 i_11) (< i_11 (|Seq#Length_9449| xs@@7)))) (= (ControlFlow 0 15) 14)) anon15_correct)))
(let ((anon28_Else_correct  (and (=> (= (ControlFlow 0 37) (- 0 38)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (and (<= 0 i_3) (< i_3 (|Seq#Length_9449| xs@@7)))) (and (<= 0 i_3_1) (< i_3_1 (|Seq#Length_9449| xs@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (at1 Heap@@44 xs@@7 i_3) (at1 Heap@@44 xs@@7 i_3_1))))
 :qid |stdinbpl.1363:15|
 :skolemid |115|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (and (<= 0 i_3@@0) (< i_3@@0 (|Seq#Length_9449| xs@@7)))) (and (<= 0 i_3_1@@0) (< i_3_1@@0 (|Seq#Length_9449| xs@@7)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (at1 Heap@@44 xs@@7 i_3@@0) (at1 Heap@@44 xs@@7 i_3_1@@0))))
 :qid |stdinbpl.1363:15|
 :skolemid |115|
)) (=> (and (and (forall ((i_3@@1 Int) ) (!  (=> (and (and (<= 0 i_3@@1) (< i_3@@1 (|Seq#Length_9449| xs@@7))) (< NoPerm FullPerm)) (and (qpRange6 (at1 Heap@@44 xs@@7 i_3@@1)) (= (invRecv6 (at1 Heap@@44 xs@@7 i_3@@1)) i_3@@1)))
 :qid |stdinbpl.1369:22|
 :skolemid |116|
 :pattern ( (|at1#frame| EmptyFrame xs@@7 i_3@@1))
 :pattern ( (|at1#frame| EmptyFrame xs@@7 i_3@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv6 o_4)) (< (invRecv6 o_4) (|Seq#Length_9449| xs@@7))) (< NoPerm FullPerm)) (qpRange6 o_4)) (= (at1 Heap@@44 xs@@7 (invRecv6 o_4)) o_4))
 :qid |stdinbpl.1373:22|
 :skolemid |117|
 :pattern ( (invRecv6 o_4))
))) (and (forall ((i_3@@2 Int) ) (!  (=> (and (<= 0 i_3@@2) (< i_3@@2 (|Seq#Length_9449| xs@@7))) (not (= (at1 Heap@@44 xs@@7 i_3@@2) null)))
 :qid |stdinbpl.1379:22|
 :skolemid |118|
 :pattern ( (|at1#frame| EmptyFrame xs@@7 i_3@@2))
 :pattern ( (|at1#frame| EmptyFrame xs@@7 i_3@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv6 o_4@@0)) (< (invRecv6 o_4@@0) (|Seq#Length_9449| xs@@7))) (< NoPerm FullPerm)) (qpRange6 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (at1 Heap@@44 xs@@7 (invRecv6 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| QPMask@0) o_4@@0 f_7) (+ (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| ZeroMask) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv6 o_4@@0)) (< (invRecv6 o_4@@0) (|Seq#Length_9449| xs@@7))) (< NoPerm FullPerm)) (qpRange6 o_4@@0))) (= (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| ZeroMask) o_4@@0 f_7))))
 :qid |stdinbpl.1385:22|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| QPMask@0) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_14308_53) ) (!  (=> true (= (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.1389:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_14269_9376_53#PolymorphicMapType_14269| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_14321_14322) ) (!  (=> (not (= f_5@@0 f_7)) (= (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.1389:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_14269_9376_9377#PolymorphicMapType_14269| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_14308_23179) ) (!  (=> true (= (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.1389:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_14269_9376_9511#PolymorphicMapType_14269| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_14308_23196) ) (!  (=> true (= (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.1389:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_14269_9376_48944#PolymorphicMapType_14269| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_23178_53) ) (!  (=> true (= (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.1389:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_14269_9510_53#PolymorphicMapType_14269| QPMask@0) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_23178_14322) ) (!  (=> true (= (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| ZeroMask) o_4@@6 f_5@@4) (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| QPMask@0) o_4@@6 f_5@@4)))
 :qid |stdinbpl.1389:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| ZeroMask) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_14269_9510_9377#PolymorphicMapType_14269| QPMask@0) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_23178_23179) ) (!  (=> true (= (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| ZeroMask) o_4@@7 f_5@@5) (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| QPMask@0) o_4@@7 f_5@@5)))
 :qid |stdinbpl.1389:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| ZeroMask) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_14269_9510_9511#PolymorphicMapType_14269| QPMask@0) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_23191_23196) ) (!  (=> true (= (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| ZeroMask) o_4@@8 f_5@@6) (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| QPMask@0) o_4@@8 f_5@@6)))
 :qid |stdinbpl.1389:29|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| ZeroMask) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_14269_9510_48613#PolymorphicMapType_14269| QPMask@0) o_4@@8 f_5@@6))
))) (state Heap@@44 QPMask@0)) (and (state Heap@@44 QPMask@0) (state Heap@@44 QPMask@0))) (and (and (and (and (=> (= (ControlFlow 0 37) 36) anon35_Else_correct) (=> (= (ControlFlow 0 37) 24) anon36_Then_correct)) (=> (= (ControlFlow 0 37) 26) anon36_Else_correct)) (=> (= (ControlFlow 0 37) 22) anon32_Then_correct)) (=> (= (ControlFlow 0 37) 15) anon32_Else_correct))))))))
(let ((anon30_Then_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (<= 0 i_10)) (=> (<= 0 i_10) (=> (= (ControlFlow 0 11) (- 0 10)) (< i_10 (|Seq#Length_9449| xs@@7)))))))
(let ((anon8_correct true))
(let ((anon29_Then_correct  (=> (and (<= 0 i_10) (< i_10 (|Seq#Length_9449| xs@@7))) (and (=> (= (ControlFlow 0 13) 11) anon30_Then_correct) (=> (= (ControlFlow 0 13) 8) anon8_correct)))))
(let ((anon29_Else_correct  (=> (and (not (and (<= 0 i_10) (< i_10 (|Seq#Length_9449| xs@@7)))) (= (ControlFlow 0 9) 8)) anon8_correct)))
(let ((anon26_Else_correct  (=> (and (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (>= i_1 0) (and (< i_1 (|Seq#Length_9449| xs@@7)) (and (>= j_1 0) (and (< j_1 (|Seq#Length_9449| xs@@7)) (not (= i_1 j_1)))))) (not (= (|Seq#Index_9449| xs@@7 i_1) (|Seq#Index_9449| xs@@7 j_1))))
 :qid |stdinbpl.1332:20|
 :skolemid |114|
 :pattern ( (|Seq#Index_9449| xs@@7 i_1) (|Seq#Index_9449| xs@@7 j_1))
)) (state Heap@@44 ZeroMask)) (and (state Heap@@44 ZeroMask) (state Heap@@44 ZeroMask))) (and (and (=> (= (ControlFlow 0 39) 37) anon28_Else_correct) (=> (= (ControlFlow 0 39) 13) anon29_Then_correct)) (=> (= (ControlFlow 0 39) 9) anon29_Else_correct)))))
(let ((anon3_correct true))
(let ((anon27_Else_correct  (=> (and (not (and (>= i_9 0) (and (< i_9 (|Seq#Length_9449| xs@@7)) (and (>= j_10 0) (and (< j_10 (|Seq#Length_9449| xs@@7)) (not (= i_9 j_10))))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon27_Then_correct  (=> (and (>= i_9 0) (and (< i_9 (|Seq#Length_9449| xs@@7)) (and (>= j_10 0) (and (< j_10 (|Seq#Length_9449| xs@@7)) (not (= i_9 j_10)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_9 0)) (=> (>= i_9 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_9 (|Seq#Length_9449| xs@@7))) (=> (< i_9 (|Seq#Length_9449| xs@@7)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_10 0)) (=> (>= j_10 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_10 (|Seq#Length_9449| xs@@7))) (=> (< j_10 (|Seq#Length_9449| xs@@7)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (state Heap@@44 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (and (=> (= (ControlFlow 0 40) 39) anon26_Else_correct) (=> (= (ControlFlow 0 40) 2) anon27_Then_correct)) (=> (= (ControlFlow 0 40) 7) anon27_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 41) 40) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
