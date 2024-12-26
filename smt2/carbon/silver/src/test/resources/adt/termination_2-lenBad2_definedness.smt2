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
(declare-sort T@Field_6190_53 0)
(declare-sort T@Field_6203_6204 0)
(declare-sort T@Field_6190_16330 0)
(declare-sort T@Field_6190_16197 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6151 0)) (((PolymorphicMapType_6151 (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| (Array T@Ref T@Field_6190_53 Real)) (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| (Array T@Ref T@Field_6203_6204 Real)) (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| (Array T@Ref T@Field_6190_16197 Real)) (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| (Array T@Ref T@Field_6190_16330 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6679 0)) (((PolymorphicMapType_6679 (|PolymorphicMapType_6679_6190_53#PolymorphicMapType_6679| (Array T@Ref T@Field_6190_53 Bool)) (|PolymorphicMapType_6679_6190_6204#PolymorphicMapType_6679| (Array T@Ref T@Field_6203_6204 Bool)) (|PolymorphicMapType_6679_6190_16197#PolymorphicMapType_6679| (Array T@Ref T@Field_6190_16197 Bool)) (|PolymorphicMapType_6679_6190_17310#PolymorphicMapType_6679| (Array T@Ref T@Field_6190_16330 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6130 0)) (((PolymorphicMapType_6130 (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| (Array T@Ref T@Field_6190_53 Bool)) (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| (Array T@Ref T@Field_6203_6204 T@Ref)) (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| (Array T@Ref T@Field_6190_16330 T@PolymorphicMapType_6679)) (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| (Array T@Ref T@Field_6190_16197 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_6130 T@PolymorphicMapType_6130) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6130 T@PolymorphicMapType_6130) Bool)
(declare-sort T@ListDomainType_9886 0)
(declare-fun bounded_14217 (T@ListDomainType_9886) Bool)
(declare-fun state (T@PolymorphicMapType_6130 T@PolymorphicMapType_6151) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6151) Bool)
(declare-sort T@ValDomainType 0)
(declare-fun Cons_3692 (T@ValDomainType T@ListDomainType_9886) T@ListDomainType_9886)
(declare-fun decreasing_14197 (T@ListDomainType_9886 T@ListDomainType_9886) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6679)
(declare-fun |lenBad'| (T@PolymorphicMapType_6130 T@ListDomainType_9886 T@ValDomainType) Int)
(declare-fun dummyFunction_1760 (Int) Bool)
(declare-fun |lenBad#triggerStateless| (T@ListDomainType_9886 T@ValDomainType) Int)
(declare-fun |lenBad#frame| (T@FrameType T@ListDomainType_9886 T@ValDomainType) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun List_tag_3584 (T@ListDomainType_9886) Int)
(declare-fun Nil_3695 () T@ListDomainType_9886)
(declare-fun |len'| (T@PolymorphicMapType_6130 T@ListDomainType_9886) Int)
(declare-fun |len#triggerStateless| (T@ListDomainType_9886) Int)
(declare-fun |len2'| (T@PolymorphicMapType_6130 T@ListDomainType_9886) Int)
(declare-fun |len2#triggerStateless| (T@ListDomainType_9886) Int)
(declare-fun |lenBad2'| (T@PolymorphicMapType_6130 T@ListDomainType_9886) Int)
(declare-fun |lenBad2#triggerStateless| (T@ListDomainType_9886) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |lenBad2#trigger| (T@FrameType T@ListDomainType_9886) Bool)
(declare-fun |len2#trigger| (T@FrameType T@ListDomainType_9886) Bool)
(declare-fun |len#trigger| (T@FrameType T@ListDomainType_9886) Bool)
(declare-fun len_3 (T@PolymorphicMapType_6130 T@ListDomainType_9886) Int)
(declare-fun len2 (T@PolymorphicMapType_6130 T@ListDomainType_9886) Int)
(declare-fun lenBad2 (T@PolymorphicMapType_6130 T@ListDomainType_9886) Int)
(declare-fun get_List_tail_3584 (T@ListDomainType_9886) T@ListDomainType_9886)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6130 T@PolymorphicMapType_6130 T@PolymorphicMapType_6151) Bool)
(declare-fun IsPredicateField_6190_16288 (T@Field_6190_16197) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6190 (T@Field_6190_16197) T@Field_6190_16330)
(declare-fun HasDirectPerm_6190_16261 (T@PolymorphicMapType_6151 T@Ref T@Field_6190_16197) Bool)
(declare-fun IsWandField_6190_17837 (T@Field_6190_16197) Bool)
(declare-fun WandMaskField_6190 (T@Field_6190_16197) T@Field_6190_16330)
(declare-fun dummyHeap () T@PolymorphicMapType_6130)
(declare-fun ZeroMask () T@PolymorphicMapType_6151)
(declare-fun $allocated () T@Field_6190_53)
(declare-fun InsidePredicate_6190_6190 (T@Field_6190_16197 T@FrameType T@Field_6190_16197 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6190_20800 (T@Field_6190_16330) Bool)
(declare-fun IsWandField_6190_20816 (T@Field_6190_16330) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6190_6204 (T@Field_6203_6204) Bool)
(declare-fun IsWandField_6190_6204 (T@Field_6203_6204) Bool)
(declare-fun IsPredicateField_6190_53 (T@Field_6190_53) Bool)
(declare-fun IsWandField_6190_53 (T@Field_6190_53) Bool)
(declare-fun HasDirectPerm_6190_21171 (T@PolymorphicMapType_6151 T@Ref T@Field_6190_16330) Bool)
(declare-fun HasDirectPerm_6190_6204 (T@PolymorphicMapType_6151 T@Ref T@Field_6203_6204) Bool)
(declare-fun HasDirectPerm_6190_53 (T@PolymorphicMapType_6151 T@Ref T@Field_6190_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun lenBad (T@PolymorphicMapType_6130 T@ListDomainType_9886 T@ValDomainType) Int)
(declare-fun sumMask (T@PolymorphicMapType_6151 T@PolymorphicMapType_6151 T@PolymorphicMapType_6151) Bool)
(declare-fun |len#frame| (T@FrameType T@ListDomainType_9886) Int)
(declare-fun |len2#frame| (T@FrameType T@ListDomainType_9886) Int)
(declare-fun |lenBad2#frame| (T@FrameType T@ListDomainType_9886) Int)
(declare-fun get_List_value_3692 (T@ListDomainType_9886) T@ValDomainType)
(declare-fun |lenBad#trigger| (T@FrameType T@ListDomainType_9886 T@ValDomainType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6130) (Heap1 T@PolymorphicMapType_6130) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((x T@ListDomainType_9886) ) (! (bounded_14217 x)
 :qid |stdinbpl.277:19|
 :skolemid |29|
 :pattern ( (bounded_14217 x))
)))
(assert (forall ((Heap T@PolymorphicMapType_6130) (Mask T@PolymorphicMapType_6151) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((tail_0 T@ListDomainType_9886) (value_1 T@ValDomainType) ) (! (decreasing_14197 tail_0 (Cons_3692 value_1 tail_0))
 :qid |stdinbpl.265:19|
 :skolemid |27|
 :pattern ( (Cons_3692 value_1 tail_0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6130) (Heap1@@0 T@PolymorphicMapType_6130) (Heap2 T@PolymorphicMapType_6130) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((v1 T@ListDomainType_9886) (v2 T@ListDomainType_9886) (v3 T@ListDomainType_9886) ) (!  (=> (and (decreasing_14197 v1 v2) (decreasing_14197 v2 v3)) (decreasing_14197 v1 v3))
 :qid |stdinbpl.271:19|
 :skolemid |28|
 :pattern ( (decreasing_14197 v1 v2) (decreasing_14197 v2 v3))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6190_16330) ) (!  (not (select (|PolymorphicMapType_6679_6190_17310#PolymorphicMapType_6679| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6679_6190_17310#PolymorphicMapType_6679| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6190_16197) ) (!  (not (select (|PolymorphicMapType_6679_6190_16197#PolymorphicMapType_6679| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6679_6190_16197#PolymorphicMapType_6679| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6203_6204) ) (!  (not (select (|PolymorphicMapType_6679_6190_6204#PolymorphicMapType_6679| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6679_6190_6204#PolymorphicMapType_6679| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6190_53) ) (!  (not (select (|PolymorphicMapType_6679_6190_53#PolymorphicMapType_6679| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6679_6190_53#PolymorphicMapType_6679| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6130) (l_2 T@ListDomainType_9886) (v_2 T@ValDomainType) ) (! (dummyFunction_1760 (|lenBad#triggerStateless| l_2 v_2))
 :qid |stdinbpl.452:15|
 :skolemid |41|
 :pattern ( (|lenBad'| Heap@@0 l_2 v_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6130) (Mask@@0 T@PolymorphicMapType_6151) (l_2@@0 T@ListDomainType_9886) (v_2@@0 T@ValDomainType) ) (!  (=> (state Heap@@1 Mask@@0) (= (|lenBad'| Heap@@1 l_2@@0 v_2@@0) (|lenBad#frame| EmptyFrame l_2@@0 v_2@@0)))
 :qid |stdinbpl.465:15|
 :skolemid |43|
 :pattern ( (state Heap@@1 Mask@@0) (|lenBad'| Heap@@1 l_2@@0 v_2@@0))
)))
(assert (= (List_tag_3584 Nil_3695) 1))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6130) (l_2@@1 T@ListDomainType_9886) ) (! (dummyFunction_1760 (|len#triggerStateless| l_2@@1))
 :qid |stdinbpl.293:15|
 :skolemid |31|
 :pattern ( (|len'| Heap@@2 l_2@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6130) (l_2@@2 T@ListDomainType_9886) ) (! (dummyFunction_1760 (|len2#triggerStateless| l_2@@2))
 :qid |stdinbpl.371:15|
 :skolemid |36|
 :pattern ( (|len2'| Heap@@3 l_2@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6130) (l_2@@3 T@ListDomainType_9886) ) (! (dummyFunction_1760 (|lenBad2#triggerStateless| l_2@@3))
 :qid |stdinbpl.527:15|
 :skolemid |46|
 :pattern ( (|lenBad2'| Heap@@4 l_2@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6130) (Mask@@1 T@PolymorphicMapType_6151) (l_2@@4 T@ListDomainType_9886) ) (!  (=> (and (state Heap@@5 Mask@@1) (or (< AssumeFunctionsAbove 0) (|lenBad2#trigger| EmptyFrame l_2@@4))) (>= (|lenBad2'| Heap@@5 l_2@@4) 0))
 :qid |stdinbpl.546:15|
 :skolemid |49|
 :pattern ( (state Heap@@5 Mask@@1) (|lenBad2'| Heap@@5 l_2@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6130) (Mask@@2 T@PolymorphicMapType_6151) (l_2@@5 T@ListDomainType_9886) ) (!  (=> (and (state Heap@@6 Mask@@2) (or (< AssumeFunctionsAbove 1) (|len2#trigger| EmptyFrame l_2@@5))) (>= (|len2'| Heap@@6 l_2@@5) 0))
 :qid |stdinbpl.390:15|
 :skolemid |39|
 :pattern ( (state Heap@@6 Mask@@2) (|len2'| Heap@@6 l_2@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6130) (Mask@@3 T@PolymorphicMapType_6151) (l_2@@6 T@ListDomainType_9886) ) (!  (=> (and (state Heap@@7 Mask@@3) (or (< AssumeFunctionsAbove 2) (|len#trigger| EmptyFrame l_2@@6))) (>= (|len'| Heap@@7 l_2@@6) 0))
 :qid |stdinbpl.312:15|
 :skolemid |34|
 :pattern ( (state Heap@@7 Mask@@3) (|len'| Heap@@7 l_2@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6130) (l_2@@7 T@ListDomainType_9886) ) (!  (and (= (len_3 Heap@@8 l_2@@7) (|len'| Heap@@8 l_2@@7)) (dummyFunction_1760 (|len#triggerStateless| l_2@@7)))
 :qid |stdinbpl.289:15|
 :skolemid |30|
 :pattern ( (len_3 Heap@@8 l_2@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6130) (l_2@@8 T@ListDomainType_9886) ) (!  (and (= (len2 Heap@@9 l_2@@8) (|len2'| Heap@@9 l_2@@8)) (dummyFunction_1760 (|len2#triggerStateless| l_2@@8)))
 :qid |stdinbpl.367:15|
 :skolemid |35|
 :pattern ( (len2 Heap@@9 l_2@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6130) (l_2@@9 T@ListDomainType_9886) ) (!  (and (= (lenBad2 Heap@@10 l_2@@9) (|lenBad2'| Heap@@10 l_2@@9)) (dummyFunction_1760 (|lenBad2#triggerStateless| l_2@@9)))
 :qid |stdinbpl.523:15|
 :skolemid |45|
 :pattern ( (lenBad2 Heap@@10 l_2@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6130) (Mask@@4 T@PolymorphicMapType_6151) (l_2@@10 T@ListDomainType_9886) ) (!  (=> (and (state Heap@@11 Mask@@4) (< AssumeFunctionsAbove 2)) (= (len_3 Heap@@11 l_2@@10) (ite (= (List_tag_3584 l_2@@10) 1) 0 (+ 1 (|len'| Heap@@11 (get_List_tail_3584 l_2@@10))))))
 :qid |stdinbpl.299:15|
 :skolemid |32|
 :pattern ( (state Heap@@11 Mask@@4) (len_3 Heap@@11 l_2@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6130) (ExhaleHeap T@PolymorphicMapType_6130) (Mask@@5 T@PolymorphicMapType_6151) (pm_f T@Field_6190_16197) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@5) (=> (and (HasDirectPerm_6190_16261 Mask@@5 null pm_f) (IsPredicateField_6190_16288 pm_f)) (= (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@12) null (PredicateMaskField_6190 pm_f)) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap) null (PredicateMaskField_6190 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@5) (IsPredicateField_6190_16288 pm_f) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap) null (PredicateMaskField_6190 pm_f)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6130) (ExhaleHeap@@0 T@PolymorphicMapType_6130) (Mask@@6 T@PolymorphicMapType_6151) (pm_f@@0 T@Field_6190_16197) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@6) (=> (and (HasDirectPerm_6190_16261 Mask@@6 null pm_f@@0) (IsWandField_6190_17837 pm_f@@0)) (= (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@13) null (WandMaskField_6190 pm_f@@0)) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@0) null (WandMaskField_6190 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@6) (IsWandField_6190_17837 pm_f@@0) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@0) null (WandMaskField_6190 pm_f@@0)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6130) (ExhaleHeap@@1 T@PolymorphicMapType_6130) (Mask@@7 T@PolymorphicMapType_6151) (pm_f@@1 T@Field_6190_16197) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@7) (=> (and (HasDirectPerm_6190_16261 Mask@@7 null pm_f@@1) (IsPredicateField_6190_16288 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6190_53) ) (!  (=> (select (|PolymorphicMapType_6679_6190_53#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@14) null (PredicateMaskField_6190 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@14) o2 f_2) (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6203_6204) ) (!  (=> (select (|PolymorphicMapType_6679_6190_6204#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@14) null (PredicateMaskField_6190 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@14) o2@@0 f_2@@0) (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6190_16197) ) (!  (=> (select (|PolymorphicMapType_6679_6190_16197#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@14) null (PredicateMaskField_6190 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@14) o2@@1 f_2@@1) (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6190_16330) ) (!  (=> (select (|PolymorphicMapType_6679_6190_17310#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@14) null (PredicateMaskField_6190 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@14) o2@@2 f_2@@2) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@7) (IsPredicateField_6190_16288 pm_f@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6130) (ExhaleHeap@@2 T@PolymorphicMapType_6130) (Mask@@8 T@PolymorphicMapType_6151) (pm_f@@2 T@Field_6190_16197) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@8) (=> (and (HasDirectPerm_6190_16261 Mask@@8 null pm_f@@2) (IsWandField_6190_17837 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6190_53) ) (!  (=> (select (|PolymorphicMapType_6679_6190_53#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@15) null (WandMaskField_6190 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@15) o2@@3 f_2@@3) (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6203_6204) ) (!  (=> (select (|PolymorphicMapType_6679_6190_6204#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@15) null (WandMaskField_6190 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@15) o2@@4 f_2@@4) (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6190_16197) ) (!  (=> (select (|PolymorphicMapType_6679_6190_16197#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@15) null (WandMaskField_6190 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@15) o2@@5 f_2@@5) (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_6190_16330) ) (!  (=> (select (|PolymorphicMapType_6679_6190_17310#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@15) null (WandMaskField_6190 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@15) o2@@6 f_2@@6) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@8) (IsWandField_6190_17837 pm_f@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6130) (Mask@@9 T@PolymorphicMapType_6151) (l_2@@11 T@ListDomainType_9886) ) (!  (=> (and (state Heap@@16 Mask@@9) (< AssumeFunctionsAbove 1)) (= (len2 Heap@@16 l_2@@11) (ite (= (List_tag_3584 l_2@@11) 1) 0 (ite (= (List_tag_3584 (get_List_tail_3584 l_2@@11)) 1) 1 (+ 2 (|len2'| Heap@@16 (get_List_tail_3584 (get_List_tail_3584 l_2@@11))))))))
 :qid |stdinbpl.377:15|
 :skolemid |37|
 :pattern ( (state Heap@@16 Mask@@9) (len2 Heap@@16 l_2@@11))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6130) (ExhaleHeap@@3 T@PolymorphicMapType_6130) (Mask@@10 T@PolymorphicMapType_6151) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@3 Mask@@10) (=> (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@17) o_1 $allocated) (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@3 Mask@@10) (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_6190_16197) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6190_6190 p v_1 p w))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6190_6190 p v_1 p w))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6130) (ExhaleHeap@@4 T@PolymorphicMapType_6130) (Mask@@11 T@PolymorphicMapType_6151) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@4 Mask@@11) (succHeap Heap@@18 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@4 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6151) (o_2@@3 T@Ref) (f_4@@3 T@Field_6190_16330) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| Mask@@12) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6190_20800 f_4@@3))) (not (IsWandField_6190_20816 f_4@@3))) (<= (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| Mask@@12) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| Mask@@12) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6151) (o_2@@4 T@Ref) (f_4@@4 T@Field_6190_16197) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| Mask@@13) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6190_16288 f_4@@4))) (not (IsWandField_6190_17837 f_4@@4))) (<= (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| Mask@@13) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| Mask@@13) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6151) (o_2@@5 T@Ref) (f_4@@5 T@Field_6203_6204) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| Mask@@14) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6190_6204 f_4@@5))) (not (IsWandField_6190_6204 f_4@@5))) (<= (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| Mask@@14) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| Mask@@14) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6151) (o_2@@6 T@Ref) (f_4@@6 T@Field_6190_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| Mask@@15) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6190_53 f_4@@6))) (not (IsWandField_6190_53 f_4@@6))) (<= (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| Mask@@15) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| Mask@@15) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6151) (o_2@@7 T@Ref) (f_4@@7 T@Field_6190_16330) ) (! (= (HasDirectPerm_6190_21171 Mask@@16 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| Mask@@16) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6190_21171 Mask@@16 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6151) (o_2@@8 T@Ref) (f_4@@8 T@Field_6190_16197) ) (! (= (HasDirectPerm_6190_16261 Mask@@17 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| Mask@@17) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6190_16261 Mask@@17 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6151) (o_2@@9 T@Ref) (f_4@@9 T@Field_6203_6204) ) (! (= (HasDirectPerm_6190_6204 Mask@@18 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| Mask@@18) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6190_6204 Mask@@18 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6151) (o_2@@10 T@Ref) (f_4@@10 T@Field_6190_53) ) (! (= (HasDirectPerm_6190_53 Mask@@19 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| Mask@@19) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6190_53 Mask@@19 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.165:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6130) (ExhaleHeap@@5 T@PolymorphicMapType_6130) (Mask@@20 T@PolymorphicMapType_6151) (o_1@@0 T@Ref) (f_2@@7 T@Field_6190_16330) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_6190_21171 Mask@@20 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@19) o_1@@0 f_2@@7) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6130) (ExhaleHeap@@6 T@PolymorphicMapType_6130) (Mask@@21 T@PolymorphicMapType_6151) (o_1@@1 T@Ref) (f_2@@8 T@Field_6190_16197) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_6190_16261 Mask@@21 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@20) o_1@@1 f_2@@8) (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6130) (ExhaleHeap@@7 T@PolymorphicMapType_6130) (Mask@@22 T@PolymorphicMapType_6151) (o_1@@2 T@Ref) (f_2@@9 T@Field_6203_6204) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_6190_6204 Mask@@22 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@21) o_1@@2 f_2@@9) (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6130) (ExhaleHeap@@8 T@PolymorphicMapType_6130) (Mask@@23 T@PolymorphicMapType_6151) (o_1@@3 T@Ref) (f_2@@10 T@Field_6190_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_6190_53 Mask@@23 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@22) o_1@@3 f_2@@10) (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6130) (Mask@@24 T@PolymorphicMapType_6151) (l_2@@12 T@ListDomainType_9886) (v_2@@1 T@ValDomainType) ) (!  (=> (and (state Heap@@23 Mask@@24) (< AssumeFunctionsAbove 3)) (= (lenBad Heap@@23 l_2@@12 v_2@@1) (|lenBad'| Heap@@23 (Cons_3692 v_2@@1 Nil_3695) v_2@@1)))
 :qid |stdinbpl.458:15|
 :skolemid |42|
 :pattern ( (state Heap@@23 Mask@@24) (lenBad Heap@@23 l_2@@12 v_2@@1))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6190_16330) ) (! (= (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6190_16197) ) (! (= (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6203_6204) ) (! (= (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6190_53) ) (! (= (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6130) (l_2@@13 T@ListDomainType_9886) (v_2@@2 T@ValDomainType) ) (!  (and (= (lenBad Heap@@24 l_2@@13 v_2@@2) (|lenBad'| Heap@@24 l_2@@13 v_2@@2)) (dummyFunction_1760 (|lenBad#triggerStateless| l_2@@13 v_2@@2)))
 :qid |stdinbpl.448:15|
 :skolemid |40|
 :pattern ( (lenBad Heap@@24 l_2@@13 v_2@@2))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6151) (SummandMask1 T@PolymorphicMapType_6151) (SummandMask2 T@PolymorphicMapType_6151) (o_2@@15 T@Ref) (f_4@@15 T@Field_6190_16330) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6151) (SummandMask1@@0 T@PolymorphicMapType_6151) (SummandMask2@@0 T@PolymorphicMapType_6151) (o_2@@16 T@Ref) (f_4@@16 T@Field_6190_16197) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6151) (SummandMask1@@1 T@PolymorphicMapType_6151) (SummandMask2@@1 T@PolymorphicMapType_6151) (o_2@@17 T@Ref) (f_4@@17 T@Field_6203_6204) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6151) (SummandMask1@@2 T@PolymorphicMapType_6151) (SummandMask2@@2 T@PolymorphicMapType_6151) (o_2@@18 T@Ref) (f_4@@18 T@Field_6190_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6130) (Mask@@25 T@PolymorphicMapType_6151) (l_2@@14 T@ListDomainType_9886) ) (!  (=> (and (state Heap@@25 Mask@@25) (< AssumeFunctionsAbove 0)) (= (lenBad2 Heap@@25 l_2@@14) (+ 1 (|lenBad2'| Heap@@25 l_2@@14))))
 :qid |stdinbpl.533:15|
 :skolemid |47|
 :pattern ( (state Heap@@25 Mask@@25) (lenBad2 Heap@@25 l_2@@14))
)))
(assert (forall ((value_1@@0 T@ValDomainType) (tail_1 T@ListDomainType_9886) ) (! (= (List_tag_3584 (Cons_3692 value_1@@0 tail_1)) 0)
 :qid |stdinbpl.243:19|
 :skolemid |25|
 :pattern ( (Cons_3692 value_1@@0 tail_1))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6130) (Mask@@26 T@PolymorphicMapType_6151) (l_2@@15 T@ListDomainType_9886) ) (!  (=> (state Heap@@26 Mask@@26) (= (|len'| Heap@@26 l_2@@15) (|len#frame| EmptyFrame l_2@@15)))
 :qid |stdinbpl.306:15|
 :skolemid |33|
 :pattern ( (state Heap@@26 Mask@@26) (|len'| Heap@@26 l_2@@15))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6130) (Mask@@27 T@PolymorphicMapType_6151) (l_2@@16 T@ListDomainType_9886) ) (!  (=> (state Heap@@27 Mask@@27) (= (|len2'| Heap@@27 l_2@@16) (|len2#frame| EmptyFrame l_2@@16)))
 :qid |stdinbpl.384:15|
 :skolemid |38|
 :pattern ( (state Heap@@27 Mask@@27) (|len2'| Heap@@27 l_2@@16))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6130) (Mask@@28 T@PolymorphicMapType_6151) (l_2@@17 T@ListDomainType_9886) ) (!  (=> (state Heap@@28 Mask@@28) (= (|lenBad2'| Heap@@28 l_2@@17) (|lenBad2#frame| EmptyFrame l_2@@17)))
 :qid |stdinbpl.540:15|
 :skolemid |48|
 :pattern ( (state Heap@@28 Mask@@28) (|lenBad2'| Heap@@28 l_2@@17))
)))
(assert (forall ((value_1@@1 T@ValDomainType) (tail_1@@0 T@ListDomainType_9886) ) (! (= value_1@@1 (get_List_value_3692 (Cons_3692 value_1@@1 tail_1@@0)))
 :qid |stdinbpl.225:19|
 :skolemid |22|
 :pattern ( (Cons_3692 value_1@@1 tail_1@@0))
)))
(assert (forall ((value_1@@2 T@ValDomainType) (tail_1@@1 T@ListDomainType_9886) ) (! (= tail_1@@1 (get_List_tail_3584 (Cons_3692 value_1@@2 tail_1@@1)))
 :qid |stdinbpl.231:19|
 :skolemid |23|
 :pattern ( (Cons_3692 value_1@@2 tail_1@@1))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6130) (o T@Ref) (f_3 T@Field_6190_16197) (v T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_6130 (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@29) (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@29) (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@29) (store (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@29) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6130 (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@29) (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@29) (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@29) (store (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@29) o f_3 v)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6130) (o@@0 T@Ref) (f_3@@0 T@Field_6190_16330) (v@@0 T@PolymorphicMapType_6679) ) (! (succHeap Heap@@30 (PolymorphicMapType_6130 (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@30) (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@30) (store (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@30) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6130 (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@30) (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@30) (store (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@30) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6130) (o@@1 T@Ref) (f_3@@1 T@Field_6203_6204) (v@@1 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_6130 (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@31) (store (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@31) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@31) (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6130 (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@31) (store (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@31) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@31) (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6130) (o@@2 T@Ref) (f_3@@2 T@Field_6190_53) (v@@2 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_6130 (store (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@32) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@32) (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@32) (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6130 (store (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@32) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@32) (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@32) (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@32)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_6203_6204) (Heap@@33 T@PolymorphicMapType_6130) ) (!  (=> (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@33) o@@3 $allocated) (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@33) (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@33) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@33) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_6190_16197) (v_1@@0 T@FrameType) (q T@Field_6190_16197) (w@@0 T@FrameType) (r T@Field_6190_16197) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6190_6190 p@@1 v_1@@0 q w@@0) (InsidePredicate_6190_6190 q w@@0 r u)) (InsidePredicate_6190_6190 p@@1 v_1@@0 r u))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6190_6190 p@@1 v_1@@0 q w@@0) (InsidePredicate_6190_6190 q w@@0 r u))
)))
(assert (forall ((t_2 T@ListDomainType_9886) ) (!  (or (= t_2 Nil_3695) (= t_2 (Cons_3692 (get_List_value_3692 t_2) (get_List_tail_3584 t_2))))
 :qid |stdinbpl.249:19|
 :skolemid |26|
 :pattern ( (List_tag_3584 t_2))
 :pattern ( (get_List_value_3692 t_2))
 :pattern ( (get_List_tail_3584 t_2))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6130) (Mask@@29 T@PolymorphicMapType_6151) (l_2@@18 T@ListDomainType_9886) (v_2@@3 T@ValDomainType) ) (!  (=> (and (state Heap@@34 Mask@@29) (or (< AssumeFunctionsAbove 3) (|lenBad#trigger| EmptyFrame l_2@@18 v_2@@3))) (>= (|lenBad'| Heap@@34 l_2@@18 v_2@@3) 0))
 :qid |stdinbpl.471:15|
 :skolemid |44|
 :pattern ( (state Heap@@34 Mask@@29) (|lenBad'| Heap@@34 l_2@@18 v_2@@3))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun l_2@@19 () T@ListDomainType_9886)
(declare-fun Result@0 () Int)
(declare-fun Heap@@35 () T@PolymorphicMapType_6130)
(set-info :boogie-vc-id |lenBad2#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon4_Else_correct  (=> (|lenBad2#trigger| EmptyFrame l_2@@19) (=> (and (= Result@0 (+ 1 (lenBad2 Heap@@35 l_2@@19))) (= (ControlFlow 0 3) (- 0 2))) (>= Result@0 0)))))
(let ((anon4_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@35 ZeroMask) (=> (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 0)) (and (=> (= (ControlFlow 0 4) 1) anon4_Then_correct) (=> (= (ControlFlow 0 4) 3) anon4_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(declare-sort T@Field_6190_53 0)
(declare-sort T@Field_6203_6204 0)
(declare-sort T@Field_6190_16330 0)
(declare-sort T@Field_6190_16197 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6151 0)) (((PolymorphicMapType_6151 (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| (Array T@Ref T@Field_6190_53 Real)) (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| (Array T@Ref T@Field_6203_6204 Real)) (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| (Array T@Ref T@Field_6190_16197 Real)) (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| (Array T@Ref T@Field_6190_16330 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6679 0)) (((PolymorphicMapType_6679 (|PolymorphicMapType_6679_6190_53#PolymorphicMapType_6679| (Array T@Ref T@Field_6190_53 Bool)) (|PolymorphicMapType_6679_6190_6204#PolymorphicMapType_6679| (Array T@Ref T@Field_6203_6204 Bool)) (|PolymorphicMapType_6679_6190_16197#PolymorphicMapType_6679| (Array T@Ref T@Field_6190_16197 Bool)) (|PolymorphicMapType_6679_6190_17310#PolymorphicMapType_6679| (Array T@Ref T@Field_6190_16330 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6130 0)) (((PolymorphicMapType_6130 (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| (Array T@Ref T@Field_6190_53 Bool)) (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| (Array T@Ref T@Field_6203_6204 T@Ref)) (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| (Array T@Ref T@Field_6190_16330 T@PolymorphicMapType_6679)) (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| (Array T@Ref T@Field_6190_16197 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_6130 T@PolymorphicMapType_6130) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6130 T@PolymorphicMapType_6130) Bool)
(declare-sort T@ListDomainType_9886 0)
(declare-fun bounded_14217 (T@ListDomainType_9886) Bool)
(declare-fun state (T@PolymorphicMapType_6130 T@PolymorphicMapType_6151) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6151) Bool)
(declare-sort T@ValDomainType 0)
(declare-fun Cons_3692 (T@ValDomainType T@ListDomainType_9886) T@ListDomainType_9886)
(declare-fun decreasing_14197 (T@ListDomainType_9886 T@ListDomainType_9886) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6679)
(declare-fun |lenBad'| (T@PolymorphicMapType_6130 T@ListDomainType_9886 T@ValDomainType) Int)
(declare-fun dummyFunction_1760 (Int) Bool)
(declare-fun |lenBad#triggerStateless| (T@ListDomainType_9886 T@ValDomainType) Int)
(declare-fun |lenBad#frame| (T@FrameType T@ListDomainType_9886 T@ValDomainType) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun List_tag_3584 (T@ListDomainType_9886) Int)
(declare-fun Nil_3695 () T@ListDomainType_9886)
(declare-fun |len'| (T@PolymorphicMapType_6130 T@ListDomainType_9886) Int)
(declare-fun |len#triggerStateless| (T@ListDomainType_9886) Int)
(declare-fun |len2'| (T@PolymorphicMapType_6130 T@ListDomainType_9886) Int)
(declare-fun |len2#triggerStateless| (T@ListDomainType_9886) Int)
(declare-fun |lenBad2'| (T@PolymorphicMapType_6130 T@ListDomainType_9886) Int)
(declare-fun |lenBad2#triggerStateless| (T@ListDomainType_9886) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |lenBad2#trigger| (T@FrameType T@ListDomainType_9886) Bool)
(declare-fun |len2#trigger| (T@FrameType T@ListDomainType_9886) Bool)
(declare-fun |len#trigger| (T@FrameType T@ListDomainType_9886) Bool)
(declare-fun len_3 (T@PolymorphicMapType_6130 T@ListDomainType_9886) Int)
(declare-fun len2 (T@PolymorphicMapType_6130 T@ListDomainType_9886) Int)
(declare-fun lenBad2 (T@PolymorphicMapType_6130 T@ListDomainType_9886) Int)
(declare-fun get_List_tail_3584 (T@ListDomainType_9886) T@ListDomainType_9886)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6130 T@PolymorphicMapType_6130 T@PolymorphicMapType_6151) Bool)
(declare-fun IsPredicateField_6190_16288 (T@Field_6190_16197) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6190 (T@Field_6190_16197) T@Field_6190_16330)
(declare-fun HasDirectPerm_6190_16261 (T@PolymorphicMapType_6151 T@Ref T@Field_6190_16197) Bool)
(declare-fun IsWandField_6190_17837 (T@Field_6190_16197) Bool)
(declare-fun WandMaskField_6190 (T@Field_6190_16197) T@Field_6190_16330)
(declare-fun dummyHeap () T@PolymorphicMapType_6130)
(declare-fun ZeroMask () T@PolymorphicMapType_6151)
(declare-fun $allocated () T@Field_6190_53)
(declare-fun InsidePredicate_6190_6190 (T@Field_6190_16197 T@FrameType T@Field_6190_16197 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6190_20800 (T@Field_6190_16330) Bool)
(declare-fun IsWandField_6190_20816 (T@Field_6190_16330) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6190_6204 (T@Field_6203_6204) Bool)
(declare-fun IsWandField_6190_6204 (T@Field_6203_6204) Bool)
(declare-fun IsPredicateField_6190_53 (T@Field_6190_53) Bool)
(declare-fun IsWandField_6190_53 (T@Field_6190_53) Bool)
(declare-fun HasDirectPerm_6190_21171 (T@PolymorphicMapType_6151 T@Ref T@Field_6190_16330) Bool)
(declare-fun HasDirectPerm_6190_6204 (T@PolymorphicMapType_6151 T@Ref T@Field_6203_6204) Bool)
(declare-fun HasDirectPerm_6190_53 (T@PolymorphicMapType_6151 T@Ref T@Field_6190_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun lenBad (T@PolymorphicMapType_6130 T@ListDomainType_9886 T@ValDomainType) Int)
(declare-fun sumMask (T@PolymorphicMapType_6151 T@PolymorphicMapType_6151 T@PolymorphicMapType_6151) Bool)
(declare-fun |len#frame| (T@FrameType T@ListDomainType_9886) Int)
(declare-fun |len2#frame| (T@FrameType T@ListDomainType_9886) Int)
(declare-fun |lenBad2#frame| (T@FrameType T@ListDomainType_9886) Int)
(declare-fun get_List_value_3692 (T@ListDomainType_9886) T@ValDomainType)
(declare-fun |lenBad#trigger| (T@FrameType T@ListDomainType_9886 T@ValDomainType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6130) (Heap1 T@PolymorphicMapType_6130) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((x T@ListDomainType_9886) ) (! (bounded_14217 x)
 :qid |stdinbpl.277:19|
 :skolemid |29|
 :pattern ( (bounded_14217 x))
)))
(assert (forall ((Heap T@PolymorphicMapType_6130) (Mask T@PolymorphicMapType_6151) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((tail_0 T@ListDomainType_9886) (value_1 T@ValDomainType) ) (! (decreasing_14197 tail_0 (Cons_3692 value_1 tail_0))
 :qid |stdinbpl.265:19|
 :skolemid |27|
 :pattern ( (Cons_3692 value_1 tail_0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6130) (Heap1@@0 T@PolymorphicMapType_6130) (Heap2 T@PolymorphicMapType_6130) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((v1 T@ListDomainType_9886) (v2 T@ListDomainType_9886) (v3 T@ListDomainType_9886) ) (!  (=> (and (decreasing_14197 v1 v2) (decreasing_14197 v2 v3)) (decreasing_14197 v1 v3))
 :qid |stdinbpl.271:19|
 :skolemid |28|
 :pattern ( (decreasing_14197 v1 v2) (decreasing_14197 v2 v3))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6190_16330) ) (!  (not (select (|PolymorphicMapType_6679_6190_17310#PolymorphicMapType_6679| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6679_6190_17310#PolymorphicMapType_6679| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6190_16197) ) (!  (not (select (|PolymorphicMapType_6679_6190_16197#PolymorphicMapType_6679| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6679_6190_16197#PolymorphicMapType_6679| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6203_6204) ) (!  (not (select (|PolymorphicMapType_6679_6190_6204#PolymorphicMapType_6679| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6679_6190_6204#PolymorphicMapType_6679| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6190_53) ) (!  (not (select (|PolymorphicMapType_6679_6190_53#PolymorphicMapType_6679| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6679_6190_53#PolymorphicMapType_6679| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6130) (l_2 T@ListDomainType_9886) (v_2 T@ValDomainType) ) (! (dummyFunction_1760 (|lenBad#triggerStateless| l_2 v_2))
 :qid |stdinbpl.452:15|
 :skolemid |41|
 :pattern ( (|lenBad'| Heap@@0 l_2 v_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6130) (Mask@@0 T@PolymorphicMapType_6151) (l_2@@0 T@ListDomainType_9886) (v_2@@0 T@ValDomainType) ) (!  (=> (state Heap@@1 Mask@@0) (= (|lenBad'| Heap@@1 l_2@@0 v_2@@0) (|lenBad#frame| EmptyFrame l_2@@0 v_2@@0)))
 :qid |stdinbpl.465:15|
 :skolemid |43|
 :pattern ( (state Heap@@1 Mask@@0) (|lenBad'| Heap@@1 l_2@@0 v_2@@0))
)))
(assert (= (List_tag_3584 Nil_3695) 1))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6130) (l_2@@1 T@ListDomainType_9886) ) (! (dummyFunction_1760 (|len#triggerStateless| l_2@@1))
 :qid |stdinbpl.293:15|
 :skolemid |31|
 :pattern ( (|len'| Heap@@2 l_2@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6130) (l_2@@2 T@ListDomainType_9886) ) (! (dummyFunction_1760 (|len2#triggerStateless| l_2@@2))
 :qid |stdinbpl.371:15|
 :skolemid |36|
 :pattern ( (|len2'| Heap@@3 l_2@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6130) (l_2@@3 T@ListDomainType_9886) ) (! (dummyFunction_1760 (|lenBad2#triggerStateless| l_2@@3))
 :qid |stdinbpl.527:15|
 :skolemid |46|
 :pattern ( (|lenBad2'| Heap@@4 l_2@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6130) (Mask@@1 T@PolymorphicMapType_6151) (l_2@@4 T@ListDomainType_9886) ) (!  (=> (and (state Heap@@5 Mask@@1) (or (< AssumeFunctionsAbove 0) (|lenBad2#trigger| EmptyFrame l_2@@4))) (>= (|lenBad2'| Heap@@5 l_2@@4) 0))
 :qid |stdinbpl.546:15|
 :skolemid |49|
 :pattern ( (state Heap@@5 Mask@@1) (|lenBad2'| Heap@@5 l_2@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6130) (Mask@@2 T@PolymorphicMapType_6151) (l_2@@5 T@ListDomainType_9886) ) (!  (=> (and (state Heap@@6 Mask@@2) (or (< AssumeFunctionsAbove 1) (|len2#trigger| EmptyFrame l_2@@5))) (>= (|len2'| Heap@@6 l_2@@5) 0))
 :qid |stdinbpl.390:15|
 :skolemid |39|
 :pattern ( (state Heap@@6 Mask@@2) (|len2'| Heap@@6 l_2@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6130) (Mask@@3 T@PolymorphicMapType_6151) (l_2@@6 T@ListDomainType_9886) ) (!  (=> (and (state Heap@@7 Mask@@3) (or (< AssumeFunctionsAbove 2) (|len#trigger| EmptyFrame l_2@@6))) (>= (|len'| Heap@@7 l_2@@6) 0))
 :qid |stdinbpl.312:15|
 :skolemid |34|
 :pattern ( (state Heap@@7 Mask@@3) (|len'| Heap@@7 l_2@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6130) (l_2@@7 T@ListDomainType_9886) ) (!  (and (= (len_3 Heap@@8 l_2@@7) (|len'| Heap@@8 l_2@@7)) (dummyFunction_1760 (|len#triggerStateless| l_2@@7)))
 :qid |stdinbpl.289:15|
 :skolemid |30|
 :pattern ( (len_3 Heap@@8 l_2@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6130) (l_2@@8 T@ListDomainType_9886) ) (!  (and (= (len2 Heap@@9 l_2@@8) (|len2'| Heap@@9 l_2@@8)) (dummyFunction_1760 (|len2#triggerStateless| l_2@@8)))
 :qid |stdinbpl.367:15|
 :skolemid |35|
 :pattern ( (len2 Heap@@9 l_2@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6130) (l_2@@9 T@ListDomainType_9886) ) (!  (and (= (lenBad2 Heap@@10 l_2@@9) (|lenBad2'| Heap@@10 l_2@@9)) (dummyFunction_1760 (|lenBad2#triggerStateless| l_2@@9)))
 :qid |stdinbpl.523:15|
 :skolemid |45|
 :pattern ( (lenBad2 Heap@@10 l_2@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6130) (Mask@@4 T@PolymorphicMapType_6151) (l_2@@10 T@ListDomainType_9886) ) (!  (=> (and (state Heap@@11 Mask@@4) (< AssumeFunctionsAbove 2)) (= (len_3 Heap@@11 l_2@@10) (ite (= (List_tag_3584 l_2@@10) 1) 0 (+ 1 (|len'| Heap@@11 (get_List_tail_3584 l_2@@10))))))
 :qid |stdinbpl.299:15|
 :skolemid |32|
 :pattern ( (state Heap@@11 Mask@@4) (len_3 Heap@@11 l_2@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6130) (ExhaleHeap T@PolymorphicMapType_6130) (Mask@@5 T@PolymorphicMapType_6151) (pm_f T@Field_6190_16197) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@5) (=> (and (HasDirectPerm_6190_16261 Mask@@5 null pm_f) (IsPredicateField_6190_16288 pm_f)) (= (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@12) null (PredicateMaskField_6190 pm_f)) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap) null (PredicateMaskField_6190 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@5) (IsPredicateField_6190_16288 pm_f) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap) null (PredicateMaskField_6190 pm_f)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6130) (ExhaleHeap@@0 T@PolymorphicMapType_6130) (Mask@@6 T@PolymorphicMapType_6151) (pm_f@@0 T@Field_6190_16197) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@6) (=> (and (HasDirectPerm_6190_16261 Mask@@6 null pm_f@@0) (IsWandField_6190_17837 pm_f@@0)) (= (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@13) null (WandMaskField_6190 pm_f@@0)) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@0) null (WandMaskField_6190 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@6) (IsWandField_6190_17837 pm_f@@0) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@0) null (WandMaskField_6190 pm_f@@0)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6130) (ExhaleHeap@@1 T@PolymorphicMapType_6130) (Mask@@7 T@PolymorphicMapType_6151) (pm_f@@1 T@Field_6190_16197) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@7) (=> (and (HasDirectPerm_6190_16261 Mask@@7 null pm_f@@1) (IsPredicateField_6190_16288 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6190_53) ) (!  (=> (select (|PolymorphicMapType_6679_6190_53#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@14) null (PredicateMaskField_6190 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@14) o2 f_2) (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6203_6204) ) (!  (=> (select (|PolymorphicMapType_6679_6190_6204#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@14) null (PredicateMaskField_6190 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@14) o2@@0 f_2@@0) (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6190_16197) ) (!  (=> (select (|PolymorphicMapType_6679_6190_16197#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@14) null (PredicateMaskField_6190 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@14) o2@@1 f_2@@1) (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6190_16330) ) (!  (=> (select (|PolymorphicMapType_6679_6190_17310#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@14) null (PredicateMaskField_6190 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@14) o2@@2 f_2@@2) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@7) (IsPredicateField_6190_16288 pm_f@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6130) (ExhaleHeap@@2 T@PolymorphicMapType_6130) (Mask@@8 T@PolymorphicMapType_6151) (pm_f@@2 T@Field_6190_16197) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@8) (=> (and (HasDirectPerm_6190_16261 Mask@@8 null pm_f@@2) (IsWandField_6190_17837 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6190_53) ) (!  (=> (select (|PolymorphicMapType_6679_6190_53#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@15) null (WandMaskField_6190 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@15) o2@@3 f_2@@3) (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6203_6204) ) (!  (=> (select (|PolymorphicMapType_6679_6190_6204#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@15) null (WandMaskField_6190 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@15) o2@@4 f_2@@4) (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6190_16197) ) (!  (=> (select (|PolymorphicMapType_6679_6190_16197#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@15) null (WandMaskField_6190 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@15) o2@@5 f_2@@5) (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_6190_16330) ) (!  (=> (select (|PolymorphicMapType_6679_6190_17310#PolymorphicMapType_6679| (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@15) null (WandMaskField_6190 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@15) o2@@6 f_2@@6) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@8) (IsWandField_6190_17837 pm_f@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6130) (Mask@@9 T@PolymorphicMapType_6151) (l_2@@11 T@ListDomainType_9886) ) (!  (=> (and (state Heap@@16 Mask@@9) (< AssumeFunctionsAbove 1)) (= (len2 Heap@@16 l_2@@11) (ite (= (List_tag_3584 l_2@@11) 1) 0 (ite (= (List_tag_3584 (get_List_tail_3584 l_2@@11)) 1) 1 (+ 2 (|len2'| Heap@@16 (get_List_tail_3584 (get_List_tail_3584 l_2@@11))))))))
 :qid |stdinbpl.377:15|
 :skolemid |37|
 :pattern ( (state Heap@@16 Mask@@9) (len2 Heap@@16 l_2@@11))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6130) (ExhaleHeap@@3 T@PolymorphicMapType_6130) (Mask@@10 T@PolymorphicMapType_6151) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@3 Mask@@10) (=> (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@17) o_1 $allocated) (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@3 Mask@@10) (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_6190_16197) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6190_6190 p v_1 p w))
 :qid |stdinbpl.177:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6190_6190 p v_1 p w))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6130) (ExhaleHeap@@4 T@PolymorphicMapType_6130) (Mask@@11 T@PolymorphicMapType_6151) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@4 Mask@@11) (succHeap Heap@@18 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@4 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6151) (o_2@@3 T@Ref) (f_4@@3 T@Field_6190_16330) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| Mask@@12) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6190_20800 f_4@@3))) (not (IsWandField_6190_20816 f_4@@3))) (<= (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| Mask@@12) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| Mask@@12) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6151) (o_2@@4 T@Ref) (f_4@@4 T@Field_6190_16197) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| Mask@@13) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6190_16288 f_4@@4))) (not (IsWandField_6190_17837 f_4@@4))) (<= (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| Mask@@13) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| Mask@@13) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6151) (o_2@@5 T@Ref) (f_4@@5 T@Field_6203_6204) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| Mask@@14) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6190_6204 f_4@@5))) (not (IsWandField_6190_6204 f_4@@5))) (<= (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| Mask@@14) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| Mask@@14) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6151) (o_2@@6 T@Ref) (f_4@@6 T@Field_6190_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| Mask@@15) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6190_53 f_4@@6))) (not (IsWandField_6190_53 f_4@@6))) (<= (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| Mask@@15) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| Mask@@15) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6151) (o_2@@7 T@Ref) (f_4@@7 T@Field_6190_16330) ) (! (= (HasDirectPerm_6190_21171 Mask@@16 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| Mask@@16) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6190_21171 Mask@@16 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6151) (o_2@@8 T@Ref) (f_4@@8 T@Field_6190_16197) ) (! (= (HasDirectPerm_6190_16261 Mask@@17 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| Mask@@17) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6190_16261 Mask@@17 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6151) (o_2@@9 T@Ref) (f_4@@9 T@Field_6203_6204) ) (! (= (HasDirectPerm_6190_6204 Mask@@18 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| Mask@@18) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6190_6204 Mask@@18 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6151) (o_2@@10 T@Ref) (f_4@@10 T@Field_6190_53) ) (! (= (HasDirectPerm_6190_53 Mask@@19 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| Mask@@19) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6190_53 Mask@@19 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.165:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6130) (ExhaleHeap@@5 T@PolymorphicMapType_6130) (Mask@@20 T@PolymorphicMapType_6151) (o_1@@0 T@Ref) (f_2@@7 T@Field_6190_16330) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_6190_21171 Mask@@20 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@19) o_1@@0 f_2@@7) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6130) (ExhaleHeap@@6 T@PolymorphicMapType_6130) (Mask@@21 T@PolymorphicMapType_6151) (o_1@@1 T@Ref) (f_2@@8 T@Field_6190_16197) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_6190_16261 Mask@@21 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@20) o_1@@1 f_2@@8) (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6130) (ExhaleHeap@@7 T@PolymorphicMapType_6130) (Mask@@22 T@PolymorphicMapType_6151) (o_1@@2 T@Ref) (f_2@@9 T@Field_6203_6204) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_6190_6204 Mask@@22 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@21) o_1@@2 f_2@@9) (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6130) (ExhaleHeap@@8 T@PolymorphicMapType_6130) (Mask@@23 T@PolymorphicMapType_6151) (o_1@@3 T@Ref) (f_2@@10 T@Field_6190_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_6190_53 Mask@@23 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@22) o_1@@3 f_2@@10) (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6130) (Mask@@24 T@PolymorphicMapType_6151) (l_2@@12 T@ListDomainType_9886) (v_2@@1 T@ValDomainType) ) (!  (=> (and (state Heap@@23 Mask@@24) (< AssumeFunctionsAbove 3)) (= (lenBad Heap@@23 l_2@@12 v_2@@1) (|lenBad'| Heap@@23 (Cons_3692 v_2@@1 Nil_3695) v_2@@1)))
 :qid |stdinbpl.458:15|
 :skolemid |42|
 :pattern ( (state Heap@@23 Mask@@24) (lenBad Heap@@23 l_2@@12 v_2@@1))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6190_16330) ) (! (= (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6190_16197) ) (! (= (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6203_6204) ) (! (= (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6190_53) ) (! (= (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6130) (l_2@@13 T@ListDomainType_9886) (v_2@@2 T@ValDomainType) ) (!  (and (= (lenBad Heap@@24 l_2@@13 v_2@@2) (|lenBad'| Heap@@24 l_2@@13 v_2@@2)) (dummyFunction_1760 (|lenBad#triggerStateless| l_2@@13 v_2@@2)))
 :qid |stdinbpl.448:15|
 :skolemid |40|
 :pattern ( (lenBad Heap@@24 l_2@@13 v_2@@2))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6151) (SummandMask1 T@PolymorphicMapType_6151) (SummandMask2 T@PolymorphicMapType_6151) (o_2@@15 T@Ref) (f_4@@15 T@Field_6190_16330) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6151_6190_19891#PolymorphicMapType_6151| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6151) (SummandMask1@@0 T@PolymorphicMapType_6151) (SummandMask2@@0 T@PolymorphicMapType_6151) (o_2@@16 T@Ref) (f_4@@16 T@Field_6190_16197) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6151_6190_16197#PolymorphicMapType_6151| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6151) (SummandMask1@@1 T@PolymorphicMapType_6151) (SummandMask2@@1 T@PolymorphicMapType_6151) (o_2@@17 T@Ref) (f_4@@17 T@Field_6203_6204) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6151_6190_6204#PolymorphicMapType_6151| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6151) (SummandMask1@@2 T@PolymorphicMapType_6151) (SummandMask2@@2 T@PolymorphicMapType_6151) (o_2@@18 T@Ref) (f_4@@18 T@Field_6190_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6151_6190_53#PolymorphicMapType_6151| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6130) (Mask@@25 T@PolymorphicMapType_6151) (l_2@@14 T@ListDomainType_9886) ) (!  (=> (and (state Heap@@25 Mask@@25) (< AssumeFunctionsAbove 0)) (= (lenBad2 Heap@@25 l_2@@14) (+ 1 (|lenBad2'| Heap@@25 l_2@@14))))
 :qid |stdinbpl.533:15|
 :skolemid |47|
 :pattern ( (state Heap@@25 Mask@@25) (lenBad2 Heap@@25 l_2@@14))
)))
(assert (forall ((value_1@@0 T@ValDomainType) (tail_1 T@ListDomainType_9886) ) (! (= (List_tag_3584 (Cons_3692 value_1@@0 tail_1)) 0)
 :qid |stdinbpl.243:19|
 :skolemid |25|
 :pattern ( (Cons_3692 value_1@@0 tail_1))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6130) (Mask@@26 T@PolymorphicMapType_6151) (l_2@@15 T@ListDomainType_9886) ) (!  (=> (state Heap@@26 Mask@@26) (= (|len'| Heap@@26 l_2@@15) (|len#frame| EmptyFrame l_2@@15)))
 :qid |stdinbpl.306:15|
 :skolemid |33|
 :pattern ( (state Heap@@26 Mask@@26) (|len'| Heap@@26 l_2@@15))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6130) (Mask@@27 T@PolymorphicMapType_6151) (l_2@@16 T@ListDomainType_9886) ) (!  (=> (state Heap@@27 Mask@@27) (= (|len2'| Heap@@27 l_2@@16) (|len2#frame| EmptyFrame l_2@@16)))
 :qid |stdinbpl.384:15|
 :skolemid |38|
 :pattern ( (state Heap@@27 Mask@@27) (|len2'| Heap@@27 l_2@@16))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6130) (Mask@@28 T@PolymorphicMapType_6151) (l_2@@17 T@ListDomainType_9886) ) (!  (=> (state Heap@@28 Mask@@28) (= (|lenBad2'| Heap@@28 l_2@@17) (|lenBad2#frame| EmptyFrame l_2@@17)))
 :qid |stdinbpl.540:15|
 :skolemid |48|
 :pattern ( (state Heap@@28 Mask@@28) (|lenBad2'| Heap@@28 l_2@@17))
)))
(assert (forall ((value_1@@1 T@ValDomainType) (tail_1@@0 T@ListDomainType_9886) ) (! (= value_1@@1 (get_List_value_3692 (Cons_3692 value_1@@1 tail_1@@0)))
 :qid |stdinbpl.225:19|
 :skolemid |22|
 :pattern ( (Cons_3692 value_1@@1 tail_1@@0))
)))
(assert (forall ((value_1@@2 T@ValDomainType) (tail_1@@1 T@ListDomainType_9886) ) (! (= tail_1@@1 (get_List_tail_3584 (Cons_3692 value_1@@2 tail_1@@1)))
 :qid |stdinbpl.231:19|
 :skolemid |23|
 :pattern ( (Cons_3692 value_1@@2 tail_1@@1))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6130) (o T@Ref) (f_3 T@Field_6190_16197) (v T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_6130 (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@29) (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@29) (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@29) (store (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@29) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6130 (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@29) (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@29) (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@29) (store (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@29) o f_3 v)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6130) (o@@0 T@Ref) (f_3@@0 T@Field_6190_16330) (v@@0 T@PolymorphicMapType_6679) ) (! (succHeap Heap@@30 (PolymorphicMapType_6130 (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@30) (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@30) (store (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@30) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6130 (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@30) (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@30) (store (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@30) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6130) (o@@1 T@Ref) (f_3@@1 T@Field_6203_6204) (v@@1 T@Ref) ) (! (succHeap Heap@@31 (PolymorphicMapType_6130 (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@31) (store (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@31) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@31) (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6130 (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@31) (store (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@31) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@31) (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6130) (o@@2 T@Ref) (f_3@@2 T@Field_6190_53) (v@@2 Bool) ) (! (succHeap Heap@@32 (PolymorphicMapType_6130 (store (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@32) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@32) (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@32) (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6130 (store (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@32) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@32) (|PolymorphicMapType_6130_6190_16374#PolymorphicMapType_6130| Heap@@32) (|PolymorphicMapType_6130_6190_16197#PolymorphicMapType_6130| Heap@@32)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_6203_6204) (Heap@@33 T@PolymorphicMapType_6130) ) (!  (=> (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@33) o@@3 $allocated) (select (|PolymorphicMapType_6130_3412_53#PolymorphicMapType_6130| Heap@@33) (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@33) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6130_3415_3416#PolymorphicMapType_6130| Heap@@33) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_6190_16197) (v_1@@0 T@FrameType) (q T@Field_6190_16197) (w@@0 T@FrameType) (r T@Field_6190_16197) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6190_6190 p@@1 v_1@@0 q w@@0) (InsidePredicate_6190_6190 q w@@0 r u)) (InsidePredicate_6190_6190 p@@1 v_1@@0 r u))
 :qid |stdinbpl.172:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6190_6190 p@@1 v_1@@0 q w@@0) (InsidePredicate_6190_6190 q w@@0 r u))
)))
(assert (forall ((t_2 T@ListDomainType_9886) ) (!  (or (= t_2 Nil_3695) (= t_2 (Cons_3692 (get_List_value_3692 t_2) (get_List_tail_3584 t_2))))
 :qid |stdinbpl.249:19|
 :skolemid |26|
 :pattern ( (List_tag_3584 t_2))
 :pattern ( (get_List_value_3692 t_2))
 :pattern ( (get_List_tail_3584 t_2))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6130) (Mask@@29 T@PolymorphicMapType_6151) (l_2@@18 T@ListDomainType_9886) (v_2@@3 T@ValDomainType) ) (!  (=> (and (state Heap@@34 Mask@@29) (or (< AssumeFunctionsAbove 3) (|lenBad#trigger| EmptyFrame l_2@@18 v_2@@3))) (>= (|lenBad'| Heap@@34 l_2@@18 v_2@@3) 0))
 :qid |stdinbpl.471:15|
 :skolemid |44|
 :pattern ( (state Heap@@34 Mask@@29) (|lenBad'| Heap@@34 l_2@@18 v_2@@3))
)))
; Valid

