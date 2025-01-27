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
(declare-sort T@Field_4421_53 0)
(declare-sort T@Field_4434_4435 0)
(declare-sort T@Field_2461_13006 0)
(declare-sort T@Field_2461_12873 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_4382 0)) (((PolymorphicMapType_4382 (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| (Array T@Ref T@Field_4434_4435 Real)) (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| (Array T@Ref T@Field_4421_53 Real)) (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| (Array T@Ref T@Field_2461_12873 Real)) (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| (Array T@Ref T@Field_2461_13006 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4910 0)) (((PolymorphicMapType_4910 (|PolymorphicMapType_4910_4421_53#PolymorphicMapType_4910| (Array T@Ref T@Field_4421_53 Bool)) (|PolymorphicMapType_4910_4421_4435#PolymorphicMapType_4910| (Array T@Ref T@Field_4434_4435 Bool)) (|PolymorphicMapType_4910_4421_12873#PolymorphicMapType_4910| (Array T@Ref T@Field_2461_12873 Bool)) (|PolymorphicMapType_4910_4421_13986#PolymorphicMapType_4910| (Array T@Ref T@Field_2461_13006 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4361 0)) (((PolymorphicMapType_4361 (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| (Array T@Ref T@Field_4421_53 Bool)) (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| (Array T@Ref T@Field_4434_4435 T@Ref)) (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| (Array T@Ref T@Field_2461_13006 T@PolymorphicMapType_4910)) (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| (Array T@Ref T@Field_2461_12873 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_4421_53)
(declare-fun next () T@Field_4434_4435)
(declare-fun succHeap (T@PolymorphicMapType_4361 T@PolymorphicMapType_4361) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4361 T@PolymorphicMapType_4361) Bool)
(declare-fun state (T@PolymorphicMapType_4361 T@PolymorphicMapType_4382) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4382) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4910)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4361 T@PolymorphicMapType_4361 T@PolymorphicMapType_4382) Bool)
(declare-fun IsPredicateField_2461_12964 (T@Field_2461_12873) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2461 (T@Field_2461_12873) T@Field_2461_13006)
(declare-fun HasDirectPerm_2461_12937 (T@PolymorphicMapType_4382 T@Ref T@Field_2461_12873) Bool)
(declare-fun IsWandField_2461_14513 (T@Field_2461_12873) Bool)
(declare-fun WandMaskField_2461 (T@Field_2461_12873) T@Field_2461_13006)
(declare-fun dummyHeap () T@PolymorphicMapType_4361)
(declare-fun ZeroMask () T@PolymorphicMapType_4382)
(declare-fun InsidePredicate_4421_4421 (T@Field_2461_12873 T@FrameType T@Field_2461_12873 T@FrameType) Bool)
(declare-fun IsPredicateField_2461_2462 (T@Field_4434_4435) Bool)
(declare-fun IsWandField_2461_2462 (T@Field_4434_4435) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2461_17447 (T@Field_2461_13006) Bool)
(declare-fun IsWandField_2461_17463 (T@Field_2461_13006) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2461_53 (T@Field_4421_53) Bool)
(declare-fun IsWandField_2461_53 (T@Field_4421_53) Bool)
(declare-fun HasDirectPerm_2461_17818 (T@PolymorphicMapType_4382 T@Ref T@Field_2461_13006) Bool)
(declare-fun HasDirectPerm_2461_53 (T@PolymorphicMapType_4382 T@Ref T@Field_4421_53) Bool)
(declare-fun HasDirectPerm_2461_2462 (T@PolymorphicMapType_4382 T@Ref T@Field_4434_4435) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4382 T@PolymorphicMapType_4382 T@PolymorphicMapType_4382) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4361) (Heap1 T@PolymorphicMapType_4361) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4361) (Mask T@PolymorphicMapType_4382) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4361) (Heap1@@0 T@PolymorphicMapType_4361) (Heap2 T@PolymorphicMapType_4361) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_2461_13006) ) (!  (not (select (|PolymorphicMapType_4910_4421_13986#PolymorphicMapType_4910| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4910_4421_13986#PolymorphicMapType_4910| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_2461_12873) ) (!  (not (select (|PolymorphicMapType_4910_4421_12873#PolymorphicMapType_4910| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4910_4421_12873#PolymorphicMapType_4910| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_4434_4435) ) (!  (not (select (|PolymorphicMapType_4910_4421_4435#PolymorphicMapType_4910| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4910_4421_4435#PolymorphicMapType_4910| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_4421_53) ) (!  (not (select (|PolymorphicMapType_4910_4421_53#PolymorphicMapType_4910| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4910_4421_53#PolymorphicMapType_4910| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4361) (ExhaleHeap T@PolymorphicMapType_4361) (Mask@@0 T@PolymorphicMapType_4382) (pm_f_32 T@Field_2461_12873) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2461_12937 Mask@@0 null pm_f_32) (IsPredicateField_2461_12964 pm_f_32)) (= (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@0) null (PredicateMaskField_2461 pm_f_32)) (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| ExhaleHeap) null (PredicateMaskField_2461 pm_f_32)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_2461_12964 pm_f_32) (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| ExhaleHeap) null (PredicateMaskField_2461 pm_f_32)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4361) (ExhaleHeap@@0 T@PolymorphicMapType_4361) (Mask@@1 T@PolymorphicMapType_4382) (pm_f_32@@0 T@Field_2461_12873) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2461_12937 Mask@@1 null pm_f_32@@0) (IsWandField_2461_14513 pm_f_32@@0)) (= (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@1) null (WandMaskField_2461 pm_f_32@@0)) (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| ExhaleHeap@@0) null (WandMaskField_2461 pm_f_32@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_2461_14513 pm_f_32@@0) (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| ExhaleHeap@@0) null (WandMaskField_2461 pm_f_32@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4361) (ExhaleHeap@@1 T@PolymorphicMapType_4361) (Mask@@2 T@PolymorphicMapType_4382) (pm_f_32@@1 T@Field_2461_12873) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_2461_12937 Mask@@2 null pm_f_32@@1) (IsPredicateField_2461_12964 pm_f_32@@1)) (and (and (and (forall ((o2_32 T@Ref) (f_54 T@Field_4421_53) ) (!  (=> (select (|PolymorphicMapType_4910_4421_53#PolymorphicMapType_4910| (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@2) null (PredicateMaskField_2461 pm_f_32@@1))) o2_32 f_54) (= (select (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| Heap@@2) o2_32 f_54) (select (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| ExhaleHeap@@1) o2_32 f_54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| ExhaleHeap@@1) o2_32 f_54))
)) (forall ((o2_32@@0 T@Ref) (f_54@@0 T@Field_4434_4435) ) (!  (=> (select (|PolymorphicMapType_4910_4421_4435#PolymorphicMapType_4910| (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@2) null (PredicateMaskField_2461 pm_f_32@@1))) o2_32@@0 f_54@@0) (= (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@2) o2_32@@0 f_54@@0) (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| ExhaleHeap@@1) o2_32@@0 f_54@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| ExhaleHeap@@1) o2_32@@0 f_54@@0))
))) (forall ((o2_32@@1 T@Ref) (f_54@@1 T@Field_2461_12873) ) (!  (=> (select (|PolymorphicMapType_4910_4421_12873#PolymorphicMapType_4910| (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@2) null (PredicateMaskField_2461 pm_f_32@@1))) o2_32@@1 f_54@@1) (= (select (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| Heap@@2) o2_32@@1 f_54@@1) (select (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| ExhaleHeap@@1) o2_32@@1 f_54@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| ExhaleHeap@@1) o2_32@@1 f_54@@1))
))) (forall ((o2_32@@2 T@Ref) (f_54@@2 T@Field_2461_13006) ) (!  (=> (select (|PolymorphicMapType_4910_4421_13986#PolymorphicMapType_4910| (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@2) null (PredicateMaskField_2461 pm_f_32@@1))) o2_32@@2 f_54@@2) (= (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@2) o2_32@@2 f_54@@2) (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| ExhaleHeap@@1) o2_32@@2 f_54@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| ExhaleHeap@@1) o2_32@@2 f_54@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_2461_12964 pm_f_32@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4361) (ExhaleHeap@@2 T@PolymorphicMapType_4361) (Mask@@3 T@PolymorphicMapType_4382) (pm_f_32@@2 T@Field_2461_12873) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2461_12937 Mask@@3 null pm_f_32@@2) (IsWandField_2461_14513 pm_f_32@@2)) (and (and (and (forall ((o2_32@@3 T@Ref) (f_54@@3 T@Field_4421_53) ) (!  (=> (select (|PolymorphicMapType_4910_4421_53#PolymorphicMapType_4910| (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@3) null (WandMaskField_2461 pm_f_32@@2))) o2_32@@3 f_54@@3) (= (select (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| Heap@@3) o2_32@@3 f_54@@3) (select (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| ExhaleHeap@@2) o2_32@@3 f_54@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| ExhaleHeap@@2) o2_32@@3 f_54@@3))
)) (forall ((o2_32@@4 T@Ref) (f_54@@4 T@Field_4434_4435) ) (!  (=> (select (|PolymorphicMapType_4910_4421_4435#PolymorphicMapType_4910| (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@3) null (WandMaskField_2461 pm_f_32@@2))) o2_32@@4 f_54@@4) (= (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@3) o2_32@@4 f_54@@4) (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| ExhaleHeap@@2) o2_32@@4 f_54@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| ExhaleHeap@@2) o2_32@@4 f_54@@4))
))) (forall ((o2_32@@5 T@Ref) (f_54@@5 T@Field_2461_12873) ) (!  (=> (select (|PolymorphicMapType_4910_4421_12873#PolymorphicMapType_4910| (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@3) null (WandMaskField_2461 pm_f_32@@2))) o2_32@@5 f_54@@5) (= (select (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| Heap@@3) o2_32@@5 f_54@@5) (select (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| ExhaleHeap@@2) o2_32@@5 f_54@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| ExhaleHeap@@2) o2_32@@5 f_54@@5))
))) (forall ((o2_32@@6 T@Ref) (f_54@@6 T@Field_2461_13006) ) (!  (=> (select (|PolymorphicMapType_4910_4421_13986#PolymorphicMapType_4910| (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@3) null (WandMaskField_2461 pm_f_32@@2))) o2_32@@6 f_54@@6) (= (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@3) o2_32@@6 f_54@@6) (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| ExhaleHeap@@2) o2_32@@6 f_54@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| ExhaleHeap@@2) o2_32@@6 f_54@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_2461_14513 pm_f_32@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4361) (ExhaleHeap@@3 T@PolymorphicMapType_4361) (Mask@@4 T@PolymorphicMapType_4382) (o_55 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| Heap@@4) o_55 $allocated) (select (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| ExhaleHeap@@3) o_55 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| ExhaleHeap@@3) o_55 $allocated))
)))
(assert (forall ((p T@Field_2461_12873) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_4421_4421 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4421_4421 p v_1 p w))
)))
(assert  (not (IsPredicateField_2461_2462 next)))
(assert  (not (IsWandField_2461_2462 next)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4361) (ExhaleHeap@@4 T@PolymorphicMapType_4361) (Mask@@5 T@PolymorphicMapType_4382) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_4382) (o_2@@3 T@Ref) (f_4@@3 T@Field_2461_13006) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_2461_17447 f_4@@3))) (not (IsWandField_2461_17463 f_4@@3))) (<= (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_4382) (o_2@@4 T@Ref) (f_4@@4 T@Field_2461_12873) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_2461_12964 f_4@@4))) (not (IsWandField_2461_14513 f_4@@4))) (<= (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_4382) (o_2@@5 T@Ref) (f_4@@5 T@Field_4421_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2461_53 f_4@@5))) (not (IsWandField_2461_53 f_4@@5))) (<= (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_4382) (o_2@@6 T@Ref) (f_4@@6 T@Field_4434_4435) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_2461_2462 f_4@@6))) (not (IsWandField_2461_2462 f_4@@6))) (<= (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4382) (o_2@@7 T@Ref) (f_4@@7 T@Field_2461_13006) ) (! (= (HasDirectPerm_2461_17818 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2461_17818 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4382) (o_2@@8 T@Ref) (f_4@@8 T@Field_2461_12873) ) (! (= (HasDirectPerm_2461_12937 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2461_12937 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4382) (o_2@@9 T@Ref) (f_4@@9 T@Field_4421_53) ) (! (= (HasDirectPerm_2461_53 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2461_53 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4382) (o_2@@10 T@Ref) (f_4@@10 T@Field_4434_4435) ) (! (= (HasDirectPerm_2461_2462 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2461_2462 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4361) (ExhaleHeap@@5 T@PolymorphicMapType_4361) (Mask@@14 T@PolymorphicMapType_4382) (o_55@@0 T@Ref) (f_54@@7 T@Field_2461_13006) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_2461_17818 Mask@@14 o_55@@0 f_54@@7) (= (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@6) o_55@@0 f_54@@7) (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| ExhaleHeap@@5) o_55@@0 f_54@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| ExhaleHeap@@5) o_55@@0 f_54@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4361) (ExhaleHeap@@6 T@PolymorphicMapType_4361) (Mask@@15 T@PolymorphicMapType_4382) (o_55@@1 T@Ref) (f_54@@8 T@Field_2461_12873) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_2461_12937 Mask@@15 o_55@@1 f_54@@8) (= (select (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| Heap@@7) o_55@@1 f_54@@8) (select (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| ExhaleHeap@@6) o_55@@1 f_54@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| ExhaleHeap@@6) o_55@@1 f_54@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4361) (ExhaleHeap@@7 T@PolymorphicMapType_4361) (Mask@@16 T@PolymorphicMapType_4382) (o_55@@2 T@Ref) (f_54@@9 T@Field_4421_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_2461_53 Mask@@16 o_55@@2 f_54@@9) (= (select (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| Heap@@8) o_55@@2 f_54@@9) (select (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| ExhaleHeap@@7) o_55@@2 f_54@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| ExhaleHeap@@7) o_55@@2 f_54@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4361) (ExhaleHeap@@8 T@PolymorphicMapType_4361) (Mask@@17 T@PolymorphicMapType_4382) (o_55@@3 T@Ref) (f_54@@10 T@Field_4434_4435) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_2461_2462 Mask@@17 o_55@@3 f_54@@10) (= (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@9) o_55@@3 f_54@@10) (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| ExhaleHeap@@8) o_55@@3 f_54@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| ExhaleHeap@@8) o_55@@3 f_54@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_2461_13006) ) (! (= (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_2461_12873) ) (! (= (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_4421_53) ) (! (= (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4434_4435) ) (! (= (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4382) (SummandMask1 T@PolymorphicMapType_4382) (SummandMask2 T@PolymorphicMapType_4382) (o_2@@15 T@Ref) (f_4@@15 T@Field_2461_13006) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4382) (SummandMask1@@0 T@PolymorphicMapType_4382) (SummandMask2@@0 T@PolymorphicMapType_4382) (o_2@@16 T@Ref) (f_4@@16 T@Field_2461_12873) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4382) (SummandMask1@@1 T@PolymorphicMapType_4382) (SummandMask2@@1 T@PolymorphicMapType_4382) (o_2@@17 T@Ref) (f_4@@17 T@Field_4421_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4382) (SummandMask1@@2 T@PolymorphicMapType_4382) (SummandMask2@@2 T@PolymorphicMapType_4382) (o_2@@18 T@Ref) (f_4@@18 T@Field_4434_4435) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4361) (o_54 T@Ref) (f_8 T@Field_2461_12873) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_4361 (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| Heap@@10) (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@10) (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@10) (store (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| Heap@@10) o_54 f_8 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4361 (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| Heap@@10) (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@10) (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@10) (store (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| Heap@@10) o_54 f_8 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4361) (o_54@@0 T@Ref) (f_8@@0 T@Field_2461_13006) (v@@0 T@PolymorphicMapType_4910) ) (! (succHeap Heap@@11 (PolymorphicMapType_4361 (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| Heap@@11) (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@11) (store (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@11) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4361 (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| Heap@@11) (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@11) (store (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@11) o_54@@0 f_8@@0 v@@0) (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4361) (o_54@@1 T@Ref) (f_8@@1 T@Field_4434_4435) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_4361 (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| Heap@@12) (store (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@12) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@12) (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4361 (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| Heap@@12) (store (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@12) o_54@@1 f_8@@1 v@@1) (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@12) (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4361) (o_54@@2 T@Ref) (f_8@@2 T@Field_4421_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_4361 (store (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| Heap@@13) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@13) (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@13) (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4361 (store (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| Heap@@13) o_54@@2 f_8@@2 v@@2) (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@13) (|PolymorphicMapType_4361_2461_13050#PolymorphicMapType_4361| Heap@@13) (|PolymorphicMapType_4361_4421_12873#PolymorphicMapType_4361| Heap@@13)))
)))
(assert (forall ((o_54@@3 T@Ref) (f_24 T@Field_4434_4435) (Heap@@14 T@PolymorphicMapType_4361) ) (!  (=> (select (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| Heap@@14) o_54@@3 $allocated) (select (|PolymorphicMapType_4361_2321_53#PolymorphicMapType_4361| Heap@@14) (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@14) o_54@@3 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@14) o_54@@3 f_24))
)))
(assert (forall ((p@@1 T@Field_2461_12873) (v_1@@0 T@FrameType) (q T@Field_2461_12873) (w@@0 T@FrameType) (r T@Field_2461_12873) (u T@FrameType) ) (!  (=> (and (InsidePredicate_4421_4421 p@@1 v_1@@0 q w@@0) (InsidePredicate_4421_4421 q w@@0 r u)) (InsidePredicate_4421_4421 p@@1 v_1@@0 r u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4421_4421 p@@1 v_1@@0 q w@@0) (InsidePredicate_4421_4421 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_4361)
(declare-fun QPMask@0 () T@PolymorphicMapType_4382)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(set-info :boogie-vc-id test2_1)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon3_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 5)) (forall ((r_1_1 T@Ref) (r_1_2 T@Ref) ) (!  (=> (and (and (not (= r_1_1 r_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_1_1 r_1_2)))
 :qid |stdinbpl.321:15|
 :skolemid |28|
))) (=> (forall ((r_1_1@@0 T@Ref) (r_1_2@@0 T@Ref) ) (!  (=> (and (and (not (= r_1_1@@0 r_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_1_1@@0 r_1_2@@0)))
 :qid |stdinbpl.321:15|
 :skolemid |28|
)) (=> (and (and (forall ((r_1_1@@1 T@Ref) ) (!  (=> (< NoPerm FullPerm) (and (qpRange2 r_1_1@@1) (= (invRecv2 r_1_1@@1) r_1_1@@1)))
 :qid |stdinbpl.327:22|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@15) r_1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| QPMask@0) r_1_1@@1 next))
 :pattern ( (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@15) r_1_1@@1 next))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (< NoPerm FullPerm) (qpRange2 o_9)) (= (invRecv2 o_9) o_9))
 :qid |stdinbpl.331:22|
 :skolemid |30|
 :pattern ( (invRecv2 o_9))
))) (and (forall ((r_1_1@@2 T@Ref) ) (! (not (= r_1_1@@2 null))
 :qid |stdinbpl.337:22|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@15) r_1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| QPMask@0) r_1_1@@2 next))
 :pattern ( (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@15) r_1_1@@2 next))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (< NoPerm FullPerm) (qpRange2 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv2 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| QPMask@0) o_9@@0 next) (+ (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| ZeroMask) o_9@@0 next) FullPerm)))) (=> (not (and (< NoPerm FullPerm) (qpRange2 o_9@@0))) (= (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| QPMask@0) o_9@@0 next) (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| ZeroMask) o_9@@0 next))))
 :qid |stdinbpl.343:22|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| QPMask@0) o_9@@0 next))
)))) (=> (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_4421_53) ) (!  (=> true (= (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.347:29|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_4382_2461_53#PolymorphicMapType_4382| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_4434_4435) ) (!  (=> (not (= f_5@@0 next)) (= (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.347:29|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_4382_2461_2462#PolymorphicMapType_4382| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_2461_12873) ) (!  (=> true (= (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.347:29|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_4382_2461_12873#PolymorphicMapType_4382| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_2461_13006) ) (!  (=> true (= (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.347:29|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_4382_2461_16552#PolymorphicMapType_4382| QPMask@0) o_9@@4 f_5@@2))
))) (and (state Heap@@15 QPMask@0) (state Heap@@15 QPMask@0))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_2461_2462 QPMask@0 null next)) (=> (HasDirectPerm_2461_2462 QPMask@0 null next) (=> (and (and (= (select (|PolymorphicMapType_4361_2324_2325#PolymorphicMapType_4361| Heap@@15) null next) null) (state Heap@@15 QPMask@0)) (and (state Heap@@15 QPMask@0) (= (ControlFlow 0 3) (- 0 2)))) false)))))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 6) 1) anon3_Then_correct) (=> (= (ControlFlow 0 6) 3) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 6) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
