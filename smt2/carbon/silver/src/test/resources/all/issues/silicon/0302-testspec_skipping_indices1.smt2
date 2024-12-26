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
(declare-sort T@Field_12046_53 0)
(declare-sort T@Field_12059_12060 0)
(declare-sort T@Field_15504_1456 0)
(declare-sort T@Field_12046_34806 0)
(declare-sort T@Field_12046_34673 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12007 0)) (((PolymorphicMapType_12007 (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| (Array T@Ref T@Field_15504_1456 Real)) (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| (Array T@Ref T@Field_12046_53 Real)) (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| (Array T@Ref T@Field_12059_12060 Real)) (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| (Array T@Ref T@Field_12046_34673 Real)) (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| (Array T@Ref T@Field_12046_34806 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12535 0)) (((PolymorphicMapType_12535 (|PolymorphicMapType_12535_12046_53#PolymorphicMapType_12535| (Array T@Ref T@Field_12046_53 Bool)) (|PolymorphicMapType_12535_12046_12060#PolymorphicMapType_12535| (Array T@Ref T@Field_12059_12060 Bool)) (|PolymorphicMapType_12535_12046_1456#PolymorphicMapType_12535| (Array T@Ref T@Field_15504_1456 Bool)) (|PolymorphicMapType_12535_12046_34673#PolymorphicMapType_12535| (Array T@Ref T@Field_12046_34673 Bool)) (|PolymorphicMapType_12535_12046_35984#PolymorphicMapType_12535| (Array T@Ref T@Field_12046_34806 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11986 0)) (((PolymorphicMapType_11986 (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| (Array T@Ref T@Field_12046_53 Bool)) (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| (Array T@Ref T@Field_12059_12060 T@Ref)) (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| (Array T@Ref T@Field_15504_1456 Int)) (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| (Array T@Ref T@Field_12046_34806 T@PolymorphicMapType_12535)) (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| (Array T@Ref T@Field_12046_34673 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12046_53)
(declare-fun val () T@Field_15504_1456)
(declare-fun succHeap (T@PolymorphicMapType_11986 T@PolymorphicMapType_11986) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11986 T@PolymorphicMapType_11986) Bool)
(declare-fun state (T@PolymorphicMapType_11986 T@PolymorphicMapType_12007) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12007) Bool)
(declare-fun |p'| (T@PolymorphicMapType_11986 Int Int Real) Real)
(declare-fun dummyFunction_645 (Real) Bool)
(declare-fun |p#triggerStateless| (Int Int Real) Real)
(declare-fun ZeroPMask () T@PolymorphicMapType_12535)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11986 T@PolymorphicMapType_11986 T@PolymorphicMapType_12007) Bool)
(declare-fun IsPredicateField_12046_34764 (T@Field_12046_34673) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12046 (T@Field_12046_34673) T@Field_12046_34806)
(declare-fun HasDirectPerm_12046_34737 (T@PolymorphicMapType_12007 T@Ref T@Field_12046_34673) Bool)
(declare-fun IsWandField_12046_36511 (T@Field_12046_34673) Bool)
(declare-fun WandMaskField_12046 (T@Field_12046_34673) T@Field_12046_34806)
(declare-fun dummyHeap () T@PolymorphicMapType_11986)
(declare-fun ZeroMask () T@PolymorphicMapType_12007)
(declare-fun InsidePredicate_12046_12046 (T@Field_12046_34673 T@FrameType T@Field_12046_34673 T@FrameType) Bool)
(declare-sort T@ArrayDomainType 0)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun ref_to_array (T@Ref) T@ArrayDomainType)
(declare-fun ref_to_index (T@Ref) Int)
(declare-fun IsPredicateField_9052_1456 (T@Field_15504_1456) Bool)
(declare-fun IsWandField_9052_1456 (T@Field_15504_1456) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9052_40057 (T@Field_12046_34806) Bool)
(declare-fun IsWandField_9052_40073 (T@Field_12046_34806) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9052_12060 (T@Field_12059_12060) Bool)
(declare-fun IsWandField_9052_12060 (T@Field_12059_12060) Bool)
(declare-fun IsPredicateField_9052_53 (T@Field_12046_53) Bool)
(declare-fun IsWandField_9052_53 (T@Field_12046_53) Bool)
(declare-fun |p#frame| (T@FrameType Int Int Real) Real)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |p#trigger_1| (T@FrameType Int Int Real) Bool)
(declare-fun HasDirectPerm_12046_40511 (T@PolymorphicMapType_12007 T@Ref T@Field_12046_34806) Bool)
(declare-fun HasDirectPerm_12046_1456 (T@PolymorphicMapType_12007 T@Ref T@Field_15504_1456) Bool)
(declare-fun HasDirectPerm_12046_12060 (T@PolymorphicMapType_12007 T@Ref T@Field_12059_12060) Bool)
(declare-fun HasDirectPerm_12046_53 (T@PolymorphicMapType_12007 T@Ref T@Field_12046_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12007 T@PolymorphicMapType_12007 T@PolymorphicMapType_12007) Bool)
(declare-fun p@@1 (T@PolymorphicMapType_11986 Int Int Real) Real)
(declare-fun length_1 (T@ArrayDomainType) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_11986) (Heap1 T@PolymorphicMapType_11986) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11986) (Mask T@PolymorphicMapType_12007) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11986) (Heap1@@0 T@PolymorphicMapType_11986) (Heap2 T@PolymorphicMapType_11986) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11986) (q_1 Int) (size_1 Int) (rdAmount Real) ) (! (dummyFunction_645 (|p#triggerStateless| q_1 size_1 rdAmount))
 :qid |stdinbpl.262:15|
 :skolemid |25|
 :pattern ( (|p'| Heap@@0 q_1 size_1 rdAmount))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12046_34806) ) (!  (not (select (|PolymorphicMapType_12535_12046_35984#PolymorphicMapType_12535| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12535_12046_35984#PolymorphicMapType_12535| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12046_34673) ) (!  (not (select (|PolymorphicMapType_12535_12046_34673#PolymorphicMapType_12535| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12535_12046_34673#PolymorphicMapType_12535| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_15504_1456) ) (!  (not (select (|PolymorphicMapType_12535_12046_1456#PolymorphicMapType_12535| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12535_12046_1456#PolymorphicMapType_12535| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12059_12060) ) (!  (not (select (|PolymorphicMapType_12535_12046_12060#PolymorphicMapType_12535| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12535_12046_12060#PolymorphicMapType_12535| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12046_53) ) (!  (not (select (|PolymorphicMapType_12535_12046_53#PolymorphicMapType_12535| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12535_12046_53#PolymorphicMapType_12535| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11986) (ExhaleHeap T@PolymorphicMapType_11986) (Mask@@0 T@PolymorphicMapType_12007) (pm_f_21 T@Field_12046_34673) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12046_34737 Mask@@0 null pm_f_21) (IsPredicateField_12046_34764 pm_f_21)) (= (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@1) null (PredicateMaskField_12046 pm_f_21)) (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| ExhaleHeap) null (PredicateMaskField_12046 pm_f_21)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_12046_34764 pm_f_21) (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| ExhaleHeap) null (PredicateMaskField_12046 pm_f_21)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11986) (ExhaleHeap@@0 T@PolymorphicMapType_11986) (Mask@@1 T@PolymorphicMapType_12007) (pm_f_21@@0 T@Field_12046_34673) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12046_34737 Mask@@1 null pm_f_21@@0) (IsWandField_12046_36511 pm_f_21@@0)) (= (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@2) null (WandMaskField_12046 pm_f_21@@0)) (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| ExhaleHeap@@0) null (WandMaskField_12046 pm_f_21@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_12046_36511 pm_f_21@@0) (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| ExhaleHeap@@0) null (WandMaskField_12046 pm_f_21@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11986) (ExhaleHeap@@1 T@PolymorphicMapType_11986) (Mask@@2 T@PolymorphicMapType_12007) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@3) o_38 $allocated) (select (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| ExhaleHeap@@1) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| ExhaleHeap@@1) o_38 $allocated))
)))
(assert (forall ((p T@Field_12046_34673) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12046_12046 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12046_12046 p v_1 p w))
)))
(assert (forall ((a_2 T@ArrayDomainType) (i Int) ) (!  (=> (<= 0 i) (and (= (ref_to_array (loc a_2 i)) a_2) (= (ref_to_index (loc a_2 i)) i)))
 :qid |stdinbpl.232:15|
 :skolemid |22|
 :pattern ( (loc a_2 i))
)))
(assert  (not (IsPredicateField_9052_1456 val)))
(assert  (not (IsWandField_9052_1456 val)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11986) (ExhaleHeap@@2 T@PolymorphicMapType_11986) (Mask@@3 T@PolymorphicMapType_12007) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@4 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_12007) (o_2@@4 T@Ref) (f_4@@4 T@Field_12046_34806) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_9052_40057 f_4@@4))) (not (IsWandField_9052_40073 f_4@@4))) (<= (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_12007) (o_2@@5 T@Ref) (f_4@@5 T@Field_12046_34673) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_12046_34764 f_4@@5))) (not (IsWandField_12046_36511 f_4@@5))) (<= (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_12007) (o_2@@6 T@Ref) (f_4@@6 T@Field_12059_12060) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_9052_12060 f_4@@6))) (not (IsWandField_9052_12060 f_4@@6))) (<= (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_12007) (o_2@@7 T@Ref) (f_4@@7 T@Field_12046_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_9052_53 f_4@@7))) (not (IsWandField_9052_53 f_4@@7))) (<= (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_12007) (o_2@@8 T@Ref) (f_4@@8 T@Field_15504_1456) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9052_1456 f_4@@8))) (not (IsWandField_9052_1456 f_4@@8))) (<= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11986) (Mask@@9 T@PolymorphicMapType_12007) (q_1@@0 Int) (size_1@@0 Int) (rdAmount@@0 Real) ) (!  (=> (state Heap@@5 Mask@@9) (= (|p'| Heap@@5 q_1@@0 size_1@@0 rdAmount@@0) (|p#frame| EmptyFrame q_1@@0 size_1@@0 rdAmount@@0)))
 :qid |stdinbpl.269:15|
 :skolemid |26|
 :pattern ( (state Heap@@5 Mask@@9) (|p'| Heap@@5 q_1@@0 size_1@@0 rdAmount@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11986) (Mask@@10 T@PolymorphicMapType_12007) (q_1@@1 Int) (size_1@@1 Int) (rdAmount@@1 Real) ) (!  (=> (and (state Heap@@6 Mask@@10) (or (< AssumeFunctionsAbove 0) (|p#trigger_1| EmptyFrame q_1@@1 size_1@@1 rdAmount@@1))) (and (or (and (not (= (mod q_1@@1 2) 0)) (and (>= size_1@@1 1) (and (>= q_1@@1 0) (and (>= size_1@@1 (+ 1 q_1@@1)) (and (or (not (= q_1@@1 0)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) FullPerm)) (or (= q_1@@1 0) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) FullPerm))))))) (or (and (not (= (mod q_1@@1 2) 0)) (and (= (mod (+ q_1@@1 1) 2) 0) (and (>= size_1@@1 (+ 2 q_1@@1)) (and (>= q_1@@1 0) (and (>= q_1@@1 (- 0 1)) (and (>= size_1@@1 (+ 1 q_1@@1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) FullPerm))))))) (or (and (not (= (mod q_1@@1 2) 0)) (and (= (mod q_1@@1 2) 0) (and (>= size_1@@1 (+ 1 q_1@@1)) (and (>= q_1@@1 0) (and (>= q_1@@1 0) (and (>= size_1@@1 (+ 1 q_1@@1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) FullPerm))))))) (or (and (not (= (mod q_1@@1 2) 0)) (and (= (mod (+ q_1@@1 2) 2) 0) (and (>= size_1@@1 (+ 3 q_1@@1)) (and (>= q_1@@1 0) (and (>= q_1@@1 (- 0 2)) (and (>= size_1@@1 (+ 1 q_1@@1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) FullPerm))))))) (or (and (not (= (mod q_1@@1 2) 0)) (and (= (mod (+ q_1@@1 1) 2) 0) (and (>= size_1@@1 (+ 2 q_1@@1)) (and (>= q_1@@1 0) (and (>= q_1@@1 (- 0 1)) (and (>= size_1@@1 (+ 1 q_1@@1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) FullPerm))))))) (or (or (and (not (= (mod (+ q_1@@1 1) 2) 0)) (and (>= size_1@@1 1) (and (>= q_1@@1 (- 0 1)) (and (>= size_1@@1 (+ 2 q_1@@1)) (and (or (not (= q_1@@1 0)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) rdAmount@@1)) (and (or (= q_1@@1 0) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) NoPerm)) (or (= q_1@@1 0) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) NoPerm)))))))) (or (and (not (= (mod (+ q_1@@1 1) 2) 0)) (and (= (mod (+ q_1@@1 1) 2) 0) (and (>= size_1@@1 (+ 2 q_1@@1)) (and (>= q_1@@1 (- 0 1)) (and (>= q_1@@1 (- 0 1)) (and (>= size_1@@1 (+ 2 q_1@@1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) NoPerm))))))) (or (and (not (= (mod (+ q_1@@1 1) 2) 0)) (and (= (mod q_1@@1 2) 0) (and (>= size_1@@1 (+ 1 q_1@@1)) (and (>= q_1@@1 (- 0 1)) (and (>= q_1@@1 0) (and (>= size_1@@1 (+ 2 q_1@@1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) rdAmount@@1))))))) (or (and (not (= (mod (+ q_1@@1 1) 2) 0)) (and (= (mod (+ q_1@@1 2) 2) 0) (and (>= size_1@@1 (+ 3 q_1@@1)) (and (>= q_1@@1 (- 0 1)) (and (>= q_1@@1 (- 0 2)) (and (>= size_1@@1 (+ 2 q_1@@1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) NoPerm))))))) (and (not (= (mod (+ q_1@@1 1) 2) 0)) (and (= (mod (+ q_1@@1 1) 2) 0) (and (>= size_1@@1 (+ 2 q_1@@1)) (and (>= q_1@@1 (- 0 1)) (and (>= q_1@@1 (- 0 1)) (and (>= size_1@@1 (+ 2 q_1@@1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) NoPerm))))))))))) (or (or (and (>= size_1@@1 1) (and (>= size_1@@1 2) (and (or (not (= q_1@@1 0)) (or (= q_1@@1 1) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) rdAmount@@1))) (and (or (= q_1@@1 0) (or (= q_1@@1 1) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) NoPerm))) (and (or (= q_1@@1 1) (or (= q_1@@1 0) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) NoPerm))) (and (or (not (= q_1@@1 1)) (or (not (= q_1@@1 0)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) FullPerm))) (or (not (= q_1@@1 1)) (or (= q_1@@1 0) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) FullPerm))))))))) (or (and (= (mod (+ q_1@@1 1) 2) 0) (and (>= size_1@@1 (+ 2 q_1@@1)) (and (>= q_1@@1 (- 0 1)) (and (>= size_1@@1 2) (and (or (= q_1@@1 1) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) NoPerm)) (or (not (= q_1@@1 1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) FullPerm))))))) (or (and (= (mod q_1@@1 2) 0) (and (>= size_1@@1 (+ 1 q_1@@1)) (and (>= q_1@@1 0) (and (>= size_1@@1 2) (and (or (= q_1@@1 1) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) rdAmount@@1)) (or (not (= q_1@@1 1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) FullPerm))))))) (or (and (= (mod (+ q_1@@1 2) 2) 0) (and (>= size_1@@1 (+ 3 q_1@@1)) (and (>= q_1@@1 (- 0 2)) (and (>= size_1@@1 2) (and (or (= q_1@@1 1) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) NoPerm)) (or (not (= q_1@@1 1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) FullPerm))))))) (and (= (mod (+ q_1@@1 1) 2) 0) (and (>= size_1@@1 (+ 2 q_1@@1)) (and (>= q_1@@1 (- 0 1)) (and (>= size_1@@1 2) (and (or (= q_1@@1 1) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) NoPerm)) (or (not (= q_1@@1 1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) FullPerm))))))))))) (or (and (not (= (mod (+ q_1@@1 2) 2) 0)) (and (>= size_1@@1 1) (and (>= q_1@@1 (- 0 2)) (and (>= size_1@@1 (+ 3 q_1@@1)) (and (or (not (= q_1@@1 0)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) rdAmount@@1)) (and (or (= q_1@@1 0) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) NoPerm)) (or (= q_1@@1 0) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) NoPerm)))))))) (or (and (not (= (mod (+ q_1@@1 2) 2) 0)) (and (= (mod (+ q_1@@1 1) 2) 0) (and (>= size_1@@1 (+ 2 q_1@@1)) (and (>= q_1@@1 (- 0 2)) (and (>= q_1@@1 (- 0 1)) (and (>= size_1@@1 (+ 3 q_1@@1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) NoPerm))))))) (or (and (not (= (mod (+ q_1@@1 2) 2) 0)) (and (= (mod q_1@@1 2) 0) (and (>= size_1@@1 (+ 1 q_1@@1)) (and (>= q_1@@1 (- 0 2)) (and (>= q_1@@1 0) (and (>= size_1@@1 (+ 3 q_1@@1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) rdAmount@@1))))))) (or (and (not (= (mod (+ q_1@@1 2) 2) 0)) (and (= (mod (+ q_1@@1 2) 2) 0) (and (>= size_1@@1 (+ 3 q_1@@1)) (and (>= q_1@@1 (- 0 2)) (and (>= q_1@@1 (- 0 2)) (and (>= size_1@@1 (+ 3 q_1@@1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) NoPerm))))))) (and (not (= (mod (+ q_1@@1 2) 2) 0)) (and (= (mod (+ q_1@@1 1) 2) 0) (and (>= size_1@@1 (+ 2 q_1@@1)) (and (>= q_1@@1 (- 0 2)) (and (>= q_1@@1 (- 0 1)) (and (>= size_1@@1 (+ 3 q_1@@1)) (= (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1) NoPerm)))))))))))))))))) (and (or (= (mod (+ q_1@@1 1) 2) 0) (or (< size_1@@1 1) (or (< q_1@@1 (- 0 1)) (or (< size_1@@1 (+ 2 q_1@@1)) (and (or (not (= q_1@@1 0)) (<= rdAmount@@1 (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1))) (and (or (= q_1@@1 0) (<= NoPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1))) (or (= q_1@@1 0) (<= NoPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1))))))))) (and (or (= (mod (+ q_1@@1 1) 2) 0) (or (not (= (mod q_1@@1 2) 0)) (or (< size_1@@1 (+ 1 q_1@@1)) (or (< q_1@@1 (- 0 1)) (or (< q_1@@1 0) (or (< size_1@@1 (+ 2 q_1@@1)) (<= rdAmount@@1 (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))) (and (or (= (mod (+ q_1@@1 1) 2) 0) (or (not (= (mod (+ q_1@@1 1) 2) 0)) (or (< size_1@@1 (+ 2 q_1@@1)) (or (< q_1@@1 (- 0 1)) (or (< q_1@@1 (- 0 1)) (or (< size_1@@1 (+ 2 q_1@@1)) (<= NoPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))) (and (or (= (mod (+ q_1@@1 1) 2) 0) (or (not (= (mod (+ q_1@@1 1) 2) 0)) (or (< size_1@@1 (+ 2 q_1@@1)) (or (< q_1@@1 (- 0 1)) (or (< q_1@@1 (- 0 1)) (or (< size_1@@1 (+ 2 q_1@@1)) (<= NoPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))) (and (or (= (mod (+ q_1@@1 1) 2) 0) (or (not (= (mod (+ q_1@@1 2) 2) 0)) (or (< size_1@@1 (+ 3 q_1@@1)) (or (< q_1@@1 (- 0 1)) (or (< q_1@@1 (- 0 2)) (or (< size_1@@1 (+ 2 q_1@@1)) (<= NoPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))) (and (and (or (= (mod q_1@@1 2) 0) (or (< size_1@@1 1) (or (< q_1@@1 0) (or (< size_1@@1 (+ 1 q_1@@1)) (and (or (not (= q_1@@1 0)) (<= FullPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1))) (or (= q_1@@1 0) (<= FullPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))) (and (or (= (mod q_1@@1 2) 0) (or (not (= (mod q_1@@1 2) 0)) (or (< size_1@@1 (+ 1 q_1@@1)) (or (< q_1@@1 0) (or (< q_1@@1 0) (or (< size_1@@1 (+ 1 q_1@@1)) (<= FullPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))) (and (or (= (mod q_1@@1 2) 0) (or (not (= (mod (+ q_1@@1 1) 2) 0)) (or (< size_1@@1 (+ 2 q_1@@1)) (or (< q_1@@1 0) (or (< q_1@@1 (- 0 1)) (or (< size_1@@1 (+ 1 q_1@@1)) (<= FullPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))) (and (or (= (mod q_1@@1 2) 0) (or (not (= (mod (+ q_1@@1 1) 2) 0)) (or (< size_1@@1 (+ 2 q_1@@1)) (or (< q_1@@1 0) (or (< q_1@@1 (- 0 1)) (or (< size_1@@1 (+ 1 q_1@@1)) (<= FullPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))) (or (= (mod q_1@@1 2) 0) (or (not (= (mod (+ q_1@@1 2) 2) 0)) (or (< size_1@@1 (+ 3 q_1@@1)) (or (< q_1@@1 0) (or (< q_1@@1 (- 0 2)) (or (< size_1@@1 (+ 1 q_1@@1)) (<= FullPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))))))) (and (and (or (< size_1@@1 1) (or (< size_1@@1 2) (and (or (not (= q_1@@1 0)) (or (= q_1@@1 1) (<= rdAmount@@1 (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))) (and (or (= q_1@@1 0) (or (= q_1@@1 1) (<= NoPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))) (and (or (= q_1@@1 1) (or (= q_1@@1 0) (<= NoPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))) (and (or (not (= q_1@@1 1)) (or (not (= q_1@@1 0)) (<= FullPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))) (or (not (= q_1@@1 1)) (or (= q_1@@1 0) (<= FullPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))))) (and (or (not (= (mod q_1@@1 2) 0)) (or (< size_1@@1 (+ 1 q_1@@1)) (or (< q_1@@1 0) (or (< size_1@@1 2) (and (or (= q_1@@1 1) (<= rdAmount@@1 (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1))) (or (not (= q_1@@1 1)) (<= FullPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))) (and (or (not (= (mod (+ q_1@@1 1) 2) 0)) (or (< size_1@@1 (+ 2 q_1@@1)) (or (< q_1@@1 (- 0 1)) (or (< size_1@@1 2) (and (or (= q_1@@1 1) (<= NoPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1))) (or (not (= q_1@@1 1)) (<= FullPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))) (and (or (not (= (mod (+ q_1@@1 1) 2) 0)) (or (< size_1@@1 (+ 2 q_1@@1)) (or (< q_1@@1 (- 0 1)) (or (< size_1@@1 2) (and (or (= q_1@@1 1) (<= NoPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1))) (or (not (= q_1@@1 1)) (<= FullPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))) (or (not (= (mod (+ q_1@@1 2) 2) 0)) (or (< size_1@@1 (+ 3 q_1@@1)) (or (< q_1@@1 (- 0 2)) (or (< size_1@@1 2) (and (or (= q_1@@1 1) (<= NoPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1))) (or (not (= q_1@@1 1)) (<= FullPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))))))) (and (or (= (mod (+ q_1@@1 2) 2) 0) (or (< size_1@@1 1) (or (< q_1@@1 (- 0 2)) (or (< size_1@@1 (+ 3 q_1@@1)) (and (or (not (= q_1@@1 0)) (<= rdAmount@@1 (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1))) (and (or (= q_1@@1 0) (<= NoPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1))) (or (= q_1@@1 0) (<= NoPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1))))))))) (and (or (= (mod (+ q_1@@1 2) 2) 0) (or (not (= (mod q_1@@1 2) 0)) (or (< size_1@@1 (+ 1 q_1@@1)) (or (< q_1@@1 (- 0 2)) (or (< q_1@@1 0) (or (< size_1@@1 (+ 3 q_1@@1)) (<= rdAmount@@1 (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))) (and (or (= (mod (+ q_1@@1 2) 2) 0) (or (not (= (mod (+ q_1@@1 1) 2) 0)) (or (< size_1@@1 (+ 2 q_1@@1)) (or (< q_1@@1 (- 0 2)) (or (< q_1@@1 (- 0 1)) (or (< size_1@@1 (+ 3 q_1@@1)) (<= NoPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))) (and (or (= (mod (+ q_1@@1 2) 2) 0) (or (not (= (mod (+ q_1@@1 1) 2) 0)) (or (< size_1@@1 (+ 2 q_1@@1)) (or (< q_1@@1 (- 0 2)) (or (< q_1@@1 (- 0 1)) (or (< size_1@@1 (+ 3 q_1@@1)) (<= NoPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))) (or (= (mod (+ q_1@@1 2) 2) 0) (or (not (= (mod (+ q_1@@1 2) 2) 0)) (or (< size_1@@1 (+ 3 q_1@@1)) (or (< q_1@@1 (- 0 2)) (or (< q_1@@1 (- 0 2)) (or (< size_1@@1 (+ 3 q_1@@1)) (<= NoPerm (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1)))))))))))))))))))))
 :qid |stdinbpl.275:15|
 :skolemid |27|
 :pattern ( (state Heap@@6 Mask@@10) (|p'| Heap@@6 q_1@@1 size_1@@1 rdAmount@@1))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12007) (o_2@@9 T@Ref) (f_4@@9 T@Field_12046_34806) ) (! (= (HasDirectPerm_12046_40511 Mask@@11 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| Mask@@11) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12046_40511 Mask@@11 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12007) (o_2@@10 T@Ref) (f_4@@10 T@Field_12046_34673) ) (! (= (HasDirectPerm_12046_34737 Mask@@12 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| Mask@@12) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12046_34737 Mask@@12 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12007) (o_2@@11 T@Ref) (f_4@@11 T@Field_15504_1456) ) (! (= (HasDirectPerm_12046_1456 Mask@@13 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| Mask@@13) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12046_1456 Mask@@13 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12007) (o_2@@12 T@Ref) (f_4@@12 T@Field_12059_12060) ) (! (= (HasDirectPerm_12046_12060 Mask@@14 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| Mask@@14) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12046_12060 Mask@@14 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12007) (o_2@@13 T@Ref) (f_4@@13 T@Field_12046_53) ) (! (= (HasDirectPerm_12046_53 Mask@@15 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| Mask@@15) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12046_53 Mask@@15 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11986) (ExhaleHeap@@3 T@PolymorphicMapType_11986) (Mask@@16 T@PolymorphicMapType_12007) (pm_f_21@@1 T@Field_12046_34673) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@16) (=> (and (HasDirectPerm_12046_34737 Mask@@16 null pm_f_21@@1) (IsPredicateField_12046_34764 pm_f_21@@1)) (and (and (and (and (forall ((o2_21 T@Ref) (f_44 T@Field_12046_53) ) (!  (=> (select (|PolymorphicMapType_12535_12046_53#PolymorphicMapType_12535| (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@7) null (PredicateMaskField_12046 pm_f_21@@1))) o2_21 f_44) (= (select (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@7) o2_21 f_44) (select (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| ExhaleHeap@@3) o2_21 f_44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| ExhaleHeap@@3) o2_21 f_44))
)) (forall ((o2_21@@0 T@Ref) (f_44@@0 T@Field_12059_12060) ) (!  (=> (select (|PolymorphicMapType_12535_12046_12060#PolymorphicMapType_12535| (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@7) null (PredicateMaskField_12046 pm_f_21@@1))) o2_21@@0 f_44@@0) (= (select (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| Heap@@7) o2_21@@0 f_44@@0) (select (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| ExhaleHeap@@3) o2_21@@0 f_44@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| ExhaleHeap@@3) o2_21@@0 f_44@@0))
))) (forall ((o2_21@@1 T@Ref) (f_44@@1 T@Field_15504_1456) ) (!  (=> (select (|PolymorphicMapType_12535_12046_1456#PolymorphicMapType_12535| (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@7) null (PredicateMaskField_12046 pm_f_21@@1))) o2_21@@1 f_44@@1) (= (select (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@7) o2_21@@1 f_44@@1) (select (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| ExhaleHeap@@3) o2_21@@1 f_44@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| ExhaleHeap@@3) o2_21@@1 f_44@@1))
))) (forall ((o2_21@@2 T@Ref) (f_44@@2 T@Field_12046_34673) ) (!  (=> (select (|PolymorphicMapType_12535_12046_34673#PolymorphicMapType_12535| (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@7) null (PredicateMaskField_12046 pm_f_21@@1))) o2_21@@2 f_44@@2) (= (select (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| Heap@@7) o2_21@@2 f_44@@2) (select (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| ExhaleHeap@@3) o2_21@@2 f_44@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| ExhaleHeap@@3) o2_21@@2 f_44@@2))
))) (forall ((o2_21@@3 T@Ref) (f_44@@3 T@Field_12046_34806) ) (!  (=> (select (|PolymorphicMapType_12535_12046_35984#PolymorphicMapType_12535| (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@7) null (PredicateMaskField_12046 pm_f_21@@1))) o2_21@@3 f_44@@3) (= (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@7) o2_21@@3 f_44@@3) (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| ExhaleHeap@@3) o2_21@@3 f_44@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| ExhaleHeap@@3) o2_21@@3 f_44@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@16) (IsPredicateField_12046_34764 pm_f_21@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11986) (ExhaleHeap@@4 T@PolymorphicMapType_11986) (Mask@@17 T@PolymorphicMapType_12007) (pm_f_21@@2 T@Field_12046_34673) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@17) (=> (and (HasDirectPerm_12046_34737 Mask@@17 null pm_f_21@@2) (IsWandField_12046_36511 pm_f_21@@2)) (and (and (and (and (forall ((o2_21@@4 T@Ref) (f_44@@4 T@Field_12046_53) ) (!  (=> (select (|PolymorphicMapType_12535_12046_53#PolymorphicMapType_12535| (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@8) null (WandMaskField_12046 pm_f_21@@2))) o2_21@@4 f_44@@4) (= (select (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@8) o2_21@@4 f_44@@4) (select (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| ExhaleHeap@@4) o2_21@@4 f_44@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| ExhaleHeap@@4) o2_21@@4 f_44@@4))
)) (forall ((o2_21@@5 T@Ref) (f_44@@5 T@Field_12059_12060) ) (!  (=> (select (|PolymorphicMapType_12535_12046_12060#PolymorphicMapType_12535| (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@8) null (WandMaskField_12046 pm_f_21@@2))) o2_21@@5 f_44@@5) (= (select (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| Heap@@8) o2_21@@5 f_44@@5) (select (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| ExhaleHeap@@4) o2_21@@5 f_44@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| ExhaleHeap@@4) o2_21@@5 f_44@@5))
))) (forall ((o2_21@@6 T@Ref) (f_44@@6 T@Field_15504_1456) ) (!  (=> (select (|PolymorphicMapType_12535_12046_1456#PolymorphicMapType_12535| (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@8) null (WandMaskField_12046 pm_f_21@@2))) o2_21@@6 f_44@@6) (= (select (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@8) o2_21@@6 f_44@@6) (select (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| ExhaleHeap@@4) o2_21@@6 f_44@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| ExhaleHeap@@4) o2_21@@6 f_44@@6))
))) (forall ((o2_21@@7 T@Ref) (f_44@@7 T@Field_12046_34673) ) (!  (=> (select (|PolymorphicMapType_12535_12046_34673#PolymorphicMapType_12535| (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@8) null (WandMaskField_12046 pm_f_21@@2))) o2_21@@7 f_44@@7) (= (select (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| Heap@@8) o2_21@@7 f_44@@7) (select (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| ExhaleHeap@@4) o2_21@@7 f_44@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| ExhaleHeap@@4) o2_21@@7 f_44@@7))
))) (forall ((o2_21@@8 T@Ref) (f_44@@8 T@Field_12046_34806) ) (!  (=> (select (|PolymorphicMapType_12535_12046_35984#PolymorphicMapType_12535| (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@8) null (WandMaskField_12046 pm_f_21@@2))) o2_21@@8 f_44@@8) (= (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@8) o2_21@@8 f_44@@8) (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| ExhaleHeap@@4) o2_21@@8 f_44@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| ExhaleHeap@@4) o2_21@@8 f_44@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@17) (IsWandField_12046_36511 pm_f_21@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11986) (ExhaleHeap@@5 T@PolymorphicMapType_11986) (Mask@@18 T@PolymorphicMapType_12007) (o_38@@0 T@Ref) (f_44@@9 T@Field_12046_34806) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_12046_40511 Mask@@18 o_38@@0 f_44@@9) (= (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@9) o_38@@0 f_44@@9) (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| ExhaleHeap@@5) o_38@@0 f_44@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| ExhaleHeap@@5) o_38@@0 f_44@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11986) (ExhaleHeap@@6 T@PolymorphicMapType_11986) (Mask@@19 T@PolymorphicMapType_12007) (o_38@@1 T@Ref) (f_44@@10 T@Field_12046_34673) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_12046_34737 Mask@@19 o_38@@1 f_44@@10) (= (select (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| Heap@@10) o_38@@1 f_44@@10) (select (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| ExhaleHeap@@6) o_38@@1 f_44@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| ExhaleHeap@@6) o_38@@1 f_44@@10))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11986) (ExhaleHeap@@7 T@PolymorphicMapType_11986) (Mask@@20 T@PolymorphicMapType_12007) (o_38@@2 T@Ref) (f_44@@11 T@Field_15504_1456) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_12046_1456 Mask@@20 o_38@@2 f_44@@11) (= (select (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@11) o_38@@2 f_44@@11) (select (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| ExhaleHeap@@7) o_38@@2 f_44@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| ExhaleHeap@@7) o_38@@2 f_44@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11986) (ExhaleHeap@@8 T@PolymorphicMapType_11986) (Mask@@21 T@PolymorphicMapType_12007) (o_38@@3 T@Ref) (f_44@@12 T@Field_12059_12060) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_12046_12060 Mask@@21 o_38@@3 f_44@@12) (= (select (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| Heap@@12) o_38@@3 f_44@@12) (select (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| ExhaleHeap@@8) o_38@@3 f_44@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| ExhaleHeap@@8) o_38@@3 f_44@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11986) (ExhaleHeap@@9 T@PolymorphicMapType_11986) (Mask@@22 T@PolymorphicMapType_12007) (o_38@@4 T@Ref) (f_44@@13 T@Field_12046_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@22) (=> (HasDirectPerm_12046_53 Mask@@22 o_38@@4 f_44@@13) (= (select (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@13) o_38@@4 f_44@@13) (select (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| ExhaleHeap@@9) o_38@@4 f_44@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@22) (select (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| ExhaleHeap@@9) o_38@@4 f_44@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_12046_34806) ) (! (= (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_12046_34673) ) (! (= (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_12059_12060) ) (! (= (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12046_53) ) (! (= (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_15504_1456) ) (! (= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12007) (SummandMask1 T@PolymorphicMapType_12007) (SummandMask2 T@PolymorphicMapType_12007) (o_2@@19 T@Ref) (f_4@@19 T@Field_12046_34806) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12007) (SummandMask1@@0 T@PolymorphicMapType_12007) (SummandMask2@@0 T@PolymorphicMapType_12007) (o_2@@20 T@Ref) (f_4@@20 T@Field_12046_34673) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12007) (SummandMask1@@1 T@PolymorphicMapType_12007) (SummandMask2@@1 T@PolymorphicMapType_12007) (o_2@@21 T@Ref) (f_4@@21 T@Field_12059_12060) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12007) (SummandMask1@@2 T@PolymorphicMapType_12007) (SummandMask2@@2 T@PolymorphicMapType_12007) (o_2@@22 T@Ref) (f_4@@22 T@Field_12046_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12007) (SummandMask1@@3 T@PolymorphicMapType_12007) (SummandMask2@@3 T@PolymorphicMapType_12007) (o_2@@23 T@Ref) (f_4@@23 T@Field_15504_1456) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11986) (q_1@@2 Int) (size_1@@2 Int) (rdAmount@@2 Real) ) (!  (and (= (p@@1 Heap@@14 q_1@@2 size_1@@2 rdAmount@@2) (|p'| Heap@@14 q_1@@2 size_1@@2 rdAmount@@2)) (dummyFunction_645 (|p#triggerStateless| q_1@@2 size_1@@2 rdAmount@@2)))
 :qid |stdinbpl.258:15|
 :skolemid |24|
 :pattern ( (p@@1 Heap@@14 q_1@@2 size_1@@2 rdAmount@@2))
)))
(assert (forall ((a_2@@0 T@ArrayDomainType) ) (! (>= (length_1 a_2@@0) 0)
 :qid |stdinbpl.238:15|
 :skolemid |23|
 :pattern ( (length_1 a_2@@0))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11986) (o_8 T@Ref) (f_8 T@Field_12046_34673) (v T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_11986 (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@15) (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| Heap@@15) (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@15) (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@15) (store (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| Heap@@15) o_8 f_8 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11986 (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@15) (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| Heap@@15) (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@15) (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@15) (store (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| Heap@@15) o_8 f_8 v)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11986) (o_8@@0 T@Ref) (f_8@@0 T@Field_12046_34806) (v@@0 T@PolymorphicMapType_12535) ) (! (succHeap Heap@@16 (PolymorphicMapType_11986 (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@16) (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| Heap@@16) (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@16) (store (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@16) o_8@@0 f_8@@0 v@@0) (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11986 (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@16) (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| Heap@@16) (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@16) (store (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@16) o_8@@0 f_8@@0 v@@0) (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11986) (o_8@@1 T@Ref) (f_8@@1 T@Field_15504_1456) (v@@1 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_11986 (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@17) (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| Heap@@17) (store (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@17) o_8@@1 f_8@@1 v@@1) (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@17) (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11986 (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@17) (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| Heap@@17) (store (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@17) o_8@@1 f_8@@1 v@@1) (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@17) (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11986) (o_8@@2 T@Ref) (f_8@@2 T@Field_12059_12060) (v@@2 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_11986 (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@18) (store (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| Heap@@18) o_8@@2 f_8@@2 v@@2) (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@18) (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@18) (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11986 (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@18) (store (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| Heap@@18) o_8@@2 f_8@@2 v@@2) (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@18) (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@18) (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11986) (o_8@@3 T@Ref) (f_8@@3 T@Field_12046_53) (v@@3 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_11986 (store (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@19) o_8@@3 f_8@@3 v@@3) (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| Heap@@19) (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@19) (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@19) (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11986 (store (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@19) o_8@@3 f_8@@3 v@@3) (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| Heap@@19) (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@19) (|PolymorphicMapType_11986_12046_34850#PolymorphicMapType_11986| Heap@@19) (|PolymorphicMapType_11986_12046_34673#PolymorphicMapType_11986| Heap@@19)))
)))
(assert (forall ((o_8@@4 T@Ref) (f_12 T@Field_12059_12060) (Heap@@20 T@PolymorphicMapType_11986) ) (!  (=> (select (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@20) o_8@@4 $allocated) (select (|PolymorphicMapType_11986_8898_53#PolymorphicMapType_11986| Heap@@20) (select (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| Heap@@20) o_8@@4 f_12) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11986_8901_8902#PolymorphicMapType_11986| Heap@@20) o_8@@4 f_12))
)))
(assert (forall ((p@@2 T@Field_12046_34673) (v_1@@0 T@FrameType) (q T@Field_12046_34673) (w@@0 T@FrameType) (r T@Field_12046_34673) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12046_12046 p@@2 v_1@@0 q w@@0) (InsidePredicate_12046_12046 q w@@0 r u)) (InsidePredicate_12046_12046 p@@2 v_1@@0 r u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12046_12046 p@@2 v_1@@0 q w@@0) (InsidePredicate_12046_12046 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun arr () T@ArrayDomainType)
(declare-fun dummyFunction_1456 (Int) Bool)
(declare-fun Heap@@21 () T@PolymorphicMapType_11986)
(declare-fun size_1@@3 () Int)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_12007)
(declare-fun rdAmount@@3 () Real)
(declare-fun j_10_2 () Int)
(declare-fun j_7_1 () Int)
(declare-fun neverTriggered3 (Int) Bool)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_12007)
(declare-fun neverTriggered2 (Int) Bool)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_12007)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(set-info :boogie-vc-id testspec_skipping_indices1)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon33_Else_correct  (and (=> (= (ControlFlow 0 15) (- 0 17)) (forall ((j_13_2 Int) ) (!  (=> (dummyFunction_1456 (select (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@21) (loc arr j_13_2) val)) (>= (ite  (or (< j_13_2 0) (>= j_13_2 size_1@@3)) NoPerm FullPerm) NoPerm))
 :qid |stdinbpl.595:17|
 :skolemid |51|
 :pattern ( (loc arr j_13_2))
 :pattern ( (loc arr j_13_2))
))) (=> (forall ((j_13_2@@0 Int) ) (!  (=> (dummyFunction_1456 (select (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@21) (loc arr j_13_2@@0) val)) (>= (ite  (or (< j_13_2@@0 0) (>= j_13_2@@0 size_1@@3)) NoPerm FullPerm) NoPerm))
 :qid |stdinbpl.595:17|
 :skolemid |51|
 :pattern ( (loc arr j_13_2@@0))
 :pattern ( (loc arr j_13_2@@0))
)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (forall ((j_13_2@@1 Int) (j_13_3 Int) ) (!  (=> (and (and (not (= j_13_2@@1 j_13_3)) (< NoPerm (ite  (or (< j_13_2@@1 0) (>= j_13_2@@1 size_1@@3)) NoPerm FullPerm))) (< NoPerm (ite  (or (< j_13_3 0) (>= j_13_3 size_1@@3)) NoPerm FullPerm))) (not (= (loc arr j_13_2@@1) (loc arr j_13_3))))
 :qid |stdinbpl.602:17|
 :skolemid |52|
 :pattern ( (neverTriggered4 j_13_2@@1) (neverTriggered4 j_13_3))
))) (=> (forall ((j_13_2@@2 Int) (j_13_3@@0 Int) ) (!  (=> (and (and (not (= j_13_2@@2 j_13_3@@0)) (< NoPerm (ite  (or (< j_13_2@@2 0) (>= j_13_2@@2 size_1@@3)) NoPerm FullPerm))) (< NoPerm (ite  (or (< j_13_3@@0 0) (>= j_13_3@@0 size_1@@3)) NoPerm FullPerm))) (not (= (loc arr j_13_2@@2) (loc arr j_13_3@@0))))
 :qid |stdinbpl.602:17|
 :skolemid |52|
 :pattern ( (neverTriggered4 j_13_2@@2) (neverTriggered4 j_13_3@@0))
)) (=> (= (ControlFlow 0 15) (- 0 14)) (forall ((j_13_2@@3 Int) ) (! (>= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) (loc arr j_13_2@@3) val) (ite  (or (< j_13_2@@3 0) (>= j_13_2@@3 size_1@@3)) NoPerm FullPerm))
 :qid |stdinbpl.609:17|
 :skolemid |53|
 :pattern ( (loc arr j_13_2@@3))
 :pattern ( (loc arr j_13_2@@3))
)))))))))
(let ((anon33_Then_correct true))
(let ((anon32_Else_correct  (=> (and (forall ((j_11_1 Int) ) (! (<= (p@@1 Heap@@21 j_11_1 size_1@@3 rdAmount@@3) (ite  (or (< j_11_1 0) (>= j_11_1 size_1@@3)) NoPerm (ite (= (mod j_11_1 2) 0) rdAmount@@3 FullPerm)))
 :qid |stdinbpl.573:20|
 :skolemid |50|
 :pattern ( (|p#frame| EmptyFrame j_11_1 size_1@@3 rdAmount@@3))
)) (state Heap@@21 QPMask@0)) (and (=> (= (ControlFlow 0 18) 13) anon33_Then_correct) (=> (= (ControlFlow 0 18) 15) anon33_Else_correct)))))
(let ((anon31_Else_correct true))
(let ((anon31_Then_correct true))
(let ((anon32_Then_correct  (=> (= (ControlFlow 0 10) (- 0 9)) (<= (p@@1 Heap@@21 j_10_2 size_1@@3 rdAmount@@3) (ite  (or (< j_10_2 0) (>= j_10_2 size_1@@3)) NoPerm (ite (= (mod j_10_2 2) 0) rdAmount@@3 FullPerm))))))
(let ((anon29_Else_correct  (=> (and (forall ((j_8_1_1 Int) ) (! (<= (ite  (or (< j_8_1_1 0) (>= j_8_1_1 size_1@@3)) NoPerm (ite (= (mod j_8_1_1 2) 0) rdAmount@@3 FullPerm)) (p@@1 Heap@@21 j_8_1_1 size_1@@3 rdAmount@@3))
 :qid |stdinbpl.547:20|
 :skolemid |49|
 :pattern ( (|p#frame| EmptyFrame j_8_1_1 size_1@@3 rdAmount@@3))
)) (state Heap@@21 QPMask@0)) (and (and (and (=> (= (ControlFlow 0 19) 10) anon32_Then_correct) (=> (= (ControlFlow 0 19) 18) anon32_Else_correct)) (=> (= (ControlFlow 0 19) 11) anon31_Then_correct)) (=> (= (ControlFlow 0 19) 12) anon31_Else_correct)))))
(let ((anon28_Else_correct true))
(let ((anon28_Then_correct true))
(let ((anon29_Then_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (<= (ite  (or (< j_7_1 0) (>= j_7_1 size_1@@3)) NoPerm (ite (= (mod j_7_1 2) 0) rdAmount@@3 FullPerm)) (p@@1 Heap@@21 j_7_1 size_1@@3 rdAmount@@3)))))
(let ((anon26_Else_correct  (and (=> (= (ControlFlow 0 20) (- 0 23)) (forall ((j_5_1 Int) ) (!  (=> (dummyFunction_1456 (select (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@21) (loc arr j_5_1) val)) (>= (ite  (or (< j_5_1 0) (>= j_5_1 size_1@@3)) NoPerm (ite (= (mod j_5_1 2) 0) rdAmount@@3 FullPerm)) NoPerm))
 :qid |stdinbpl.484:17|
 :skolemid |42|
 :pattern ( (loc arr j_5_1))
 :pattern ( (loc arr j_5_1))
))) (=> (forall ((j_5_1@@0 Int) ) (!  (=> (dummyFunction_1456 (select (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@21) (loc arr j_5_1@@0) val)) (>= (ite  (or (< j_5_1@@0 0) (>= j_5_1@@0 size_1@@3)) NoPerm (ite (= (mod j_5_1@@0 2) 0) rdAmount@@3 FullPerm)) NoPerm))
 :qid |stdinbpl.484:17|
 :skolemid |42|
 :pattern ( (loc arr j_5_1@@0))
 :pattern ( (loc arr j_5_1@@0))
)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (forall ((j_5_1@@1 Int) (j_5_2 Int) ) (!  (=> (and (and (not (= j_5_1@@1 j_5_2)) (< NoPerm (ite  (or (< j_5_1@@1 0) (>= j_5_1@@1 size_1@@3)) NoPerm (ite (= (mod j_5_1@@1 2) 0) rdAmount@@3 FullPerm)))) (< NoPerm (ite  (or (< j_5_2 0) (>= j_5_2 size_1@@3)) NoPerm (ite (= (mod j_5_2 2) 0) rdAmount@@3 FullPerm)))) (not (= (loc arr j_5_1@@1) (loc arr j_5_2))))
 :qid |stdinbpl.491:17|
 :skolemid |43|
 :pattern ( (neverTriggered3 j_5_1@@1) (neverTriggered3 j_5_2))
))) (=> (forall ((j_5_1@@2 Int) (j_5_2@@0 Int) ) (!  (=> (and (and (not (= j_5_1@@2 j_5_2@@0)) (< NoPerm (ite  (or (< j_5_1@@2 0) (>= j_5_1@@2 size_1@@3)) NoPerm (ite (= (mod j_5_1@@2 2) 0) rdAmount@@3 FullPerm)))) (< NoPerm (ite  (or (< j_5_2@@0 0) (>= j_5_2@@0 size_1@@3)) NoPerm (ite (= (mod j_5_2@@0 2) 0) rdAmount@@3 FullPerm)))) (not (= (loc arr j_5_1@@2) (loc arr j_5_2@@0))))
 :qid |stdinbpl.491:17|
 :skolemid |43|
 :pattern ( (neverTriggered3 j_5_1@@2) (neverTriggered3 j_5_2@@0))
)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall ((j_5_1@@3 Int) ) (! (>= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) (loc arr j_5_1@@3) val) (ite  (or (< j_5_1@@3 0) (>= j_5_1@@3 size_1@@3)) NoPerm (ite (= (mod j_5_1@@3 2) 0) rdAmount@@3 FullPerm)))
 :qid |stdinbpl.498:17|
 :skolemid |44|
 :pattern ( (loc arr j_5_1@@3))
 :pattern ( (loc arr j_5_1@@3))
))) (=> (forall ((j_5_1@@4 Int) ) (! (>= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) (loc arr j_5_1@@4) val) (ite  (or (< j_5_1@@4 0) (>= j_5_1@@4 size_1@@3)) NoPerm (ite (= (mod j_5_1@@4 2) 0) rdAmount@@3 FullPerm)))
 :qid |stdinbpl.498:17|
 :skolemid |44|
 :pattern ( (loc arr j_5_1@@4))
 :pattern ( (loc arr j_5_1@@4))
)) (=> (forall ((j_5_1@@5 Int) ) (!  (=> (< NoPerm (ite  (or (< j_5_1@@5 0) (>= j_5_1@@5 size_1@@3)) NoPerm (ite (= (mod j_5_1@@5 2) 0) rdAmount@@3 FullPerm))) (and (qpRange3 (loc arr j_5_1@@5)) (= (invRecv3 (loc arr j_5_1@@5)) j_5_1@@5)))
 :qid |stdinbpl.504:22|
 :skolemid |45|
 :pattern ( (loc arr j_5_1@@5))
 :pattern ( (loc arr j_5_1@@5))
)) (=> (and (forall ((o_4 T@Ref) ) (!  (=> (and (< NoPerm (ite  (or (< (invRecv3 o_4) 0) (>= (invRecv3 o_4) size_1@@3)) NoPerm (ite (= (mod (invRecv3 o_4) 2) 0) rdAmount@@3 FullPerm))) (qpRange3 o_4)) (= (loc arr (invRecv3 o_4)) o_4))
 :qid |stdinbpl.508:22|
 :skolemid |46|
 :pattern ( (invRecv3 o_4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (< NoPerm (ite  (or (< (invRecv3 o_4@@0) 0) (>= (invRecv3 o_4@@0) size_1@@3)) NoPerm (ite (= (mod (invRecv3 o_4@@0) 2) 0) rdAmount@@3 FullPerm))) (qpRange3 o_4@@0)) (and (= (loc arr (invRecv3 o_4@@0)) o_4@@0) (= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@2) o_4@@0 val) (- (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) o_4@@0 val) (ite  (or (< (invRecv3 o_4@@0) 0) (>= (invRecv3 o_4@@0) size_1@@3)) NoPerm (ite (= (mod (invRecv3 o_4@@0) 2) 0) rdAmount@@3 FullPerm)))))) (=> (not (and (< NoPerm (ite  (or (< (invRecv3 o_4@@0) 0) (>= (invRecv3 o_4@@0) size_1@@3)) NoPerm (ite (= (mod (invRecv3 o_4@@0) 2) 0) rdAmount@@3 FullPerm))) (qpRange3 o_4@@0))) (= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@2) o_4@@0 val) (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) o_4@@0 val))))
 :qid |stdinbpl.514:22|
 :skolemid |47|
 :pattern ( (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@2) o_4@@0 val))
))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_12046_53) ) (!  (=> true (= (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| QPMask@0) o_4@@1 f_5) (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| QPMask@2) o_4@@1 f_5)))
 :qid |stdinbpl.520:29|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| QPMask@2) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_12059_12060) ) (!  (=> true (= (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| QPMask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| QPMask@2) o_4@@2 f_5@@0)))
 :qid |stdinbpl.520:29|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| QPMask@2) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_15504_1456) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@2) o_4@@3 f_5@@1)))
 :qid |stdinbpl.520:29|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@2) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_12046_34673) ) (!  (=> true (= (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| QPMask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| QPMask@2) o_4@@4 f_5@@2)))
 :qid |stdinbpl.520:29|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| QPMask@2) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_12046_34806) ) (!  (=> true (= (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| QPMask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| QPMask@2) o_4@@5 f_5@@3)))
 :qid |stdinbpl.520:29|
 :skolemid |48|
 :pattern ( (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| QPMask@2) o_4@@5 f_5@@3))
))) (state Heap@@21 QPMask@0)) (and (and (and (=> (= (ControlFlow 0 20) 6) anon29_Then_correct) (=> (= (ControlFlow 0 20) 19) anon29_Else_correct)) (=> (= (ControlFlow 0 20) 7) anon28_Then_correct)) (=> (= (ControlFlow 0 20) 8) anon28_Else_correct)))))))))))))
(let ((anon26_Then_correct true))
(let ((anon25_Else_correct  (and (=> (= (ControlFlow 0 24) (- 0 27)) (forall ((j_3_1 Int) ) (!  (=> (dummyFunction_1456 (select (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@21) (loc arr j_3_1) val)) (>= (ite  (or (< j_3_1 0) (>= j_3_1 size_1@@3)) NoPerm FullPerm) NoPerm))
 :qid |stdinbpl.423:17|
 :skolemid |35|
 :pattern ( (loc arr j_3_1))
 :pattern ( (loc arr j_3_1))
))) (=> (forall ((j_3_1@@0 Int) ) (!  (=> (dummyFunction_1456 (select (|PolymorphicMapType_11986_9052_1456#PolymorphicMapType_11986| Heap@@21) (loc arr j_3_1@@0) val)) (>= (ite  (or (< j_3_1@@0 0) (>= j_3_1@@0 size_1@@3)) NoPerm FullPerm) NoPerm))
 :qid |stdinbpl.423:17|
 :skolemid |35|
 :pattern ( (loc arr j_3_1@@0))
 :pattern ( (loc arr j_3_1@@0))
)) (and (=> (= (ControlFlow 0 24) (- 0 26)) (forall ((j_3_1@@1 Int) (j_3_2 Int) ) (!  (=> (and (and (not (= j_3_1@@1 j_3_2)) (< NoPerm (ite  (or (< j_3_1@@1 0) (>= j_3_1@@1 size_1@@3)) NoPerm FullPerm))) (< NoPerm (ite  (or (< j_3_2 0) (>= j_3_2 size_1@@3)) NoPerm FullPerm))) (not (= (loc arr j_3_1@@1) (loc arr j_3_2))))
 :qid |stdinbpl.430:17|
 :skolemid |36|
 :pattern ( (neverTriggered2 j_3_1@@1) (neverTriggered2 j_3_2))
))) (=> (forall ((j_3_1@@2 Int) (j_3_2@@0 Int) ) (!  (=> (and (and (not (= j_3_1@@2 j_3_2@@0)) (< NoPerm (ite  (or (< j_3_1@@2 0) (>= j_3_1@@2 size_1@@3)) NoPerm FullPerm))) (< NoPerm (ite  (or (< j_3_2@@0 0) (>= j_3_2@@0 size_1@@3)) NoPerm FullPerm))) (not (= (loc arr j_3_1@@2) (loc arr j_3_2@@0))))
 :qid |stdinbpl.430:17|
 :skolemid |36|
 :pattern ( (neverTriggered2 j_3_1@@2) (neverTriggered2 j_3_2@@0))
)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (forall ((j_3_1@@3 Int) ) (! (>= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) (loc arr j_3_1@@3) val) (ite  (or (< j_3_1@@3 0) (>= j_3_1@@3 size_1@@3)) NoPerm FullPerm))
 :qid |stdinbpl.437:17|
 :skolemid |37|
 :pattern ( (loc arr j_3_1@@3))
 :pattern ( (loc arr j_3_1@@3))
))) (=> (forall ((j_3_1@@4 Int) ) (! (>= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) (loc arr j_3_1@@4) val) (ite  (or (< j_3_1@@4 0) (>= j_3_1@@4 size_1@@3)) NoPerm FullPerm))
 :qid |stdinbpl.437:17|
 :skolemid |37|
 :pattern ( (loc arr j_3_1@@4))
 :pattern ( (loc arr j_3_1@@4))
)) (=> (forall ((j_3_1@@5 Int) ) (!  (=> (< NoPerm (ite  (or (< j_3_1@@5 0) (>= j_3_1@@5 size_1@@3)) NoPerm FullPerm)) (and (qpRange2 (loc arr j_3_1@@5)) (= (invRecv2 (loc arr j_3_1@@5)) j_3_1@@5)))
 :qid |stdinbpl.443:22|
 :skolemid |38|
 :pattern ( (loc arr j_3_1@@5))
 :pattern ( (loc arr j_3_1@@5))
)) (=> (and (forall ((o_4@@6 T@Ref) ) (!  (=> (and (< NoPerm (ite  (or (< (invRecv2 o_4@@6) 0) (>= (invRecv2 o_4@@6) size_1@@3)) NoPerm FullPerm)) (qpRange2 o_4@@6)) (= (loc arr (invRecv2 o_4@@6)) o_4@@6))
 :qid |stdinbpl.447:22|
 :skolemid |39|
 :pattern ( (invRecv2 o_4@@6))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (< NoPerm (ite  (or (< (invRecv2 o_4@@7) 0) (>= (invRecv2 o_4@@7) size_1@@3)) NoPerm FullPerm)) (qpRange2 o_4@@7)) (and (= (loc arr (invRecv2 o_4@@7)) o_4@@7) (= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@1) o_4@@7 val) (- (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) o_4@@7 val) (ite  (or (< (invRecv2 o_4@@7) 0) (>= (invRecv2 o_4@@7) size_1@@3)) NoPerm FullPerm))))) (=> (not (and (< NoPerm (ite  (or (< (invRecv2 o_4@@7) 0) (>= (invRecv2 o_4@@7) size_1@@3)) NoPerm FullPerm)) (qpRange2 o_4@@7))) (= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@1) o_4@@7 val) (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) o_4@@7 val))))
 :qid |stdinbpl.453:22|
 :skolemid |40|
 :pattern ( (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@1) o_4@@7 val))
))) (=> (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_12046_53) ) (!  (=> true (= (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| QPMask@0) o_4@@8 f_5@@4) (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| QPMask@1) o_4@@8 f_5@@4)))
 :qid |stdinbpl.459:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| QPMask@1) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_12059_12060) ) (!  (=> true (= (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| QPMask@0) o_4@@9 f_5@@5) (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| QPMask@1) o_4@@9 f_5@@5)))
 :qid |stdinbpl.459:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| QPMask@1) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_15504_1456) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) o_4@@10 f_5@@6) (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@1) o_4@@10 f_5@@6)))
 :qid |stdinbpl.459:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@1) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_12046_34673) ) (!  (=> true (= (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| QPMask@0) o_4@@11 f_5@@7) (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| QPMask@1) o_4@@11 f_5@@7)))
 :qid |stdinbpl.459:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| QPMask@1) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_12046_34806) ) (!  (=> true (= (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| QPMask@0) o_4@@12 f_5@@8) (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| QPMask@1) o_4@@12 f_5@@8)))
 :qid |stdinbpl.459:29|
 :skolemid |41|
 :pattern ( (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| QPMask@1) o_4@@12 f_5@@8))
))) (state Heap@@21 QPMask@0)) (and (=> (= (ControlFlow 0 24) 4) anon26_Then_correct) (=> (= (ControlFlow 0 24) 20) anon26_Else_correct)))))))))))))
(let ((anon25_Then_correct true))
(let ((anon23_Else_correct  (and (=> (= (ControlFlow 0 28) (- 0 30)) (forall ((j_1 Int) (j_1_1 Int) ) (!  (=> (and (and (not (= j_1 j_1_1)) (< NoPerm (p@@1 Heap@@21 j_1 size_1@@3 rdAmount@@3))) (< NoPerm (p@@1 Heap@@21 j_1_1 size_1@@3 rdAmount@@3))) (not (= (loc arr j_1) (loc arr j_1_1))))
 :qid |stdinbpl.361:15|
 :skolemid |28|
))) (=> (forall ((j_1@@0 Int) (j_1_1@@0 Int) ) (!  (=> (and (and (not (= j_1@@0 j_1_1@@0)) (< NoPerm (p@@1 Heap@@21 j_1@@0 size_1@@3 rdAmount@@3))) (< NoPerm (p@@1 Heap@@21 j_1_1@@0 size_1@@3 rdAmount@@3))) (not (= (loc arr j_1@@0) (loc arr j_1_1@@0))))
 :qid |stdinbpl.361:15|
 :skolemid |28|
)) (=> (and (forall ((j_1@@1 Int) ) (!  (=> (< NoPerm (p@@1 Heap@@21 j_1@@1 size_1@@3 rdAmount@@3)) (and (qpRange1 (loc arr j_1@@1)) (= (invRecv1 (loc arr j_1@@1)) j_1@@1)))
 :qid |stdinbpl.367:22|
 :skolemid |29|
 :pattern ( (loc arr j_1@@1))
 :pattern ( (loc arr j_1@@1))
 :pattern ( (|p#frame| EmptyFrame j_1@@1 size_1@@3 rdAmount@@3))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (< NoPerm (p@@1 Heap@@21 (invRecv1 o_4@@13) size_1@@3 rdAmount@@3)) (qpRange1 o_4@@13)) (= (loc arr (invRecv1 o_4@@13)) o_4@@13))
 :qid |stdinbpl.371:22|
 :skolemid |30|
 :pattern ( (invRecv1 o_4@@13))
))) (and (=> (= (ControlFlow 0 28) (- 0 29)) (forall ((j_1@@2 Int) ) (! (>= (p@@1 Heap@@21 j_1@@2 size_1@@3 rdAmount@@3) NoPerm)
 :qid |stdinbpl.377:15|
 :skolemid |31|
 :pattern ( (loc arr j_1@@2))
 :pattern ( (loc arr j_1@@2))
 :pattern ( (|p#frame| EmptyFrame j_1@@2 size_1@@3 rdAmount@@3))
))) (=> (forall ((j_1@@3 Int) ) (! (>= (p@@1 Heap@@21 j_1@@3 size_1@@3 rdAmount@@3) NoPerm)
 :qid |stdinbpl.377:15|
 :skolemid |31|
 :pattern ( (loc arr j_1@@3))
 :pattern ( (loc arr j_1@@3))
 :pattern ( (|p#frame| EmptyFrame j_1@@3 size_1@@3 rdAmount@@3))
)) (=> (and (forall ((j_1@@4 Int) ) (!  (=> (> (p@@1 Heap@@21 j_1@@4 size_1@@3 rdAmount@@3) NoPerm) (not (= (loc arr j_1@@4) null)))
 :qid |stdinbpl.383:22|
 :skolemid |32|
 :pattern ( (loc arr j_1@@4))
 :pattern ( (loc arr j_1@@4))
 :pattern ( (|p#frame| EmptyFrame j_1@@4 size_1@@3 rdAmount@@3))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (< NoPerm (p@@1 Heap@@21 (invRecv1 o_4@@14) size_1@@3 rdAmount@@3)) (qpRange1 o_4@@14)) (and (=> (< NoPerm (p@@1 Heap@@21 (invRecv1 o_4@@14) size_1@@3 rdAmount@@3)) (= (loc arr (invRecv1 o_4@@14)) o_4@@14)) (= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) o_4@@14 val) (+ (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| ZeroMask) o_4@@14 val) (p@@1 Heap@@21 (invRecv1 o_4@@14) size_1@@3 rdAmount@@3))))) (=> (not (and (< NoPerm (p@@1 Heap@@21 (invRecv1 o_4@@14) size_1@@3 rdAmount@@3)) (qpRange1 o_4@@14))) (= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) o_4@@14 val) (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| ZeroMask) o_4@@14 val))))
 :qid |stdinbpl.389:22|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) o_4@@14 val))
))) (=> (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_12046_53) ) (!  (=> true (= (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| ZeroMask) o_4@@15 f_5@@9) (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| QPMask@0) o_4@@15 f_5@@9)))
 :qid |stdinbpl.393:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| ZeroMask) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_12007_9052_53#PolymorphicMapType_12007| QPMask@0) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_12059_12060) ) (!  (=> true (= (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| ZeroMask) o_4@@16 f_5@@10) (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| QPMask@0) o_4@@16 f_5@@10)))
 :qid |stdinbpl.393:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| ZeroMask) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_12007_9052_12060#PolymorphicMapType_12007| QPMask@0) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_15504_1456) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| ZeroMask) o_4@@17 f_5@@11) (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) o_4@@17 f_5@@11)))
 :qid |stdinbpl.393:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| ZeroMask) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_12007_9052_1456#PolymorphicMapType_12007| QPMask@0) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_12046_34673) ) (!  (=> true (= (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| ZeroMask) o_4@@18 f_5@@12) (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| QPMask@0) o_4@@18 f_5@@12)))
 :qid |stdinbpl.393:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| ZeroMask) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_12007_9052_34673#PolymorphicMapType_12007| QPMask@0) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_12046_34806) ) (!  (=> true (= (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| ZeroMask) o_4@@19 f_5@@13) (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| QPMask@0) o_4@@19 f_5@@13)))
 :qid |stdinbpl.393:29|
 :skolemid |34|
 :pattern ( (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| ZeroMask) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_12007_9052_38928#PolymorphicMapType_12007| QPMask@0) o_4@@19 f_5@@13))
))) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0))) (and (=> (= (ControlFlow 0 28) 3) anon25_Then_correct) (=> (= (ControlFlow 0 28) 24) anon25_Else_correct)))))))))))
(let ((anon24_Else_correct true))
(let ((anon24_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@21 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (< NoPerm rdAmount@@3) (< rdAmount@@3 FullPerm)) (and (state Heap@@21 ZeroMask) (state Heap@@21 ZeroMask))) (and (and (=> (= (ControlFlow 0 31) 28) anon23_Else_correct) (=> (= (ControlFlow 0 31) 1) anon24_Then_correct)) (=> (= (ControlFlow 0 31) 2) anon24_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 32) 31) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 24) (- 25))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
