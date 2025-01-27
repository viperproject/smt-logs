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
(declare-sort T@Field_7750_53 0)
(declare-sort T@Field_7763_7764 0)
(declare-sort T@Field_13919_3216 0)
(declare-sort T@Field_14018_14020 0)
(declare-sort T@Field_4445_20143 0)
(declare-sort T@Field_4445_20010 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_7711 0)) (((PolymorphicMapType_7711 (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| (Array T@Ref T@Field_13919_3216 Real)) (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| (Array T@Ref T@Field_7763_7764 Real)) (|PolymorphicMapType_7711_4450_17531#PolymorphicMapType_7711| (Array T@Ref T@Field_14018_14020 Real)) (|PolymorphicMapType_7711_4445_53#PolymorphicMapType_7711| (Array T@Ref T@Field_7750_53 Real)) (|PolymorphicMapType_7711_4445_20010#PolymorphicMapType_7711| (Array T@Ref T@Field_4445_20010 Real)) (|PolymorphicMapType_7711_4445_24854#PolymorphicMapType_7711| (Array T@Ref T@Field_4445_20143 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8239 0)) (((PolymorphicMapType_8239 (|PolymorphicMapType_8239_7750_53#PolymorphicMapType_8239| (Array T@Ref T@Field_7750_53 Bool)) (|PolymorphicMapType_8239_7750_7764#PolymorphicMapType_8239| (Array T@Ref T@Field_7763_7764 Bool)) (|PolymorphicMapType_8239_7750_3216#PolymorphicMapType_8239| (Array T@Ref T@Field_13919_3216 Bool)) (|PolymorphicMapType_8239_7750_21100#PolymorphicMapType_8239| (Array T@Ref T@Field_14018_14020 Bool)) (|PolymorphicMapType_8239_7750_20010#PolymorphicMapType_8239| (Array T@Ref T@Field_4445_20010 Bool)) (|PolymorphicMapType_8239_7750_21539#PolymorphicMapType_8239| (Array T@Ref T@Field_4445_20143 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7690 0)) (((PolymorphicMapType_7690 (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| (Array T@Ref T@Field_7750_53 Bool)) (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| (Array T@Ref T@Field_7763_7764 T@Ref)) (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| (Array T@Ref T@Field_13919_3216 Int)) (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| (Array T@Ref T@Field_14018_14020 (Array T@Ref Bool))) (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| (Array T@Ref T@Field_4445_20143 T@PolymorphicMapType_8239)) (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| (Array T@Ref T@Field_4445_20010 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_7750_53)
(declare-fun f_7 () T@Field_13919_3216)
(declare-fun g () T@Field_7763_7764)
(declare-fun h () T@Field_14018_14020)
(declare-fun succHeap (T@PolymorphicMapType_7690 T@PolymorphicMapType_7690) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7690 T@PolymorphicMapType_7690) Bool)
(declare-fun state (T@PolymorphicMapType_7690 T@PolymorphicMapType_7711) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7711) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8239)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7690 T@PolymorphicMapType_7690 T@PolymorphicMapType_7711) Bool)
(declare-fun IsPredicateField_4445_20101 (T@Field_4445_20010) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4445 (T@Field_4445_20010) T@Field_4445_20143)
(declare-fun HasDirectPerm_4445_20074 (T@PolymorphicMapType_7711 T@Ref T@Field_4445_20010) Bool)
(declare-fun IsWandField_4445_22066 (T@Field_4445_20010) Bool)
(declare-fun WandMaskField_4445 (T@Field_4445_20010) T@Field_4445_20143)
(declare-fun dummyHeap () T@PolymorphicMapType_7690)
(declare-fun ZeroMask () T@PolymorphicMapType_7711)
(declare-fun InsidePredicate_7750_7750 (T@Field_4445_20010 T@FrameType T@Field_4445_20010 T@FrameType) Bool)
(declare-fun IsPredicateField_4445_3216 (T@Field_13919_3216) Bool)
(declare-fun IsWandField_4445_3216 (T@Field_13919_3216) Bool)
(declare-fun IsPredicateField_4447_4448 (T@Field_7763_7764) Bool)
(declare-fun IsWandField_4447_4448 (T@Field_7763_7764) Bool)
(declare-fun IsPredicateField_4450_14044 (T@Field_14018_14020) Bool)
(declare-fun IsWandField_4450_14071 (T@Field_14018_14020) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4445_26196 (T@Field_4445_20143) Bool)
(declare-fun IsWandField_4445_26212 (T@Field_4445_20143) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4445_53 (T@Field_7750_53) Bool)
(declare-fun IsWandField_4445_53 (T@Field_7750_53) Bool)
(declare-fun HasDirectPerm_4445_26736 (T@PolymorphicMapType_7711 T@Ref T@Field_4445_20143) Bool)
(declare-fun HasDirectPerm_4445_53 (T@PolymorphicMapType_7711 T@Ref T@Field_7750_53) Bool)
(declare-fun HasDirectPerm_4450_17727 (T@PolymorphicMapType_7711 T@Ref T@Field_14018_14020) Bool)
(declare-fun HasDirectPerm_4447_4448 (T@PolymorphicMapType_7711 T@Ref T@Field_7763_7764) Bool)
(declare-fun HasDirectPerm_4445_3216 (T@PolymorphicMapType_7711 T@Ref T@Field_13919_3216) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7711 T@PolymorphicMapType_7711 T@PolymorphicMapType_7711) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7690) (Heap1 T@PolymorphicMapType_7690) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7690) (Mask T@PolymorphicMapType_7711) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7690) (Heap1@@0 T@PolymorphicMapType_7690) (Heap2 T@PolymorphicMapType_7690) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4445_20143) ) (!  (not (select (|PolymorphicMapType_8239_7750_21539#PolymorphicMapType_8239| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8239_7750_21539#PolymorphicMapType_8239| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4445_20010) ) (!  (not (select (|PolymorphicMapType_8239_7750_20010#PolymorphicMapType_8239| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8239_7750_20010#PolymorphicMapType_8239| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14018_14020) ) (!  (not (select (|PolymorphicMapType_8239_7750_21100#PolymorphicMapType_8239| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8239_7750_21100#PolymorphicMapType_8239| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_13919_3216) ) (!  (not (select (|PolymorphicMapType_8239_7750_3216#PolymorphicMapType_8239| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8239_7750_3216#PolymorphicMapType_8239| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7763_7764) ) (!  (not (select (|PolymorphicMapType_8239_7750_7764#PolymorphicMapType_8239| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8239_7750_7764#PolymorphicMapType_8239| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_7750_53) ) (!  (not (select (|PolymorphicMapType_8239_7750_53#PolymorphicMapType_8239| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8239_7750_53#PolymorphicMapType_8239| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.273:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.276:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7690) (ExhaleHeap T@PolymorphicMapType_7690) (Mask@@0 T@PolymorphicMapType_7711) (pm_f_32 T@Field_4445_20010) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4445_20074 Mask@@0 null pm_f_32) (IsPredicateField_4445_20101 pm_f_32)) (= (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@0) null (PredicateMaskField_4445 pm_f_32)) (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| ExhaleHeap) null (PredicateMaskField_4445 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4445_20101 pm_f_32) (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| ExhaleHeap) null (PredicateMaskField_4445 pm_f_32)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7690) (ExhaleHeap@@0 T@PolymorphicMapType_7690) (Mask@@1 T@PolymorphicMapType_7711) (pm_f_32@@0 T@Field_4445_20010) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4445_20074 Mask@@1 null pm_f_32@@0) (IsWandField_4445_22066 pm_f_32@@0)) (= (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@1) null (WandMaskField_4445 pm_f_32@@0)) (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| ExhaleHeap@@0) null (WandMaskField_4445 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4445_22066 pm_f_32@@0) (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| ExhaleHeap@@0) null (WandMaskField_4445 pm_f_32@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7690) (ExhaleHeap@@1 T@PolymorphicMapType_7690) (Mask@@2 T@PolymorphicMapType_7711) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@2) o_55 $allocated) (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| ExhaleHeap@@1) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| ExhaleHeap@@1) o_55 $allocated))
)))
(assert (forall ((p T@Field_4445_20010) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7750_7750 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7750_7750 p v_1 p w))
)))
(assert  (not (IsPredicateField_4445_3216 f_7)))
(assert  (not (IsWandField_4445_3216 f_7)))
(assert  (not (IsPredicateField_4447_4448 g)))
(assert  (not (IsWandField_4447_4448 g)))
(assert  (not (IsPredicateField_4450_14044 h)))
(assert  (not (IsWandField_4450_14071 h)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7690) (ExhaleHeap@@2 T@PolymorphicMapType_7690) (Mask@@3 T@PolymorphicMapType_7711) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_7711) (o_2@@5 T@Ref) (f_4@@5 T@Field_4445_20143) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_7711_4445_24854#PolymorphicMapType_7711| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4445_26196 f_4@@5))) (not (IsWandField_4445_26212 f_4@@5))) (<= (select (|PolymorphicMapType_7711_4445_24854#PolymorphicMapType_7711| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_7711_4445_24854#PolymorphicMapType_7711| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_7711) (o_2@@6 T@Ref) (f_4@@6 T@Field_4445_20010) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_7711_4445_20010#PolymorphicMapType_7711| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4445_20101 f_4@@6))) (not (IsWandField_4445_22066 f_4@@6))) (<= (select (|PolymorphicMapType_7711_4445_20010#PolymorphicMapType_7711| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_7711_4445_20010#PolymorphicMapType_7711| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_7711) (o_2@@7 T@Ref) (f_4@@7 T@Field_7750_53) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_7711_4445_53#PolymorphicMapType_7711| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4445_53 f_4@@7))) (not (IsWandField_4445_53 f_4@@7))) (<= (select (|PolymorphicMapType_7711_4445_53#PolymorphicMapType_7711| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_7711_4445_53#PolymorphicMapType_7711| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_7711) (o_2@@8 T@Ref) (f_4@@8 T@Field_14018_14020) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_7711_4450_17531#PolymorphicMapType_7711| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4450_14044 f_4@@8))) (not (IsWandField_4450_14071 f_4@@8))) (<= (select (|PolymorphicMapType_7711_4450_17531#PolymorphicMapType_7711| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_7711_4450_17531#PolymorphicMapType_7711| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_7711) (o_2@@9 T@Ref) (f_4@@9 T@Field_7763_7764) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4447_4448 f_4@@9))) (not (IsWandField_4447_4448 f_4@@9))) (<= (select (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_7711) (o_2@@10 T@Ref) (f_4@@10 T@Field_13919_3216) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_4445_3216 f_4@@10))) (not (IsWandField_4445_3216 f_4@@10))) (<= (select (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7711) (o_2@@11 T@Ref) (f_4@@11 T@Field_4445_20143) ) (! (= (HasDirectPerm_4445_26736 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_7711_4445_24854#PolymorphicMapType_7711| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4445_26736 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7711) (o_2@@12 T@Ref) (f_4@@12 T@Field_4445_20010) ) (! (= (HasDirectPerm_4445_20074 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_7711_4445_20010#PolymorphicMapType_7711| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4445_20074 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7711) (o_2@@13 T@Ref) (f_4@@13 T@Field_7750_53) ) (! (= (HasDirectPerm_4445_53 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_7711_4445_53#PolymorphicMapType_7711| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4445_53 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7711) (o_2@@14 T@Ref) (f_4@@14 T@Field_14018_14020) ) (! (= (HasDirectPerm_4450_17727 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_7711_4450_17531#PolymorphicMapType_7711| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4450_17727 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7711) (o_2@@15 T@Ref) (f_4@@15 T@Field_7763_7764) ) (! (= (HasDirectPerm_4447_4448 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4447_4448 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7711) (o_2@@16 T@Ref) (f_4@@16 T@Field_13919_3216) ) (! (= (HasDirectPerm_4445_3216 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4445_3216 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7690) (ExhaleHeap@@3 T@PolymorphicMapType_7690) (Mask@@16 T@PolymorphicMapType_7711) (o_55@@0 T@Ref) (f_54 T@Field_4445_20143) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_4445_26736 Mask@@16 o_55@@0 f_54) (= (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@4) o_55@@0 f_54) (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| ExhaleHeap@@3) o_55@@0 f_54))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| ExhaleHeap@@3) o_55@@0 f_54))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7690) (ExhaleHeap@@4 T@PolymorphicMapType_7690) (Mask@@17 T@PolymorphicMapType_7711) (o_55@@1 T@Ref) (f_54@@0 T@Field_4445_20010) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_4445_20074 Mask@@17 o_55@@1 f_54@@0) (= (select (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@5) o_55@@1 f_54@@0) (select (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| ExhaleHeap@@4) o_55@@1 f_54@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| ExhaleHeap@@4) o_55@@1 f_54@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7690) (ExhaleHeap@@5 T@PolymorphicMapType_7690) (Mask@@18 T@PolymorphicMapType_7711) (o_55@@2 T@Ref) (f_54@@1 T@Field_7750_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_4445_53 Mask@@18 o_55@@2 f_54@@1) (= (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@6) o_55@@2 f_54@@1) (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| ExhaleHeap@@5) o_55@@2 f_54@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| ExhaleHeap@@5) o_55@@2 f_54@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7690) (ExhaleHeap@@6 T@PolymorphicMapType_7690) (Mask@@19 T@PolymorphicMapType_7711) (o_55@@3 T@Ref) (f_54@@2 T@Field_14018_14020) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_4450_17727 Mask@@19 o_55@@3 f_54@@2) (= (select (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@7) o_55@@3 f_54@@2) (select (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| ExhaleHeap@@6) o_55@@3 f_54@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| ExhaleHeap@@6) o_55@@3 f_54@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7690) (ExhaleHeap@@7 T@PolymorphicMapType_7690) (Mask@@20 T@PolymorphicMapType_7711) (o_55@@4 T@Ref) (f_54@@3 T@Field_7763_7764) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_4447_4448 Mask@@20 o_55@@4 f_54@@3) (= (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@8) o_55@@4 f_54@@3) (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| ExhaleHeap@@7) o_55@@4 f_54@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| ExhaleHeap@@7) o_55@@4 f_54@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7690) (ExhaleHeap@@8 T@PolymorphicMapType_7690) (Mask@@21 T@PolymorphicMapType_7711) (o_55@@5 T@Ref) (f_54@@4 T@Field_13919_3216) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_4445_3216 Mask@@21 o_55@@5 f_54@@4) (= (select (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@9) o_55@@5 f_54@@4) (select (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| ExhaleHeap@@8) o_55@@5 f_54@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| ExhaleHeap@@8) o_55@@5 f_54@@4))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_4445_20143) ) (! (= (select (|PolymorphicMapType_7711_4445_24854#PolymorphicMapType_7711| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7711_4445_24854#PolymorphicMapType_7711| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_4445_20010) ) (! (= (select (|PolymorphicMapType_7711_4445_20010#PolymorphicMapType_7711| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7711_4445_20010#PolymorphicMapType_7711| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_7750_53) ) (! (= (select (|PolymorphicMapType_7711_4445_53#PolymorphicMapType_7711| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7711_4445_53#PolymorphicMapType_7711| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_14018_14020) ) (! (= (select (|PolymorphicMapType_7711_4450_17531#PolymorphicMapType_7711| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7711_4450_17531#PolymorphicMapType_7711| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_7763_7764) ) (! (= (select (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_13919_3216) ) (! (= (select (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7711) (SummandMask1 T@PolymorphicMapType_7711) (SummandMask2 T@PolymorphicMapType_7711) (o_2@@23 T@Ref) (f_4@@23 T@Field_4445_20143) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7711_4445_24854#PolymorphicMapType_7711| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_7711_4445_24854#PolymorphicMapType_7711| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_7711_4445_24854#PolymorphicMapType_7711| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7711_4445_24854#PolymorphicMapType_7711| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7711_4445_24854#PolymorphicMapType_7711| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7711_4445_24854#PolymorphicMapType_7711| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7711) (SummandMask1@@0 T@PolymorphicMapType_7711) (SummandMask2@@0 T@PolymorphicMapType_7711) (o_2@@24 T@Ref) (f_4@@24 T@Field_4445_20010) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7711_4445_20010#PolymorphicMapType_7711| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_7711_4445_20010#PolymorphicMapType_7711| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_7711_4445_20010#PolymorphicMapType_7711| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7711_4445_20010#PolymorphicMapType_7711| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7711_4445_20010#PolymorphicMapType_7711| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7711_4445_20010#PolymorphicMapType_7711| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7711) (SummandMask1@@1 T@PolymorphicMapType_7711) (SummandMask2@@1 T@PolymorphicMapType_7711) (o_2@@25 T@Ref) (f_4@@25 T@Field_7750_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7711_4445_53#PolymorphicMapType_7711| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_7711_4445_53#PolymorphicMapType_7711| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_7711_4445_53#PolymorphicMapType_7711| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7711_4445_53#PolymorphicMapType_7711| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7711_4445_53#PolymorphicMapType_7711| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7711_4445_53#PolymorphicMapType_7711| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7711) (SummandMask1@@2 T@PolymorphicMapType_7711) (SummandMask2@@2 T@PolymorphicMapType_7711) (o_2@@26 T@Ref) (f_4@@26 T@Field_14018_14020) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7711_4450_17531#PolymorphicMapType_7711| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_7711_4450_17531#PolymorphicMapType_7711| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_7711_4450_17531#PolymorphicMapType_7711| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7711_4450_17531#PolymorphicMapType_7711| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7711_4450_17531#PolymorphicMapType_7711| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7711_4450_17531#PolymorphicMapType_7711| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7711) (SummandMask1@@3 T@PolymorphicMapType_7711) (SummandMask2@@3 T@PolymorphicMapType_7711) (o_2@@27 T@Ref) (f_4@@27 T@Field_7763_7764) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7711) (SummandMask1@@4 T@PolymorphicMapType_7711) (SummandMask2@@4 T@PolymorphicMapType_7711) (o_2@@28 T@Ref) (f_4@@28 T@Field_13919_3216) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7690) (ExhaleHeap@@9 T@PolymorphicMapType_7690) (Mask@@22 T@PolymorphicMapType_7711) (pm_f_32@@1 T@Field_4445_20010) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_4445_20074 Mask@@22 null pm_f_32@@1) (IsPredicateField_4445_20101 pm_f_32@@1)) (and (and (and (and (and (forall ((o2_32 T@Ref) (f_54@@5 T@Field_7750_53) ) (!  (=> (select (|PolymorphicMapType_8239_7750_53#PolymorphicMapType_8239| (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@10) null (PredicateMaskField_4445 pm_f_32@@1))) o2_32 f_54@@5) (= (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@10) o2_32 f_54@@5) (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| ExhaleHeap@@9) o2_32 f_54@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| ExhaleHeap@@9) o2_32 f_54@@5))
)) (forall ((o2_32@@0 T@Ref) (f_54@@6 T@Field_7763_7764) ) (!  (=> (select (|PolymorphicMapType_8239_7750_7764#PolymorphicMapType_8239| (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@10) null (PredicateMaskField_4445 pm_f_32@@1))) o2_32@@0 f_54@@6) (= (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@10) o2_32@@0 f_54@@6) (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| ExhaleHeap@@9) o2_32@@0 f_54@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| ExhaleHeap@@9) o2_32@@0 f_54@@6))
))) (forall ((o2_32@@1 T@Ref) (f_54@@7 T@Field_13919_3216) ) (!  (=> (select (|PolymorphicMapType_8239_7750_3216#PolymorphicMapType_8239| (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@10) null (PredicateMaskField_4445 pm_f_32@@1))) o2_32@@1 f_54@@7) (= (select (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@10) o2_32@@1 f_54@@7) (select (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| ExhaleHeap@@9) o2_32@@1 f_54@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| ExhaleHeap@@9) o2_32@@1 f_54@@7))
))) (forall ((o2_32@@2 T@Ref) (f_54@@8 T@Field_14018_14020) ) (!  (=> (select (|PolymorphicMapType_8239_7750_21100#PolymorphicMapType_8239| (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@10) null (PredicateMaskField_4445 pm_f_32@@1))) o2_32@@2 f_54@@8) (= (select (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@10) o2_32@@2 f_54@@8) (select (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| ExhaleHeap@@9) o2_32@@2 f_54@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| ExhaleHeap@@9) o2_32@@2 f_54@@8))
))) (forall ((o2_32@@3 T@Ref) (f_54@@9 T@Field_4445_20010) ) (!  (=> (select (|PolymorphicMapType_8239_7750_20010#PolymorphicMapType_8239| (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@10) null (PredicateMaskField_4445 pm_f_32@@1))) o2_32@@3 f_54@@9) (= (select (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@10) o2_32@@3 f_54@@9) (select (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| ExhaleHeap@@9) o2_32@@3 f_54@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| ExhaleHeap@@9) o2_32@@3 f_54@@9))
))) (forall ((o2_32@@4 T@Ref) (f_54@@10 T@Field_4445_20143) ) (!  (=> (select (|PolymorphicMapType_8239_7750_21539#PolymorphicMapType_8239| (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@10) null (PredicateMaskField_4445 pm_f_32@@1))) o2_32@@4 f_54@@10) (= (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@10) o2_32@@4 f_54@@10) (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| ExhaleHeap@@9) o2_32@@4 f_54@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| ExhaleHeap@@9) o2_32@@4 f_54@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_4445_20101 pm_f_32@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7690) (ExhaleHeap@@10 T@PolymorphicMapType_7690) (Mask@@23 T@PolymorphicMapType_7711) (pm_f_32@@2 T@Field_4445_20010) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_4445_20074 Mask@@23 null pm_f_32@@2) (IsWandField_4445_22066 pm_f_32@@2)) (and (and (and (and (and (forall ((o2_32@@5 T@Ref) (f_54@@11 T@Field_7750_53) ) (!  (=> (select (|PolymorphicMapType_8239_7750_53#PolymorphicMapType_8239| (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@11) null (WandMaskField_4445 pm_f_32@@2))) o2_32@@5 f_54@@11) (= (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@11) o2_32@@5 f_54@@11) (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| ExhaleHeap@@10) o2_32@@5 f_54@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| ExhaleHeap@@10) o2_32@@5 f_54@@11))
)) (forall ((o2_32@@6 T@Ref) (f_54@@12 T@Field_7763_7764) ) (!  (=> (select (|PolymorphicMapType_8239_7750_7764#PolymorphicMapType_8239| (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@11) null (WandMaskField_4445 pm_f_32@@2))) o2_32@@6 f_54@@12) (= (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@11) o2_32@@6 f_54@@12) (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| ExhaleHeap@@10) o2_32@@6 f_54@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| ExhaleHeap@@10) o2_32@@6 f_54@@12))
))) (forall ((o2_32@@7 T@Ref) (f_54@@13 T@Field_13919_3216) ) (!  (=> (select (|PolymorphicMapType_8239_7750_3216#PolymorphicMapType_8239| (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@11) null (WandMaskField_4445 pm_f_32@@2))) o2_32@@7 f_54@@13) (= (select (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@11) o2_32@@7 f_54@@13) (select (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| ExhaleHeap@@10) o2_32@@7 f_54@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| ExhaleHeap@@10) o2_32@@7 f_54@@13))
))) (forall ((o2_32@@8 T@Ref) (f_54@@14 T@Field_14018_14020) ) (!  (=> (select (|PolymorphicMapType_8239_7750_21100#PolymorphicMapType_8239| (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@11) null (WandMaskField_4445 pm_f_32@@2))) o2_32@@8 f_54@@14) (= (select (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@11) o2_32@@8 f_54@@14) (select (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| ExhaleHeap@@10) o2_32@@8 f_54@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| ExhaleHeap@@10) o2_32@@8 f_54@@14))
))) (forall ((o2_32@@9 T@Ref) (f_54@@15 T@Field_4445_20010) ) (!  (=> (select (|PolymorphicMapType_8239_7750_20010#PolymorphicMapType_8239| (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@11) null (WandMaskField_4445 pm_f_32@@2))) o2_32@@9 f_54@@15) (= (select (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@11) o2_32@@9 f_54@@15) (select (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| ExhaleHeap@@10) o2_32@@9 f_54@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| ExhaleHeap@@10) o2_32@@9 f_54@@15))
))) (forall ((o2_32@@10 T@Ref) (f_54@@16 T@Field_4445_20143) ) (!  (=> (select (|PolymorphicMapType_8239_7750_21539#PolymorphicMapType_8239| (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@11) null (WandMaskField_4445 pm_f_32@@2))) o2_32@@10 f_54@@16) (= (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@11) o2_32@@10 f_54@@16) (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| ExhaleHeap@@10) o2_32@@10 f_54@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| ExhaleHeap@@10) o2_32@@10 f_54@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_4445_22066 pm_f_32@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7690) (o_54 T@Ref) (f_8 T@Field_4445_20010) (v T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_7690 (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@12) (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@12) (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@12) (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@12) (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@12) (store (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@12) o_54 f_8 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7690 (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@12) (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@12) (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@12) (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@12) (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@12) (store (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@12) o_54 f_8 v)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7690) (o_54@@0 T@Ref) (f_8@@0 T@Field_4445_20143) (v@@0 T@PolymorphicMapType_8239) ) (! (succHeap Heap@@13 (PolymorphicMapType_7690 (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@13) (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@13) (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@13) (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@13) (store (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@13) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7690 (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@13) (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@13) (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@13) (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@13) (store (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@13) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7690) (o_54@@1 T@Ref) (f_8@@1 T@Field_14018_14020) (v@@1 (Array T@Ref Bool)) ) (! (succHeap Heap@@14 (PolymorphicMapType_7690 (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@14) (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@14) (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@14) (store (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@14) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@14) (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7690 (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@14) (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@14) (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@14) (store (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@14) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@14) (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7690) (o_54@@2 T@Ref) (f_8@@2 T@Field_13919_3216) (v@@2 Int) ) (! (succHeap Heap@@15 (PolymorphicMapType_7690 (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@15) (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@15) (store (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@15) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@15) (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@15) (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7690 (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@15) (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@15) (store (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@15) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@15) (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@15) (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7690) (o_54@@3 T@Ref) (f_8@@3 T@Field_7763_7764) (v@@3 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_7690 (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@16) (store (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@16) o_54@@3 f_8@@3 v@@3) (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@16) (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@16) (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@16) (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7690 (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@16) (store (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@16) o_54@@3 f_8@@3 v@@3) (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@16) (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@16) (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@16) (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7690) (o_54@@4 T@Ref) (f_8@@4 T@Field_7750_53) (v@@4 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_7690 (store (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@17) o_54@@4 f_8@@4 v@@4) (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@17) (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@17) (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@17) (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@17) (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7690 (store (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@17) o_54@@4 f_8@@4 v@@4) (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@17) (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@17) (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@17) (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@17) (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@17)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.271:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.272:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_54@@5 T@Ref) (f_24 T@Field_7763_7764) (Heap@@18 T@PolymorphicMapType_7690) ) (!  (=> (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@18) o_54@@5 $allocated) (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@18) (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@18) o_54@@5 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@18) o_54@@5 f_24))
)))
(assert (forall ((p@@1 T@Field_4445_20010) (v_1@@0 T@FrameType) (q T@Field_4445_20010) (w@@0 T@FrameType) (r T@Field_4445_20010) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7750_7750 p@@1 v_1@@0 q w@@0) (InsidePredicate_7750_7750 q w@@0 r u)) (InsidePredicate_7750_7750 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7750_7750 p@@1 v_1@@0 q w@@0) (InsidePredicate_7750_7750 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.277:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun foo_2 (Int Int) Bool)
(declare-fun Heap@0 () T@PolymorphicMapType_7690)
(declare-fun x () T@Ref)
(declare-fun bar_1 (Int) Bool)
(declare-fun Mask@1 () T@PolymorphicMapType_7711)
(declare-fun y () T@Ref)
(declare-fun z@0 () T@Ref)
(declare-fun Heap@@19 () T@PolymorphicMapType_7690)
(declare-fun z () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_7711)
(set-info :boogie-vc-id test02)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon3_Else_correct  (=> (forall ((i_1 Int) ) (!  (=> (< 0 i_1) (bar_1 i_1))
 :qid |stdinbpl.537:20|
 :skolemid |83|
 :pattern ( (foo_2 i_1 (select (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@0) (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@0) x g) f_7)))
)) (=> (and (state Heap@0 Mask@1) (state Heap@0 Mask@1)) (and (=> (= (ControlFlow 0 3) (- 0 7)) (HasDirectPerm_4447_4448 Mask@1 x g)) (=> (HasDirectPerm_4447_4448 Mask@1 x g) (=> (= y (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@0) x g)) (=> (and (state Heap@0 Mask@1) (state Heap@0 Mask@1)) (and (=> (= (ControlFlow 0 3) (- 0 6)) (HasDirectPerm_4447_4448 Mask@1 x g)) (=> (HasDirectPerm_4447_4448 Mask@1 x g) (=> (and (= z@0 (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@0) x g)) (state Heap@0 Mask@1)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (HasDirectPerm_4445_3216 Mask@1 y f_7)) (=> (HasDirectPerm_4445_3216 Mask@1 y f_7) (=> (foo_2 (select (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@0) y f_7) 5) (=> (and (state Heap@0 Mask@1) (state Heap@0 Mask@1)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_4445_3216 Mask@1 z@0 f_7)) (=> (HasDirectPerm_4445_3216 Mask@1 z@0 f_7) (=> (= (ControlFlow 0 3) (- 0 2)) (bar_1 (select (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@0) z@0 f_7))))))))))))))))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (and (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@19) x $allocated) (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@19) y $allocated))) (and (and (select (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@19) z $allocated) (not (= x null))) (and (= Mask@0 (PolymorphicMapType_7711 (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| ZeroMask) (store (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| ZeroMask) x g (+ (select (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| ZeroMask) x g) FullPerm)) (|PolymorphicMapType_7711_4450_17531#PolymorphicMapType_7711| ZeroMask) (|PolymorphicMapType_7711_4445_53#PolymorphicMapType_7711| ZeroMask) (|PolymorphicMapType_7711_4445_20010#PolymorphicMapType_7711| ZeroMask) (|PolymorphicMapType_7711_4445_24854#PolymorphicMapType_7711| ZeroMask))) (state Heap@@19 Mask@0)))) (and (=> (= (ControlFlow 0 8) (- 0 11)) (HasDirectPerm_4447_4448 Mask@0 x g)) (=> (HasDirectPerm_4447_4448 Mask@0 x g) (=> (not (= (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@19) x g) null)) (=> (and (and (= Mask@1 (PolymorphicMapType_7711 (store (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| Mask@0) (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@19) x g) f_7 (+ (select (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| Mask@0) (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@19) x g) f_7) FullPerm)) (|PolymorphicMapType_7711_4447_4448#PolymorphicMapType_7711| Mask@0) (|PolymorphicMapType_7711_4450_17531#PolymorphicMapType_7711| Mask@0) (|PolymorphicMapType_7711_4445_53#PolymorphicMapType_7711| Mask@0) (|PolymorphicMapType_7711_4445_20010#PolymorphicMapType_7711| Mask@0) (|PolymorphicMapType_7711_4445_24854#PolymorphicMapType_7711| Mask@0))) (state Heap@@19 Mask@1)) (and (state Heap@@19 Mask@1) (state Heap@@19 Mask@1))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (HasDirectPerm_4447_4448 Mask@1 x g)) (=> (HasDirectPerm_4447_4448 Mask@1 x g) (and (=> (= (ControlFlow 0 8) (- 0 9)) (= FullPerm (select (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| Mask@1) (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@19) x g) f_7))) (=> (= FullPerm (select (|PolymorphicMapType_7711_4445_3216#PolymorphicMapType_7711| Mask@1) (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@19) x g) f_7)) (=> (and (= Heap@0 (PolymorphicMapType_7690 (|PolymorphicMapType_7690_4155_53#PolymorphicMapType_7690| Heap@@19) (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@19) (store (|PolymorphicMapType_7690_4445_3216#PolymorphicMapType_7690| Heap@@19) (select (|PolymorphicMapType_7690_4158_4159#PolymorphicMapType_7690| Heap@@19) x g) f_7 5) (|PolymorphicMapType_7690_4450_17794#PolymorphicMapType_7690| Heap@@19) (|PolymorphicMapType_7690_4445_20187#PolymorphicMapType_7690| Heap@@19) (|PolymorphicMapType_7690_7750_20010#PolymorphicMapType_7690| Heap@@19))) (state Heap@0 Mask@1)) (and (=> (= (ControlFlow 0 8) 1) anon3_Then_correct) (=> (= (ControlFlow 0 8) 3) anon3_Else_correct))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12) 8) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
