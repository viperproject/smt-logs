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
(declare-sort T@Field_11986_53 0)
(declare-sort T@Field_11999_12000 0)
(declare-sort T@Field_15440_1500 0)
(declare-sort T@Field_8069_33509 0)
(declare-sort T@Field_8069_33376 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11947 0)) (((PolymorphicMapType_11947 (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| (Array T@Ref T@Field_15440_1500 Real)) (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| (Array T@Ref T@Field_11986_53 Real)) (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| (Array T@Ref T@Field_11999_12000 Real)) (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| (Array T@Ref T@Field_8069_33376 Real)) (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| (Array T@Ref T@Field_8069_33509 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12475 0)) (((PolymorphicMapType_12475 (|PolymorphicMapType_12475_11986_53#PolymorphicMapType_12475| (Array T@Ref T@Field_11986_53 Bool)) (|PolymorphicMapType_12475_11986_12000#PolymorphicMapType_12475| (Array T@Ref T@Field_11999_12000 Bool)) (|PolymorphicMapType_12475_11986_1500#PolymorphicMapType_12475| (Array T@Ref T@Field_15440_1500 Bool)) (|PolymorphicMapType_12475_11986_33376#PolymorphicMapType_12475| (Array T@Ref T@Field_8069_33376 Bool)) (|PolymorphicMapType_12475_11986_34687#PolymorphicMapType_12475| (Array T@Ref T@Field_8069_33509 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11926 0)) (((PolymorphicMapType_11926 (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| (Array T@Ref T@Field_11986_53 Bool)) (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| (Array T@Ref T@Field_11999_12000 T@Ref)) (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| (Array T@Ref T@Field_15440_1500 Int)) (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| (Array T@Ref T@Field_8069_33509 T@PolymorphicMapType_12475)) (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| (Array T@Ref T@Field_8069_33376 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_11986_53)
(declare-fun val () T@Field_15440_1500)
(declare-fun succHeap (T@PolymorphicMapType_11926 T@PolymorphicMapType_11926) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11926 T@PolymorphicMapType_11926) Bool)
(declare-sort T@IArrayDomainType 0)
(declare-fun state (T@PolymorphicMapType_11926 T@PolymorphicMapType_11947) Bool)
(declare-fun |f_lcp'| (T@PolymorphicMapType_11926 T@IArrayDomainType Int Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |f_lcp#trigger| (T@FrameType T@IArrayDomainType Int Int) Bool)
(declare-fun FrameFragment_1643 (Int) T@FrameType)
(declare-fun |f_lcp#condqp3| (T@PolymorphicMapType_11926 T@IArrayDomainType Int Int) Int)
(declare-fun length_1 (T@IArrayDomainType) Int)
(declare-fun |f_loop#condqp2| (T@PolymorphicMapType_11926 T@IArrayDomainType Int Int Int) Int)
(declare-fun |sk_f_loop#condqp2| (Int Int) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun loc (T@IArrayDomainType Int) T@Ref)
(declare-fun GoodMask (T@PolymorphicMapType_11947) Bool)
(declare-fun dummyFunction_1919 (Int) Bool)
(declare-fun |f_lcp#triggerStateless| (T@IArrayDomainType Int Int) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_12475)
(declare-fun f_lcp (T@PolymorphicMapType_11926 T@IArrayDomainType Int Int) Int)
(declare-fun f_loop (T@PolymorphicMapType_11926 T@IArrayDomainType Int Int Int) Int)
(declare-fun |f_loop_simpl'| (T@PolymorphicMapType_11926 T@IArrayDomainType) Int)
(declare-fun |f_loop_simpl#triggerStateless| (T@IArrayDomainType) Int)
(declare-fun f_loop_simpl (T@PolymorphicMapType_11926 T@IArrayDomainType) Int)
(declare-fun |f_loop'| (T@PolymorphicMapType_11926 T@IArrayDomainType Int Int Int) Int)
(declare-fun |f_loop#trigger| (T@FrameType T@IArrayDomainType Int Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11926 T@PolymorphicMapType_11926 T@PolymorphicMapType_11947) Bool)
(declare-fun IsPredicateField_8069_33467 (T@Field_8069_33376) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8069 (T@Field_8069_33376) T@Field_8069_33509)
(declare-fun HasDirectPerm_8069_33440 (T@PolymorphicMapType_11947 T@Ref T@Field_8069_33376) Bool)
(declare-fun IsWandField_8069_35214 (T@Field_8069_33376) Bool)
(declare-fun WandMaskField_8069 (T@Field_8069_33376) T@Field_8069_33509)
(declare-fun dummyHeap () T@PolymorphicMapType_11926)
(declare-fun ZeroMask () T@PolymorphicMapType_11947)
(declare-fun InsidePredicate_11986_11986 (T@Field_8069_33376 T@FrameType T@Field_8069_33376 T@FrameType) Bool)
(declare-fun IsPredicateField_8069_1500 (T@Field_15440_1500) Bool)
(declare-fun IsWandField_8069_1500 (T@Field_15440_1500) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8069_38760 (T@Field_8069_33509) Bool)
(declare-fun IsWandField_8069_38776 (T@Field_8069_33509) Bool)
(declare-fun IsPredicateField_8069_12000 (T@Field_11999_12000) Bool)
(declare-fun IsWandField_8069_12000 (T@Field_11999_12000) Bool)
(declare-fun IsPredicateField_8069_53 (T@Field_11986_53) Bool)
(declare-fun IsWandField_8069_53 (T@Field_11986_53) Bool)
(declare-fun HasDirectPerm_8069_39214 (T@PolymorphicMapType_11947 T@Ref T@Field_8069_33509) Bool)
(declare-fun HasDirectPerm_8069_12000 (T@PolymorphicMapType_11947 T@Ref T@Field_11999_12000) Bool)
(declare-fun HasDirectPerm_8069_53 (T@PolymorphicMapType_11947 T@Ref T@Field_11986_53) Bool)
(declare-fun HasDirectPerm_8069_1500 (T@PolymorphicMapType_11947 T@Ref T@Field_15440_1500) Bool)
(declare-fun |f_loop#triggerStateless| (T@IArrayDomainType Int Int Int) Int)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |sk_f_lcp#condqp3| (Int Int) Int)
(declare-fun |f_loop_simpl#trigger| (T@FrameType T@IArrayDomainType) Bool)
(declare-fun |f_loop_simpl#condqp1| (T@PolymorphicMapType_11926 T@IArrayDomainType) Int)
(declare-fun sumMask (T@PolymorphicMapType_11947 T@PolymorphicMapType_11947 T@PolymorphicMapType_11947) Bool)
(declare-fun |f_lcp#frame| (T@FrameType T@IArrayDomainType Int Int) Int)
(declare-fun |sk_f_loop_simpl#condqp1| (Int Int) Int)
(declare-fun first (T@Ref) T@IArrayDomainType)
(declare-fun second (T@Ref) Int)
(declare-fun |f_loop_simpl#frame| (T@FrameType T@IArrayDomainType) Int)
(declare-fun |f_loop#frame| (T@FrameType T@IArrayDomainType Int Int Int) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_11926) (Heap1 T@PolymorphicMapType_11926) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11926) (Mask T@PolymorphicMapType_11947) (a_2 T@IArrayDomainType) (x Int) (y Int) ) (!  (=> (and (state Heap Mask) (or (< AssumeFunctionsAbove 1) (|f_lcp#trigger| (FrameFragment_1643 (|f_lcp#condqp3| Heap a_2 x y)) a_2 x y))) (=> (and (and (<= 0 x) (< x (length_1 a_2))) (and (<= 0 y) (< y (length_1 a_2)))) (and (<= 0 (|f_lcp'| Heap a_2 x y)) (and (<= (+ x (|f_lcp'| Heap a_2 x y)) (length_1 a_2)) (<= (+ y (|f_lcp'| Heap a_2 x y)) (length_1 a_2))))))
 :qid |stdinbpl.624:15|
 :skolemid |57|
 :pattern ( (state Heap Mask) (|f_lcp'| Heap a_2 x y))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_11926) (Heap1Heap T@PolymorphicMapType_11926) (a_2@@0 T@IArrayDomainType) (x@@0 Int) (y@@0 Int) (n Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_f_loop#condqp2| (|f_loop#condqp2| Heap2Heap a_2@@0 x@@0 y@@0 n) (|f_loop#condqp2| Heap1Heap a_2@@0 x@@0 y@@0 n))) (< (|sk_f_loop#condqp2| (|f_loop#condqp2| Heap2Heap a_2@@0 x@@0 y@@0 n) (|f_loop#condqp2| Heap1Heap a_2@@0 x@@0 y@@0 n)) (length_1 a_2@@0))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_f_loop#condqp2| (|f_loop#condqp2| Heap2Heap a_2@@0 x@@0 y@@0 n) (|f_loop#condqp2| Heap1Heap a_2@@0 x@@0 y@@0 n))) (< (|sk_f_loop#condqp2| (|f_loop#condqp2| Heap2Heap a_2@@0 x@@0 y@@0 n) (|f_loop#condqp2| Heap1Heap a_2@@0 x@@0 y@@0 n)) (length_1 a_2@@0))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_f_loop#condqp2| (|f_loop#condqp2| Heap2Heap a_2@@0 x@@0 y@@0 n) (|f_loop#condqp2| Heap1Heap a_2@@0 x@@0 y@@0 n))) (< (|sk_f_loop#condqp2| (|f_loop#condqp2| Heap2Heap a_2@@0 x@@0 y@@0 n) (|f_loop#condqp2| Heap1Heap a_2@@0 x@@0 y@@0 n)) (length_1 a_2@@0))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap2Heap) (loc a_2@@0 (|sk_f_loop#condqp2| (|f_loop#condqp2| Heap2Heap a_2@@0 x@@0 y@@0 n) (|f_loop#condqp2| Heap1Heap a_2@@0 x@@0 y@@0 n))) val) (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap1Heap) (loc a_2@@0 (|sk_f_loop#condqp2| (|f_loop#condqp2| Heap2Heap a_2@@0 x@@0 y@@0 n) (|f_loop#condqp2| Heap1Heap a_2@@0 x@@0 y@@0 n))) val)))) (= (|f_loop#condqp2| Heap2Heap a_2@@0 x@@0 y@@0 n) (|f_loop#condqp2| Heap1Heap a_2@@0 x@@0 y@@0 n)))
 :qid |stdinbpl.403:15|
 :skolemid |39|
 :pattern ( (|f_loop#condqp2| Heap2Heap a_2@@0 x@@0 y@@0 n) (|f_loop#condqp2| Heap1Heap a_2@@0 x@@0 y@@0 n) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11926) (Mask@@0 T@PolymorphicMapType_11947) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11926) (Heap1@@0 T@PolymorphicMapType_11926) (Heap2 T@PolymorphicMapType_11926) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11926) (a_2@@1 T@IArrayDomainType) (x@@1 Int) (y@@1 Int) ) (! (dummyFunction_1919 (|f_lcp#triggerStateless| a_2@@1 x@@1 y@@1))
 :qid |stdinbpl.595:15|
 :skolemid |53|
 :pattern ( (|f_lcp'| Heap@@1 a_2@@1 x@@1 y@@1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8069_33509) ) (!  (not (select (|PolymorphicMapType_12475_11986_34687#PolymorphicMapType_12475| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12475_11986_34687#PolymorphicMapType_12475| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8069_33376) ) (!  (not (select (|PolymorphicMapType_12475_11986_33376#PolymorphicMapType_12475| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12475_11986_33376#PolymorphicMapType_12475| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_15440_1500) ) (!  (not (select (|PolymorphicMapType_12475_11986_1500#PolymorphicMapType_12475| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12475_11986_1500#PolymorphicMapType_12475| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11999_12000) ) (!  (not (select (|PolymorphicMapType_12475_11986_12000#PolymorphicMapType_12475| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12475_11986_12000#PolymorphicMapType_12475| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11986_53) ) (!  (not (select (|PolymorphicMapType_12475_11986_53#PolymorphicMapType_12475| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12475_11986_53#PolymorphicMapType_12475| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11926) (Mask@@1 T@PolymorphicMapType_11947) (a_2@@2 T@IArrayDomainType) (x@@2 Int) (y@@2 Int) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 1)) (=> (and (and (<= 0 x@@2) (< x@@2 (length_1 a_2@@2))) (and (<= 0 y@@2) (< y@@2 (length_1 a_2@@2)))) (= (f_lcp Heap@@2 a_2@@2 x@@2 y@@2) (f_loop Heap@@2 a_2@@2 x@@2 y@@2 0))))
 :qid |stdinbpl.601:15|
 :skolemid |54|
 :pattern ( (state Heap@@2 Mask@@1) (f_lcp Heap@@2 a_2@@2 x@@2 y@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11926) (a_2@@3 T@IArrayDomainType) ) (! (dummyFunction_1919 (|f_loop_simpl#triggerStateless| a_2@@3))
 :qid |stdinbpl.270:15|
 :skolemid |25|
 :pattern ( (|f_loop_simpl'| Heap@@3 a_2@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11926) (a_2@@4 T@IArrayDomainType) ) (!  (and (= (f_loop_simpl Heap@@4 a_2@@4) (|f_loop_simpl'| Heap@@4 a_2@@4)) (dummyFunction_1919 (|f_loop_simpl#triggerStateless| a_2@@4)))
 :qid |stdinbpl.266:15|
 :skolemid |24|
 :pattern ( (f_loop_simpl Heap@@4 a_2@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11926) (Mask@@2 T@PolymorphicMapType_11947) (a_2@@5 T@IArrayDomainType) (x@@3 Int) (y@@3 Int) (n@@0 Int) ) (!  (=> (and (state Heap@@5 Mask@@2) (or (< AssumeFunctionsAbove 2) (|f_loop#trigger| (FrameFragment_1643 (|f_loop#condqp2| Heap@@5 a_2@@5 x@@3 y@@3 n@@0)) a_2@@5 x@@3 y@@3 n@@0))) (=> (and (and (and (<= 0 x@@3) (< x@@3 (length_1 a_2@@5))) (and (<= 0 y@@3) (< y@@3 (length_1 a_2@@5)))) (and (<= 0 n@@0) (and (<= (+ x@@3 n@@0) (length_1 a_2@@5)) (<= (+ y@@3 n@@0) (length_1 a_2@@5))))) (=> (and (< (+ x@@3 (|f_loop'| Heap@@5 a_2@@5 x@@3 y@@3 n@@0)) (length_1 a_2@@5)) (< (+ y@@3 (|f_loop'| Heap@@5 a_2@@5 x@@3 y@@3 n@@0)) (length_1 a_2@@5))) (not (= (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@5) (loc a_2@@5 (+ x@@3 (|f_loop'| Heap@@5 a_2@@5 x@@3 y@@3 n@@0))) val) (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@5) (loc a_2@@5 (+ y@@3 (|f_loop'| Heap@@5 a_2@@5 x@@3 y@@3 n@@0))) val))))))
 :qid |stdinbpl.413:15|
 :skolemid |41|
 :pattern ( (state Heap@@5 Mask@@2) (|f_loop'| Heap@@5 a_2@@5 x@@3 y@@3 n@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11926) (Mask@@3 T@PolymorphicMapType_11947) (a_2@@6 T@IArrayDomainType) (x@@4 Int) (y@@4 Int) (n@@1 Int) ) (!  (=> (and (state Heap@@6 Mask@@3) (< AssumeFunctionsAbove 2)) (=> (and (and (and (<= 0 x@@4) (< x@@4 (length_1 a_2@@6))) (and (<= 0 y@@4) (< y@@4 (length_1 a_2@@6)))) (and (<= 0 n@@1) (and (<= (+ x@@4 n@@1) (length_1 a_2@@6)) (<= (+ y@@4 n@@1) (length_1 a_2@@6))))) (= (f_loop Heap@@6 a_2@@6 x@@4 y@@4 n@@1) (ite  (and (< (+ x@@4 n@@1) (length_1 a_2@@6)) (and (< (+ y@@4 n@@1) (length_1 a_2@@6)) (= (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@6) (loc a_2@@6 (+ x@@4 n@@1)) val) (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@6) (loc a_2@@6 (+ y@@4 n@@1)) val)))) (|f_loop'| Heap@@6 a_2@@6 x@@4 y@@4 (+ n@@1 1)) n@@1))))
 :qid |stdinbpl.386:15|
 :skolemid |37|
 :pattern ( (state Heap@@6 Mask@@3) (f_loop Heap@@6 a_2@@6 x@@4 y@@4 n@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11926) (ExhaleHeap T@PolymorphicMapType_11926) (Mask@@4 T@PolymorphicMapType_11947) (pm_f_3 T@Field_8069_33376) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_8069_33440 Mask@@4 null pm_f_3) (IsPredicateField_8069_33467 pm_f_3)) (= (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@7) null (PredicateMaskField_8069 pm_f_3)) (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| ExhaleHeap) null (PredicateMaskField_8069 pm_f_3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@4) (IsPredicateField_8069_33467 pm_f_3) (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| ExhaleHeap) null (PredicateMaskField_8069 pm_f_3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11926) (ExhaleHeap@@0 T@PolymorphicMapType_11926) (Mask@@5 T@PolymorphicMapType_11947) (pm_f_3@@0 T@Field_8069_33376) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_8069_33440 Mask@@5 null pm_f_3@@0) (IsWandField_8069_35214 pm_f_3@@0)) (= (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@8) null (WandMaskField_8069 pm_f_3@@0)) (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| ExhaleHeap@@0) null (WandMaskField_8069 pm_f_3@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@5) (IsWandField_8069_35214 pm_f_3@@0) (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| ExhaleHeap@@0) null (WandMaskField_8069 pm_f_3@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11926) (ExhaleHeap@@1 T@PolymorphicMapType_11926) (Mask@@6 T@PolymorphicMapType_11947) (o_8 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (=> (select (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@9) o_8 $allocated) (select (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| ExhaleHeap@@1) o_8 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@1 Mask@@6) (select (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| ExhaleHeap@@1) o_8 $allocated))
)))
(assert (forall ((p T@Field_8069_33376) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11986_11986 p v_1 p w))
 :qid |stdinbpl.215:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11986_11986 p v_1 p w))
)))
(assert  (not (IsPredicateField_8069_1500 val)))
(assert  (not (IsWandField_8069_1500 val)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11926) (ExhaleHeap@@2 T@PolymorphicMapType_11926) (Mask@@7 T@PolymorphicMapType_11947) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7) (succHeap Heap@@10 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@2 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_11947) (o_2@@4 T@Ref) (f_4@@4 T@Field_8069_33509) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| Mask@@8) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8069_38760 f_4@@4))) (not (IsWandField_8069_38776 f_4@@4))) (<= (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| Mask@@8) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| Mask@@8) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_11947) (o_2@@5 T@Ref) (f_4@@5 T@Field_8069_33376) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| Mask@@9) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8069_33467 f_4@@5))) (not (IsWandField_8069_35214 f_4@@5))) (<= (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| Mask@@9) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| Mask@@9) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11947) (o_2@@6 T@Ref) (f_4@@6 T@Field_11999_12000) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| Mask@@10) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_8069_12000 f_4@@6))) (not (IsWandField_8069_12000 f_4@@6))) (<= (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| Mask@@10) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| Mask@@10) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11947) (o_2@@7 T@Ref) (f_4@@7 T@Field_11986_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_8069_53 f_4@@7))) (not (IsWandField_8069_53 f_4@@7))) (<= (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11947) (o_2@@8 T@Ref) (f_4@@8 T@Field_15440_1500) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8069_1500 f_4@@8))) (not (IsWandField_8069_1500 f_4@@8))) (<= (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11947) (o_2@@9 T@Ref) (f_4@@9 T@Field_8069_33509) ) (! (= (HasDirectPerm_8069_39214 Mask@@13 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| Mask@@13) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8069_39214 Mask@@13 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_11947) (o_2@@10 T@Ref) (f_4@@10 T@Field_8069_33376) ) (! (= (HasDirectPerm_8069_33440 Mask@@14 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| Mask@@14) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8069_33440 Mask@@14 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_11947) (o_2@@11 T@Ref) (f_4@@11 T@Field_11999_12000) ) (! (= (HasDirectPerm_8069_12000 Mask@@15 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| Mask@@15) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8069_12000 Mask@@15 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_11947) (o_2@@12 T@Ref) (f_4@@12 T@Field_11986_53) ) (! (= (HasDirectPerm_8069_53 Mask@@16 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| Mask@@16) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8069_53 Mask@@16 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_11947) (o_2@@13 T@Ref) (f_4@@13 T@Field_15440_1500) ) (! (= (HasDirectPerm_8069_1500 Mask@@17 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| Mask@@17) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8069_1500 Mask@@17 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11926) (a_2@@7 T@IArrayDomainType) (x@@5 Int) (y@@5 Int) (n@@2 Int) ) (! (dummyFunction_1919 (|f_loop#triggerStateless| a_2@@7 x@@5 y@@5 n@@2))
 :qid |stdinbpl.380:15|
 :skolemid |36|
 :pattern ( (|f_loop'| Heap@@11 a_2@@7 x@@5 y@@5 n@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11926) (ExhaleHeap@@3 T@PolymorphicMapType_11926) (Mask@@18 T@PolymorphicMapType_11947) (pm_f_3@@1 T@Field_8069_33376) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@18) (=> (and (HasDirectPerm_8069_33440 Mask@@18 null pm_f_3@@1) (IsPredicateField_8069_33467 pm_f_3@@1)) (and (and (and (and (forall ((o2_3 T@Ref) (f_12 T@Field_11986_53) ) (!  (=> (select (|PolymorphicMapType_12475_11986_53#PolymorphicMapType_12475| (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@12) null (PredicateMaskField_8069 pm_f_3@@1))) o2_3 f_12) (= (select (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@12) o2_3 f_12) (select (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| ExhaleHeap@@3) o2_3 f_12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| ExhaleHeap@@3) o2_3 f_12))
)) (forall ((o2_3@@0 T@Ref) (f_12@@0 T@Field_11999_12000) ) (!  (=> (select (|PolymorphicMapType_12475_11986_12000#PolymorphicMapType_12475| (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@12) null (PredicateMaskField_8069 pm_f_3@@1))) o2_3@@0 f_12@@0) (= (select (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| Heap@@12) o2_3@@0 f_12@@0) (select (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| ExhaleHeap@@3) o2_3@@0 f_12@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| ExhaleHeap@@3) o2_3@@0 f_12@@0))
))) (forall ((o2_3@@1 T@Ref) (f_12@@1 T@Field_15440_1500) ) (!  (=> (select (|PolymorphicMapType_12475_11986_1500#PolymorphicMapType_12475| (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@12) null (PredicateMaskField_8069 pm_f_3@@1))) o2_3@@1 f_12@@1) (= (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@12) o2_3@@1 f_12@@1) (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| ExhaleHeap@@3) o2_3@@1 f_12@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| ExhaleHeap@@3) o2_3@@1 f_12@@1))
))) (forall ((o2_3@@2 T@Ref) (f_12@@2 T@Field_8069_33376) ) (!  (=> (select (|PolymorphicMapType_12475_11986_33376#PolymorphicMapType_12475| (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@12) null (PredicateMaskField_8069 pm_f_3@@1))) o2_3@@2 f_12@@2) (= (select (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| Heap@@12) o2_3@@2 f_12@@2) (select (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| ExhaleHeap@@3) o2_3@@2 f_12@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| ExhaleHeap@@3) o2_3@@2 f_12@@2))
))) (forall ((o2_3@@3 T@Ref) (f_12@@3 T@Field_8069_33509) ) (!  (=> (select (|PolymorphicMapType_12475_11986_34687#PolymorphicMapType_12475| (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@12) null (PredicateMaskField_8069 pm_f_3@@1))) o2_3@@3 f_12@@3) (= (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@12) o2_3@@3 f_12@@3) (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| ExhaleHeap@@3) o2_3@@3 f_12@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| ExhaleHeap@@3) o2_3@@3 f_12@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@18) (IsPredicateField_8069_33467 pm_f_3@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11926) (ExhaleHeap@@4 T@PolymorphicMapType_11926) (Mask@@19 T@PolymorphicMapType_11947) (pm_f_3@@2 T@Field_8069_33376) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@19) (=> (and (HasDirectPerm_8069_33440 Mask@@19 null pm_f_3@@2) (IsWandField_8069_35214 pm_f_3@@2)) (and (and (and (and (forall ((o2_3@@4 T@Ref) (f_12@@4 T@Field_11986_53) ) (!  (=> (select (|PolymorphicMapType_12475_11986_53#PolymorphicMapType_12475| (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@13) null (WandMaskField_8069 pm_f_3@@2))) o2_3@@4 f_12@@4) (= (select (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@13) o2_3@@4 f_12@@4) (select (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| ExhaleHeap@@4) o2_3@@4 f_12@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| ExhaleHeap@@4) o2_3@@4 f_12@@4))
)) (forall ((o2_3@@5 T@Ref) (f_12@@5 T@Field_11999_12000) ) (!  (=> (select (|PolymorphicMapType_12475_11986_12000#PolymorphicMapType_12475| (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@13) null (WandMaskField_8069 pm_f_3@@2))) o2_3@@5 f_12@@5) (= (select (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| Heap@@13) o2_3@@5 f_12@@5) (select (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| ExhaleHeap@@4) o2_3@@5 f_12@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| ExhaleHeap@@4) o2_3@@5 f_12@@5))
))) (forall ((o2_3@@6 T@Ref) (f_12@@6 T@Field_15440_1500) ) (!  (=> (select (|PolymorphicMapType_12475_11986_1500#PolymorphicMapType_12475| (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@13) null (WandMaskField_8069 pm_f_3@@2))) o2_3@@6 f_12@@6) (= (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@13) o2_3@@6 f_12@@6) (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| ExhaleHeap@@4) o2_3@@6 f_12@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| ExhaleHeap@@4) o2_3@@6 f_12@@6))
))) (forall ((o2_3@@7 T@Ref) (f_12@@7 T@Field_8069_33376) ) (!  (=> (select (|PolymorphicMapType_12475_11986_33376#PolymorphicMapType_12475| (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@13) null (WandMaskField_8069 pm_f_3@@2))) o2_3@@7 f_12@@7) (= (select (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| Heap@@13) o2_3@@7 f_12@@7) (select (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| ExhaleHeap@@4) o2_3@@7 f_12@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| ExhaleHeap@@4) o2_3@@7 f_12@@7))
))) (forall ((o2_3@@8 T@Ref) (f_12@@8 T@Field_8069_33509) ) (!  (=> (select (|PolymorphicMapType_12475_11986_34687#PolymorphicMapType_12475| (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@13) null (WandMaskField_8069 pm_f_3@@2))) o2_3@@8 f_12@@8) (= (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@13) o2_3@@8 f_12@@8) (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| ExhaleHeap@@4) o2_3@@8 f_12@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| ExhaleHeap@@4) o2_3@@8 f_12@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@19) (IsWandField_8069_35214 pm_f_3@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.203:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11926) (ExhaleHeap@@5 T@PolymorphicMapType_11926) (Mask@@20 T@PolymorphicMapType_11947) (o_8@@0 T@Ref) (f_12@@9 T@Field_8069_33509) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_8069_39214 Mask@@20 o_8@@0 f_12@@9) (= (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@14) o_8@@0 f_12@@9) (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| ExhaleHeap@@5) o_8@@0 f_12@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| ExhaleHeap@@5) o_8@@0 f_12@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11926) (ExhaleHeap@@6 T@PolymorphicMapType_11926) (Mask@@21 T@PolymorphicMapType_11947) (o_8@@1 T@Ref) (f_12@@10 T@Field_8069_33376) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_8069_33440 Mask@@21 o_8@@1 f_12@@10) (= (select (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| Heap@@15) o_8@@1 f_12@@10) (select (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| ExhaleHeap@@6) o_8@@1 f_12@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| ExhaleHeap@@6) o_8@@1 f_12@@10))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11926) (ExhaleHeap@@7 T@PolymorphicMapType_11926) (Mask@@22 T@PolymorphicMapType_11947) (o_8@@2 T@Ref) (f_12@@11 T@Field_11999_12000) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_8069_12000 Mask@@22 o_8@@2 f_12@@11) (= (select (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| Heap@@16) o_8@@2 f_12@@11) (select (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| ExhaleHeap@@7) o_8@@2 f_12@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| ExhaleHeap@@7) o_8@@2 f_12@@11))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11926) (ExhaleHeap@@8 T@PolymorphicMapType_11926) (Mask@@23 T@PolymorphicMapType_11947) (o_8@@3 T@Ref) (f_12@@12 T@Field_11986_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_8069_53 Mask@@23 o_8@@3 f_12@@12) (= (select (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@17) o_8@@3 f_12@@12) (select (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| ExhaleHeap@@8) o_8@@3 f_12@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| ExhaleHeap@@8) o_8@@3 f_12@@12))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11926) (ExhaleHeap@@9 T@PolymorphicMapType_11926) (Mask@@24 T@PolymorphicMapType_11947) (o_8@@4 T@Ref) (f_12@@13 T@Field_15440_1500) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@24) (=> (HasDirectPerm_8069_1500 Mask@@24 o_8@@4 f_12@@13) (= (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@18) o_8@@4 f_12@@13) (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| ExhaleHeap@@9) o_8@@4 f_12@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@24) (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| ExhaleHeap@@9) o_8@@4 f_12@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_8069_33509) ) (! (= (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_8069_33376) ) (! (= (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_11999_12000) ) (! (= (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_11986_53) ) (! (= (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_15440_1500) ) (! (= (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_11926) (Heap1Heap@@0 T@PolymorphicMapType_11926) (a_2@@8 T@IArrayDomainType) (x@@6 Int) (y@@6 Int) ) (!  (=> (and (=  (and (and (<= 0 (|sk_f_lcp#condqp3| (|f_lcp#condqp3| Heap2Heap@@0 a_2@@8 x@@6 y@@6) (|f_lcp#condqp3| Heap1Heap@@0 a_2@@8 x@@6 y@@6))) (< (|sk_f_lcp#condqp3| (|f_lcp#condqp3| Heap2Heap@@0 a_2@@8 x@@6 y@@6) (|f_lcp#condqp3| Heap1Heap@@0 a_2@@8 x@@6 y@@6)) (length_1 a_2@@8))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_f_lcp#condqp3| (|f_lcp#condqp3| Heap2Heap@@0 a_2@@8 x@@6 y@@6) (|f_lcp#condqp3| Heap1Heap@@0 a_2@@8 x@@6 y@@6))) (< (|sk_f_lcp#condqp3| (|f_lcp#condqp3| Heap2Heap@@0 a_2@@8 x@@6 y@@6) (|f_lcp#condqp3| Heap1Heap@@0 a_2@@8 x@@6 y@@6)) (length_1 a_2@@8))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_f_lcp#condqp3| (|f_lcp#condqp3| Heap2Heap@@0 a_2@@8 x@@6 y@@6) (|f_lcp#condqp3| Heap1Heap@@0 a_2@@8 x@@6 y@@6))) (< (|sk_f_lcp#condqp3| (|f_lcp#condqp3| Heap2Heap@@0 a_2@@8 x@@6 y@@6) (|f_lcp#condqp3| Heap1Heap@@0 a_2@@8 x@@6 y@@6)) (length_1 a_2@@8))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap2Heap@@0) (loc a_2@@8 (|sk_f_lcp#condqp3| (|f_lcp#condqp3| Heap2Heap@@0 a_2@@8 x@@6 y@@6) (|f_lcp#condqp3| Heap1Heap@@0 a_2@@8 x@@6 y@@6))) val) (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap1Heap@@0) (loc a_2@@8 (|sk_f_lcp#condqp3| (|f_lcp#condqp3| Heap2Heap@@0 a_2@@8 x@@6 y@@6) (|f_lcp#condqp3| Heap1Heap@@0 a_2@@8 x@@6 y@@6))) val)))) (= (|f_lcp#condqp3| Heap2Heap@@0 a_2@@8 x@@6 y@@6) (|f_lcp#condqp3| Heap1Heap@@0 a_2@@8 x@@6 y@@6)))
 :qid |stdinbpl.618:15|
 :skolemid |56|
 :pattern ( (|f_lcp#condqp3| Heap2Heap@@0 a_2@@8 x@@6 y@@6) (|f_lcp#condqp3| Heap1Heap@@0 a_2@@8 x@@6 y@@6) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11926) (a_2@@9 T@IArrayDomainType) (x@@7 Int) (y@@7 Int) (n@@3 Int) ) (!  (and (= (f_loop Heap@@19 a_2@@9 x@@7 y@@7 n@@3) (|f_loop'| Heap@@19 a_2@@9 x@@7 y@@7 n@@3)) (dummyFunction_1919 (|f_loop#triggerStateless| a_2@@9 x@@7 y@@7 n@@3)))
 :qid |stdinbpl.376:15|
 :skolemid |35|
 :pattern ( (f_loop Heap@@19 a_2@@9 x@@7 y@@7 n@@3))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11926) (Mask@@25 T@PolymorphicMapType_11947) (a_2@@10 T@IArrayDomainType) ) (!  (=> (and (state Heap@@20 Mask@@25) (or (< AssumeFunctionsAbove 0) (|f_loop_simpl#trigger| (FrameFragment_1643 (|f_loop_simpl#condqp1| Heap@@20 a_2@@10)) a_2@@10))) (and (< 0 (|f_loop_simpl'| Heap@@20 a_2@@10)) (and (< (|f_loop_simpl'| Heap@@20 a_2@@10) (length_1 a_2@@10)) (not (= (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@20) (loc a_2@@10 (|f_loop_simpl'| Heap@@20 a_2@@10)) val) 0)))))
 :qid |stdinbpl.293:15|
 :skolemid |28|
 :pattern ( (state Heap@@20 Mask@@25) (|f_loop_simpl'| Heap@@20 a_2@@10))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11947) (SummandMask1 T@PolymorphicMapType_11947) (SummandMask2 T@PolymorphicMapType_11947) (o_2@@19 T@Ref) (f_4@@19 T@Field_8069_33509) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11947) (SummandMask1@@0 T@PolymorphicMapType_11947) (SummandMask2@@0 T@PolymorphicMapType_11947) (o_2@@20 T@Ref) (f_4@@20 T@Field_8069_33376) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11947) (SummandMask1@@1 T@PolymorphicMapType_11947) (SummandMask2@@1 T@PolymorphicMapType_11947) (o_2@@21 T@Ref) (f_4@@21 T@Field_11999_12000) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11947) (SummandMask1@@2 T@PolymorphicMapType_11947) (SummandMask2@@2 T@PolymorphicMapType_11947) (o_2@@22 T@Ref) (f_4@@22 T@Field_11986_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11947) (SummandMask1@@3 T@PolymorphicMapType_11947) (SummandMask2@@3 T@PolymorphicMapType_11947) (o_2@@23 T@Ref) (f_4@@23 T@Field_15440_1500) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11926) (a_2@@11 T@IArrayDomainType) (x@@8 Int) (y@@8 Int) ) (!  (and (= (f_lcp Heap@@21 a_2@@11 x@@8 y@@8) (|f_lcp'| Heap@@21 a_2@@11 x@@8 y@@8)) (dummyFunction_1919 (|f_lcp#triggerStateless| a_2@@11 x@@8 y@@8)))
 :qid |stdinbpl.591:15|
 :skolemid |52|
 :pattern ( (f_lcp Heap@@21 a_2@@11 x@@8 y@@8))
)))
(assert (forall ((a_2@@12 T@IArrayDomainType) ) (! (>= (length_1 a_2@@12) 0)
 :qid |stdinbpl.246:15|
 :skolemid |23|
 :pattern ( (length_1 a_2@@12))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11926) (Mask@@26 T@PolymorphicMapType_11947) (a_2@@13 T@IArrayDomainType) (x@@9 Int) (y@@9 Int) ) (!  (=> (state Heap@@22 Mask@@26) (= (|f_lcp'| Heap@@22 a_2@@13 x@@9 y@@9) (|f_lcp#frame| (FrameFragment_1643 (|f_lcp#condqp3| Heap@@22 a_2@@13 x@@9 y@@9)) a_2@@13 x@@9 y@@9)))
 :qid |stdinbpl.608:15|
 :skolemid |55|
 :pattern ( (state Heap@@22 Mask@@26) (|f_lcp'| Heap@@22 a_2@@13 x@@9 y@@9))
)))
(assert (forall ((Heap2Heap@@1 T@PolymorphicMapType_11926) (Heap1Heap@@1 T@PolymorphicMapType_11926) (a_2@@14 T@IArrayDomainType) ) (!  (=> (and (=  (and (and (<= 0 (|sk_f_loop_simpl#condqp1| (|f_loop_simpl#condqp1| Heap2Heap@@1 a_2@@14) (|f_loop_simpl#condqp1| Heap1Heap@@1 a_2@@14))) (< (|sk_f_loop_simpl#condqp1| (|f_loop_simpl#condqp1| Heap2Heap@@1 a_2@@14) (|f_loop_simpl#condqp1| Heap1Heap@@1 a_2@@14)) (length_1 a_2@@14))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_f_loop_simpl#condqp1| (|f_loop_simpl#condqp1| Heap2Heap@@1 a_2@@14) (|f_loop_simpl#condqp1| Heap1Heap@@1 a_2@@14))) (< (|sk_f_loop_simpl#condqp1| (|f_loop_simpl#condqp1| Heap2Heap@@1 a_2@@14) (|f_loop_simpl#condqp1| Heap1Heap@@1 a_2@@14)) (length_1 a_2@@14))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_f_loop_simpl#condqp1| (|f_loop_simpl#condqp1| Heap2Heap@@1 a_2@@14) (|f_loop_simpl#condqp1| Heap1Heap@@1 a_2@@14))) (< (|sk_f_loop_simpl#condqp1| (|f_loop_simpl#condqp1| Heap2Heap@@1 a_2@@14) (|f_loop_simpl#condqp1| Heap1Heap@@1 a_2@@14)) (length_1 a_2@@14))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap2Heap@@1) (loc a_2@@14 (|sk_f_loop_simpl#condqp1| (|f_loop_simpl#condqp1| Heap2Heap@@1 a_2@@14) (|f_loop_simpl#condqp1| Heap1Heap@@1 a_2@@14))) val) (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap1Heap@@1) (loc a_2@@14 (|sk_f_loop_simpl#condqp1| (|f_loop_simpl#condqp1| Heap2Heap@@1 a_2@@14) (|f_loop_simpl#condqp1| Heap1Heap@@1 a_2@@14))) val)))) (= (|f_loop_simpl#condqp1| Heap2Heap@@1 a_2@@14) (|f_loop_simpl#condqp1| Heap1Heap@@1 a_2@@14)))
 :qid |stdinbpl.287:15|
 :skolemid |27|
 :pattern ( (|f_loop_simpl#condqp1| Heap2Heap@@1 a_2@@14) (|f_loop_simpl#condqp1| Heap1Heap@@1 a_2@@14) (succHeapTrans Heap2Heap@@1 Heap1Heap@@1))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11926) (Mask@@27 T@PolymorphicMapType_11947) (a_2@@15 T@IArrayDomainType) (x@@10 Int) (y@@10 Int) ) (!  (=> (and (state Heap@@23 Mask@@27) (or (< AssumeFunctionsAbove 1) (|f_lcp#trigger| (FrameFragment_1643 (|f_lcp#condqp3| Heap@@23 a_2@@15 x@@10 y@@10)) a_2@@15 x@@10 y@@10))) (=> (and (and (<= 0 x@@10) (< x@@10 (length_1 a_2@@15))) (and (<= 0 y@@10) (< y@@10 (length_1 a_2@@15)))) (=> (and (< (+ x@@10 (|f_lcp'| Heap@@23 a_2@@15 x@@10 y@@10)) (length_1 a_2@@15)) (< (+ y@@10 (|f_lcp'| Heap@@23 a_2@@15 x@@10 y@@10)) (length_1 a_2@@15))) (not (= (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@23) (loc a_2@@15 (+ x@@10 (|f_lcp'| Heap@@23 a_2@@15 x@@10 y@@10))) val) (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@23) (loc a_2@@15 (+ y@@10 (|f_lcp'| Heap@@23 a_2@@15 x@@10 y@@10))) val))))))
 :qid |stdinbpl.628:15|
 :skolemid |58|
 :pattern ( (state Heap@@23 Mask@@27) (|f_lcp'| Heap@@23 a_2@@15 x@@10 y@@10))
)))
(assert (forall ((a_2@@16 T@IArrayDomainType) (i Int) ) (!  (and (= (first (loc a_2@@16 i)) a_2@@16) (= (second (loc a_2@@16 i)) i))
 :qid |stdinbpl.240:15|
 :skolemid |22|
 :pattern ( (loc a_2@@16 i))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11926) (o_7 T@Ref) (f_2 T@Field_8069_33376) (v T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_11926 (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@24) (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| Heap@@24) (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@24) (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@24) (store (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| Heap@@24) o_7 f_2 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11926 (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@24) (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| Heap@@24) (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@24) (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@24) (store (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| Heap@@24) o_7 f_2 v)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11926) (o_7@@0 T@Ref) (f_2@@0 T@Field_8069_33509) (v@@0 T@PolymorphicMapType_12475) ) (! (succHeap Heap@@25 (PolymorphicMapType_11926 (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@25) (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| Heap@@25) (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@25) (store (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@25) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11926 (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@25) (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| Heap@@25) (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@25) (store (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@25) o_7@@0 f_2@@0 v@@0) (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11926) (o_7@@1 T@Ref) (f_2@@1 T@Field_15440_1500) (v@@1 Int) ) (! (succHeap Heap@@26 (PolymorphicMapType_11926 (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@26) (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| Heap@@26) (store (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@26) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@26) (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11926 (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@26) (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| Heap@@26) (store (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@26) o_7@@1 f_2@@1 v@@1) (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@26) (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11926) (o_7@@2 T@Ref) (f_2@@2 T@Field_11999_12000) (v@@2 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_11926 (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@27) (store (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| Heap@@27) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@27) (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@27) (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11926 (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@27) (store (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| Heap@@27) o_7@@2 f_2@@2 v@@2) (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@27) (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@27) (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11926) (o_7@@3 T@Ref) (f_2@@3 T@Field_11986_53) (v@@3 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_11926 (store (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@28) o_7@@3 f_2@@3 v@@3) (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| Heap@@28) (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@28) (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@28) (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11926 (store (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@28) o_7@@3 f_2@@3 v@@3) (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| Heap@@28) (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@28) (|PolymorphicMapType_11926_8069_33553#PolymorphicMapType_11926| Heap@@28) (|PolymorphicMapType_11926_11986_33376#PolymorphicMapType_11926| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11926) (Mask@@28 T@PolymorphicMapType_11947) (a_2@@17 T@IArrayDomainType) ) (!  (=> (state Heap@@29 Mask@@28) (= (|f_loop_simpl'| Heap@@29 a_2@@17) (|f_loop_simpl#frame| (FrameFragment_1643 (|f_loop_simpl#condqp1| Heap@@29 a_2@@17)) a_2@@17)))
 :qid |stdinbpl.277:15|
 :skolemid |26|
 :pattern ( (state Heap@@29 Mask@@28) (|f_loop_simpl'| Heap@@29 a_2@@17))
)))
(assert (forall ((o_7@@4 T@Ref) (f_11 T@Field_11999_12000) (Heap@@30 T@PolymorphicMapType_11926) ) (!  (=> (select (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@30) o_7@@4 $allocated) (select (|PolymorphicMapType_11926_7911_53#PolymorphicMapType_11926| Heap@@30) (select (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| Heap@@30) o_7@@4 f_11) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11926_7914_7915#PolymorphicMapType_11926| Heap@@30) o_7@@4 f_11))
)))
(assert (forall ((p@@1 T@Field_8069_33376) (v_1@@0 T@FrameType) (q T@Field_8069_33376) (w@@0 T@FrameType) (r T@Field_8069_33376) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11986_11986 p@@1 v_1@@0 q w@@0) (InsidePredicate_11986_11986 q w@@0 r u)) (InsidePredicate_11986_11986 p@@1 v_1@@0 r u))
 :qid |stdinbpl.210:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11986_11986 p@@1 v_1@@0 q w@@0) (InsidePredicate_11986_11986 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11926) (Mask@@29 T@PolymorphicMapType_11947) (a_2@@18 T@IArrayDomainType) (x@@11 Int) (y@@11 Int) (n@@4 Int) ) (!  (=> (state Heap@@31 Mask@@29) (= (|f_loop'| Heap@@31 a_2@@18 x@@11 y@@11 n@@4) (|f_loop#frame| (FrameFragment_1643 (|f_loop#condqp2| Heap@@31 a_2@@18 x@@11 y@@11 n@@4)) a_2@@18 x@@11 y@@11 n@@4)))
 :qid |stdinbpl.393:15|
 :skolemid |38|
 :pattern ( (state Heap@@31 Mask@@29) (|f_loop'| Heap@@31 a_2@@18 x@@11 y@@11 n@@4))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_11926) (Mask@@30 T@PolymorphicMapType_11947) (a_2@@19 T@IArrayDomainType) (x@@12 Int) (y@@12 Int) (n@@5 Int) ) (!  (=> (and (state Heap@@32 Mask@@30) (or (< AssumeFunctionsAbove 2) (|f_loop#trigger| (FrameFragment_1643 (|f_loop#condqp2| Heap@@32 a_2@@19 x@@12 y@@12 n@@5)) a_2@@19 x@@12 y@@12 n@@5))) (=> (and (and (and (<= 0 x@@12) (< x@@12 (length_1 a_2@@19))) (and (<= 0 y@@12) (< y@@12 (length_1 a_2@@19)))) (and (<= 0 n@@5) (and (<= (+ x@@12 n@@5) (length_1 a_2@@19)) (<= (+ y@@12 n@@5) (length_1 a_2@@19))))) (and (<= 0 (|f_loop'| Heap@@32 a_2@@19 x@@12 y@@12 n@@5)) (and (<= (+ x@@12 (|f_loop'| Heap@@32 a_2@@19 x@@12 y@@12 n@@5)) (length_1 a_2@@19)) (<= (+ y@@12 (|f_loop'| Heap@@32 a_2@@19 x@@12 y@@12 n@@5)) (length_1 a_2@@19))))))
 :qid |stdinbpl.409:15|
 :skolemid |40|
 :pattern ( (state Heap@@32 Mask@@30) (|f_loop'| Heap@@32 a_2@@19 x@@12 y@@12 n@@5))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun a_2@@20 () T@IArrayDomainType)
(declare-fun QPMask@0 () T@PolymorphicMapType_11947)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun x@@13 () Int)
(declare-fun y@@13 () Int)
(declare-fun n@@6 () Int)
(declare-fun Result@0 () Int)
(declare-fun Heap@@33 () T@PolymorphicMapType_11926)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(set-info :boogie-vc-id |f_loop#definedness|)
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
 (=> (= (ControlFlow 0 0) 33) (let ((anon15_Then_correct  (and (=> (= (ControlFlow 0 13) (- 0 21)) (forall ((k_5 Int) (k_5_1 Int) ) (!  (=> (and (and (and (and (not (= k_5 k_5_1)) (and (<= 0 k_5) (< k_5 (length_1 a_2@@20)))) (and (<= 0 k_5_1) (< k_5_1 (length_1 a_2@@20)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@20 k_5) (loc a_2@@20 k_5_1))))
 :qid |stdinbpl.513:23|
 :skolemid |48|
 :pattern ( (neverTriggered3 k_5) (neverTriggered3 k_5_1))
))) (=> (forall ((k_5@@0 Int) (k_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= k_5@@0 k_5_1@@0)) (and (<= 0 k_5@@0) (< k_5@@0 (length_1 a_2@@20)))) (and (<= 0 k_5_1@@0) (< k_5_1@@0 (length_1 a_2@@20)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@20 k_5@@0) (loc a_2@@20 k_5_1@@0))))
 :qid |stdinbpl.513:23|
 :skolemid |48|
 :pattern ( (neverTriggered3 k_5@@0) (neverTriggered3 k_5_1@@0))
)) (and (=> (= (ControlFlow 0 13) (- 0 20)) (forall ((k_5@@1 Int) ) (!  (=> (and (<= 0 k_5@@1) (< k_5@@1 (length_1 a_2@@20))) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| QPMask@0) (loc a_2@@20 k_5@@1) val) NoPerm)))
 :qid |stdinbpl.520:23|
 :skolemid |49|
 :pattern ( (loc a_2@@20 k_5@@1))
 :pattern ( (loc a_2@@20 k_5@@1))
))) (=> (forall ((k_5@@2 Int) ) (!  (=> (and (<= 0 k_5@@2) (< k_5@@2 (length_1 a_2@@20))) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| QPMask@0) (loc a_2@@20 k_5@@2) val) NoPerm)))
 :qid |stdinbpl.520:23|
 :skolemid |49|
 :pattern ( (loc a_2@@20 k_5@@2))
 :pattern ( (loc a_2@@20 k_5@@2))
)) (=> (and (forall ((k_5@@3 Int) ) (!  (=> (and (and (<= 0 k_5@@3) (< k_5@@3 (length_1 a_2@@20))) (< NoPerm FullPerm)) (and (qpRange3 (loc a_2@@20 k_5@@3)) (= (invRecv3 (loc a_2@@20 k_5@@3)) k_5@@3)))
 :qid |stdinbpl.526:28|
 :skolemid |50|
 :pattern ( (loc a_2@@20 k_5@@3))
 :pattern ( (loc a_2@@20 k_5@@3))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv3 o_4)) (< (invRecv3 o_4) (length_1 a_2@@20))) (and (< NoPerm FullPerm) (qpRange3 o_4))) (= (loc a_2@@20 (invRecv3 o_4)) o_4))
 :qid |stdinbpl.530:28|
 :skolemid |51|
 :pattern ( (invRecv3 o_4))
))) (and (=> (= (ControlFlow 0 13) (- 0 19)) (<= 0 x@@13)) (=> (<= 0 x@@13) (and (=> (= (ControlFlow 0 13) (- 0 18)) (< x@@13 (length_1 a_2@@20))) (=> (< x@@13 (length_1 a_2@@20)) (and (=> (= (ControlFlow 0 13) (- 0 17)) (<= 0 y@@13)) (=> (<= 0 y@@13) (and (=> (= (ControlFlow 0 13) (- 0 16)) (< y@@13 (length_1 a_2@@20))) (=> (< y@@13 (length_1 a_2@@20)) (and (=> (= (ControlFlow 0 13) (- 0 15)) (<= 0 (+ n@@6 1))) (=> (<= 0 (+ n@@6 1)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (<= (+ x@@13 (+ n@@6 1)) (length_1 a_2@@20))) (=> (<= (+ x@@13 (+ n@@6 1)) (length_1 a_2@@20)) (=> (= (ControlFlow 0 13) (- 0 12)) (<= (+ y@@13 (+ n@@6 1)) (length_1 a_2@@20))))))))))))))))))))))
(let ((anon16_Else_correct true))
(let ((anon16_Then_correct  (=> (and (< (+ x@@13 Result@0) (length_1 a_2@@20)) (< (+ y@@13 Result@0) (length_1 a_2@@20))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (HasDirectPerm_8069_1500 QPMask@0 (loc a_2@@20 (+ x@@13 Result@0)) val)) (=> (HasDirectPerm_8069_1500 QPMask@0 (loc a_2@@20 (+ x@@13 Result@0)) val) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_8069_1500 QPMask@0 (loc a_2@@20 (+ y@@13 Result@0)) val)) (=> (HasDirectPerm_8069_1500 QPMask@0 (loc a_2@@20 (+ y@@13 Result@0)) val) (=> (= (ControlFlow 0 3) (- 0 2)) (not (= (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@33) (loc a_2@@20 (+ x@@13 Result@0)) val) (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@33) (loc a_2@@20 (+ y@@13 Result@0)) val)))))))))))
(let ((anon9_correct  (=> (= Result@0 (ite  (and (< (+ x@@13 n@@6) (length_1 a_2@@20)) (and (< (+ y@@13 n@@6) (length_1 a_2@@20)) (= (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@33) (loc a_2@@20 (+ x@@13 n@@6)) val) (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@33) (loc a_2@@20 (+ y@@13 n@@6)) val)))) (f_loop Heap@@33 a_2@@20 x@@13 y@@13 (+ n@@6 1)) n@@6)) (and (=> (= (ControlFlow 0 7) (- 0 10)) (<= 0 Result@0)) (=> (<= 0 Result@0) (and (=> (= (ControlFlow 0 7) (- 0 9)) (<= (+ x@@13 Result@0) (length_1 a_2@@20))) (=> (<= (+ x@@13 Result@0) (length_1 a_2@@20)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= (+ y@@13 Result@0) (length_1 a_2@@20))) (=> (<= (+ y@@13 Result@0) (length_1 a_2@@20)) (and (=> (= (ControlFlow 0 7) 3) anon16_Then_correct) (=> (= (ControlFlow 0 7) 6) anon16_Else_correct)))))))))))
(let ((anon15_Else_correct  (=> (and (|f_loop#trigger| (FrameFragment_1643 (|f_loop#condqp2| Heap@@33 a_2@@20 x@@13 y@@13 (+ n@@6 1))) a_2@@20 x@@13 y@@13 (+ n@@6 1)) (= (ControlFlow 0 22) 7)) anon9_correct)))
(let ((anon14_Then_correct  (=> (and (< (+ x@@13 n@@6) (length_1 a_2@@20)) (and (< (+ y@@13 n@@6) (length_1 a_2@@20)) (= (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@33) (loc a_2@@20 (+ x@@13 n@@6)) val) (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@33) (loc a_2@@20 (+ y@@13 n@@6)) val)))) (and (=> (= (ControlFlow 0 23) 13) anon15_Then_correct) (=> (= (ControlFlow 0 23) 22) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (not (and (< (+ x@@13 n@@6) (length_1 a_2@@20)) (and (< (+ y@@13 n@@6) (length_1 a_2@@20)) (= (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@33) (loc a_2@@20 (+ x@@13 n@@6)) val) (select (|PolymorphicMapType_11926_8069_1500#PolymorphicMapType_11926| Heap@@33) (loc a_2@@20 (+ y@@13 n@@6)) val))))) (= (ControlFlow 0 11) 7)) anon9_correct)))
(let ((anon13_Else_correct  (=> (<= (length_1 a_2@@20) (+ y@@13 n@@6)) (and (=> (= (ControlFlow 0 28) 23) anon14_Then_correct) (=> (= (ControlFlow 0 28) 11) anon14_Else_correct)))))
(let ((anon13_Then_correct  (=> (< (+ y@@13 n@@6) (length_1 a_2@@20)) (and (=> (= (ControlFlow 0 25) (- 0 27)) (HasDirectPerm_8069_1500 QPMask@0 (loc a_2@@20 (+ x@@13 n@@6)) val)) (=> (HasDirectPerm_8069_1500 QPMask@0 (loc a_2@@20 (+ x@@13 n@@6)) val) (and (=> (= (ControlFlow 0 25) (- 0 26)) (HasDirectPerm_8069_1500 QPMask@0 (loc a_2@@20 (+ y@@13 n@@6)) val)) (=> (HasDirectPerm_8069_1500 QPMask@0 (loc a_2@@20 (+ y@@13 n@@6)) val) (and (=> (= (ControlFlow 0 25) 23) anon14_Then_correct) (=> (= (ControlFlow 0 25) 11) anon14_Else_correct)))))))))
(let ((anon12_Then_correct  (=> (< (+ x@@13 n@@6) (length_1 a_2@@20)) (and (=> (= (ControlFlow 0 29) 25) anon13_Then_correct) (=> (= (ControlFlow 0 29) 28) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (<= (length_1 a_2@@20) (+ x@@13 n@@6)) (and (=> (= (ControlFlow 0 24) 23) anon14_Then_correct) (=> (= (ControlFlow 0 24) 11) anon14_Else_correct)))))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 30) (- 0 31)) (forall ((k_4_1 Int) (k_4_2 Int) ) (!  (=> (and (and (and (and (not (= k_4_1 k_4_2)) (and (<= 0 k_4_1) (< k_4_1 (length_1 a_2@@20)))) (and (<= 0 k_4_2) (< k_4_2 (length_1 a_2@@20)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@20 k_4_1) (loc a_2@@20 k_4_2))))
 :qid |stdinbpl.447:15|
 :skolemid |42|
))) (=> (forall ((k_4_1@@0 Int) (k_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_4_1@@0 k_4_2@@0)) (and (<= 0 k_4_1@@0) (< k_4_1@@0 (length_1 a_2@@20)))) (and (<= 0 k_4_2@@0) (< k_4_2@@0 (length_1 a_2@@20)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@20 k_4_1@@0) (loc a_2@@20 k_4_2@@0))))
 :qid |stdinbpl.447:15|
 :skolemid |42|
)) (=> (and (and (forall ((k_4_1@@1 Int) ) (!  (=> (and (and (<= 0 k_4_1@@1) (< k_4_1@@1 (length_1 a_2@@20))) (< NoPerm FullPerm)) (and (qpRange2 (loc a_2@@20 k_4_1@@1)) (= (invRecv2 (loc a_2@@20 k_4_1@@1)) k_4_1@@1)))
 :qid |stdinbpl.453:22|
 :skolemid |43|
 :pattern ( (loc a_2@@20 k_4_1@@1))
 :pattern ( (loc a_2@@20 k_4_1@@1))
)) (forall ((o_4@@0 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (length_1 a_2@@20))) (< NoPerm FullPerm)) (qpRange2 o_4@@0)) (= (loc a_2@@20 (invRecv2 o_4@@0)) o_4@@0))
 :qid |stdinbpl.457:22|
 :skolemid |44|
 :pattern ( (invRecv2 o_4@@0))
))) (and (forall ((k_4_1@@2 Int) ) (!  (=> (and (<= 0 k_4_1@@2) (< k_4_1@@2 (length_1 a_2@@20))) (not (= (loc a_2@@20 k_4_1@@2) null)))
 :qid |stdinbpl.463:22|
 :skolemid |45|
 :pattern ( (loc a_2@@20 k_4_1@@2))
 :pattern ( (loc a_2@@20 k_4_1@@2))
)) (forall ((o_4@@1 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_4@@1)) (< (invRecv2 o_4@@1) (length_1 a_2@@20))) (< NoPerm FullPerm)) (qpRange2 o_4@@1)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@20 (invRecv2 o_4@@1)) o_4@@1)) (= (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| QPMask@0) o_4@@1 val) (+ (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| ZeroMask) o_4@@1 val) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv2 o_4@@1)) (< (invRecv2 o_4@@1) (length_1 a_2@@20))) (< NoPerm FullPerm)) (qpRange2 o_4@@1))) (= (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| QPMask@0) o_4@@1 val) (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| ZeroMask) o_4@@1 val))))
 :qid |stdinbpl.469:22|
 :skolemid |46|
 :pattern ( (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| QPMask@0) o_4@@1 val))
)))) (=> (and (and (and (and (and (and (and (forall ((o_4@@2 T@Ref) (f_5 T@Field_11986_53) ) (!  (=> true (= (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| ZeroMask) o_4@@2 f_5) (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| QPMask@0) o_4@@2 f_5)))
 :qid |stdinbpl.473:29|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| ZeroMask) o_4@@2 f_5))
 :pattern ( (select (|PolymorphicMapType_11947_8069_53#PolymorphicMapType_11947| QPMask@0) o_4@@2 f_5))
)) (forall ((o_4@@3 T@Ref) (f_5@@0 T@Field_11999_12000) ) (!  (=> true (= (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| ZeroMask) o_4@@3 f_5@@0) (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| QPMask@0) o_4@@3 f_5@@0)))
 :qid |stdinbpl.473:29|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| ZeroMask) o_4@@3 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_11947_8069_12000#PolymorphicMapType_11947| QPMask@0) o_4@@3 f_5@@0))
))) (forall ((o_4@@4 T@Ref) (f_5@@1 T@Field_15440_1500) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| ZeroMask) o_4@@4 f_5@@1) (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| QPMask@0) o_4@@4 f_5@@1)))
 :qid |stdinbpl.473:29|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| ZeroMask) o_4@@4 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_11947_8069_1500#PolymorphicMapType_11947| QPMask@0) o_4@@4 f_5@@1))
))) (forall ((o_4@@5 T@Ref) (f_5@@2 T@Field_8069_33376) ) (!  (=> true (= (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| ZeroMask) o_4@@5 f_5@@2) (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| QPMask@0) o_4@@5 f_5@@2)))
 :qid |stdinbpl.473:29|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| ZeroMask) o_4@@5 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_11947_8069_33376#PolymorphicMapType_11947| QPMask@0) o_4@@5 f_5@@2))
))) (forall ((o_4@@6 T@Ref) (f_5@@3 T@Field_8069_33509) ) (!  (=> true (= (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| ZeroMask) o_4@@6 f_5@@3) (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| QPMask@0) o_4@@6 f_5@@3)))
 :qid |stdinbpl.473:29|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| ZeroMask) o_4@@6 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_11947_8069_37631#PolymorphicMapType_11947| QPMask@0) o_4@@6 f_5@@3))
))) (state Heap@@33 QPMask@0)) (and (state Heap@@33 QPMask@0) (<= 0 x@@13))) (and (and (and (< x@@13 (length_1 a_2@@20)) (<= 0 y@@13)) (and (< y@@13 (length_1 a_2@@20)) (state Heap@@33 QPMask@0))) (and (and (<= 0 n@@6) (<= (+ x@@13 n@@6) (length_1 a_2@@20))) (and (<= (+ y@@13 n@@6) (length_1 a_2@@20)) (state Heap@@33 QPMask@0))))) (and (=> (= (ControlFlow 0 30) 29) anon12_Then_correct) (=> (= (ControlFlow 0 30) 24) anon12_Else_correct))))))))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@33 ZeroMask) (=> (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 2)) (and (=> (= (ControlFlow 0 32) 1) anon11_Then_correct) (=> (= (ControlFlow 0 32) 30) anon11_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 33) 32) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
