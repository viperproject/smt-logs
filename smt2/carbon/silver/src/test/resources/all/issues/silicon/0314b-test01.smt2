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
(declare-sort T@Field_6091_53 0)
(declare-sort T@Field_6104_6105 0)
(declare-sort T@Field_12260_3216 0)
(declare-sort T@Field_12359_12361 0)
(declare-sort T@Field_3772_14501 0)
(declare-sort T@Field_3772_14368 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6052 0)) (((PolymorphicMapType_6052 (|PolymorphicMapType_6052_3772_3216#PolymorphicMapType_6052| (Array T@Ref T@Field_12260_3216 Real)) (|PolymorphicMapType_6052_3772_53#PolymorphicMapType_6052| (Array T@Ref T@Field_6091_53 Real)) (|PolymorphicMapType_6052_3772_6105#PolymorphicMapType_6052| (Array T@Ref T@Field_6104_6105 Real)) (|PolymorphicMapType_6052_3772_19074#PolymorphicMapType_6052| (Array T@Ref T@Field_12359_12361 Real)) (|PolymorphicMapType_6052_3772_14368#PolymorphicMapType_6052| (Array T@Ref T@Field_3772_14368 Real)) (|PolymorphicMapType_6052_3772_19246#PolymorphicMapType_6052| (Array T@Ref T@Field_3772_14501 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6580 0)) (((PolymorphicMapType_6580 (|PolymorphicMapType_6580_6091_53#PolymorphicMapType_6580| (Array T@Ref T@Field_6091_53 Bool)) (|PolymorphicMapType_6580_6091_6105#PolymorphicMapType_6580| (Array T@Ref T@Field_6104_6105 Bool)) (|PolymorphicMapType_6580_6091_3216#PolymorphicMapType_6580| (Array T@Ref T@Field_12260_3216 Bool)) (|PolymorphicMapType_6580_6091_15458#PolymorphicMapType_6580| (Array T@Ref T@Field_12359_12361 Bool)) (|PolymorphicMapType_6580_6091_14368#PolymorphicMapType_6580| (Array T@Ref T@Field_3772_14368 Bool)) (|PolymorphicMapType_6580_6091_15897#PolymorphicMapType_6580| (Array T@Ref T@Field_3772_14501 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6031 0)) (((PolymorphicMapType_6031 (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| (Array T@Ref T@Field_6091_53 Bool)) (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| (Array T@Ref T@Field_6104_6105 T@Ref)) (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| (Array T@Ref T@Field_12260_3216 Int)) (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| (Array T@Ref T@Field_12359_12361 (Array T@Ref Bool))) (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| (Array T@Ref T@Field_3772_14501 T@PolymorphicMapType_6580)) (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| (Array T@Ref T@Field_3772_14368 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6091_53)
(declare-fun f_7 () T@Field_12260_3216)
(declare-fun g () T@Field_6104_6105)
(declare-fun h () T@Field_12359_12361)
(declare-fun succHeap (T@PolymorphicMapType_6031 T@PolymorphicMapType_6031) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6031 T@PolymorphicMapType_6031) Bool)
(declare-fun state (T@PolymorphicMapType_6031 T@PolymorphicMapType_6052) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6052) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6580)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6031 T@PolymorphicMapType_6031 T@PolymorphicMapType_6052) Bool)
(declare-fun IsPredicateField_3772_14459 (T@Field_3772_14368) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3772 (T@Field_3772_14368) T@Field_3772_14501)
(declare-fun HasDirectPerm_3772_14432 (T@PolymorphicMapType_6052 T@Ref T@Field_3772_14368) Bool)
(declare-fun IsWandField_3772_16424 (T@Field_3772_14368) Bool)
(declare-fun WandMaskField_3772 (T@Field_3772_14368) T@Field_3772_14501)
(declare-fun dummyHeap () T@PolymorphicMapType_6031)
(declare-fun ZeroMask () T@PolymorphicMapType_6052)
(declare-fun InsidePredicate_6091_6091 (T@Field_3772_14368 T@FrameType T@Field_3772_14368 T@FrameType) Bool)
(declare-fun IsPredicateField_3772_3216 (T@Field_12260_3216) Bool)
(declare-fun IsWandField_3772_3216 (T@Field_12260_3216) Bool)
(declare-fun IsPredicateField_3774_3775 (T@Field_6104_6105) Bool)
(declare-fun IsWandField_3774_3775 (T@Field_6104_6105) Bool)
(declare-fun IsPredicateField_3777_12385 (T@Field_12359_12361) Bool)
(declare-fun IsWandField_3777_12412 (T@Field_12359_12361) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3772_20588 (T@Field_3772_14501) Bool)
(declare-fun IsWandField_3772_20604 (T@Field_3772_14501) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3772_53 (T@Field_6091_53) Bool)
(declare-fun IsWandField_3772_53 (T@Field_6091_53) Bool)
(declare-fun HasDirectPerm_3772_21128 (T@PolymorphicMapType_6052 T@Ref T@Field_3772_14501) Bool)
(declare-fun HasDirectPerm_3772_14184 (T@PolymorphicMapType_6052 T@Ref T@Field_12359_12361) Bool)
(declare-fun HasDirectPerm_3772_6105 (T@PolymorphicMapType_6052 T@Ref T@Field_6104_6105) Bool)
(declare-fun HasDirectPerm_3772_53 (T@PolymorphicMapType_6052 T@Ref T@Field_6091_53) Bool)
(declare-fun HasDirectPerm_3772_3216 (T@PolymorphicMapType_6052 T@Ref T@Field_12260_3216) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6052 T@PolymorphicMapType_6052 T@PolymorphicMapType_6052) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6031) (Heap1 T@PolymorphicMapType_6031) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6031) (Mask T@PolymorphicMapType_6052) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6031) (Heap1@@0 T@PolymorphicMapType_6031) (Heap2 T@PolymorphicMapType_6031) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3772_14501) ) (!  (not (select (|PolymorphicMapType_6580_6091_15897#PolymorphicMapType_6580| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6580_6091_15897#PolymorphicMapType_6580| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3772_14368) ) (!  (not (select (|PolymorphicMapType_6580_6091_14368#PolymorphicMapType_6580| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6580_6091_14368#PolymorphicMapType_6580| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12359_12361) ) (!  (not (select (|PolymorphicMapType_6580_6091_15458#PolymorphicMapType_6580| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6580_6091_15458#PolymorphicMapType_6580| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12260_3216) ) (!  (not (select (|PolymorphicMapType_6580_6091_3216#PolymorphicMapType_6580| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6580_6091_3216#PolymorphicMapType_6580| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6104_6105) ) (!  (not (select (|PolymorphicMapType_6580_6091_6105#PolymorphicMapType_6580| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6580_6091_6105#PolymorphicMapType_6580| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6091_53) ) (!  (not (select (|PolymorphicMapType_6580_6091_53#PolymorphicMapType_6580| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6580_6091_53#PolymorphicMapType_6580| ZeroPMask) o_2@@4 f_4@@4))
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_6031) (ExhaleHeap T@PolymorphicMapType_6031) (Mask@@0 T@PolymorphicMapType_6052) (pm_f_26 T@Field_3772_14368) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3772_14432 Mask@@0 null pm_f_26) (IsPredicateField_3772_14459 pm_f_26)) (= (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@0) null (PredicateMaskField_3772 pm_f_26)) (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| ExhaleHeap) null (PredicateMaskField_3772 pm_f_26)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3772_14459 pm_f_26) (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| ExhaleHeap) null (PredicateMaskField_3772 pm_f_26)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6031) (ExhaleHeap@@0 T@PolymorphicMapType_6031) (Mask@@1 T@PolymorphicMapType_6052) (pm_f_26@@0 T@Field_3772_14368) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3772_14432 Mask@@1 null pm_f_26@@0) (IsWandField_3772_16424 pm_f_26@@0)) (= (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@1) null (WandMaskField_3772 pm_f_26@@0)) (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| ExhaleHeap@@0) null (WandMaskField_3772 pm_f_26@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_3772_16424 pm_f_26@@0) (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| ExhaleHeap@@0) null (WandMaskField_3772 pm_f_26@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6031) (ExhaleHeap@@1 T@PolymorphicMapType_6031) (Mask@@2 T@PolymorphicMapType_6052) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@2) o_38 $allocated) (select (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| ExhaleHeap@@1) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| ExhaleHeap@@1) o_38 $allocated))
)))
(assert (forall ((p T@Field_3772_14368) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6091_6091 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6091_6091 p v_1 p w))
)))
(assert  (not (IsPredicateField_3772_3216 f_7)))
(assert  (not (IsWandField_3772_3216 f_7)))
(assert  (not (IsPredicateField_3774_3775 g)))
(assert  (not (IsWandField_3774_3775 g)))
(assert  (not (IsPredicateField_3777_12385 h)))
(assert  (not (IsWandField_3777_12412 h)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6031) (ExhaleHeap@@2 T@PolymorphicMapType_6031) (Mask@@3 T@PolymorphicMapType_6052) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_6052) (o_2@@5 T@Ref) (f_4@@5 T@Field_3772_14501) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_6052_3772_19246#PolymorphicMapType_6052| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_3772_20588 f_4@@5))) (not (IsWandField_3772_20604 f_4@@5))) (<= (select (|PolymorphicMapType_6052_3772_19246#PolymorphicMapType_6052| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_6052_3772_19246#PolymorphicMapType_6052| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_6052) (o_2@@6 T@Ref) (f_4@@6 T@Field_3772_14368) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_6052_3772_14368#PolymorphicMapType_6052| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_3772_14459 f_4@@6))) (not (IsWandField_3772_16424 f_4@@6))) (<= (select (|PolymorphicMapType_6052_3772_14368#PolymorphicMapType_6052| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_6052_3772_14368#PolymorphicMapType_6052| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6052) (o_2@@7 T@Ref) (f_4@@7 T@Field_12359_12361) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6052_3772_19074#PolymorphicMapType_6052| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3777_12385 f_4@@7))) (not (IsWandField_3777_12412 f_4@@7))) (<= (select (|PolymorphicMapType_6052_3772_19074#PolymorphicMapType_6052| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6052_3772_19074#PolymorphicMapType_6052| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6052) (o_2@@8 T@Ref) (f_4@@8 T@Field_6104_6105) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6052_3772_6105#PolymorphicMapType_6052| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3774_3775 f_4@@8))) (not (IsWandField_3774_3775 f_4@@8))) (<= (select (|PolymorphicMapType_6052_3772_6105#PolymorphicMapType_6052| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6052_3772_6105#PolymorphicMapType_6052| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6052) (o_2@@9 T@Ref) (f_4@@9 T@Field_6091_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6052_3772_53#PolymorphicMapType_6052| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3772_53 f_4@@9))) (not (IsWandField_3772_53 f_4@@9))) (<= (select (|PolymorphicMapType_6052_3772_53#PolymorphicMapType_6052| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6052_3772_53#PolymorphicMapType_6052| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6052) (o_2@@10 T@Ref) (f_4@@10 T@Field_12260_3216) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6052_3772_3216#PolymorphicMapType_6052| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3772_3216 f_4@@10))) (not (IsWandField_3772_3216 f_4@@10))) (<= (select (|PolymorphicMapType_6052_3772_3216#PolymorphicMapType_6052| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6052_3772_3216#PolymorphicMapType_6052| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6052) (o_2@@11 T@Ref) (f_4@@11 T@Field_3772_14501) ) (! (= (HasDirectPerm_3772_21128 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6052_3772_19246#PolymorphicMapType_6052| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3772_21128 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6052) (o_2@@12 T@Ref) (f_4@@12 T@Field_3772_14368) ) (! (= (HasDirectPerm_3772_14432 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6052_3772_14368#PolymorphicMapType_6052| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3772_14432 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6052) (o_2@@13 T@Ref) (f_4@@13 T@Field_12359_12361) ) (! (= (HasDirectPerm_3772_14184 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6052_3772_19074#PolymorphicMapType_6052| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3772_14184 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6052) (o_2@@14 T@Ref) (f_4@@14 T@Field_6104_6105) ) (! (= (HasDirectPerm_3772_6105 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_6052_3772_6105#PolymorphicMapType_6052| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3772_6105 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6052) (o_2@@15 T@Ref) (f_4@@15 T@Field_6091_53) ) (! (= (HasDirectPerm_3772_53 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_6052_3772_53#PolymorphicMapType_6052| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3772_53 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6052) (o_2@@16 T@Ref) (f_4@@16 T@Field_12260_3216) ) (! (= (HasDirectPerm_3772_3216 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_6052_3772_3216#PolymorphicMapType_6052| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3772_3216 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6031) (ExhaleHeap@@3 T@PolymorphicMapType_6031) (Mask@@16 T@PolymorphicMapType_6052) (o_38@@0 T@Ref) (f_51 T@Field_3772_14501) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_3772_21128 Mask@@16 o_38@@0 f_51) (= (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@4) o_38@@0 f_51) (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| ExhaleHeap@@3) o_38@@0 f_51))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| ExhaleHeap@@3) o_38@@0 f_51))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6031) (ExhaleHeap@@4 T@PolymorphicMapType_6031) (Mask@@17 T@PolymorphicMapType_6052) (o_38@@1 T@Ref) (f_51@@0 T@Field_3772_14368) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_3772_14432 Mask@@17 o_38@@1 f_51@@0) (= (select (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| Heap@@5) o_38@@1 f_51@@0) (select (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| ExhaleHeap@@4) o_38@@1 f_51@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| ExhaleHeap@@4) o_38@@1 f_51@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6031) (ExhaleHeap@@5 T@PolymorphicMapType_6031) (Mask@@18 T@PolymorphicMapType_6052) (o_38@@2 T@Ref) (f_51@@1 T@Field_12359_12361) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_3772_14184 Mask@@18 o_38@@2 f_51@@1) (= (select (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| Heap@@6) o_38@@2 f_51@@1) (select (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| ExhaleHeap@@5) o_38@@2 f_51@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| ExhaleHeap@@5) o_38@@2 f_51@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6031) (ExhaleHeap@@6 T@PolymorphicMapType_6031) (Mask@@19 T@PolymorphicMapType_6052) (o_38@@3 T@Ref) (f_51@@2 T@Field_6104_6105) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_3772_6105 Mask@@19 o_38@@3 f_51@@2) (= (select (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@7) o_38@@3 f_51@@2) (select (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| ExhaleHeap@@6) o_38@@3 f_51@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| ExhaleHeap@@6) o_38@@3 f_51@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6031) (ExhaleHeap@@7 T@PolymorphicMapType_6031) (Mask@@20 T@PolymorphicMapType_6052) (o_38@@4 T@Ref) (f_51@@3 T@Field_6091_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_3772_53 Mask@@20 o_38@@4 f_51@@3) (= (select (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@8) o_38@@4 f_51@@3) (select (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| ExhaleHeap@@7) o_38@@4 f_51@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| ExhaleHeap@@7) o_38@@4 f_51@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6031) (ExhaleHeap@@8 T@PolymorphicMapType_6031) (Mask@@21 T@PolymorphicMapType_6052) (o_38@@5 T@Ref) (f_51@@4 T@Field_12260_3216) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_3772_3216 Mask@@21 o_38@@5 f_51@@4) (= (select (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@9) o_38@@5 f_51@@4) (select (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| ExhaleHeap@@8) o_38@@5 f_51@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| ExhaleHeap@@8) o_38@@5 f_51@@4))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_3772_14501) ) (! (= (select (|PolymorphicMapType_6052_3772_19246#PolymorphicMapType_6052| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6052_3772_19246#PolymorphicMapType_6052| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_3772_14368) ) (! (= (select (|PolymorphicMapType_6052_3772_14368#PolymorphicMapType_6052| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6052_3772_14368#PolymorphicMapType_6052| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_12359_12361) ) (! (= (select (|PolymorphicMapType_6052_3772_19074#PolymorphicMapType_6052| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6052_3772_19074#PolymorphicMapType_6052| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_6104_6105) ) (! (= (select (|PolymorphicMapType_6052_3772_6105#PolymorphicMapType_6052| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6052_3772_6105#PolymorphicMapType_6052| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_6091_53) ) (! (= (select (|PolymorphicMapType_6052_3772_53#PolymorphicMapType_6052| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6052_3772_53#PolymorphicMapType_6052| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_12260_3216) ) (! (= (select (|PolymorphicMapType_6052_3772_3216#PolymorphicMapType_6052| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6052_3772_3216#PolymorphicMapType_6052| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6052) (SummandMask1 T@PolymorphicMapType_6052) (SummandMask2 T@PolymorphicMapType_6052) (o_2@@23 T@Ref) (f_4@@23 T@Field_3772_14501) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6052_3772_19246#PolymorphicMapType_6052| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6052_3772_19246#PolymorphicMapType_6052| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6052_3772_19246#PolymorphicMapType_6052| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6052_3772_19246#PolymorphicMapType_6052| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6052_3772_19246#PolymorphicMapType_6052| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6052_3772_19246#PolymorphicMapType_6052| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6052) (SummandMask1@@0 T@PolymorphicMapType_6052) (SummandMask2@@0 T@PolymorphicMapType_6052) (o_2@@24 T@Ref) (f_4@@24 T@Field_3772_14368) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6052_3772_14368#PolymorphicMapType_6052| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_6052_3772_14368#PolymorphicMapType_6052| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_6052_3772_14368#PolymorphicMapType_6052| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6052_3772_14368#PolymorphicMapType_6052| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6052_3772_14368#PolymorphicMapType_6052| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6052_3772_14368#PolymorphicMapType_6052| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6052) (SummandMask1@@1 T@PolymorphicMapType_6052) (SummandMask2@@1 T@PolymorphicMapType_6052) (o_2@@25 T@Ref) (f_4@@25 T@Field_12359_12361) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6052_3772_19074#PolymorphicMapType_6052| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_6052_3772_19074#PolymorphicMapType_6052| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_6052_3772_19074#PolymorphicMapType_6052| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6052_3772_19074#PolymorphicMapType_6052| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6052_3772_19074#PolymorphicMapType_6052| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6052_3772_19074#PolymorphicMapType_6052| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6052) (SummandMask1@@2 T@PolymorphicMapType_6052) (SummandMask2@@2 T@PolymorphicMapType_6052) (o_2@@26 T@Ref) (f_4@@26 T@Field_6104_6105) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6052_3772_6105#PolymorphicMapType_6052| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_6052_3772_6105#PolymorphicMapType_6052| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_6052_3772_6105#PolymorphicMapType_6052| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6052_3772_6105#PolymorphicMapType_6052| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6052_3772_6105#PolymorphicMapType_6052| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6052_3772_6105#PolymorphicMapType_6052| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6052) (SummandMask1@@3 T@PolymorphicMapType_6052) (SummandMask2@@3 T@PolymorphicMapType_6052) (o_2@@27 T@Ref) (f_4@@27 T@Field_6091_53) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6052_3772_53#PolymorphicMapType_6052| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_6052_3772_53#PolymorphicMapType_6052| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_6052_3772_53#PolymorphicMapType_6052| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6052_3772_53#PolymorphicMapType_6052| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6052_3772_53#PolymorphicMapType_6052| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6052_3772_53#PolymorphicMapType_6052| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6052) (SummandMask1@@4 T@PolymorphicMapType_6052) (SummandMask2@@4 T@PolymorphicMapType_6052) (o_2@@28 T@Ref) (f_4@@28 T@Field_12260_3216) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6052_3772_3216#PolymorphicMapType_6052| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_6052_3772_3216#PolymorphicMapType_6052| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_6052_3772_3216#PolymorphicMapType_6052| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6052_3772_3216#PolymorphicMapType_6052| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6052_3772_3216#PolymorphicMapType_6052| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6052_3772_3216#PolymorphicMapType_6052| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6031) (ExhaleHeap@@9 T@PolymorphicMapType_6031) (Mask@@22 T@PolymorphicMapType_6052) (pm_f_26@@1 T@Field_3772_14368) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_3772_14432 Mask@@22 null pm_f_26@@1) (IsPredicateField_3772_14459 pm_f_26@@1)) (and (and (and (and (and (forall ((o2_26 T@Ref) (f_51@@5 T@Field_6091_53) ) (!  (=> (select (|PolymorphicMapType_6580_6091_53#PolymorphicMapType_6580| (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@10) null (PredicateMaskField_3772 pm_f_26@@1))) o2_26 f_51@@5) (= (select (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@10) o2_26 f_51@@5) (select (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| ExhaleHeap@@9) o2_26 f_51@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| ExhaleHeap@@9) o2_26 f_51@@5))
)) (forall ((o2_26@@0 T@Ref) (f_51@@6 T@Field_6104_6105) ) (!  (=> (select (|PolymorphicMapType_6580_6091_6105#PolymorphicMapType_6580| (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@10) null (PredicateMaskField_3772 pm_f_26@@1))) o2_26@@0 f_51@@6) (= (select (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@10) o2_26@@0 f_51@@6) (select (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| ExhaleHeap@@9) o2_26@@0 f_51@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| ExhaleHeap@@9) o2_26@@0 f_51@@6))
))) (forall ((o2_26@@1 T@Ref) (f_51@@7 T@Field_12260_3216) ) (!  (=> (select (|PolymorphicMapType_6580_6091_3216#PolymorphicMapType_6580| (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@10) null (PredicateMaskField_3772 pm_f_26@@1))) o2_26@@1 f_51@@7) (= (select (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@10) o2_26@@1 f_51@@7) (select (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| ExhaleHeap@@9) o2_26@@1 f_51@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| ExhaleHeap@@9) o2_26@@1 f_51@@7))
))) (forall ((o2_26@@2 T@Ref) (f_51@@8 T@Field_12359_12361) ) (!  (=> (select (|PolymorphicMapType_6580_6091_15458#PolymorphicMapType_6580| (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@10) null (PredicateMaskField_3772 pm_f_26@@1))) o2_26@@2 f_51@@8) (= (select (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| Heap@@10) o2_26@@2 f_51@@8) (select (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| ExhaleHeap@@9) o2_26@@2 f_51@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| ExhaleHeap@@9) o2_26@@2 f_51@@8))
))) (forall ((o2_26@@3 T@Ref) (f_51@@9 T@Field_3772_14368) ) (!  (=> (select (|PolymorphicMapType_6580_6091_14368#PolymorphicMapType_6580| (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@10) null (PredicateMaskField_3772 pm_f_26@@1))) o2_26@@3 f_51@@9) (= (select (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| Heap@@10) o2_26@@3 f_51@@9) (select (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| ExhaleHeap@@9) o2_26@@3 f_51@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| ExhaleHeap@@9) o2_26@@3 f_51@@9))
))) (forall ((o2_26@@4 T@Ref) (f_51@@10 T@Field_3772_14501) ) (!  (=> (select (|PolymorphicMapType_6580_6091_15897#PolymorphicMapType_6580| (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@10) null (PredicateMaskField_3772 pm_f_26@@1))) o2_26@@4 f_51@@10) (= (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@10) o2_26@@4 f_51@@10) (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| ExhaleHeap@@9) o2_26@@4 f_51@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| ExhaleHeap@@9) o2_26@@4 f_51@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_3772_14459 pm_f_26@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6031) (ExhaleHeap@@10 T@PolymorphicMapType_6031) (Mask@@23 T@PolymorphicMapType_6052) (pm_f_26@@2 T@Field_3772_14368) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_3772_14432 Mask@@23 null pm_f_26@@2) (IsWandField_3772_16424 pm_f_26@@2)) (and (and (and (and (and (forall ((o2_26@@5 T@Ref) (f_51@@11 T@Field_6091_53) ) (!  (=> (select (|PolymorphicMapType_6580_6091_53#PolymorphicMapType_6580| (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@11) null (WandMaskField_3772 pm_f_26@@2))) o2_26@@5 f_51@@11) (= (select (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@11) o2_26@@5 f_51@@11) (select (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| ExhaleHeap@@10) o2_26@@5 f_51@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| ExhaleHeap@@10) o2_26@@5 f_51@@11))
)) (forall ((o2_26@@6 T@Ref) (f_51@@12 T@Field_6104_6105) ) (!  (=> (select (|PolymorphicMapType_6580_6091_6105#PolymorphicMapType_6580| (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@11) null (WandMaskField_3772 pm_f_26@@2))) o2_26@@6 f_51@@12) (= (select (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@11) o2_26@@6 f_51@@12) (select (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| ExhaleHeap@@10) o2_26@@6 f_51@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| ExhaleHeap@@10) o2_26@@6 f_51@@12))
))) (forall ((o2_26@@7 T@Ref) (f_51@@13 T@Field_12260_3216) ) (!  (=> (select (|PolymorphicMapType_6580_6091_3216#PolymorphicMapType_6580| (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@11) null (WandMaskField_3772 pm_f_26@@2))) o2_26@@7 f_51@@13) (= (select (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@11) o2_26@@7 f_51@@13) (select (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| ExhaleHeap@@10) o2_26@@7 f_51@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| ExhaleHeap@@10) o2_26@@7 f_51@@13))
))) (forall ((o2_26@@8 T@Ref) (f_51@@14 T@Field_12359_12361) ) (!  (=> (select (|PolymorphicMapType_6580_6091_15458#PolymorphicMapType_6580| (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@11) null (WandMaskField_3772 pm_f_26@@2))) o2_26@@8 f_51@@14) (= (select (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| Heap@@11) o2_26@@8 f_51@@14) (select (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| ExhaleHeap@@10) o2_26@@8 f_51@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| ExhaleHeap@@10) o2_26@@8 f_51@@14))
))) (forall ((o2_26@@9 T@Ref) (f_51@@15 T@Field_3772_14368) ) (!  (=> (select (|PolymorphicMapType_6580_6091_14368#PolymorphicMapType_6580| (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@11) null (WandMaskField_3772 pm_f_26@@2))) o2_26@@9 f_51@@15) (= (select (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| Heap@@11) o2_26@@9 f_51@@15) (select (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| ExhaleHeap@@10) o2_26@@9 f_51@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| ExhaleHeap@@10) o2_26@@9 f_51@@15))
))) (forall ((o2_26@@10 T@Ref) (f_51@@16 T@Field_3772_14501) ) (!  (=> (select (|PolymorphicMapType_6580_6091_15897#PolymorphicMapType_6580| (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@11) null (WandMaskField_3772 pm_f_26@@2))) o2_26@@10 f_51@@16) (= (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@11) o2_26@@10 f_51@@16) (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| ExhaleHeap@@10) o2_26@@10 f_51@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| ExhaleHeap@@10) o2_26@@10 f_51@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_3772_16424 pm_f_26@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6031) (o_56 T@Ref) (f_22 T@Field_3772_14368) (v T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_6031 (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@12) (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@12) (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@12) (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| Heap@@12) (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@12) (store (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| Heap@@12) o_56 f_22 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6031 (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@12) (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@12) (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@12) (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| Heap@@12) (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@12) (store (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| Heap@@12) o_56 f_22 v)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6031) (o_56@@0 T@Ref) (f_22@@0 T@Field_3772_14501) (v@@0 T@PolymorphicMapType_6580) ) (! (succHeap Heap@@13 (PolymorphicMapType_6031 (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@13) (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@13) (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@13) (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| Heap@@13) (store (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@13) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6031 (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@13) (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@13) (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@13) (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| Heap@@13) (store (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@13) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6031) (o_56@@1 T@Ref) (f_22@@1 T@Field_12359_12361) (v@@1 (Array T@Ref Bool)) ) (! (succHeap Heap@@14 (PolymorphicMapType_6031 (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@14) (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@14) (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@14) (store (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| Heap@@14) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@14) (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6031 (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@14) (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@14) (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@14) (store (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| Heap@@14) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@14) (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6031) (o_56@@2 T@Ref) (f_22@@2 T@Field_12260_3216) (v@@2 Int) ) (! (succHeap Heap@@15 (PolymorphicMapType_6031 (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@15) (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@15) (store (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@15) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| Heap@@15) (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@15) (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6031 (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@15) (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@15) (store (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@15) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| Heap@@15) (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@15) (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6031) (o_56@@3 T@Ref) (f_22@@3 T@Field_6104_6105) (v@@3 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_6031 (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@16) (store (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@16) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@16) (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| Heap@@16) (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@16) (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6031 (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@16) (store (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@16) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@16) (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| Heap@@16) (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@16) (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6031) (o_56@@4 T@Ref) (f_22@@4 T@Field_6091_53) (v@@4 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_6031 (store (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@17) o_56@@4 f_22@@4 v@@4) (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@17) (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@17) (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| Heap@@17) (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@17) (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6031 (store (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@17) o_56@@4 f_22@@4 v@@4) (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@17) (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@17) (|PolymorphicMapType_6031_3772_14226#PolymorphicMapType_6031| Heap@@17) (|PolymorphicMapType_6031_3772_14545#PolymorphicMapType_6031| Heap@@17) (|PolymorphicMapType_6031_6091_14368#PolymorphicMapType_6031| Heap@@17)))
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
(assert (forall ((o_56@@5 T@Ref) (f_3 T@Field_6104_6105) (Heap@@18 T@PolymorphicMapType_6031) ) (!  (=> (select (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@18) o_56@@5 $allocated) (select (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@18) (select (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@18) o_56@@5 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6031_3485_3486#PolymorphicMapType_6031| Heap@@18) o_56@@5 f_3))
)))
(assert (forall ((p@@1 T@Field_3772_14368) (v_1@@0 T@FrameType) (q T@Field_3772_14368) (w@@0 T@FrameType) (r T@Field_3772_14368) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6091_6091 p@@1 v_1@@0 q w@@0) (InsidePredicate_6091_6091 q w@@0 r u)) (InsidePredicate_6091_6091 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6091_6091 p@@1 v_1@@0 q w@@0) (InsidePredicate_6091_6091 q w@@0 r u))
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
(declare-fun Heap@@19 () T@PolymorphicMapType_6031)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun bar_1 (Int) Bool)
(declare-fun Mask@0 () T@PolymorphicMapType_6052)
(declare-fun y () T@Ref)
(set-info :boogie-vc-id test01)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (=> (and (forall ((x_1 T@Ref) (i_1 Int) ) (!  (=> (and (select xs x_1) (< 0 i_1)) (bar_1 i_1))
 :qid |stdinbpl.440:20|
 :skolemid |82|
 :pattern ( (foo_2 i_1 (select (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@19) x_1 f_7)))
)) (state Heap@@19 Mask@0)) (=> (and (and (state Heap@@19 Mask@0) (select xs y)) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_3772_3216 Mask@0 y f_7)) (=> (HasDirectPerm_3772_3216 Mask@0 y f_7) (=> (and (and (foo_2 1 (select (|PolymorphicMapType_6031_3772_3216#PolymorphicMapType_6031| Heap@@19) y f_7)) (state Heap@@19 Mask@0)) (and (state Heap@@19 Mask@0) (= (ControlFlow 0 3) (- 0 2)))) (bar_1 1))))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (and (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_6031_3482_53#PolymorphicMapType_6031| Heap@@19) y $allocated) (not (= y null)))) (and (and (= Mask@0 (PolymorphicMapType_6052 (store (|PolymorphicMapType_6052_3772_3216#PolymorphicMapType_6052| ZeroMask) y f_7 (+ (select (|PolymorphicMapType_6052_3772_3216#PolymorphicMapType_6052| ZeroMask) y f_7) FullPerm)) (|PolymorphicMapType_6052_3772_53#PolymorphicMapType_6052| ZeroMask) (|PolymorphicMapType_6052_3772_6105#PolymorphicMapType_6052| ZeroMask) (|PolymorphicMapType_6052_3772_19074#PolymorphicMapType_6052| ZeroMask) (|PolymorphicMapType_6052_3772_14368#PolymorphicMapType_6052| ZeroMask) (|PolymorphicMapType_6052_3772_19246#PolymorphicMapType_6052| ZeroMask))) (state Heap@@19 Mask@0)) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0)))) (and (=> (= (ControlFlow 0 5) 1) anon3_Then_correct) (=> (= (ControlFlow 0 5) 3) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
