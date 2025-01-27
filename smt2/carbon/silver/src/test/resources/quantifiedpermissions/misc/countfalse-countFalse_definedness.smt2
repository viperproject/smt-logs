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
(declare-sort T@Field_10455_53 0)
(declare-sort T@Field_10468_10469 0)
(declare-sort T@Field_7255_29287 0)
(declare-sort T@Field_7255_29154 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10416 0)) (((PolymorphicMapType_10416 (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| (Array T@Ref T@Field_10455_53 Real)) (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| (Array T@Ref T@Field_10468_10469 Real)) (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| (Array T@Ref T@Field_7255_29154 Real)) (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| (Array T@Ref T@Field_7255_29287 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10944 0)) (((PolymorphicMapType_10944 (|PolymorphicMapType_10944_10455_53#PolymorphicMapType_10944| (Array T@Ref T@Field_10455_53 Bool)) (|PolymorphicMapType_10944_10455_10469#PolymorphicMapType_10944| (Array T@Ref T@Field_10468_10469 Bool)) (|PolymorphicMapType_10944_10455_29154#PolymorphicMapType_10944| (Array T@Ref T@Field_7255_29154 Bool)) (|PolymorphicMapType_10944_10455_30267#PolymorphicMapType_10944| (Array T@Ref T@Field_7255_29287 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10395 0)) (((PolymorphicMapType_10395 (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| (Array T@Ref T@Field_10455_53 Bool)) (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| (Array T@Ref T@Field_10468_10469 T@Ref)) (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| (Array T@Ref T@Field_7255_29287 T@PolymorphicMapType_10944)) (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| (Array T@Ref T@Field_7255_29154 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10455_53)
(declare-fun val () T@Field_10455_53)
(declare-fun succHeap (T@PolymorphicMapType_10395 T@PolymorphicMapType_10395) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10395 T@PolymorphicMapType_10395) Bool)
(declare-fun state (T@PolymorphicMapType_10395 T@PolymorphicMapType_10416) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10416) Bool)
(declare-sort T@ArrayDomainType 0)
(declare-fun countFalseX (T@PolymorphicMapType_10395 T@ArrayDomainType Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun length_2 (T@ArrayDomainType) Int)
(declare-fun |countFalseX'| (T@PolymorphicMapType_10395 T@ArrayDomainType Int) Int)
(declare-fun |countFalse'| (T@PolymorphicMapType_10395 T@ArrayDomainType Int Int) Int)
(declare-fun dummyFunction_2077 (Int) Bool)
(declare-fun |countFalse#triggerStateless| (T@ArrayDomainType Int Int) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_10944)
(declare-fun |countFalseX#triggerStateless| (T@ArrayDomainType Int) Int)
(declare-fun countFalse (T@PolymorphicMapType_10395 T@ArrayDomainType Int Int) Int)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10395 T@PolymorphicMapType_10395 T@PolymorphicMapType_10416) Bool)
(declare-fun IsPredicateField_7255_29245 (T@Field_7255_29154) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7255 (T@Field_7255_29154) T@Field_7255_29287)
(declare-fun HasDirectPerm_7255_29218 (T@PolymorphicMapType_10416 T@Ref T@Field_7255_29154) Bool)
(declare-fun IsWandField_7255_30794 (T@Field_7255_29154) Bool)
(declare-fun WandMaskField_7255 (T@Field_7255_29154) T@Field_7255_29287)
(declare-fun dummyHeap () T@PolymorphicMapType_10395)
(declare-fun ZeroMask () T@PolymorphicMapType_10416)
(declare-fun InsidePredicate_10455_10455 (T@Field_7255_29154 T@FrameType T@Field_7255_29154 T@FrameType) Bool)
(declare-fun IsPredicateField_7255_1596 (T@Field_10455_53) Bool)
(declare-fun IsWandField_7255_1596 (T@Field_10455_53) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7255_33731 (T@Field_7255_29287) Bool)
(declare-fun IsWandField_7255_33747 (T@Field_7255_29287) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7255_10469 (T@Field_10468_10469) Bool)
(declare-fun IsWandField_7255_10469 (T@Field_10468_10469) Bool)
(declare-fun HasDirectPerm_7255_34102 (T@PolymorphicMapType_10416 T@Ref T@Field_7255_29287) Bool)
(declare-fun HasDirectPerm_7255_10469 (T@PolymorphicMapType_10416 T@Ref T@Field_10468_10469) Bool)
(declare-fun HasDirectPerm_7255_1596 (T@PolymorphicMapType_10416 T@Ref T@Field_10455_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |countFalseX#frame| (T@FrameType T@ArrayDomainType Int) Int)
(declare-fun FrameFragment_1841 (Int) T@FrameType)
(declare-fun |countFalseX#condqp1| (T@PolymorphicMapType_10395 T@ArrayDomainType Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_10416 T@PolymorphicMapType_10416 T@PolymorphicMapType_10416) Bool)
(declare-fun |sk_countFalseX#condqp1| (Int Int) Int)
(declare-fun |countFalse#frame| (T@FrameType T@ArrayDomainType Int Int) Int)
(declare-fun |countFalse#condqp2| (T@PolymorphicMapType_10395 T@ArrayDomainType Int Int) Int)
(declare-fun first_1 (T@Ref) T@ArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(declare-fun |sk_countFalse#condqp2| (Int Int) Int)
(assert (distinct $allocated val)
)
(assert (forall ((Heap0 T@PolymorphicMapType_10395) (Heap1 T@PolymorphicMapType_10395) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10395) (Mask T@PolymorphicMapType_10416) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10395) (Heap1@@0 T@PolymorphicMapType_10395) (Heap2 T@PolymorphicMapType_10395) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10395) (Mask@@0 T@PolymorphicMapType_10416) (a_2 T@ArrayDomainType) (from_1 Int) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 1)) (=> (and (<= 0 from_1) (<= from_1 (length_2 a_2))) (= (countFalseX Heap@@0 a_2 from_1) (ite (= from_1 (length_2 a_2)) 0 (|countFalseX'| Heap@@0 a_2 (+ from_1 1))))))
 :qid |stdinbpl.287:15|
 :skolemid |26|
 :pattern ( (state Heap@@0 Mask@@0) (countFalseX Heap@@0 a_2 from_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10395) (a_2@@0 T@ArrayDomainType) (from_1@@0 Int) (to_1 Int) ) (! (dummyFunction_2077 (|countFalse#triggerStateless| a_2@@0 from_1@@0 to_1))
 :qid |stdinbpl.443:15|
 :skolemid |40|
 :pattern ( (|countFalse'| Heap@@1 a_2@@0 from_1@@0 to_1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7255_29287) ) (!  (not (select (|PolymorphicMapType_10944_10455_30267#PolymorphicMapType_10944| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10944_10455_30267#PolymorphicMapType_10944| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7255_29154) ) (!  (not (select (|PolymorphicMapType_10944_10455_29154#PolymorphicMapType_10944| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10944_10455_29154#PolymorphicMapType_10944| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10468_10469) ) (!  (not (select (|PolymorphicMapType_10944_10455_10469#PolymorphicMapType_10944| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10944_10455_10469#PolymorphicMapType_10944| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10455_53) ) (!  (not (select (|PolymorphicMapType_10944_10455_53#PolymorphicMapType_10944| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10944_10455_53#PolymorphicMapType_10944| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10395) (a_2@@1 T@ArrayDomainType) (from_1@@1 Int) ) (! (dummyFunction_2077 (|countFalseX#triggerStateless| a_2@@1 from_1@@1))
 :qid |stdinbpl.281:15|
 :skolemid |25|
 :pattern ( (|countFalseX'| Heap@@2 a_2@@1 from_1@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10395) (Mask@@1 T@PolymorphicMapType_10416) (a_2@@2 T@ArrayDomainType) (from_1@@2 Int) (to_1@@0 Int) ) (!  (=> (and (state Heap@@3 Mask@@1) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 from_1@@2) (and (<= from_1@@2 to_1@@0) (<= to_1@@0 (length_2 a_2@@2)))) (= (countFalse Heap@@3 a_2@@2 from_1@@2 to_1@@0) (ite (= from_1@@2 to_1@@0) 0 (+ (ite (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@3) (loc a_2@@2 from_1@@2) val) 0 1) (|countFalse'| Heap@@3 a_2@@2 (+ from_1@@2 1) to_1@@0))))))
 :qid |stdinbpl.449:15|
 :skolemid |41|
 :pattern ( (state Heap@@3 Mask@@1) (countFalse Heap@@3 a_2@@2 from_1@@2 to_1@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10395) (ExhaleHeap T@PolymorphicMapType_10395) (Mask@@2 T@PolymorphicMapType_10416) (pm_f_6 T@Field_7255_29154) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_7255_29218 Mask@@2 null pm_f_6) (IsPredicateField_7255_29245 pm_f_6)) (= (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@4) null (PredicateMaskField_7255 pm_f_6)) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap) null (PredicateMaskField_7255 pm_f_6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@2) (IsPredicateField_7255_29245 pm_f_6) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap) null (PredicateMaskField_7255 pm_f_6)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10395) (ExhaleHeap@@0 T@PolymorphicMapType_10395) (Mask@@3 T@PolymorphicMapType_10416) (pm_f_6@@0 T@Field_7255_29154) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_7255_29218 Mask@@3 null pm_f_6@@0) (IsWandField_7255_30794 pm_f_6@@0)) (= (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@5) null (WandMaskField_7255 pm_f_6@@0)) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@0) null (WandMaskField_7255 pm_f_6@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@3) (IsWandField_7255_30794 pm_f_6@@0) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@0) null (WandMaskField_7255 pm_f_6@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10395) (ExhaleHeap@@1 T@PolymorphicMapType_10395) (Mask@@4 T@PolymorphicMapType_10416) (pm_f_6@@1 T@Field_7255_29154) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_7255_29218 Mask@@4 null pm_f_6@@1) (IsPredicateField_7255_29245 pm_f_6@@1)) (and (and (and (forall ((o2_6 T@Ref) (f_25 T@Field_10455_53) ) (!  (=> (select (|PolymorphicMapType_10944_10455_53#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@6) null (PredicateMaskField_7255 pm_f_6@@1))) o2_6 f_25) (= (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@6) o2_6 f_25) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6 f_25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6 f_25))
)) (forall ((o2_6@@0 T@Ref) (f_25@@0 T@Field_10468_10469) ) (!  (=> (select (|PolymorphicMapType_10944_10455_10469#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@6) null (PredicateMaskField_7255 pm_f_6@@1))) o2_6@@0 f_25@@0) (= (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@6) o2_6@@0 f_25@@0) (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6@@0 f_25@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6@@0 f_25@@0))
))) (forall ((o2_6@@1 T@Ref) (f_25@@1 T@Field_7255_29154) ) (!  (=> (select (|PolymorphicMapType_10944_10455_29154#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@6) null (PredicateMaskField_7255 pm_f_6@@1))) o2_6@@1 f_25@@1) (= (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@6) o2_6@@1 f_25@@1) (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6@@1 f_25@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6@@1 f_25@@1))
))) (forall ((o2_6@@2 T@Ref) (f_25@@2 T@Field_7255_29287) ) (!  (=> (select (|PolymorphicMapType_10944_10455_30267#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@6) null (PredicateMaskField_7255 pm_f_6@@1))) o2_6@@2 f_25@@2) (= (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@6) o2_6@@2 f_25@@2) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6@@2 f_25@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6@@2 f_25@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@4) (IsPredicateField_7255_29245 pm_f_6@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10395) (ExhaleHeap@@2 T@PolymorphicMapType_10395) (Mask@@5 T@PolymorphicMapType_10416) (pm_f_6@@2 T@Field_7255_29154) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_7255_29218 Mask@@5 null pm_f_6@@2) (IsWandField_7255_30794 pm_f_6@@2)) (and (and (and (forall ((o2_6@@3 T@Ref) (f_25@@3 T@Field_10455_53) ) (!  (=> (select (|PolymorphicMapType_10944_10455_53#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@7) null (WandMaskField_7255 pm_f_6@@2))) o2_6@@3 f_25@@3) (= (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@7) o2_6@@3 f_25@@3) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@3 f_25@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@3 f_25@@3))
)) (forall ((o2_6@@4 T@Ref) (f_25@@4 T@Field_10468_10469) ) (!  (=> (select (|PolymorphicMapType_10944_10455_10469#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@7) null (WandMaskField_7255 pm_f_6@@2))) o2_6@@4 f_25@@4) (= (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@7) o2_6@@4 f_25@@4) (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@4 f_25@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@4 f_25@@4))
))) (forall ((o2_6@@5 T@Ref) (f_25@@5 T@Field_7255_29154) ) (!  (=> (select (|PolymorphicMapType_10944_10455_29154#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@7) null (WandMaskField_7255 pm_f_6@@2))) o2_6@@5 f_25@@5) (= (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@7) o2_6@@5 f_25@@5) (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@5 f_25@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@5 f_25@@5))
))) (forall ((o2_6@@6 T@Ref) (f_25@@6 T@Field_7255_29287) ) (!  (=> (select (|PolymorphicMapType_10944_10455_30267#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@7) null (WandMaskField_7255 pm_f_6@@2))) o2_6@@6 f_25@@6) (= (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@7) o2_6@@6 f_25@@6) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@6 f_25@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@6 f_25@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@5) (IsWandField_7255_30794 pm_f_6@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10395) (ExhaleHeap@@3 T@PolymorphicMapType_10395) (Mask@@6 T@PolymorphicMapType_10416) (o_17 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@6) (=> (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@8) o_17 $allocated) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@3) o_17 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@6) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@3) o_17 $allocated))
)))
(assert (forall ((p T@Field_7255_29154) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10455_10455 p v_1 p w))
 :qid |stdinbpl.226:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10455_10455 p v_1 p w))
)))
(assert  (not (IsPredicateField_7255_1596 val)))
(assert  (not (IsWandField_7255_1596 val)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10395) (ExhaleHeap@@4 T@PolymorphicMapType_10395) (Mask@@7 T@PolymorphicMapType_10416) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@7) (succHeap Heap@@9 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10416) (o_2@@3 T@Ref) (f_4@@3 T@Field_7255_29287) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| Mask@@8) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7255_33731 f_4@@3))) (not (IsWandField_7255_33747 f_4@@3))) (<= (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| Mask@@8) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| Mask@@8) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10416) (o_2@@4 T@Ref) (f_4@@4 T@Field_7255_29154) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_7255_29245 f_4@@4))) (not (IsWandField_7255_30794 f_4@@4))) (<= (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10416) (o_2@@5 T@Ref) (f_4@@5 T@Field_10468_10469) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_7255_10469 f_4@@5))) (not (IsWandField_7255_10469 f_4@@5))) (<= (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10416) (o_2@@6 T@Ref) (f_4@@6 T@Field_10455_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_7255_1596 f_4@@6))) (not (IsWandField_7255_1596 f_4@@6))) (<= (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10416) (o_2@@7 T@Ref) (f_4@@7 T@Field_7255_29287) ) (! (= (HasDirectPerm_7255_34102 Mask@@12 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| Mask@@12) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7255_34102 Mask@@12 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10416) (o_2@@8 T@Ref) (f_4@@8 T@Field_7255_29154) ) (! (= (HasDirectPerm_7255_29218 Mask@@13 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| Mask@@13) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7255_29218 Mask@@13 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10416) (o_2@@9 T@Ref) (f_4@@9 T@Field_10468_10469) ) (! (= (HasDirectPerm_7255_10469 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7255_10469 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10416) (o_2@@10 T@Ref) (f_4@@10 T@Field_10455_53) ) (! (= (HasDirectPerm_7255_1596 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7255_1596 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.214:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10395) (ExhaleHeap@@5 T@PolymorphicMapType_10395) (Mask@@16 T@PolymorphicMapType_10416) (o_17@@0 T@Ref) (f_25@@7 T@Field_7255_29287) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7255_34102 Mask@@16 o_17@@0 f_25@@7) (= (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@10) o_17@@0 f_25@@7) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@5) o_17@@0 f_25@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@5) o_17@@0 f_25@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10395) (ExhaleHeap@@6 T@PolymorphicMapType_10395) (Mask@@17 T@PolymorphicMapType_10416) (o_17@@1 T@Ref) (f_25@@8 T@Field_7255_29154) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7255_29218 Mask@@17 o_17@@1 f_25@@8) (= (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@11) o_17@@1 f_25@@8) (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| ExhaleHeap@@6) o_17@@1 f_25@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| ExhaleHeap@@6) o_17@@1 f_25@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10395) (ExhaleHeap@@7 T@PolymorphicMapType_10395) (Mask@@18 T@PolymorphicMapType_10416) (o_17@@2 T@Ref) (f_25@@9 T@Field_10468_10469) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7255_10469 Mask@@18 o_17@@2 f_25@@9) (= (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@12) o_17@@2 f_25@@9) (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| ExhaleHeap@@7) o_17@@2 f_25@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| ExhaleHeap@@7) o_17@@2 f_25@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10395) (ExhaleHeap@@8 T@PolymorphicMapType_10395) (Mask@@19 T@PolymorphicMapType_10416) (o_17@@3 T@Ref) (f_25@@10 T@Field_10455_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7255_1596 Mask@@19 o_17@@3 f_25@@10) (= (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@13) o_17@@3 f_25@@10) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@8) o_17@@3 f_25@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@8) o_17@@3 f_25@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_7255_29287) ) (! (= (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_7255_29154) ) (! (= (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_10468_10469) ) (! (= (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10455_53) ) (! (= (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10395) (a_2@@3 T@ArrayDomainType) (from_1@@3 Int) ) (!  (and (= (countFalseX Heap@@14 a_2@@3 from_1@@3) (|countFalseX'| Heap@@14 a_2@@3 from_1@@3)) (dummyFunction_2077 (|countFalseX#triggerStateless| a_2@@3 from_1@@3)))
 :qid |stdinbpl.277:15|
 :skolemid |24|
 :pattern ( (countFalseX Heap@@14 a_2@@3 from_1@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10395) (Mask@@20 T@PolymorphicMapType_10416) (a_2@@4 T@ArrayDomainType) (from_1@@4 Int) ) (!  (=> (state Heap@@15 Mask@@20) (= (|countFalseX'| Heap@@15 a_2@@4 from_1@@4) (|countFalseX#frame| (FrameFragment_1841 (|countFalseX#condqp1| Heap@@15 a_2@@4 from_1@@4)) a_2@@4 from_1@@4)))
 :qid |stdinbpl.294:15|
 :skolemid |27|
 :pattern ( (state Heap@@15 Mask@@20) (|countFalseX'| Heap@@15 a_2@@4 from_1@@4))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10416) (SummandMask1 T@PolymorphicMapType_10416) (SummandMask2 T@PolymorphicMapType_10416) (o_2@@15 T@Ref) (f_4@@15 T@Field_7255_29287) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10416) (SummandMask1@@0 T@PolymorphicMapType_10416) (SummandMask2@@0 T@PolymorphicMapType_10416) (o_2@@16 T@Ref) (f_4@@16 T@Field_7255_29154) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10416) (SummandMask1@@1 T@PolymorphicMapType_10416) (SummandMask2@@1 T@PolymorphicMapType_10416) (o_2@@17 T@Ref) (f_4@@17 T@Field_10468_10469) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10416) (SummandMask1@@2 T@PolymorphicMapType_10416) (SummandMask2@@2 T@PolymorphicMapType_10416) (o_2@@18 T@Ref) (f_4@@18 T@Field_10455_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_10395) (Heap1Heap T@PolymorphicMapType_10395) (a_2@@5 T@ArrayDomainType) (from_1@@5 Int) ) (!  (=> (and (=  (and (and (<= from_1@@5 (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5))) (< (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5)) (length_2 a_2@@5))) (< NoPerm FullPerm))  (and (and (<= from_1@@5 (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5))) (< (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5)) (length_2 a_2@@5))) (< NoPerm FullPerm))) (=> (and (and (<= from_1@@5 (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5))) (< (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5)) (length_2 a_2@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap2Heap) (loc a_2@@5 (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5))) val) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap1Heap) (loc a_2@@5 (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5))) val)))) (= (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5)))
 :qid |stdinbpl.304:15|
 :skolemid |28|
 :pattern ( (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10395) (a_2@@6 T@ArrayDomainType) (from_1@@6 Int) (to_1@@1 Int) ) (!  (and (= (countFalse Heap@@16 a_2@@6 from_1@@6 to_1@@1) (|countFalse'| Heap@@16 a_2@@6 from_1@@6 to_1@@1)) (dummyFunction_2077 (|countFalse#triggerStateless| a_2@@6 from_1@@6 to_1@@1)))
 :qid |stdinbpl.439:15|
 :skolemid |39|
 :pattern ( (countFalse Heap@@16 a_2@@6 from_1@@6 to_1@@1))
)))
(assert (forall ((a_2@@7 T@ArrayDomainType) ) (! (>= (length_2 a_2@@7) 0)
 :qid |stdinbpl.257:15|
 :skolemid |23|
 :pattern ( (length_2 a_2@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10395) (Mask@@21 T@PolymorphicMapType_10416) (a_2@@8 T@ArrayDomainType) (from_1@@7 Int) (to_1@@2 Int) ) (!  (=> (state Heap@@17 Mask@@21) (= (|countFalse'| Heap@@17 a_2@@8 from_1@@7 to_1@@2) (|countFalse#frame| (FrameFragment_1841 (|countFalse#condqp2| Heap@@17 a_2@@8 from_1@@7 to_1@@2)) a_2@@8 from_1@@7 to_1@@2)))
 :qid |stdinbpl.456:15|
 :skolemid |42|
 :pattern ( (state Heap@@17 Mask@@21) (|countFalse'| Heap@@17 a_2@@8 from_1@@7 to_1@@2))
)))
(assert (forall ((a_2@@9 T@ArrayDomainType) (i Int) ) (!  (and (= (first_1 (loc a_2@@9 i)) a_2@@9) (= (second_1 (loc a_2@@9 i)) i))
 :qid |stdinbpl.251:15|
 :skolemid |22|
 :pattern ( (loc a_2@@9 i))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10395) (o_16 T@Ref) (f_2 T@Field_7255_29154) (v T@FrameType) ) (! (succHeap Heap@@18 (PolymorphicMapType_10395 (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@18) (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@18) (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@18) (store (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@18) o_16 f_2 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10395 (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@18) (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@18) (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@18) (store (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@18) o_16 f_2 v)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10395) (o_16@@0 T@Ref) (f_2@@0 T@Field_7255_29287) (v@@0 T@PolymorphicMapType_10944) ) (! (succHeap Heap@@19 (PolymorphicMapType_10395 (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@19) (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@19) (store (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@19) o_16@@0 f_2@@0 v@@0) (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10395 (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@19) (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@19) (store (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@19) o_16@@0 f_2@@0 v@@0) (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10395) (o_16@@1 T@Ref) (f_2@@1 T@Field_10468_10469) (v@@1 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_10395 (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@20) (store (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@20) o_16@@1 f_2@@1 v@@1) (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@20) (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10395 (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@20) (store (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@20) o_16@@1 f_2@@1 v@@1) (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@20) (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10395) (o_16@@2 T@Ref) (f_2@@2 T@Field_10455_53) (v@@2 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_10395 (store (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@21) o_16@@2 f_2@@2 v@@2) (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@21) (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@21) (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10395 (store (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@21) o_16@@2 f_2@@2 v@@2) (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@21) (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@21) (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@21)))
)))
(assert (forall ((o_16@@3 T@Ref) (f_10 T@Field_10468_10469) (Heap@@22 T@PolymorphicMapType_10395) ) (!  (=> (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@22) o_16@@3 $allocated) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@22) (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@22) o_16@@3 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@22) o_16@@3 f_10))
)))
(assert (forall ((p@@1 T@Field_7255_29154) (v_1@@0 T@FrameType) (q T@Field_7255_29154) (w@@0 T@FrameType) (r T@Field_7255_29154) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10455_10455 p@@1 v_1@@0 q w@@0) (InsidePredicate_10455_10455 q w@@0 r u)) (InsidePredicate_10455_10455 p@@1 v_1@@0 r u))
 :qid |stdinbpl.221:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10455_10455 p@@1 v_1@@0 q w@@0) (InsidePredicate_10455_10455 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_10395) (Heap1Heap@@0 T@PolymorphicMapType_10395) (a_2@@10 T@ArrayDomainType) (from_1@@8 Int) (to_1@@3 Int) ) (!  (=> (and (=  (and (and (<= from_1@@8 (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3))) (< (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3)) to_1@@3)) (< NoPerm FullPerm))  (and (and (<= from_1@@8 (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3))) (< (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3)) to_1@@3)) (< NoPerm FullPerm))) (=> (and (and (<= from_1@@8 (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3))) (< (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3)) to_1@@3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap2Heap@@0) (loc a_2@@10 (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3))) val) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap1Heap@@0) (loc a_2@@10 (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3))) val)))) (= (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3)))
 :qid |stdinbpl.466:15|
 :skolemid |43|
 :pattern ( (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |countFalse#trigger| (T@FrameType T@ArrayDomainType Int Int) Bool)
(declare-fun Heap@@23 () T@PolymorphicMapType_10395)
(declare-fun a_2@@11 () T@ArrayDomainType)
(declare-fun from_1@@9 () Int)
(declare-fun to_1@@4 () Int)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_10416)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(set-info :boogie-vc-id |countFalse#definedness|)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon7_correct true))
(let ((anon10_Else_correct  (=> (and (|countFalse#trigger| (FrameFragment_1841 (|countFalse#condqp2| Heap@@23 a_2@@11 (+ from_1@@9 1) to_1@@4)) a_2@@11 (+ from_1@@9 1) to_1@@4) (= (ControlFlow 0 10) 8)) anon7_correct)))
(let ((anon9_Then_correct  (=> (and (= from_1@@9 to_1@@4) (= (ControlFlow 0 9) 8)) anon7_correct)))
(let ((anon10_Then_correct  (and (=> (= (ControlFlow 0 3) (- 0 7)) (<= 0 (+ from_1@@9 1))) (=> (<= 0 (+ from_1@@9 1)) (and (=> (= (ControlFlow 0 3) (- 0 6)) (<= (+ from_1@@9 1) to_1@@4)) (=> (<= (+ from_1@@9 1) to_1@@4) (and (=> (= (ControlFlow 0 3) (- 0 5)) (<= to_1@@4 (length_2 a_2@@11))) (=> (<= to_1@@4 (length_2 a_2@@11)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((z_5 Int) (z_5_2 Int) ) (!  (=> (and (and (and (and (not (= z_5 z_5_2)) (and (<= (+ from_1@@9 1) z_5) (< z_5 to_1@@4))) (and (<= (+ from_1@@9 1) z_5_2) (< z_5_2 to_1@@4))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@11 z_5) (loc a_2@@11 z_5_2))))
 :qid |stdinbpl.562:23|
 :skolemid |50|
 :pattern ( (neverTriggered4 z_5) (neverTriggered4 z_5_2))
))) (=> (forall ((z_5@@0 Int) (z_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= z_5@@0 z_5_2@@0)) (and (<= (+ from_1@@9 1) z_5@@0) (< z_5@@0 to_1@@4))) (and (<= (+ from_1@@9 1) z_5_2@@0) (< z_5_2@@0 to_1@@4))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@11 z_5@@0) (loc a_2@@11 z_5_2@@0))))
 :qid |stdinbpl.562:23|
 :skolemid |50|
 :pattern ( (neverTriggered4 z_5@@0) (neverTriggered4 z_5_2@@0))
)) (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((z_5@@1 Int) ) (!  (=> (and (<= (+ from_1@@9 1) z_5@@1) (< z_5@@1 to_1@@4)) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| QPMask@0) (loc a_2@@11 z_5@@1) val) NoPerm)))
 :qid |stdinbpl.569:23|
 :skolemid |51|
 :pattern ( (loc a_2@@11 z_5@@1))
 :pattern ( (loc a_2@@11 z_5@@1))
)))))))))))))
(let ((anon9_Else_correct  (=> (not (= from_1@@9 to_1@@4)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_7255_1596 QPMask@0 (loc a_2@@11 from_1@@9) val)) (=> (HasDirectPerm_7255_1596 QPMask@0 (loc a_2@@11 from_1@@9) val) (and (=> (= (ControlFlow 0 11) 3) anon10_Then_correct) (=> (= (ControlFlow 0 11) 10) anon10_Else_correct)))))))
(let ((anon8_Else_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((z_4 Int) (z_4_2 Int) ) (!  (=> (and (and (and (and (not (= z_4 z_4_2)) (and (<= from_1@@9 z_4) (< z_4 to_1@@4))) (and (<= from_1@@9 z_4_2) (< z_4_2 to_1@@4))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@11 z_4) (loc a_2@@11 z_4_2))))
 :qid |stdinbpl.504:15|
 :skolemid |44|
))) (=> (forall ((z_4@@0 Int) (z_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= z_4@@0 z_4_2@@0)) (and (<= from_1@@9 z_4@@0) (< z_4@@0 to_1@@4))) (and (<= from_1@@9 z_4_2@@0) (< z_4_2@@0 to_1@@4))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@11 z_4@@0) (loc a_2@@11 z_4_2@@0))))
 :qid |stdinbpl.504:15|
 :skolemid |44|
)) (=> (and (and (forall ((z_4@@1 Int) ) (!  (=> (and (and (<= from_1@@9 z_4@@1) (< z_4@@1 to_1@@4)) (< NoPerm FullPerm)) (and (qpRange3 (loc a_2@@11 z_4@@1)) (= (invRecv3 (loc a_2@@11 z_4@@1)) z_4@@1)))
 :qid |stdinbpl.510:22|
 :skolemid |45|
 :pattern ( (loc a_2@@11 z_4@@1))
 :pattern ( (loc a_2@@11 z_4@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= from_1@@9 (invRecv3 o_9)) (< (invRecv3 o_9) to_1@@4)) (< NoPerm FullPerm)) (qpRange3 o_9)) (= (loc a_2@@11 (invRecv3 o_9)) o_9))
 :qid |stdinbpl.514:22|
 :skolemid |46|
 :pattern ( (invRecv3 o_9))
))) (and (forall ((z_4@@2 Int) ) (!  (=> (and (<= from_1@@9 z_4@@2) (< z_4@@2 to_1@@4)) (not (= (loc a_2@@11 z_4@@2) null)))
 :qid |stdinbpl.520:22|
 :skolemid |47|
 :pattern ( (loc a_2@@11 z_4@@2))
 :pattern ( (loc a_2@@11 z_4@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= from_1@@9 (invRecv3 o_9@@0)) (< (invRecv3 o_9@@0) to_1@@4)) (< NoPerm FullPerm)) (qpRange3 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@11 (invRecv3 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| QPMask@0) o_9@@0 val) (+ (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| ZeroMask) o_9@@0 val) FullPerm)))) (=> (not (and (and (and (<= from_1@@9 (invRecv3 o_9@@0)) (< (invRecv3 o_9@@0) to_1@@4)) (< NoPerm FullPerm)) (qpRange3 o_9@@0))) (= (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| QPMask@0) o_9@@0 val) (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| ZeroMask) o_9@@0 val))))
 :qid |stdinbpl.526:22|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| QPMask@0) o_9@@0 val))
)))) (=> (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_10455_53) ) (!  (=> (not (= f_5 val)) (= (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.530:29|
 :skolemid |49|
 :pattern ( (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_10468_10469) ) (!  (=> true (= (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.530:29|
 :skolemid |49|
 :pattern ( (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_7255_29154) ) (!  (=> true (= (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.530:29|
 :skolemid |49|
 :pattern ( (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_7255_29287) ) (!  (=> true (= (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.530:29|
 :skolemid |49|
 :pattern ( (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| QPMask@0) o_9@@4 f_5@@2))
))) (and (state Heap@@23 QPMask@0) (state Heap@@23 QPMask@0))) (and (=> (= (ControlFlow 0 13) 9) anon9_Then_correct) (=> (= (ControlFlow 0 13) 11) anon9_Else_correct))))))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@23 ZeroMask) (=> (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 0)) (=> (and (and (<= 0 from_1@@9) (<= from_1@@9 to_1@@4)) (and (<= to_1@@4 (length_2 a_2@@11)) (state Heap@@23 ZeroMask))) (and (=> (= (ControlFlow 0 15) 1) anon8_Then_correct) (=> (= (ControlFlow 0 15) 13) anon8_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16) 15) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
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
(declare-sort T@Field_10455_53 0)
(declare-sort T@Field_10468_10469 0)
(declare-sort T@Field_7255_29287 0)
(declare-sort T@Field_7255_29154 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10416 0)) (((PolymorphicMapType_10416 (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| (Array T@Ref T@Field_10455_53 Real)) (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| (Array T@Ref T@Field_10468_10469 Real)) (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| (Array T@Ref T@Field_7255_29154 Real)) (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| (Array T@Ref T@Field_7255_29287 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10944 0)) (((PolymorphicMapType_10944 (|PolymorphicMapType_10944_10455_53#PolymorphicMapType_10944| (Array T@Ref T@Field_10455_53 Bool)) (|PolymorphicMapType_10944_10455_10469#PolymorphicMapType_10944| (Array T@Ref T@Field_10468_10469 Bool)) (|PolymorphicMapType_10944_10455_29154#PolymorphicMapType_10944| (Array T@Ref T@Field_7255_29154 Bool)) (|PolymorphicMapType_10944_10455_30267#PolymorphicMapType_10944| (Array T@Ref T@Field_7255_29287 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10395 0)) (((PolymorphicMapType_10395 (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| (Array T@Ref T@Field_10455_53 Bool)) (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| (Array T@Ref T@Field_10468_10469 T@Ref)) (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| (Array T@Ref T@Field_7255_29287 T@PolymorphicMapType_10944)) (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| (Array T@Ref T@Field_7255_29154 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10455_53)
(declare-fun val () T@Field_10455_53)
(declare-fun succHeap (T@PolymorphicMapType_10395 T@PolymorphicMapType_10395) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10395 T@PolymorphicMapType_10395) Bool)
(declare-fun state (T@PolymorphicMapType_10395 T@PolymorphicMapType_10416) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10416) Bool)
(declare-sort T@ArrayDomainType 0)
(declare-fun countFalseX (T@PolymorphicMapType_10395 T@ArrayDomainType Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun length_2 (T@ArrayDomainType) Int)
(declare-fun |countFalseX'| (T@PolymorphicMapType_10395 T@ArrayDomainType Int) Int)
(declare-fun |countFalse'| (T@PolymorphicMapType_10395 T@ArrayDomainType Int Int) Int)
(declare-fun dummyFunction_2077 (Int) Bool)
(declare-fun |countFalse#triggerStateless| (T@ArrayDomainType Int Int) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_10944)
(declare-fun |countFalseX#triggerStateless| (T@ArrayDomainType Int) Int)
(declare-fun countFalse (T@PolymorphicMapType_10395 T@ArrayDomainType Int Int) Int)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10395 T@PolymorphicMapType_10395 T@PolymorphicMapType_10416) Bool)
(declare-fun IsPredicateField_7255_29245 (T@Field_7255_29154) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7255 (T@Field_7255_29154) T@Field_7255_29287)
(declare-fun HasDirectPerm_7255_29218 (T@PolymorphicMapType_10416 T@Ref T@Field_7255_29154) Bool)
(declare-fun IsWandField_7255_30794 (T@Field_7255_29154) Bool)
(declare-fun WandMaskField_7255 (T@Field_7255_29154) T@Field_7255_29287)
(declare-fun dummyHeap () T@PolymorphicMapType_10395)
(declare-fun ZeroMask () T@PolymorphicMapType_10416)
(declare-fun InsidePredicate_10455_10455 (T@Field_7255_29154 T@FrameType T@Field_7255_29154 T@FrameType) Bool)
(declare-fun IsPredicateField_7255_1596 (T@Field_10455_53) Bool)
(declare-fun IsWandField_7255_1596 (T@Field_10455_53) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7255_33731 (T@Field_7255_29287) Bool)
(declare-fun IsWandField_7255_33747 (T@Field_7255_29287) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7255_10469 (T@Field_10468_10469) Bool)
(declare-fun IsWandField_7255_10469 (T@Field_10468_10469) Bool)
(declare-fun HasDirectPerm_7255_34102 (T@PolymorphicMapType_10416 T@Ref T@Field_7255_29287) Bool)
(declare-fun HasDirectPerm_7255_10469 (T@PolymorphicMapType_10416 T@Ref T@Field_10468_10469) Bool)
(declare-fun HasDirectPerm_7255_1596 (T@PolymorphicMapType_10416 T@Ref T@Field_10455_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |countFalseX#frame| (T@FrameType T@ArrayDomainType Int) Int)
(declare-fun FrameFragment_1841 (Int) T@FrameType)
(declare-fun |countFalseX#condqp1| (T@PolymorphicMapType_10395 T@ArrayDomainType Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_10416 T@PolymorphicMapType_10416 T@PolymorphicMapType_10416) Bool)
(declare-fun |sk_countFalseX#condqp1| (Int Int) Int)
(declare-fun |countFalse#frame| (T@FrameType T@ArrayDomainType Int Int) Int)
(declare-fun |countFalse#condqp2| (T@PolymorphicMapType_10395 T@ArrayDomainType Int Int) Int)
(declare-fun first_1 (T@Ref) T@ArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(declare-fun |sk_countFalse#condqp2| (Int Int) Int)
(assert (distinct $allocated val)
)
(assert (forall ((Heap0 T@PolymorphicMapType_10395) (Heap1 T@PolymorphicMapType_10395) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10395) (Mask T@PolymorphicMapType_10416) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10395) (Heap1@@0 T@PolymorphicMapType_10395) (Heap2 T@PolymorphicMapType_10395) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10395) (Mask@@0 T@PolymorphicMapType_10416) (a_2 T@ArrayDomainType) (from_1 Int) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 1)) (=> (and (<= 0 from_1) (<= from_1 (length_2 a_2))) (= (countFalseX Heap@@0 a_2 from_1) (ite (= from_1 (length_2 a_2)) 0 (|countFalseX'| Heap@@0 a_2 (+ from_1 1))))))
 :qid |stdinbpl.287:15|
 :skolemid |26|
 :pattern ( (state Heap@@0 Mask@@0) (countFalseX Heap@@0 a_2 from_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10395) (a_2@@0 T@ArrayDomainType) (from_1@@0 Int) (to_1 Int) ) (! (dummyFunction_2077 (|countFalse#triggerStateless| a_2@@0 from_1@@0 to_1))
 :qid |stdinbpl.443:15|
 :skolemid |40|
 :pattern ( (|countFalse'| Heap@@1 a_2@@0 from_1@@0 to_1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7255_29287) ) (!  (not (select (|PolymorphicMapType_10944_10455_30267#PolymorphicMapType_10944| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10944_10455_30267#PolymorphicMapType_10944| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7255_29154) ) (!  (not (select (|PolymorphicMapType_10944_10455_29154#PolymorphicMapType_10944| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10944_10455_29154#PolymorphicMapType_10944| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10468_10469) ) (!  (not (select (|PolymorphicMapType_10944_10455_10469#PolymorphicMapType_10944| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10944_10455_10469#PolymorphicMapType_10944| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10455_53) ) (!  (not (select (|PolymorphicMapType_10944_10455_53#PolymorphicMapType_10944| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10944_10455_53#PolymorphicMapType_10944| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10395) (a_2@@1 T@ArrayDomainType) (from_1@@1 Int) ) (! (dummyFunction_2077 (|countFalseX#triggerStateless| a_2@@1 from_1@@1))
 :qid |stdinbpl.281:15|
 :skolemid |25|
 :pattern ( (|countFalseX'| Heap@@2 a_2@@1 from_1@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10395) (Mask@@1 T@PolymorphicMapType_10416) (a_2@@2 T@ArrayDomainType) (from_1@@2 Int) (to_1@@0 Int) ) (!  (=> (and (state Heap@@3 Mask@@1) (< AssumeFunctionsAbove 0)) (=> (and (<= 0 from_1@@2) (and (<= from_1@@2 to_1@@0) (<= to_1@@0 (length_2 a_2@@2)))) (= (countFalse Heap@@3 a_2@@2 from_1@@2 to_1@@0) (ite (= from_1@@2 to_1@@0) 0 (+ (ite (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@3) (loc a_2@@2 from_1@@2) val) 0 1) (|countFalse'| Heap@@3 a_2@@2 (+ from_1@@2 1) to_1@@0))))))
 :qid |stdinbpl.449:15|
 :skolemid |41|
 :pattern ( (state Heap@@3 Mask@@1) (countFalse Heap@@3 a_2@@2 from_1@@2 to_1@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10395) (ExhaleHeap T@PolymorphicMapType_10395) (Mask@@2 T@PolymorphicMapType_10416) (pm_f_6 T@Field_7255_29154) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@2) (=> (and (HasDirectPerm_7255_29218 Mask@@2 null pm_f_6) (IsPredicateField_7255_29245 pm_f_6)) (= (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@4) null (PredicateMaskField_7255 pm_f_6)) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap) null (PredicateMaskField_7255 pm_f_6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@2) (IsPredicateField_7255_29245 pm_f_6) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap) null (PredicateMaskField_7255 pm_f_6)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10395) (ExhaleHeap@@0 T@PolymorphicMapType_10395) (Mask@@3 T@PolymorphicMapType_10416) (pm_f_6@@0 T@Field_7255_29154) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@3) (=> (and (HasDirectPerm_7255_29218 Mask@@3 null pm_f_6@@0) (IsWandField_7255_30794 pm_f_6@@0)) (= (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@5) null (WandMaskField_7255 pm_f_6@@0)) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@0) null (WandMaskField_7255 pm_f_6@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@3) (IsWandField_7255_30794 pm_f_6@@0) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@0) null (WandMaskField_7255 pm_f_6@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10395) (ExhaleHeap@@1 T@PolymorphicMapType_10395) (Mask@@4 T@PolymorphicMapType_10416) (pm_f_6@@1 T@Field_7255_29154) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@4) (=> (and (HasDirectPerm_7255_29218 Mask@@4 null pm_f_6@@1) (IsPredicateField_7255_29245 pm_f_6@@1)) (and (and (and (forall ((o2_6 T@Ref) (f_25 T@Field_10455_53) ) (!  (=> (select (|PolymorphicMapType_10944_10455_53#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@6) null (PredicateMaskField_7255 pm_f_6@@1))) o2_6 f_25) (= (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@6) o2_6 f_25) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6 f_25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6 f_25))
)) (forall ((o2_6@@0 T@Ref) (f_25@@0 T@Field_10468_10469) ) (!  (=> (select (|PolymorphicMapType_10944_10455_10469#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@6) null (PredicateMaskField_7255 pm_f_6@@1))) o2_6@@0 f_25@@0) (= (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@6) o2_6@@0 f_25@@0) (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6@@0 f_25@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6@@0 f_25@@0))
))) (forall ((o2_6@@1 T@Ref) (f_25@@1 T@Field_7255_29154) ) (!  (=> (select (|PolymorphicMapType_10944_10455_29154#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@6) null (PredicateMaskField_7255 pm_f_6@@1))) o2_6@@1 f_25@@1) (= (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@6) o2_6@@1 f_25@@1) (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6@@1 f_25@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6@@1 f_25@@1))
))) (forall ((o2_6@@2 T@Ref) (f_25@@2 T@Field_7255_29287) ) (!  (=> (select (|PolymorphicMapType_10944_10455_30267#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@6) null (PredicateMaskField_7255 pm_f_6@@1))) o2_6@@2 f_25@@2) (= (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@6) o2_6@@2 f_25@@2) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6@@2 f_25@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@1) o2_6@@2 f_25@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@4) (IsPredicateField_7255_29245 pm_f_6@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10395) (ExhaleHeap@@2 T@PolymorphicMapType_10395) (Mask@@5 T@PolymorphicMapType_10416) (pm_f_6@@2 T@Field_7255_29154) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@5) (=> (and (HasDirectPerm_7255_29218 Mask@@5 null pm_f_6@@2) (IsWandField_7255_30794 pm_f_6@@2)) (and (and (and (forall ((o2_6@@3 T@Ref) (f_25@@3 T@Field_10455_53) ) (!  (=> (select (|PolymorphicMapType_10944_10455_53#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@7) null (WandMaskField_7255 pm_f_6@@2))) o2_6@@3 f_25@@3) (= (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@7) o2_6@@3 f_25@@3) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@3 f_25@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@3 f_25@@3))
)) (forall ((o2_6@@4 T@Ref) (f_25@@4 T@Field_10468_10469) ) (!  (=> (select (|PolymorphicMapType_10944_10455_10469#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@7) null (WandMaskField_7255 pm_f_6@@2))) o2_6@@4 f_25@@4) (= (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@7) o2_6@@4 f_25@@4) (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@4 f_25@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@4 f_25@@4))
))) (forall ((o2_6@@5 T@Ref) (f_25@@5 T@Field_7255_29154) ) (!  (=> (select (|PolymorphicMapType_10944_10455_29154#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@7) null (WandMaskField_7255 pm_f_6@@2))) o2_6@@5 f_25@@5) (= (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@7) o2_6@@5 f_25@@5) (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@5 f_25@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@5 f_25@@5))
))) (forall ((o2_6@@6 T@Ref) (f_25@@6 T@Field_7255_29287) ) (!  (=> (select (|PolymorphicMapType_10944_10455_30267#PolymorphicMapType_10944| (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@7) null (WandMaskField_7255 pm_f_6@@2))) o2_6@@6 f_25@@6) (= (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@7) o2_6@@6 f_25@@6) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@6 f_25@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@2) o2_6@@6 f_25@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@5) (IsWandField_7255_30794 pm_f_6@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10395) (ExhaleHeap@@3 T@PolymorphicMapType_10395) (Mask@@6 T@PolymorphicMapType_10416) (o_17 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@6) (=> (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@8) o_17 $allocated) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@3) o_17 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@6) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@3) o_17 $allocated))
)))
(assert (forall ((p T@Field_7255_29154) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10455_10455 p v_1 p w))
 :qid |stdinbpl.226:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10455_10455 p v_1 p w))
)))
(assert  (not (IsPredicateField_7255_1596 val)))
(assert  (not (IsWandField_7255_1596 val)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10395) (ExhaleHeap@@4 T@PolymorphicMapType_10395) (Mask@@7 T@PolymorphicMapType_10416) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@7) (succHeap Heap@@9 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10416) (o_2@@3 T@Ref) (f_4@@3 T@Field_7255_29287) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| Mask@@8) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7255_33731 f_4@@3))) (not (IsWandField_7255_33747 f_4@@3))) (<= (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| Mask@@8) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| Mask@@8) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10416) (o_2@@4 T@Ref) (f_4@@4 T@Field_7255_29154) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_7255_29245 f_4@@4))) (not (IsWandField_7255_30794 f_4@@4))) (<= (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10416) (o_2@@5 T@Ref) (f_4@@5 T@Field_10468_10469) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_7255_10469 f_4@@5))) (not (IsWandField_7255_10469 f_4@@5))) (<= (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10416) (o_2@@6 T@Ref) (f_4@@6 T@Field_10455_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_7255_1596 f_4@@6))) (not (IsWandField_7255_1596 f_4@@6))) (<= (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10416) (o_2@@7 T@Ref) (f_4@@7 T@Field_7255_29287) ) (! (= (HasDirectPerm_7255_34102 Mask@@12 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| Mask@@12) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7255_34102 Mask@@12 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10416) (o_2@@8 T@Ref) (f_4@@8 T@Field_7255_29154) ) (! (= (HasDirectPerm_7255_29218 Mask@@13 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| Mask@@13) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7255_29218 Mask@@13 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10416) (o_2@@9 T@Ref) (f_4@@9 T@Field_10468_10469) ) (! (= (HasDirectPerm_7255_10469 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7255_10469 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10416) (o_2@@10 T@Ref) (f_4@@10 T@Field_10455_53) ) (! (= (HasDirectPerm_7255_1596 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7255_1596 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.214:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10395) (ExhaleHeap@@5 T@PolymorphicMapType_10395) (Mask@@16 T@PolymorphicMapType_10416) (o_17@@0 T@Ref) (f_25@@7 T@Field_7255_29287) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7255_34102 Mask@@16 o_17@@0 f_25@@7) (= (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@10) o_17@@0 f_25@@7) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@5) o_17@@0 f_25@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| ExhaleHeap@@5) o_17@@0 f_25@@7))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10395) (ExhaleHeap@@6 T@PolymorphicMapType_10395) (Mask@@17 T@PolymorphicMapType_10416) (o_17@@1 T@Ref) (f_25@@8 T@Field_7255_29154) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7255_29218 Mask@@17 o_17@@1 f_25@@8) (= (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@11) o_17@@1 f_25@@8) (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| ExhaleHeap@@6) o_17@@1 f_25@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| ExhaleHeap@@6) o_17@@1 f_25@@8))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10395) (ExhaleHeap@@7 T@PolymorphicMapType_10395) (Mask@@18 T@PolymorphicMapType_10416) (o_17@@2 T@Ref) (f_25@@9 T@Field_10468_10469) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7255_10469 Mask@@18 o_17@@2 f_25@@9) (= (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@12) o_17@@2 f_25@@9) (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| ExhaleHeap@@7) o_17@@2 f_25@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| ExhaleHeap@@7) o_17@@2 f_25@@9))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10395) (ExhaleHeap@@8 T@PolymorphicMapType_10395) (Mask@@19 T@PolymorphicMapType_10416) (o_17@@3 T@Ref) (f_25@@10 T@Field_10455_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7255_1596 Mask@@19 o_17@@3 f_25@@10) (= (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@13) o_17@@3 f_25@@10) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@8) o_17@@3 f_25@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| ExhaleHeap@@8) o_17@@3 f_25@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_7255_29287) ) (! (= (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_7255_29154) ) (! (= (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_10468_10469) ) (! (= (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10455_53) ) (! (= (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10395) (a_2@@3 T@ArrayDomainType) (from_1@@3 Int) ) (!  (and (= (countFalseX Heap@@14 a_2@@3 from_1@@3) (|countFalseX'| Heap@@14 a_2@@3 from_1@@3)) (dummyFunction_2077 (|countFalseX#triggerStateless| a_2@@3 from_1@@3)))
 :qid |stdinbpl.277:15|
 :skolemid |24|
 :pattern ( (countFalseX Heap@@14 a_2@@3 from_1@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10395) (Mask@@20 T@PolymorphicMapType_10416) (a_2@@4 T@ArrayDomainType) (from_1@@4 Int) ) (!  (=> (state Heap@@15 Mask@@20) (= (|countFalseX'| Heap@@15 a_2@@4 from_1@@4) (|countFalseX#frame| (FrameFragment_1841 (|countFalseX#condqp1| Heap@@15 a_2@@4 from_1@@4)) a_2@@4 from_1@@4)))
 :qid |stdinbpl.294:15|
 :skolemid |27|
 :pattern ( (state Heap@@15 Mask@@20) (|countFalseX'| Heap@@15 a_2@@4 from_1@@4))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10416) (SummandMask1 T@PolymorphicMapType_10416) (SummandMask2 T@PolymorphicMapType_10416) (o_2@@15 T@Ref) (f_4@@15 T@Field_7255_29287) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10416_7255_32836#PolymorphicMapType_10416| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10416) (SummandMask1@@0 T@PolymorphicMapType_10416) (SummandMask2@@0 T@PolymorphicMapType_10416) (o_2@@16 T@Ref) (f_4@@16 T@Field_7255_29154) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10416_7255_29154#PolymorphicMapType_10416| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10416) (SummandMask1@@1 T@PolymorphicMapType_10416) (SummandMask2@@1 T@PolymorphicMapType_10416) (o_2@@17 T@Ref) (f_4@@17 T@Field_10468_10469) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10416_7255_10469#PolymorphicMapType_10416| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10416) (SummandMask1@@2 T@PolymorphicMapType_10416) (SummandMask2@@2 T@PolymorphicMapType_10416) (o_2@@18 T@Ref) (f_4@@18 T@Field_10455_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10416_7255_1596#PolymorphicMapType_10416| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_10395) (Heap1Heap T@PolymorphicMapType_10395) (a_2@@5 T@ArrayDomainType) (from_1@@5 Int) ) (!  (=> (and (=  (and (and (<= from_1@@5 (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5))) (< (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5)) (length_2 a_2@@5))) (< NoPerm FullPerm))  (and (and (<= from_1@@5 (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5))) (< (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5)) (length_2 a_2@@5))) (< NoPerm FullPerm))) (=> (and (and (<= from_1@@5 (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5))) (< (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5)) (length_2 a_2@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap2Heap) (loc a_2@@5 (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5))) val) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap1Heap) (loc a_2@@5 (|sk_countFalseX#condqp1| (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5))) val)))) (= (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5)))
 :qid |stdinbpl.304:15|
 :skolemid |28|
 :pattern ( (|countFalseX#condqp1| Heap2Heap a_2@@5 from_1@@5) (|countFalseX#condqp1| Heap1Heap a_2@@5 from_1@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10395) (a_2@@6 T@ArrayDomainType) (from_1@@6 Int) (to_1@@1 Int) ) (!  (and (= (countFalse Heap@@16 a_2@@6 from_1@@6 to_1@@1) (|countFalse'| Heap@@16 a_2@@6 from_1@@6 to_1@@1)) (dummyFunction_2077 (|countFalse#triggerStateless| a_2@@6 from_1@@6 to_1@@1)))
 :qid |stdinbpl.439:15|
 :skolemid |39|
 :pattern ( (countFalse Heap@@16 a_2@@6 from_1@@6 to_1@@1))
)))
(assert (forall ((a_2@@7 T@ArrayDomainType) ) (! (>= (length_2 a_2@@7) 0)
 :qid |stdinbpl.257:15|
 :skolemid |23|
 :pattern ( (length_2 a_2@@7))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10395) (Mask@@21 T@PolymorphicMapType_10416) (a_2@@8 T@ArrayDomainType) (from_1@@7 Int) (to_1@@2 Int) ) (!  (=> (state Heap@@17 Mask@@21) (= (|countFalse'| Heap@@17 a_2@@8 from_1@@7 to_1@@2) (|countFalse#frame| (FrameFragment_1841 (|countFalse#condqp2| Heap@@17 a_2@@8 from_1@@7 to_1@@2)) a_2@@8 from_1@@7 to_1@@2)))
 :qid |stdinbpl.456:15|
 :skolemid |42|
 :pattern ( (state Heap@@17 Mask@@21) (|countFalse'| Heap@@17 a_2@@8 from_1@@7 to_1@@2))
)))
(assert (forall ((a_2@@9 T@ArrayDomainType) (i Int) ) (!  (and (= (first_1 (loc a_2@@9 i)) a_2@@9) (= (second_1 (loc a_2@@9 i)) i))
 :qid |stdinbpl.251:15|
 :skolemid |22|
 :pattern ( (loc a_2@@9 i))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10395) (o_16 T@Ref) (f_2 T@Field_7255_29154) (v T@FrameType) ) (! (succHeap Heap@@18 (PolymorphicMapType_10395 (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@18) (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@18) (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@18) (store (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@18) o_16 f_2 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10395 (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@18) (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@18) (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@18) (store (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@18) o_16 f_2 v)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10395) (o_16@@0 T@Ref) (f_2@@0 T@Field_7255_29287) (v@@0 T@PolymorphicMapType_10944) ) (! (succHeap Heap@@19 (PolymorphicMapType_10395 (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@19) (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@19) (store (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@19) o_16@@0 f_2@@0 v@@0) (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10395 (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@19) (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@19) (store (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@19) o_16@@0 f_2@@0 v@@0) (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10395) (o_16@@1 T@Ref) (f_2@@1 T@Field_10468_10469) (v@@1 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_10395 (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@20) (store (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@20) o_16@@1 f_2@@1 v@@1) (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@20) (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10395 (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@20) (store (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@20) o_16@@1 f_2@@1 v@@1) (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@20) (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10395) (o_16@@2 T@Ref) (f_2@@2 T@Field_10455_53) (v@@2 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_10395 (store (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@21) o_16@@2 f_2@@2 v@@2) (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@21) (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@21) (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10395 (store (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@21) o_16@@2 f_2@@2 v@@2) (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@21) (|PolymorphicMapType_10395_7255_29331#PolymorphicMapType_10395| Heap@@21) (|PolymorphicMapType_10395_10455_29154#PolymorphicMapType_10395| Heap@@21)))
)))
(assert (forall ((o_16@@3 T@Ref) (f_10 T@Field_10468_10469) (Heap@@22 T@PolymorphicMapType_10395) ) (!  (=> (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@22) o_16@@3 $allocated) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap@@22) (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@22) o_16@@3 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10395_7092_7093#PolymorphicMapType_10395| Heap@@22) o_16@@3 f_10))
)))
(assert (forall ((p@@1 T@Field_7255_29154) (v_1@@0 T@FrameType) (q T@Field_7255_29154) (w@@0 T@FrameType) (r T@Field_7255_29154) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10455_10455 p@@1 v_1@@0 q w@@0) (InsidePredicate_10455_10455 q w@@0 r u)) (InsidePredicate_10455_10455 p@@1 v_1@@0 r u))
 :qid |stdinbpl.221:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10455_10455 p@@1 v_1@@0 q w@@0) (InsidePredicate_10455_10455 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_10395) (Heap1Heap@@0 T@PolymorphicMapType_10395) (a_2@@10 T@ArrayDomainType) (from_1@@8 Int) (to_1@@3 Int) ) (!  (=> (and (=  (and (and (<= from_1@@8 (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3))) (< (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3)) to_1@@3)) (< NoPerm FullPerm))  (and (and (<= from_1@@8 (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3))) (< (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3)) to_1@@3)) (< NoPerm FullPerm))) (=> (and (and (<= from_1@@8 (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3))) (< (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3)) to_1@@3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap2Heap@@0) (loc a_2@@10 (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3))) val) (select (|PolymorphicMapType_10395_7089_53#PolymorphicMapType_10395| Heap1Heap@@0) (loc a_2@@10 (|sk_countFalse#condqp2| (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3))) val)))) (= (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3)))
 :qid |stdinbpl.466:15|
 :skolemid |43|
 :pattern ( (|countFalse#condqp2| Heap2Heap@@0 a_2@@10 from_1@@8 to_1@@3) (|countFalse#condqp2| Heap1Heap@@0 a_2@@10 from_1@@8 to_1@@3) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
; Valid

