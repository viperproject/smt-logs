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
(declare-sort T@Field_5503_53 0)
(declare-sort T@Field_5516_5517 0)
(declare-sort T@Field_8830_1189 0)
(declare-sort T@Field_5503_14533 0)
(declare-sort T@Field_5503_14400 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5464 0)) (((PolymorphicMapType_5464 (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| (Array T@Ref T@Field_5503_53 Real)) (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| (Array T@Ref T@Field_5516_5517 Real)) (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| (Array T@Ref T@Field_8830_1189 Real)) (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| (Array T@Ref T@Field_5503_14400 Real)) (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| (Array T@Ref T@Field_5503_14533 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5992 0)) (((PolymorphicMapType_5992 (|PolymorphicMapType_5992_5503_53#PolymorphicMapType_5992| (Array T@Ref T@Field_5503_53 Bool)) (|PolymorphicMapType_5992_5503_5517#PolymorphicMapType_5992| (Array T@Ref T@Field_5516_5517 Bool)) (|PolymorphicMapType_5992_5503_1189#PolymorphicMapType_5992| (Array T@Ref T@Field_8830_1189 Bool)) (|PolymorphicMapType_5992_5503_14400#PolymorphicMapType_5992| (Array T@Ref T@Field_5503_14400 Bool)) (|PolymorphicMapType_5992_5503_15711#PolymorphicMapType_5992| (Array T@Ref T@Field_5503_14533 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5443 0)) (((PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| (Array T@Ref T@Field_5503_53 Bool)) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| (Array T@Ref T@Field_5516_5517 T@Ref)) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| (Array T@Ref T@Field_8830_1189 Int)) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| (Array T@Ref T@Field_5503_14533 T@PolymorphicMapType_5992)) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| (Array T@Ref T@Field_5503_14400 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5503_53)
(declare-fun f_7 () T@Field_8830_1189)
(declare-fun succHeap (T@PolymorphicMapType_5443 T@PolymorphicMapType_5443) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5443 T@PolymorphicMapType_5443) Bool)
(declare-fun state (T@PolymorphicMapType_5443 T@PolymorphicMapType_5464) Bool)
(declare-fun f6_1 (T@PolymorphicMapType_5443) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |f7'| (T@PolymorphicMapType_5443) Int)
(declare-fun f7 (T@PolymorphicMapType_5443) Int)
(declare-fun |f6'| (T@PolymorphicMapType_5443) Int)
(declare-fun GoodMask (T@PolymorphicMapType_5464) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5992)
(declare-fun |f5'| (T@PolymorphicMapType_5443 Int Bool) Int)
(declare-fun dummyFunction_1327 (Int) Bool)
(declare-fun |f5#triggerStateless| (Int Bool) Int)
(declare-fun |f5#frame| (T@FrameType Int Bool) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun f8 (T@PolymorphicMapType_5443) Int)
(declare-fun f3_2 (T@PolymorphicMapType_5443 Int) Int)
(declare-fun f1_3 (T@PolymorphicMapType_5443) Int)
(declare-fun |f3'| (T@PolymorphicMapType_5443 Int) Int)
(declare-fun |f3#triggerStateless| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5443 T@PolymorphicMapType_5443 T@PolymorphicMapType_5464) Bool)
(declare-fun IsPredicateField_5503_14491 (T@Field_5503_14400) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5503 (T@Field_5503_14400) T@Field_5503_14533)
(declare-fun HasDirectPerm_5503_14464 (T@PolymorphicMapType_5464 T@Ref T@Field_5503_14400) Bool)
(declare-fun IsWandField_5503_16238 (T@Field_5503_14400) Bool)
(declare-fun WandMaskField_5503 (T@Field_5503_14400) T@Field_5503_14533)
(declare-fun f2_3 (T@PolymorphicMapType_5443) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_5443)
(declare-fun ZeroMask () T@PolymorphicMapType_5464)
(declare-fun InsidePredicate_5503_5503 (T@Field_5503_14400 T@FrameType T@Field_5503_14400 T@FrameType) Bool)
(declare-fun IsPredicateField_3028_1189 (T@Field_8830_1189) Bool)
(declare-fun IsWandField_3028_1189 (T@Field_8830_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5503_19796 (T@Field_5503_14533) Bool)
(declare-fun IsWandField_5503_19812 (T@Field_5503_14533) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5503_5517 (T@Field_5516_5517) Bool)
(declare-fun IsWandField_5503_5517 (T@Field_5516_5517) Bool)
(declare-fun IsPredicateField_5503_53 (T@Field_5503_53) Bool)
(declare-fun IsWandField_5503_53 (T@Field_5503_53) Bool)
(declare-fun HasDirectPerm_5503_20250 (T@PolymorphicMapType_5464 T@Ref T@Field_5503_14533) Bool)
(declare-fun HasDirectPerm_5503_1189 (T@PolymorphicMapType_5464 T@Ref T@Field_8830_1189) Bool)
(declare-fun HasDirectPerm_5503_5517 (T@PolymorphicMapType_5464 T@Ref T@Field_5516_5517) Bool)
(declare-fun HasDirectPerm_5503_53 (T@PolymorphicMapType_5464 T@Ref T@Field_5503_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun |f1'| (T@PolymorphicMapType_5443) Int)
(declare-fun |f1#triggerStateless| () Int)
(declare-fun |f2'| (T@PolymorphicMapType_5443) Int)
(declare-fun |f2#triggerStateless| () Int)
(declare-fun f4_1 (T@PolymorphicMapType_5443) Int)
(declare-fun |f4'| (T@PolymorphicMapType_5443) Int)
(declare-fun |f4#triggerStateless| () Int)
(declare-fun |f6#triggerStateless| () Int)
(declare-fun |f7#triggerStateless| () Int)
(declare-fun |f8'| (T@PolymorphicMapType_5443) Int)
(declare-fun |f8#triggerStateless| () Int)
(declare-fun f5_1 (T@PolymorphicMapType_5443 Int Bool) Int)
(declare-fun sumMask (T@PolymorphicMapType_5464 T@PolymorphicMapType_5464 T@PolymorphicMapType_5464) Bool)
(declare-fun |f3#frame| (T@FrameType Int) Int)
(declare-fun |f1#frame| (T@FrameType) Int)
(declare-fun |f2#frame| (T@FrameType) Int)
(declare-fun |f4#frame| (T@FrameType) Int)
(declare-fun |f6#frame| (T@FrameType) Int)
(declare-fun |f7#frame| (T@FrameType) Int)
(declare-fun |f8#frame| (T@FrameType) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_5443) (Heap1 T@PolymorphicMapType_5443) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5443) (Mask T@PolymorphicMapType_5464) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 1)) (= (f6_1 Heap) (|f7'| Heap)))
 :qid |stdinbpl.503:15|
 :skolemid |44|
 :pattern ( (state Heap Mask) (f6_1 Heap))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5443) (Mask@@0 T@PolymorphicMapType_5464) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 1)) (= (f7 Heap@@0) (|f6'| Heap@@0)))
 :qid |stdinbpl.561:15|
 :skolemid |48|
 :pattern ( (state Heap@@0 Mask@@0) (f7 Heap@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5443) (Mask@@1 T@PolymorphicMapType_5464) ) (!  (=> (state Heap@@1 Mask@@1) (GoodMask Mask@@1))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@1 Mask@@1))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5443) (Heap1@@0 T@PolymorphicMapType_5443) (Heap2 T@PolymorphicMapType_5443) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5503_14533) ) (!  (not (select (|PolymorphicMapType_5992_5503_15711#PolymorphicMapType_5992| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5992_5503_15711#PolymorphicMapType_5992| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5503_14400) ) (!  (not (select (|PolymorphicMapType_5992_5503_14400#PolymorphicMapType_5992| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5992_5503_14400#PolymorphicMapType_5992| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8830_1189) ) (!  (not (select (|PolymorphicMapType_5992_5503_1189#PolymorphicMapType_5992| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5992_5503_1189#PolymorphicMapType_5992| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5516_5517) ) (!  (not (select (|PolymorphicMapType_5992_5503_5517#PolymorphicMapType_5992| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5992_5503_5517#PolymorphicMapType_5992| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5503_53) ) (!  (not (select (|PolymorphicMapType_5992_5503_53#PolymorphicMapType_5992| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5992_5503_53#PolymorphicMapType_5992| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5443) (i Int) (b_24 Bool) ) (! (dummyFunction_1327 (|f5#triggerStateless| i b_24))
 :qid |stdinbpl.434:15|
 :skolemid |39|
 :pattern ( (|f5'| Heap@@2 i b_24))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5443) (Mask@@2 T@PolymorphicMapType_5464) (i@@0 Int) (b_24@@0 Bool) ) (!  (=> (state Heap@@3 Mask@@2) (= (|f5'| Heap@@3 i@@0 b_24@@0) (|f5#frame| EmptyFrame i@@0 b_24@@0)))
 :qid |stdinbpl.447:15|
 :skolemid |41|
 :pattern ( (state Heap@@3 Mask@@2) (|f5'| Heap@@3 i@@0 b_24@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5443) (Mask@@3 T@PolymorphicMapType_5464) ) (!  (=> (and (state Heap@@4 Mask@@3) (< AssumeFunctionsAbove 3)) (= (f8 Heap@@4) (f3_2 Heap@@4 (f1_3 Heap@@4))))
 :qid |stdinbpl.619:15|
 :skolemid |52|
 :pattern ( (state Heap@@4 Mask@@3) (f8 Heap@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5443) (i@@1 Int) ) (! (dummyFunction_1327 (|f3#triggerStateless| i@@1))
 :qid |stdinbpl.315:15|
 :skolemid |31|
 :pattern ( (|f3'| Heap@@5 i@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5443) (i@@2 Int) ) (!  (and (= (f3_2 Heap@@6 i@@2) (|f3'| Heap@@6 i@@2)) (dummyFunction_1327 (|f3#triggerStateless| i@@2)))
 :qid |stdinbpl.311:15|
 :skolemid |30|
 :pattern ( (f3_2 Heap@@6 i@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5443) (ExhaleHeap T@PolymorphicMapType_5443) (Mask@@4 T@PolymorphicMapType_5464) (pm_f T@Field_5503_14400) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_5503_14464 Mask@@4 null pm_f) (IsPredicateField_5503_14491 pm_f)) (= (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@7) null (PredicateMaskField_5503 pm_f)) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap) null (PredicateMaskField_5503 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@4) (IsPredicateField_5503_14491 pm_f) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap) null (PredicateMaskField_5503 pm_f)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5443) (ExhaleHeap@@0 T@PolymorphicMapType_5443) (Mask@@5 T@PolymorphicMapType_5464) (pm_f@@0 T@Field_5503_14400) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_5503_14464 Mask@@5 null pm_f@@0) (IsWandField_5503_16238 pm_f@@0)) (= (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@8) null (WandMaskField_5503 pm_f@@0)) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@0) null (WandMaskField_5503 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@5) (IsWandField_5503_16238 pm_f@@0) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@0) null (WandMaskField_5503 pm_f@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5443) (Mask@@6 T@PolymorphicMapType_5464) ) (!  (=> (and (state Heap@@9 Mask@@6) (< AssumeFunctionsAbove 4)) (=> (> (f1_3 Heap@@9) 0) (= (f2_3 Heap@@9) 2)))
 :qid |stdinbpl.260:15|
 :skolemid |28|
 :pattern ( (state Heap@@9 Mask@@6) (f2_3 Heap@@9))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5443) (ExhaleHeap@@1 T@PolymorphicMapType_5443) (Mask@@7 T@PolymorphicMapType_5464) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@7) (=> (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@10) o_1 $allocated) (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@7) (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_5503_14400) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5503_5503 p v_1 p w))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5503_5503 p v_1 p w))
)))
(assert  (not (IsPredicateField_3028_1189 f_7)))
(assert  (not (IsWandField_3028_1189 f_7)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5443) (ExhaleHeap@@2 T@PolymorphicMapType_5443) (Mask@@8 T@PolymorphicMapType_5464) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@8) (succHeap Heap@@11 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5464) (o_2@@4 T@Ref) (f_4@@4 T@Field_5503_14533) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5503_19796 f_4@@4))) (not (IsWandField_5503_19812 f_4@@4))) (<= (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5464) (o_2@@5 T@Ref) (f_4@@5 T@Field_5503_14400) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5503_14491 f_4@@5))) (not (IsWandField_5503_16238 f_4@@5))) (<= (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5464) (o_2@@6 T@Ref) (f_4@@6 T@Field_8830_1189) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3028_1189 f_4@@6))) (not (IsWandField_3028_1189 f_4@@6))) (<= (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5464) (o_2@@7 T@Ref) (f_4@@7 T@Field_5516_5517) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| Mask@@12) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5503_5517 f_4@@7))) (not (IsWandField_5503_5517 f_4@@7))) (<= (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| Mask@@12) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| Mask@@12) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5464) (o_2@@8 T@Ref) (f_4@@8 T@Field_5503_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| Mask@@13) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5503_53 f_4@@8))) (not (IsWandField_5503_53 f_4@@8))) (<= (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| Mask@@13) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| Mask@@13) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5464) (o_2@@9 T@Ref) (f_4@@9 T@Field_5503_14533) ) (! (= (HasDirectPerm_5503_20250 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5503_20250 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5464) (o_2@@10 T@Ref) (f_4@@10 T@Field_5503_14400) ) (! (= (HasDirectPerm_5503_14464 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5503_14464 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5464) (o_2@@11 T@Ref) (f_4@@11 T@Field_8830_1189) ) (! (= (HasDirectPerm_5503_1189 Mask@@16 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| Mask@@16) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5503_1189 Mask@@16 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5464) (o_2@@12 T@Ref) (f_4@@12 T@Field_5516_5517) ) (! (= (HasDirectPerm_5503_5517 Mask@@17 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| Mask@@17) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5503_5517 Mask@@17 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5464) (o_2@@13 T@Ref) (f_4@@13 T@Field_5503_53) ) (! (= (HasDirectPerm_5503_53 Mask@@18 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| Mask@@18) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5503_53 Mask@@18 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5443) (ExhaleHeap@@3 T@PolymorphicMapType_5443) (Mask@@19 T@PolymorphicMapType_5464) (pm_f@@1 T@Field_5503_14400) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@19) (=> (and (HasDirectPerm_5503_14464 Mask@@19 null pm_f@@1) (IsPredicateField_5503_14491 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_5503_53) ) (!  (=> (select (|PolymorphicMapType_5992_5503_53#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@12) null (PredicateMaskField_5503 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@12) o2 f_2) (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_5516_5517) ) (!  (=> (select (|PolymorphicMapType_5992_5503_5517#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@12) null (PredicateMaskField_5503 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@12) o2@@0 f_2@@0) (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_8830_1189) ) (!  (=> (select (|PolymorphicMapType_5992_5503_1189#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@12) null (PredicateMaskField_5503 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@12) o2@@1 f_2@@1) (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_5503_14400) ) (!  (=> (select (|PolymorphicMapType_5992_5503_14400#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@12) null (PredicateMaskField_5503 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@12) o2@@2 f_2@@2) (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_5503_14533) ) (!  (=> (select (|PolymorphicMapType_5992_5503_15711#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@12) null (PredicateMaskField_5503 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@12) o2@@3 f_2@@3) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@19) (IsPredicateField_5503_14491 pm_f@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5443) (ExhaleHeap@@4 T@PolymorphicMapType_5443) (Mask@@20 T@PolymorphicMapType_5464) (pm_f@@2 T@Field_5503_14400) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@20) (=> (and (HasDirectPerm_5503_14464 Mask@@20 null pm_f@@2) (IsWandField_5503_16238 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_5503_53) ) (!  (=> (select (|PolymorphicMapType_5992_5503_53#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@13) null (WandMaskField_5503 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@13) o2@@4 f_2@@4) (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_5516_5517) ) (!  (=> (select (|PolymorphicMapType_5992_5503_5517#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@13) null (WandMaskField_5503 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@13) o2@@5 f_2@@5) (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_8830_1189) ) (!  (=> (select (|PolymorphicMapType_5992_5503_1189#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@13) null (WandMaskField_5503 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@13) o2@@6 f_2@@6) (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_5503_14400) ) (!  (=> (select (|PolymorphicMapType_5992_5503_14400#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@13) null (WandMaskField_5503 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@13) o2@@7 f_2@@7) (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_5503_14533) ) (!  (=> (select (|PolymorphicMapType_5992_5503_15711#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@13) null (WandMaskField_5503 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@13) o2@@8 f_2@@8) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@20) (IsWandField_5503_16238 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.168:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5443) (ExhaleHeap@@5 T@PolymorphicMapType_5443) (Mask@@21 T@PolymorphicMapType_5464) (o_1@@0 T@Ref) (f_2@@9 T@Field_5503_14533) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_5503_20250 Mask@@21 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@14) o_1@@0 f_2@@9) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5443) (ExhaleHeap@@6 T@PolymorphicMapType_5443) (Mask@@22 T@PolymorphicMapType_5464) (o_1@@1 T@Ref) (f_2@@10 T@Field_5503_14400) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_5503_14464 Mask@@22 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@15) o_1@@1 f_2@@10) (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5443) (ExhaleHeap@@7 T@PolymorphicMapType_5443) (Mask@@23 T@PolymorphicMapType_5464) (o_1@@2 T@Ref) (f_2@@11 T@Field_8830_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_5503_1189 Mask@@23 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@16) o_1@@2 f_2@@11) (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5443) (ExhaleHeap@@8 T@PolymorphicMapType_5443) (Mask@@24 T@PolymorphicMapType_5464) (o_1@@3 T@Ref) (f_2@@12 T@Field_5516_5517) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_5503_5517 Mask@@24 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@17) o_1@@3 f_2@@12) (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5443) (ExhaleHeap@@9 T@PolymorphicMapType_5443) (Mask@@25 T@PolymorphicMapType_5464) (o_1@@4 T@Ref) (f_2@@13 T@Field_5503_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@25) (=> (HasDirectPerm_5503_53 Mask@@25 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@18) o_1@@4 f_2@@13) (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@25) (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5443) ) (!  (and (= (f1_3 Heap@@19) (|f1'| Heap@@19)) (dummyFunction_1327 |f1#triggerStateless|))
 :qid |stdinbpl.200:15|
 :skolemid |22|
 :pattern ( (f1_3 Heap@@19))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5443) ) (!  (and (= (f2_3 Heap@@20) (|f2'| Heap@@20)) (dummyFunction_1327 |f2#triggerStateless|))
 :qid |stdinbpl.250:15|
 :skolemid |26|
 :pattern ( (f2_3 Heap@@20))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5443) ) (!  (and (= (f4_1 Heap@@21) (|f4'| Heap@@21)) (dummyFunction_1327 |f4#triggerStateless|))
 :qid |stdinbpl.361:15|
 :skolemid |34|
 :pattern ( (f4_1 Heap@@21))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5443) ) (!  (and (= (f6_1 Heap@@22) (|f6'| Heap@@22)) (dummyFunction_1327 |f6#triggerStateless|))
 :qid |stdinbpl.493:15|
 :skolemid |42|
 :pattern ( (f6_1 Heap@@22))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5443) ) (!  (and (= (f7 Heap@@23) (|f7'| Heap@@23)) (dummyFunction_1327 |f7#triggerStateless|))
 :qid |stdinbpl.551:15|
 :skolemid |46|
 :pattern ( (f7 Heap@@23))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5443) ) (!  (and (= (f8 Heap@@24) (|f8'| Heap@@24)) (dummyFunction_1327 |f8#triggerStateless|))
 :qid |stdinbpl.609:15|
 :skolemid |50|
 :pattern ( (f8 Heap@@24))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5503_14533) ) (! (= (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5503_14400) ) (! (= (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_8830_1189) ) (! (= (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_5516_5517) ) (! (= (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_5503_53) ) (! (= (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5443) (i@@3 Int) (b_24@@1 Bool) ) (!  (and (= (f5_1 Heap@@25 i@@3 b_24@@1) (|f5'| Heap@@25 i@@3 b_24@@1)) (dummyFunction_1327 (|f5#triggerStateless| i@@3 b_24@@1)))
 :qid |stdinbpl.430:15|
 :skolemid |38|
 :pattern ( (f5_1 Heap@@25 i@@3 b_24@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5464) (SummandMask1 T@PolymorphicMapType_5464) (SummandMask2 T@PolymorphicMapType_5464) (o_2@@19 T@Ref) (f_4@@19 T@Field_5503_14533) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5464) (SummandMask1@@0 T@PolymorphicMapType_5464) (SummandMask2@@0 T@PolymorphicMapType_5464) (o_2@@20 T@Ref) (f_4@@20 T@Field_5503_14400) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5464) (SummandMask1@@1 T@PolymorphicMapType_5464) (SummandMask2@@1 T@PolymorphicMapType_5464) (o_2@@21 T@Ref) (f_4@@21 T@Field_8830_1189) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5464) (SummandMask1@@2 T@PolymorphicMapType_5464) (SummandMask2@@2 T@PolymorphicMapType_5464) (o_2@@22 T@Ref) (f_4@@22 T@Field_5516_5517) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5464) (SummandMask1@@3 T@PolymorphicMapType_5464) (SummandMask2@@3 T@PolymorphicMapType_5464) (o_2@@23 T@Ref) (f_4@@23 T@Field_5503_53) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5443) (Mask@@26 T@PolymorphicMapType_5464) (i@@4 Int) (b_24@@2 Bool) ) (!  (=> (and (state Heap@@26 Mask@@26) (< AssumeFunctionsAbove 0)) (= (f5_1 Heap@@26 i@@4 b_24@@2) (ite b_24@@2 (|f5'| Heap@@26 (* 2 i@@4) false) i@@4)))
 :qid |stdinbpl.440:15|
 :skolemid |40|
 :pattern ( (state Heap@@26 Mask@@26) (f5_1 Heap@@26 i@@4 b_24@@2))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5443) (Mask@@27 T@PolymorphicMapType_5464) ) (!  (=> (and (state Heap@@27 Mask@@27) (< AssumeFunctionsAbove 2)) (= (f4_1 Heap@@27) (+ (f1_3 Heap@@27) (f2_3 Heap@@27))))
 :qid |stdinbpl.371:15|
 :skolemid |36|
 :pattern ( (state Heap@@27 Mask@@27) (f4_1 Heap@@27))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5443) (Mask@@28 T@PolymorphicMapType_5464) (i@@5 Int) ) (!  (=> (state Heap@@28 Mask@@28) (= (|f3'| Heap@@28 i@@5) (|f3#frame| EmptyFrame i@@5)))
 :qid |stdinbpl.328:15|
 :skolemid |33|
 :pattern ( (state Heap@@28 Mask@@28) (|f3'| Heap@@28 i@@5))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5443) ) (! (dummyFunction_1327 |f1#triggerStateless|)
 :qid |stdinbpl.204:15|
 :skolemid |23|
 :pattern ( (|f1'| Heap@@29))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5443) ) (! (dummyFunction_1327 |f2#triggerStateless|)
 :qid |stdinbpl.254:15|
 :skolemid |27|
 :pattern ( (|f2'| Heap@@30))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5443) ) (! (dummyFunction_1327 |f4#triggerStateless|)
 :qid |stdinbpl.365:15|
 :skolemid |35|
 :pattern ( (|f4'| Heap@@31))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_5443) ) (! (dummyFunction_1327 |f6#triggerStateless|)
 :qid |stdinbpl.497:15|
 :skolemid |43|
 :pattern ( (|f6'| Heap@@32))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_5443) ) (! (dummyFunction_1327 |f7#triggerStateless|)
 :qid |stdinbpl.555:15|
 :skolemid |47|
 :pattern ( (|f7'| Heap@@33))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_5443) ) (! (dummyFunction_1327 |f8#triggerStateless|)
 :qid |stdinbpl.613:15|
 :skolemid |51|
 :pattern ( (|f8'| Heap@@34))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_5443) (Mask@@29 T@PolymorphicMapType_5464) ) (!  (=> (state Heap@@35 Mask@@29) (= (|f1'| Heap@@35) (|f1#frame| EmptyFrame)))
 :qid |stdinbpl.217:15|
 :skolemid |25|
 :pattern ( (state Heap@@35 Mask@@29) (|f1'| Heap@@35))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_5443) (Mask@@30 T@PolymorphicMapType_5464) ) (!  (=> (state Heap@@36 Mask@@30) (= (|f2'| Heap@@36) (|f2#frame| EmptyFrame)))
 :qid |stdinbpl.267:15|
 :skolemid |29|
 :pattern ( (state Heap@@36 Mask@@30) (|f2'| Heap@@36))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_5443) (Mask@@31 T@PolymorphicMapType_5464) ) (!  (=> (state Heap@@37 Mask@@31) (= (|f4'| Heap@@37) (|f4#frame| EmptyFrame)))
 :qid |stdinbpl.378:15|
 :skolemid |37|
 :pattern ( (state Heap@@37 Mask@@31) (|f4'| Heap@@37))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_5443) (Mask@@32 T@PolymorphicMapType_5464) ) (!  (=> (state Heap@@38 Mask@@32) (= (|f6'| Heap@@38) (|f6#frame| EmptyFrame)))
 :qid |stdinbpl.510:15|
 :skolemid |45|
 :pattern ( (state Heap@@38 Mask@@32) (|f6'| Heap@@38))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_5443) (Mask@@33 T@PolymorphicMapType_5464) ) (!  (=> (state Heap@@39 Mask@@33) (= (|f7'| Heap@@39) (|f7#frame| EmptyFrame)))
 :qid |stdinbpl.568:15|
 :skolemid |49|
 :pattern ( (state Heap@@39 Mask@@33) (|f7'| Heap@@39))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_5443) (Mask@@34 T@PolymorphicMapType_5464) ) (!  (=> (state Heap@@40 Mask@@34) (= (|f8'| Heap@@40) (|f8#frame| EmptyFrame)))
 :qid |stdinbpl.626:15|
 :skolemid |53|
 :pattern ( (state Heap@@40 Mask@@34) (|f8'| Heap@@40))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_5443) (o T@Ref) (f_3 T@Field_5503_14400) (v T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@41) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@41) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@41) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@41) (store (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@41) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@41) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@41) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@41) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@41) (store (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@41) o f_3 v)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_5443) (o@@0 T@Ref) (f_3@@0 T@Field_5503_14533) (v@@0 T@PolymorphicMapType_5992) ) (! (succHeap Heap@@42 (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@42) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@42) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@42) (store (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@42) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@42) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@42) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@42) (store (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@42) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_5443) (o@@1 T@Ref) (f_3@@1 T@Field_8830_1189) (v@@1 Int) ) (! (succHeap Heap@@43 (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@43) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@43) (store (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@43) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@43) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@43) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@43) (store (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@43) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@43) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_5443) (o@@2 T@Ref) (f_3@@2 T@Field_5516_5517) (v@@2 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@44) (store (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@44) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@44) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@44) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@44) (store (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@44) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@44) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@44) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_5443) (o@@3 T@Ref) (f_3@@3 T@Field_5503_53) (v@@3 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_5443 (store (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@45) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@45) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@45) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@45) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5443 (store (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@45) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@45) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@45) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@45) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@45)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_5516_5517) (Heap@@46 T@PolymorphicMapType_5443) ) (!  (=> (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@46) o@@4 $allocated) (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@46) (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@46) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@46) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_5503_14400) (v_1@@0 T@FrameType) (q T@Field_5503_14400) (w@@0 T@FrameType) (r T@Field_5503_14400) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5503_5503 p@@1 v_1@@0 q w@@0) (InsidePredicate_5503_5503 q w@@0 r u)) (InsidePredicate_5503_5503 p@@1 v_1@@0 r u))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5503_5503 p@@1 v_1@@0 q w@@0) (InsidePredicate_5503_5503 q w@@0 r u))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_5443) (Mask@@35 T@PolymorphicMapType_5464) (i@@6 Int) ) (!  (=> (and (state Heap@@47 Mask@@35) (< AssumeFunctionsAbove 5)) (= (f3_2 Heap@@47 i@@6) i@@6))
 :qid |stdinbpl.321:15|
 :skolemid |32|
 :pattern ( (state Heap@@47 Mask@@35) (f3_2 Heap@@47 i@@6))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_5443) (Mask@@36 T@PolymorphicMapType_5464) ) (!  (=> (and (state Heap@@48 Mask@@36) (< AssumeFunctionsAbove 6)) (= (f1_3 Heap@@48) 1))
 :qid |stdinbpl.210:15|
 :skolemid |24|
 :pattern ( (state Heap@@48 Mask@@36) (f1_3 Heap@@48))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@49 () T@PolymorphicMapType_5443)
(set-info :boogie-vc-id |f4#definedness|)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon6_Else_correct true))
(let ((anon6_Then_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (> (f1_3 Heap@@49) 0))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@49 ZeroMask) (=> (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 2)) (and (and (=> (= (ControlFlow 0 5) 1) anon5_Then_correct) (=> (= (ControlFlow 0 5) 3) anon6_Then_correct)) (=> (= (ControlFlow 0 5) 4) anon6_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
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
(declare-sort T@Field_5503_53 0)
(declare-sort T@Field_5516_5517 0)
(declare-sort T@Field_8830_1189 0)
(declare-sort T@Field_5503_14533 0)
(declare-sort T@Field_5503_14400 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5464 0)) (((PolymorphicMapType_5464 (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| (Array T@Ref T@Field_5503_53 Real)) (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| (Array T@Ref T@Field_5516_5517 Real)) (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| (Array T@Ref T@Field_8830_1189 Real)) (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| (Array T@Ref T@Field_5503_14400 Real)) (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| (Array T@Ref T@Field_5503_14533 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5992 0)) (((PolymorphicMapType_5992 (|PolymorphicMapType_5992_5503_53#PolymorphicMapType_5992| (Array T@Ref T@Field_5503_53 Bool)) (|PolymorphicMapType_5992_5503_5517#PolymorphicMapType_5992| (Array T@Ref T@Field_5516_5517 Bool)) (|PolymorphicMapType_5992_5503_1189#PolymorphicMapType_5992| (Array T@Ref T@Field_8830_1189 Bool)) (|PolymorphicMapType_5992_5503_14400#PolymorphicMapType_5992| (Array T@Ref T@Field_5503_14400 Bool)) (|PolymorphicMapType_5992_5503_15711#PolymorphicMapType_5992| (Array T@Ref T@Field_5503_14533 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5443 0)) (((PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| (Array T@Ref T@Field_5503_53 Bool)) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| (Array T@Ref T@Field_5516_5517 T@Ref)) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| (Array T@Ref T@Field_8830_1189 Int)) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| (Array T@Ref T@Field_5503_14533 T@PolymorphicMapType_5992)) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| (Array T@Ref T@Field_5503_14400 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5503_53)
(declare-fun f_7 () T@Field_8830_1189)
(declare-fun succHeap (T@PolymorphicMapType_5443 T@PolymorphicMapType_5443) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5443 T@PolymorphicMapType_5443) Bool)
(declare-fun state (T@PolymorphicMapType_5443 T@PolymorphicMapType_5464) Bool)
(declare-fun f6_1 (T@PolymorphicMapType_5443) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |f7'| (T@PolymorphicMapType_5443) Int)
(declare-fun f7 (T@PolymorphicMapType_5443) Int)
(declare-fun |f6'| (T@PolymorphicMapType_5443) Int)
(declare-fun GoodMask (T@PolymorphicMapType_5464) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5992)
(declare-fun |f5'| (T@PolymorphicMapType_5443 Int Bool) Int)
(declare-fun dummyFunction_1327 (Int) Bool)
(declare-fun |f5#triggerStateless| (Int Bool) Int)
(declare-fun |f5#frame| (T@FrameType Int Bool) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun f8 (T@PolymorphicMapType_5443) Int)
(declare-fun f3_2 (T@PolymorphicMapType_5443 Int) Int)
(declare-fun f1_3 (T@PolymorphicMapType_5443) Int)
(declare-fun |f3'| (T@PolymorphicMapType_5443 Int) Int)
(declare-fun |f3#triggerStateless| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5443 T@PolymorphicMapType_5443 T@PolymorphicMapType_5464) Bool)
(declare-fun IsPredicateField_5503_14491 (T@Field_5503_14400) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5503 (T@Field_5503_14400) T@Field_5503_14533)
(declare-fun HasDirectPerm_5503_14464 (T@PolymorphicMapType_5464 T@Ref T@Field_5503_14400) Bool)
(declare-fun IsWandField_5503_16238 (T@Field_5503_14400) Bool)
(declare-fun WandMaskField_5503 (T@Field_5503_14400) T@Field_5503_14533)
(declare-fun f2_3 (T@PolymorphicMapType_5443) Int)
(declare-fun dummyHeap () T@PolymorphicMapType_5443)
(declare-fun ZeroMask () T@PolymorphicMapType_5464)
(declare-fun InsidePredicate_5503_5503 (T@Field_5503_14400 T@FrameType T@Field_5503_14400 T@FrameType) Bool)
(declare-fun IsPredicateField_3028_1189 (T@Field_8830_1189) Bool)
(declare-fun IsWandField_3028_1189 (T@Field_8830_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5503_19796 (T@Field_5503_14533) Bool)
(declare-fun IsWandField_5503_19812 (T@Field_5503_14533) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5503_5517 (T@Field_5516_5517) Bool)
(declare-fun IsWandField_5503_5517 (T@Field_5516_5517) Bool)
(declare-fun IsPredicateField_5503_53 (T@Field_5503_53) Bool)
(declare-fun IsWandField_5503_53 (T@Field_5503_53) Bool)
(declare-fun HasDirectPerm_5503_20250 (T@PolymorphicMapType_5464 T@Ref T@Field_5503_14533) Bool)
(declare-fun HasDirectPerm_5503_1189 (T@PolymorphicMapType_5464 T@Ref T@Field_8830_1189) Bool)
(declare-fun HasDirectPerm_5503_5517 (T@PolymorphicMapType_5464 T@Ref T@Field_5516_5517) Bool)
(declare-fun HasDirectPerm_5503_53 (T@PolymorphicMapType_5464 T@Ref T@Field_5503_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun |f1'| (T@PolymorphicMapType_5443) Int)
(declare-fun |f1#triggerStateless| () Int)
(declare-fun |f2'| (T@PolymorphicMapType_5443) Int)
(declare-fun |f2#triggerStateless| () Int)
(declare-fun f4_1 (T@PolymorphicMapType_5443) Int)
(declare-fun |f4'| (T@PolymorphicMapType_5443) Int)
(declare-fun |f4#triggerStateless| () Int)
(declare-fun |f6#triggerStateless| () Int)
(declare-fun |f7#triggerStateless| () Int)
(declare-fun |f8'| (T@PolymorphicMapType_5443) Int)
(declare-fun |f8#triggerStateless| () Int)
(declare-fun f5_1 (T@PolymorphicMapType_5443 Int Bool) Int)
(declare-fun sumMask (T@PolymorphicMapType_5464 T@PolymorphicMapType_5464 T@PolymorphicMapType_5464) Bool)
(declare-fun |f3#frame| (T@FrameType Int) Int)
(declare-fun |f1#frame| (T@FrameType) Int)
(declare-fun |f2#frame| (T@FrameType) Int)
(declare-fun |f4#frame| (T@FrameType) Int)
(declare-fun |f6#frame| (T@FrameType) Int)
(declare-fun |f7#frame| (T@FrameType) Int)
(declare-fun |f8#frame| (T@FrameType) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_5443) (Heap1 T@PolymorphicMapType_5443) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5443) (Mask T@PolymorphicMapType_5464) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 1)) (= (f6_1 Heap) (|f7'| Heap)))
 :qid |stdinbpl.503:15|
 :skolemid |44|
 :pattern ( (state Heap Mask) (f6_1 Heap))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5443) (Mask@@0 T@PolymorphicMapType_5464) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 1)) (= (f7 Heap@@0) (|f6'| Heap@@0)))
 :qid |stdinbpl.561:15|
 :skolemid |48|
 :pattern ( (state Heap@@0 Mask@@0) (f7 Heap@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5443) (Mask@@1 T@PolymorphicMapType_5464) ) (!  (=> (state Heap@@1 Mask@@1) (GoodMask Mask@@1))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@1 Mask@@1))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5443) (Heap1@@0 T@PolymorphicMapType_5443) (Heap2 T@PolymorphicMapType_5443) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5503_14533) ) (!  (not (select (|PolymorphicMapType_5992_5503_15711#PolymorphicMapType_5992| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5992_5503_15711#PolymorphicMapType_5992| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5503_14400) ) (!  (not (select (|PolymorphicMapType_5992_5503_14400#PolymorphicMapType_5992| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5992_5503_14400#PolymorphicMapType_5992| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8830_1189) ) (!  (not (select (|PolymorphicMapType_5992_5503_1189#PolymorphicMapType_5992| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5992_5503_1189#PolymorphicMapType_5992| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5516_5517) ) (!  (not (select (|PolymorphicMapType_5992_5503_5517#PolymorphicMapType_5992| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5992_5503_5517#PolymorphicMapType_5992| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_5503_53) ) (!  (not (select (|PolymorphicMapType_5992_5503_53#PolymorphicMapType_5992| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5992_5503_53#PolymorphicMapType_5992| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5443) (i Int) (b_24 Bool) ) (! (dummyFunction_1327 (|f5#triggerStateless| i b_24))
 :qid |stdinbpl.434:15|
 :skolemid |39|
 :pattern ( (|f5'| Heap@@2 i b_24))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5443) (Mask@@2 T@PolymorphicMapType_5464) (i@@0 Int) (b_24@@0 Bool) ) (!  (=> (state Heap@@3 Mask@@2) (= (|f5'| Heap@@3 i@@0 b_24@@0) (|f5#frame| EmptyFrame i@@0 b_24@@0)))
 :qid |stdinbpl.447:15|
 :skolemid |41|
 :pattern ( (state Heap@@3 Mask@@2) (|f5'| Heap@@3 i@@0 b_24@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5443) (Mask@@3 T@PolymorphicMapType_5464) ) (!  (=> (and (state Heap@@4 Mask@@3) (< AssumeFunctionsAbove 3)) (= (f8 Heap@@4) (f3_2 Heap@@4 (f1_3 Heap@@4))))
 :qid |stdinbpl.619:15|
 :skolemid |52|
 :pattern ( (state Heap@@4 Mask@@3) (f8 Heap@@4))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5443) (i@@1 Int) ) (! (dummyFunction_1327 (|f3#triggerStateless| i@@1))
 :qid |stdinbpl.315:15|
 :skolemid |31|
 :pattern ( (|f3'| Heap@@5 i@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5443) (i@@2 Int) ) (!  (and (= (f3_2 Heap@@6 i@@2) (|f3'| Heap@@6 i@@2)) (dummyFunction_1327 (|f3#triggerStateless| i@@2)))
 :qid |stdinbpl.311:15|
 :skolemid |30|
 :pattern ( (f3_2 Heap@@6 i@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5443) (ExhaleHeap T@PolymorphicMapType_5443) (Mask@@4 T@PolymorphicMapType_5464) (pm_f T@Field_5503_14400) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_5503_14464 Mask@@4 null pm_f) (IsPredicateField_5503_14491 pm_f)) (= (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@7) null (PredicateMaskField_5503 pm_f)) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap) null (PredicateMaskField_5503 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap Mask@@4) (IsPredicateField_5503_14491 pm_f) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap) null (PredicateMaskField_5503 pm_f)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5443) (ExhaleHeap@@0 T@PolymorphicMapType_5443) (Mask@@5 T@PolymorphicMapType_5464) (pm_f@@0 T@Field_5503_14400) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_5503_14464 Mask@@5 null pm_f@@0) (IsWandField_5503_16238 pm_f@@0)) (= (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@8) null (WandMaskField_5503 pm_f@@0)) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@0) null (WandMaskField_5503 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@0 Mask@@5) (IsWandField_5503_16238 pm_f@@0) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@0) null (WandMaskField_5503 pm_f@@0)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5443) (Mask@@6 T@PolymorphicMapType_5464) ) (!  (=> (and (state Heap@@9 Mask@@6) (< AssumeFunctionsAbove 4)) (=> (> (f1_3 Heap@@9) 0) (= (f2_3 Heap@@9) 2)))
 :qid |stdinbpl.260:15|
 :skolemid |28|
 :pattern ( (state Heap@@9 Mask@@6) (f2_3 Heap@@9))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5443) (ExhaleHeap@@1 T@PolymorphicMapType_5443) (Mask@@7 T@PolymorphicMapType_5464) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@7) (=> (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@10) o_1 $allocated) (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@1 Mask@@7) (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_5503_14400) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5503_5503 p v_1 p w))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5503_5503 p v_1 p w))
)))
(assert  (not (IsPredicateField_3028_1189 f_7)))
(assert  (not (IsWandField_3028_1189 f_7)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5443) (ExhaleHeap@@2 T@PolymorphicMapType_5443) (Mask@@8 T@PolymorphicMapType_5464) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@8) (succHeap Heap@@11 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@2 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5464) (o_2@@4 T@Ref) (f_4@@4 T@Field_5503_14533) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5503_19796 f_4@@4))) (not (IsWandField_5503_19812 f_4@@4))) (<= (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5464) (o_2@@5 T@Ref) (f_4@@5 T@Field_5503_14400) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5503_14491 f_4@@5))) (not (IsWandField_5503_16238 f_4@@5))) (<= (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5464) (o_2@@6 T@Ref) (f_4@@6 T@Field_8830_1189) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3028_1189 f_4@@6))) (not (IsWandField_3028_1189 f_4@@6))) (<= (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5464) (o_2@@7 T@Ref) (f_4@@7 T@Field_5516_5517) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| Mask@@12) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5503_5517 f_4@@7))) (not (IsWandField_5503_5517 f_4@@7))) (<= (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| Mask@@12) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| Mask@@12) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5464) (o_2@@8 T@Ref) (f_4@@8 T@Field_5503_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| Mask@@13) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5503_53 f_4@@8))) (not (IsWandField_5503_53 f_4@@8))) (<= (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| Mask@@13) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| Mask@@13) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5464) (o_2@@9 T@Ref) (f_4@@9 T@Field_5503_14533) ) (! (= (HasDirectPerm_5503_20250 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5503_20250 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5464) (o_2@@10 T@Ref) (f_4@@10 T@Field_5503_14400) ) (! (= (HasDirectPerm_5503_14464 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5503_14464 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5464) (o_2@@11 T@Ref) (f_4@@11 T@Field_8830_1189) ) (! (= (HasDirectPerm_5503_1189 Mask@@16 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| Mask@@16) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5503_1189 Mask@@16 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5464) (o_2@@12 T@Ref) (f_4@@12 T@Field_5516_5517) ) (! (= (HasDirectPerm_5503_5517 Mask@@17 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| Mask@@17) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5503_5517 Mask@@17 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5464) (o_2@@13 T@Ref) (f_4@@13 T@Field_5503_53) ) (! (= (HasDirectPerm_5503_53 Mask@@18 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| Mask@@18) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5503_53 Mask@@18 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5443) (ExhaleHeap@@3 T@PolymorphicMapType_5443) (Mask@@19 T@PolymorphicMapType_5464) (pm_f@@1 T@Field_5503_14400) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@19) (=> (and (HasDirectPerm_5503_14464 Mask@@19 null pm_f@@1) (IsPredicateField_5503_14491 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_5503_53) ) (!  (=> (select (|PolymorphicMapType_5992_5503_53#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@12) null (PredicateMaskField_5503 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@12) o2 f_2) (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_5516_5517) ) (!  (=> (select (|PolymorphicMapType_5992_5503_5517#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@12) null (PredicateMaskField_5503 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@12) o2@@0 f_2@@0) (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_8830_1189) ) (!  (=> (select (|PolymorphicMapType_5992_5503_1189#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@12) null (PredicateMaskField_5503 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@12) o2@@1 f_2@@1) (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_5503_14400) ) (!  (=> (select (|PolymorphicMapType_5992_5503_14400#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@12) null (PredicateMaskField_5503 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@12) o2@@2 f_2@@2) (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_5503_14533) ) (!  (=> (select (|PolymorphicMapType_5992_5503_15711#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@12) null (PredicateMaskField_5503 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@12) o2@@3 f_2@@3) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@3 Mask@@19) (IsPredicateField_5503_14491 pm_f@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5443) (ExhaleHeap@@4 T@PolymorphicMapType_5443) (Mask@@20 T@PolymorphicMapType_5464) (pm_f@@2 T@Field_5503_14400) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@20) (=> (and (HasDirectPerm_5503_14464 Mask@@20 null pm_f@@2) (IsWandField_5503_16238 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_5503_53) ) (!  (=> (select (|PolymorphicMapType_5992_5503_53#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@13) null (WandMaskField_5503 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@13) o2@@4 f_2@@4) (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_5516_5517) ) (!  (=> (select (|PolymorphicMapType_5992_5503_5517#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@13) null (WandMaskField_5503 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@13) o2@@5 f_2@@5) (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_8830_1189) ) (!  (=> (select (|PolymorphicMapType_5992_5503_1189#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@13) null (WandMaskField_5503 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@13) o2@@6 f_2@@6) (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_5503_14400) ) (!  (=> (select (|PolymorphicMapType_5992_5503_14400#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@13) null (WandMaskField_5503 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@13) o2@@7 f_2@@7) (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_5503_14533) ) (!  (=> (select (|PolymorphicMapType_5992_5503_15711#PolymorphicMapType_5992| (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@13) null (WandMaskField_5503 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@13) o2@@8 f_2@@8) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@4 Mask@@20) (IsWandField_5503_16238 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.168:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5443) (ExhaleHeap@@5 T@PolymorphicMapType_5443) (Mask@@21 T@PolymorphicMapType_5464) (o_1@@0 T@Ref) (f_2@@9 T@Field_5503_14533) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_5503_20250 Mask@@21 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@14) o_1@@0 f_2@@9) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5443) (ExhaleHeap@@6 T@PolymorphicMapType_5443) (Mask@@22 T@PolymorphicMapType_5464) (o_1@@1 T@Ref) (f_2@@10 T@Field_5503_14400) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_5503_14464 Mask@@22 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@15) o_1@@1 f_2@@10) (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5443) (ExhaleHeap@@7 T@PolymorphicMapType_5443) (Mask@@23 T@PolymorphicMapType_5464) (o_1@@2 T@Ref) (f_2@@11 T@Field_8830_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_5503_1189 Mask@@23 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@16) o_1@@2 f_2@@11) (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5443) (ExhaleHeap@@8 T@PolymorphicMapType_5443) (Mask@@24 T@PolymorphicMapType_5464) (o_1@@3 T@Ref) (f_2@@12 T@Field_5516_5517) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_5503_5517 Mask@@24 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@17) o_1@@3 f_2@@12) (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5443) (ExhaleHeap@@9 T@PolymorphicMapType_5443) (Mask@@25 T@PolymorphicMapType_5464) (o_1@@4 T@Ref) (f_2@@13 T@Field_5503_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@25) (=> (HasDirectPerm_5503_53 Mask@@25 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@18) o_1@@4 f_2@@13) (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@9 Mask@@25) (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5443) ) (!  (and (= (f1_3 Heap@@19) (|f1'| Heap@@19)) (dummyFunction_1327 |f1#triggerStateless|))
 :qid |stdinbpl.200:15|
 :skolemid |22|
 :pattern ( (f1_3 Heap@@19))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5443) ) (!  (and (= (f2_3 Heap@@20) (|f2'| Heap@@20)) (dummyFunction_1327 |f2#triggerStateless|))
 :qid |stdinbpl.250:15|
 :skolemid |26|
 :pattern ( (f2_3 Heap@@20))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5443) ) (!  (and (= (f4_1 Heap@@21) (|f4'| Heap@@21)) (dummyFunction_1327 |f4#triggerStateless|))
 :qid |stdinbpl.361:15|
 :skolemid |34|
 :pattern ( (f4_1 Heap@@21))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5443) ) (!  (and (= (f6_1 Heap@@22) (|f6'| Heap@@22)) (dummyFunction_1327 |f6#triggerStateless|))
 :qid |stdinbpl.493:15|
 :skolemid |42|
 :pattern ( (f6_1 Heap@@22))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5443) ) (!  (and (= (f7 Heap@@23) (|f7'| Heap@@23)) (dummyFunction_1327 |f7#triggerStateless|))
 :qid |stdinbpl.551:15|
 :skolemid |46|
 :pattern ( (f7 Heap@@23))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5443) ) (!  (and (= (f8 Heap@@24) (|f8'| Heap@@24)) (dummyFunction_1327 |f8#triggerStateless|))
 :qid |stdinbpl.609:15|
 :skolemid |50|
 :pattern ( (f8 Heap@@24))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5503_14533) ) (! (= (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5503_14400) ) (! (= (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_8830_1189) ) (! (= (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_5516_5517) ) (! (= (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_5503_53) ) (! (= (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5443) (i@@3 Int) (b_24@@1 Bool) ) (!  (and (= (f5_1 Heap@@25 i@@3 b_24@@1) (|f5'| Heap@@25 i@@3 b_24@@1)) (dummyFunction_1327 (|f5#triggerStateless| i@@3 b_24@@1)))
 :qid |stdinbpl.430:15|
 :skolemid |38|
 :pattern ( (f5_1 Heap@@25 i@@3 b_24@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5464) (SummandMask1 T@PolymorphicMapType_5464) (SummandMask2 T@PolymorphicMapType_5464) (o_2@@19 T@Ref) (f_4@@19 T@Field_5503_14533) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5464_5503_18667#PolymorphicMapType_5464| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5464) (SummandMask1@@0 T@PolymorphicMapType_5464) (SummandMask2@@0 T@PolymorphicMapType_5464) (o_2@@20 T@Ref) (f_4@@20 T@Field_5503_14400) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5464_5503_14400#PolymorphicMapType_5464| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5464) (SummandMask1@@1 T@PolymorphicMapType_5464) (SummandMask2@@1 T@PolymorphicMapType_5464) (o_2@@21 T@Ref) (f_4@@21 T@Field_8830_1189) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5464_5503_1189#PolymorphicMapType_5464| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5464) (SummandMask1@@2 T@PolymorphicMapType_5464) (SummandMask2@@2 T@PolymorphicMapType_5464) (o_2@@22 T@Ref) (f_4@@22 T@Field_5516_5517) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5464_5503_5517#PolymorphicMapType_5464| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5464) (SummandMask1@@3 T@PolymorphicMapType_5464) (SummandMask2@@3 T@PolymorphicMapType_5464) (o_2@@23 T@Ref) (f_4@@23 T@Field_5503_53) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5464_5503_53#PolymorphicMapType_5464| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5443) (Mask@@26 T@PolymorphicMapType_5464) (i@@4 Int) (b_24@@2 Bool) ) (!  (=> (and (state Heap@@26 Mask@@26) (< AssumeFunctionsAbove 0)) (= (f5_1 Heap@@26 i@@4 b_24@@2) (ite b_24@@2 (|f5'| Heap@@26 (* 2 i@@4) false) i@@4)))
 :qid |stdinbpl.440:15|
 :skolemid |40|
 :pattern ( (state Heap@@26 Mask@@26) (f5_1 Heap@@26 i@@4 b_24@@2))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5443) (Mask@@27 T@PolymorphicMapType_5464) ) (!  (=> (and (state Heap@@27 Mask@@27) (< AssumeFunctionsAbove 2)) (= (f4_1 Heap@@27) (+ (f1_3 Heap@@27) (f2_3 Heap@@27))))
 :qid |stdinbpl.371:15|
 :skolemid |36|
 :pattern ( (state Heap@@27 Mask@@27) (f4_1 Heap@@27))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5443) (Mask@@28 T@PolymorphicMapType_5464) (i@@5 Int) ) (!  (=> (state Heap@@28 Mask@@28) (= (|f3'| Heap@@28 i@@5) (|f3#frame| EmptyFrame i@@5)))
 :qid |stdinbpl.328:15|
 :skolemid |33|
 :pattern ( (state Heap@@28 Mask@@28) (|f3'| Heap@@28 i@@5))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5443) ) (! (dummyFunction_1327 |f1#triggerStateless|)
 :qid |stdinbpl.204:15|
 :skolemid |23|
 :pattern ( (|f1'| Heap@@29))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5443) ) (! (dummyFunction_1327 |f2#triggerStateless|)
 :qid |stdinbpl.254:15|
 :skolemid |27|
 :pattern ( (|f2'| Heap@@30))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5443) ) (! (dummyFunction_1327 |f4#triggerStateless|)
 :qid |stdinbpl.365:15|
 :skolemid |35|
 :pattern ( (|f4'| Heap@@31))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_5443) ) (! (dummyFunction_1327 |f6#triggerStateless|)
 :qid |stdinbpl.497:15|
 :skolemid |43|
 :pattern ( (|f6'| Heap@@32))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_5443) ) (! (dummyFunction_1327 |f7#triggerStateless|)
 :qid |stdinbpl.555:15|
 :skolemid |47|
 :pattern ( (|f7'| Heap@@33))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_5443) ) (! (dummyFunction_1327 |f8#triggerStateless|)
 :qid |stdinbpl.613:15|
 :skolemid |51|
 :pattern ( (|f8'| Heap@@34))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_5443) (Mask@@29 T@PolymorphicMapType_5464) ) (!  (=> (state Heap@@35 Mask@@29) (= (|f1'| Heap@@35) (|f1#frame| EmptyFrame)))
 :qid |stdinbpl.217:15|
 :skolemid |25|
 :pattern ( (state Heap@@35 Mask@@29) (|f1'| Heap@@35))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_5443) (Mask@@30 T@PolymorphicMapType_5464) ) (!  (=> (state Heap@@36 Mask@@30) (= (|f2'| Heap@@36) (|f2#frame| EmptyFrame)))
 :qid |stdinbpl.267:15|
 :skolemid |29|
 :pattern ( (state Heap@@36 Mask@@30) (|f2'| Heap@@36))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_5443) (Mask@@31 T@PolymorphicMapType_5464) ) (!  (=> (state Heap@@37 Mask@@31) (= (|f4'| Heap@@37) (|f4#frame| EmptyFrame)))
 :qid |stdinbpl.378:15|
 :skolemid |37|
 :pattern ( (state Heap@@37 Mask@@31) (|f4'| Heap@@37))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_5443) (Mask@@32 T@PolymorphicMapType_5464) ) (!  (=> (state Heap@@38 Mask@@32) (= (|f6'| Heap@@38) (|f6#frame| EmptyFrame)))
 :qid |stdinbpl.510:15|
 :skolemid |45|
 :pattern ( (state Heap@@38 Mask@@32) (|f6'| Heap@@38))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_5443) (Mask@@33 T@PolymorphicMapType_5464) ) (!  (=> (state Heap@@39 Mask@@33) (= (|f7'| Heap@@39) (|f7#frame| EmptyFrame)))
 :qid |stdinbpl.568:15|
 :skolemid |49|
 :pattern ( (state Heap@@39 Mask@@33) (|f7'| Heap@@39))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_5443) (Mask@@34 T@PolymorphicMapType_5464) ) (!  (=> (state Heap@@40 Mask@@34) (= (|f8'| Heap@@40) (|f8#frame| EmptyFrame)))
 :qid |stdinbpl.626:15|
 :skolemid |53|
 :pattern ( (state Heap@@40 Mask@@34) (|f8'| Heap@@40))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_5443) (o T@Ref) (f_3 T@Field_5503_14400) (v T@FrameType) ) (! (succHeap Heap@@41 (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@41) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@41) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@41) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@41) (store (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@41) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@41) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@41) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@41) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@41) (store (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@41) o f_3 v)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_5443) (o@@0 T@Ref) (f_3@@0 T@Field_5503_14533) (v@@0 T@PolymorphicMapType_5992) ) (! (succHeap Heap@@42 (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@42) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@42) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@42) (store (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@42) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@42) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@42) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@42) (store (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@42) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_5443) (o@@1 T@Ref) (f_3@@1 T@Field_8830_1189) (v@@1 Int) ) (! (succHeap Heap@@43 (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@43) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@43) (store (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@43) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@43) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@43) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@43) (store (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@43) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@43) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_5443) (o@@2 T@Ref) (f_3@@2 T@Field_5516_5517) (v@@2 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@44) (store (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@44) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@44) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@44) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5443 (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@44) (store (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@44) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@44) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@44) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_5443) (o@@3 T@Ref) (f_3@@3 T@Field_5503_53) (v@@3 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_5443 (store (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@45) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@45) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@45) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@45) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5443 (store (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@45) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@45) (|PolymorphicMapType_5443_5503_1189#PolymorphicMapType_5443| Heap@@45) (|PolymorphicMapType_5443_5503_14577#PolymorphicMapType_5443| Heap@@45) (|PolymorphicMapType_5443_5503_14400#PolymorphicMapType_5443| Heap@@45)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_5516_5517) (Heap@@46 T@PolymorphicMapType_5443) ) (!  (=> (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@46) o@@4 $allocated) (select (|PolymorphicMapType_5443_2900_53#PolymorphicMapType_5443| Heap@@46) (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@46) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5443_2903_2904#PolymorphicMapType_5443| Heap@@46) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_5503_14400) (v_1@@0 T@FrameType) (q T@Field_5503_14400) (w@@0 T@FrameType) (r T@Field_5503_14400) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5503_5503 p@@1 v_1@@0 q w@@0) (InsidePredicate_5503_5503 q w@@0 r u)) (InsidePredicate_5503_5503 p@@1 v_1@@0 r u))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5503_5503 p@@1 v_1@@0 q w@@0) (InsidePredicate_5503_5503 q w@@0 r u))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_5443) (Mask@@35 T@PolymorphicMapType_5464) (i@@6 Int) ) (!  (=> (and (state Heap@@47 Mask@@35) (< AssumeFunctionsAbove 5)) (= (f3_2 Heap@@47 i@@6) i@@6))
 :qid |stdinbpl.321:15|
 :skolemid |32|
 :pattern ( (state Heap@@47 Mask@@35) (f3_2 Heap@@47 i@@6))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_5443) (Mask@@36 T@PolymorphicMapType_5464) ) (!  (=> (and (state Heap@@48 Mask@@36) (< AssumeFunctionsAbove 6)) (= (f1_3 Heap@@48) 1))
 :qid |stdinbpl.210:15|
 :skolemid |24|
 :pattern ( (state Heap@@48 Mask@@36) (f1_3 Heap@@48))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

