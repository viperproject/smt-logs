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
(declare-sort T@Field_6310_53 0)
(declare-sort T@Field_6323_6324 0)
(declare-sort T@Field_12482_3211 0)
(declare-sort T@Field_6310_15111 0)
(declare-sort T@Field_6310_14978 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6271 0)) (((PolymorphicMapType_6271 (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| (Array T@Ref T@Field_12482_3211 Real)) (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| (Array T@Ref T@Field_6310_53 Real)) (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| (Array T@Ref T@Field_6323_6324 Real)) (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| (Array T@Ref T@Field_6310_14978 Real)) (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| (Array T@Ref T@Field_6310_15111 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6799 0)) (((PolymorphicMapType_6799 (|PolymorphicMapType_6799_6310_53#PolymorphicMapType_6799| (Array T@Ref T@Field_6310_53 Bool)) (|PolymorphicMapType_6799_6310_6324#PolymorphicMapType_6799| (Array T@Ref T@Field_6323_6324 Bool)) (|PolymorphicMapType_6799_6310_3211#PolymorphicMapType_6799| (Array T@Ref T@Field_12482_3211 Bool)) (|PolymorphicMapType_6799_6310_14978#PolymorphicMapType_6799| (Array T@Ref T@Field_6310_14978 Bool)) (|PolymorphicMapType_6799_6310_16289#PolymorphicMapType_6799| (Array T@Ref T@Field_6310_15111 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6250 0)) (((PolymorphicMapType_6250 (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| (Array T@Ref T@Field_6310_53 Bool)) (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| (Array T@Ref T@Field_6323_6324 T@Ref)) (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| (Array T@Ref T@Field_12482_3211 Int)) (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| (Array T@Ref T@Field_6310_15111 T@PolymorphicMapType_6799)) (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| (Array T@Ref T@Field_6310_14978 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6310_53)
(declare-fun f_7 () T@Field_12482_3211)
(declare-fun succHeap (T@PolymorphicMapType_6250 T@PolymorphicMapType_6250) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6250 T@PolymorphicMapType_6250) Bool)
(declare-fun state (T@PolymorphicMapType_6250 T@PolymorphicMapType_6271) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6271) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6799)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6250 T@PolymorphicMapType_6250 T@PolymorphicMapType_6271) Bool)
(declare-fun IsPredicateField_6310_15069 (T@Field_6310_14978) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6310 (T@Field_6310_14978) T@Field_6310_15111)
(declare-fun HasDirectPerm_6310_15042 (T@PolymorphicMapType_6271 T@Ref T@Field_6310_14978) Bool)
(declare-fun IsWandField_6310_16816 (T@Field_6310_14978) Bool)
(declare-fun WandMaskField_6310 (T@Field_6310_14978) T@Field_6310_15111)
(declare-fun dummyHeap () T@PolymorphicMapType_6250)
(declare-fun ZeroMask () T@PolymorphicMapType_6271)
(declare-fun InsidePredicate_6310_6310 (T@Field_6310_14978 T@FrameType T@Field_6310_14978 T@FrameType) Bool)
(declare-fun IsPredicateField_3954_3211 (T@Field_12482_3211) Bool)
(declare-fun IsWandField_3954_3211 (T@Field_12482_3211) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3954_20362 (T@Field_6310_15111) Bool)
(declare-fun IsWandField_3954_20378 (T@Field_6310_15111) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3954_6324 (T@Field_6323_6324) Bool)
(declare-fun IsWandField_3954_6324 (T@Field_6323_6324) Bool)
(declare-fun IsPredicateField_3954_53 (T@Field_6310_53) Bool)
(declare-fun IsWandField_3954_53 (T@Field_6310_53) Bool)
(declare-fun HasDirectPerm_6310_20816 (T@PolymorphicMapType_6271 T@Ref T@Field_6310_15111) Bool)
(declare-fun HasDirectPerm_6310_3211 (T@PolymorphicMapType_6271 T@Ref T@Field_12482_3211) Bool)
(declare-fun HasDirectPerm_6310_6324 (T@PolymorphicMapType_6271 T@Ref T@Field_6323_6324) Bool)
(declare-fun HasDirectPerm_6310_53 (T@PolymorphicMapType_6271 T@Ref T@Field_6310_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6271 T@PolymorphicMapType_6271 T@PolymorphicMapType_6271) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6250) (Heap1 T@PolymorphicMapType_6250) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6250) (Mask T@PolymorphicMapType_6271) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6250) (Heap1@@0 T@PolymorphicMapType_6250) (Heap2 T@PolymorphicMapType_6250) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6310_15111) ) (!  (not (select (|PolymorphicMapType_6799_6310_16289#PolymorphicMapType_6799| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6799_6310_16289#PolymorphicMapType_6799| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6310_14978) ) (!  (not (select (|PolymorphicMapType_6799_6310_14978#PolymorphicMapType_6799| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6799_6310_14978#PolymorphicMapType_6799| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12482_3211) ) (!  (not (select (|PolymorphicMapType_6799_6310_3211#PolymorphicMapType_6799| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6799_6310_3211#PolymorphicMapType_6799| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6323_6324) ) (!  (not (select (|PolymorphicMapType_6799_6310_6324#PolymorphicMapType_6799| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6799_6310_6324#PolymorphicMapType_6799| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6310_53) ) (!  (not (select (|PolymorphicMapType_6799_6310_53#PolymorphicMapType_6799| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6799_6310_53#PolymorphicMapType_6799| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.288:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.291:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6250) (ExhaleHeap T@PolymorphicMapType_6250) (Mask@@0 T@PolymorphicMapType_6271) (pm_f_26 T@Field_6310_14978) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6310_15042 Mask@@0 null pm_f_26) (IsPredicateField_6310_15069 pm_f_26)) (= (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@0) null (PredicateMaskField_6310 pm_f_26)) (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| ExhaleHeap) null (PredicateMaskField_6310 pm_f_26)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6310_15069 pm_f_26) (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| ExhaleHeap) null (PredicateMaskField_6310 pm_f_26)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6250) (ExhaleHeap@@0 T@PolymorphicMapType_6250) (Mask@@1 T@PolymorphicMapType_6271) (pm_f_26@@0 T@Field_6310_14978) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6310_15042 Mask@@1 null pm_f_26@@0) (IsWandField_6310_16816 pm_f_26@@0)) (= (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@1) null (WandMaskField_6310 pm_f_26@@0)) (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| ExhaleHeap@@0) null (WandMaskField_6310 pm_f_26@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_6310_16816 pm_f_26@@0) (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| ExhaleHeap@@0) null (WandMaskField_6310 pm_f_26@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6250) (ExhaleHeap@@1 T@PolymorphicMapType_6250) (Mask@@2 T@PolymorphicMapType_6271) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@2) o_38 $allocated) (select (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| ExhaleHeap@@1) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| ExhaleHeap@@1) o_38 $allocated))
)))
(assert (forall ((p T@Field_6310_14978) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6310_6310 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6310_6310 p v_1 p w))
)))
(assert  (not (IsPredicateField_3954_3211 f_7)))
(assert  (not (IsWandField_3954_3211 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6250) (ExhaleHeap@@2 T@PolymorphicMapType_6250) (Mask@@3 T@PolymorphicMapType_6271) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_6271) (o_2@@4 T@Ref) (f_4@@4 T@Field_6310_15111) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_3954_20362 f_4@@4))) (not (IsWandField_3954_20378 f_4@@4))) (<= (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_6271) (o_2@@5 T@Ref) (f_4@@5 T@Field_6310_14978) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_6310_15069 f_4@@5))) (not (IsWandField_6310_16816 f_4@@5))) (<= (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_6271) (o_2@@6 T@Ref) (f_4@@6 T@Field_6323_6324) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3954_6324 f_4@@6))) (not (IsWandField_3954_6324 f_4@@6))) (<= (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_6271) (o_2@@7 T@Ref) (f_4@@7 T@Field_6310_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3954_53 f_4@@7))) (not (IsWandField_3954_53 f_4@@7))) (<= (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_6271) (o_2@@8 T@Ref) (f_4@@8 T@Field_12482_3211) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3954_3211 f_4@@8))) (not (IsWandField_3954_3211 f_4@@8))) (<= (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6271) (o_2@@9 T@Ref) (f_4@@9 T@Field_6310_15111) ) (! (= (HasDirectPerm_6310_20816 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6310_20816 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6271) (o_2@@10 T@Ref) (f_4@@10 T@Field_6310_14978) ) (! (= (HasDirectPerm_6310_15042 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6310_15042 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6271) (o_2@@11 T@Ref) (f_4@@11 T@Field_12482_3211) ) (! (= (HasDirectPerm_6310_3211 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6310_3211 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6271) (o_2@@12 T@Ref) (f_4@@12 T@Field_6323_6324) ) (! (= (HasDirectPerm_6310_6324 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6310_6324 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6271) (o_2@@13 T@Ref) (f_4@@13 T@Field_6310_53) ) (! (= (HasDirectPerm_6310_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6310_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6250) (ExhaleHeap@@3 T@PolymorphicMapType_6250) (Mask@@14 T@PolymorphicMapType_6271) (pm_f_26@@1 T@Field_6310_14978) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_6310_15042 Mask@@14 null pm_f_26@@1) (IsPredicateField_6310_15069 pm_f_26@@1)) (and (and (and (and (forall ((o2_26 T@Ref) (f_51 T@Field_6310_53) ) (!  (=> (select (|PolymorphicMapType_6799_6310_53#PolymorphicMapType_6799| (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@4) null (PredicateMaskField_6310 pm_f_26@@1))) o2_26 f_51) (= (select (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@4) o2_26 f_51) (select (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| ExhaleHeap@@3) o2_26 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| ExhaleHeap@@3) o2_26 f_51))
)) (forall ((o2_26@@0 T@Ref) (f_51@@0 T@Field_6323_6324) ) (!  (=> (select (|PolymorphicMapType_6799_6310_6324#PolymorphicMapType_6799| (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@4) null (PredicateMaskField_6310 pm_f_26@@1))) o2_26@@0 f_51@@0) (= (select (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| Heap@@4) o2_26@@0 f_51@@0) (select (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| ExhaleHeap@@3) o2_26@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| ExhaleHeap@@3) o2_26@@0 f_51@@0))
))) (forall ((o2_26@@1 T@Ref) (f_51@@1 T@Field_12482_3211) ) (!  (=> (select (|PolymorphicMapType_6799_6310_3211#PolymorphicMapType_6799| (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@4) null (PredicateMaskField_6310 pm_f_26@@1))) o2_26@@1 f_51@@1) (= (select (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| Heap@@4) o2_26@@1 f_51@@1) (select (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| ExhaleHeap@@3) o2_26@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| ExhaleHeap@@3) o2_26@@1 f_51@@1))
))) (forall ((o2_26@@2 T@Ref) (f_51@@2 T@Field_6310_14978) ) (!  (=> (select (|PolymorphicMapType_6799_6310_14978#PolymorphicMapType_6799| (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@4) null (PredicateMaskField_6310 pm_f_26@@1))) o2_26@@2 f_51@@2) (= (select (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| Heap@@4) o2_26@@2 f_51@@2) (select (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| ExhaleHeap@@3) o2_26@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| ExhaleHeap@@3) o2_26@@2 f_51@@2))
))) (forall ((o2_26@@3 T@Ref) (f_51@@3 T@Field_6310_15111) ) (!  (=> (select (|PolymorphicMapType_6799_6310_16289#PolymorphicMapType_6799| (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@4) null (PredicateMaskField_6310 pm_f_26@@1))) o2_26@@3 f_51@@3) (= (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@4) o2_26@@3 f_51@@3) (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| ExhaleHeap@@3) o2_26@@3 f_51@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| ExhaleHeap@@3) o2_26@@3 f_51@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_6310_15069 pm_f_26@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6250) (ExhaleHeap@@4 T@PolymorphicMapType_6250) (Mask@@15 T@PolymorphicMapType_6271) (pm_f_26@@2 T@Field_6310_14978) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_6310_15042 Mask@@15 null pm_f_26@@2) (IsWandField_6310_16816 pm_f_26@@2)) (and (and (and (and (forall ((o2_26@@4 T@Ref) (f_51@@4 T@Field_6310_53) ) (!  (=> (select (|PolymorphicMapType_6799_6310_53#PolymorphicMapType_6799| (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@5) null (WandMaskField_6310 pm_f_26@@2))) o2_26@@4 f_51@@4) (= (select (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@5) o2_26@@4 f_51@@4) (select (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| ExhaleHeap@@4) o2_26@@4 f_51@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| ExhaleHeap@@4) o2_26@@4 f_51@@4))
)) (forall ((o2_26@@5 T@Ref) (f_51@@5 T@Field_6323_6324) ) (!  (=> (select (|PolymorphicMapType_6799_6310_6324#PolymorphicMapType_6799| (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@5) null (WandMaskField_6310 pm_f_26@@2))) o2_26@@5 f_51@@5) (= (select (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| Heap@@5) o2_26@@5 f_51@@5) (select (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| ExhaleHeap@@4) o2_26@@5 f_51@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| ExhaleHeap@@4) o2_26@@5 f_51@@5))
))) (forall ((o2_26@@6 T@Ref) (f_51@@6 T@Field_12482_3211) ) (!  (=> (select (|PolymorphicMapType_6799_6310_3211#PolymorphicMapType_6799| (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@5) null (WandMaskField_6310 pm_f_26@@2))) o2_26@@6 f_51@@6) (= (select (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| Heap@@5) o2_26@@6 f_51@@6) (select (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| ExhaleHeap@@4) o2_26@@6 f_51@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| ExhaleHeap@@4) o2_26@@6 f_51@@6))
))) (forall ((o2_26@@7 T@Ref) (f_51@@7 T@Field_6310_14978) ) (!  (=> (select (|PolymorphicMapType_6799_6310_14978#PolymorphicMapType_6799| (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@5) null (WandMaskField_6310 pm_f_26@@2))) o2_26@@7 f_51@@7) (= (select (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| Heap@@5) o2_26@@7 f_51@@7) (select (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| ExhaleHeap@@4) o2_26@@7 f_51@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| ExhaleHeap@@4) o2_26@@7 f_51@@7))
))) (forall ((o2_26@@8 T@Ref) (f_51@@8 T@Field_6310_15111) ) (!  (=> (select (|PolymorphicMapType_6799_6310_16289#PolymorphicMapType_6799| (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@5) null (WandMaskField_6310 pm_f_26@@2))) o2_26@@8 f_51@@8) (= (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@5) o2_26@@8 f_51@@8) (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| ExhaleHeap@@4) o2_26@@8 f_51@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| ExhaleHeap@@4) o2_26@@8 f_51@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_6310_16816 pm_f_26@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6250) (ExhaleHeap@@5 T@PolymorphicMapType_6250) (Mask@@16 T@PolymorphicMapType_6271) (o_38@@0 T@Ref) (f_51@@9 T@Field_6310_15111) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_6310_20816 Mask@@16 o_38@@0 f_51@@9) (= (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@6) o_38@@0 f_51@@9) (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| ExhaleHeap@@5) o_38@@0 f_51@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| ExhaleHeap@@5) o_38@@0 f_51@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6250) (ExhaleHeap@@6 T@PolymorphicMapType_6250) (Mask@@17 T@PolymorphicMapType_6271) (o_38@@1 T@Ref) (f_51@@10 T@Field_6310_14978) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_6310_15042 Mask@@17 o_38@@1 f_51@@10) (= (select (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| Heap@@7) o_38@@1 f_51@@10) (select (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| ExhaleHeap@@6) o_38@@1 f_51@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| ExhaleHeap@@6) o_38@@1 f_51@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6250) (ExhaleHeap@@7 T@PolymorphicMapType_6250) (Mask@@18 T@PolymorphicMapType_6271) (o_38@@2 T@Ref) (f_51@@11 T@Field_12482_3211) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_6310_3211 Mask@@18 o_38@@2 f_51@@11) (= (select (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| Heap@@8) o_38@@2 f_51@@11) (select (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| ExhaleHeap@@7) o_38@@2 f_51@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| ExhaleHeap@@7) o_38@@2 f_51@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6250) (ExhaleHeap@@8 T@PolymorphicMapType_6250) (Mask@@19 T@PolymorphicMapType_6271) (o_38@@3 T@Ref) (f_51@@12 T@Field_6323_6324) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_6310_6324 Mask@@19 o_38@@3 f_51@@12) (= (select (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| Heap@@9) o_38@@3 f_51@@12) (select (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| ExhaleHeap@@8) o_38@@3 f_51@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| ExhaleHeap@@8) o_38@@3 f_51@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6250) (ExhaleHeap@@9 T@PolymorphicMapType_6250) (Mask@@20 T@PolymorphicMapType_6271) (o_38@@4 T@Ref) (f_51@@13 T@Field_6310_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_6310_53 Mask@@20 o_38@@4 f_51@@13) (= (select (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@10) o_38@@4 f_51@@13) (select (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| ExhaleHeap@@9) o_38@@4 f_51@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| ExhaleHeap@@9) o_38@@4 f_51@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6310_15111) ) (! (= (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6310_14978) ) (! (= (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_6323_6324) ) (! (= (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6310_53) ) (! (= (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_12482_3211) ) (! (= (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6271) (SummandMask1 T@PolymorphicMapType_6271) (SummandMask2 T@PolymorphicMapType_6271) (o_2@@19 T@Ref) (f_4@@19 T@Field_6310_15111) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6271) (SummandMask1@@0 T@PolymorphicMapType_6271) (SummandMask2@@0 T@PolymorphicMapType_6271) (o_2@@20 T@Ref) (f_4@@20 T@Field_6310_14978) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6271) (SummandMask1@@1 T@PolymorphicMapType_6271) (SummandMask2@@1 T@PolymorphicMapType_6271) (o_2@@21 T@Ref) (f_4@@21 T@Field_6323_6324) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6271) (SummandMask1@@2 T@PolymorphicMapType_6271) (SummandMask2@@2 T@PolymorphicMapType_6271) (o_2@@22 T@Ref) (f_4@@22 T@Field_6310_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6271) (SummandMask1@@3 T@PolymorphicMapType_6271) (SummandMask2@@3 T@PolymorphicMapType_6271) (o_2@@23 T@Ref) (f_4@@23 T@Field_12482_3211) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6250) (o_56 T@Ref) (f_22 T@Field_6310_14978) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_6250 (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@11) (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| Heap@@11) (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| Heap@@11) (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@11) (store (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| Heap@@11) o_56 f_22 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6250 (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@11) (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| Heap@@11) (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| Heap@@11) (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@11) (store (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| Heap@@11) o_56 f_22 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6250) (o_56@@0 T@Ref) (f_22@@0 T@Field_6310_15111) (v@@0 T@PolymorphicMapType_6799) ) (! (succHeap Heap@@12 (PolymorphicMapType_6250 (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@12) (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| Heap@@12) (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| Heap@@12) (store (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@12) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6250 (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@12) (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| Heap@@12) (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| Heap@@12) (store (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@12) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6250) (o_56@@1 T@Ref) (f_22@@1 T@Field_12482_3211) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_6250 (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@13) (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| Heap@@13) (store (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| Heap@@13) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@13) (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6250 (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@13) (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| Heap@@13) (store (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| Heap@@13) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@13) (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6250) (o_56@@2 T@Ref) (f_22@@2 T@Field_6323_6324) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_6250 (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@14) (store (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| Heap@@14) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| Heap@@14) (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@14) (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6250 (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@14) (store (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| Heap@@14) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| Heap@@14) (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@14) (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6250) (o_56@@3 T@Ref) (f_22@@3 T@Field_6310_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_6250 (store (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@15) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| Heap@@15) (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| Heap@@15) (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@15) (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6250 (store (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@15) o_56@@3 f_22@@3 v@@3) (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| Heap@@15) (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| Heap@@15) (|PolymorphicMapType_6250_6310_15155#PolymorphicMapType_6250| Heap@@15) (|PolymorphicMapType_6250_6310_14978#PolymorphicMapType_6250| Heap@@15)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.286:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.287:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_56@@4 T@Ref) (f_3 T@Field_6323_6324) (Heap@@16 T@PolymorphicMapType_6250) ) (!  (=> (select (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@16) o_56@@4 $allocated) (select (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@16) (select (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| Heap@@16) o_56@@4 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6250_3664_3665#PolymorphicMapType_6250| Heap@@16) o_56@@4 f_3))
)))
(assert (forall ((p@@1 T@Field_6310_14978) (v_1@@0 T@FrameType) (q T@Field_6310_14978) (w@@0 T@FrameType) (r T@Field_6310_14978) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6310_6310 p@@1 v_1@@0 q w@@0) (InsidePredicate_6310_6310 q w@@0 r u)) (InsidePredicate_6310_6310 p@@1 v_1@@0 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6310_6310 p@@1 v_1@@0 q w@@0) (InsidePredicate_6310_6310 q w@@0 r u))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.292:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun AssertMask@0 () T@PolymorphicMapType_6271)
(declare-fun QPMask@0 () T@PolymorphicMapType_6271)
(declare-fun x () T@Ref)
(declare-fun Heap@@17 () T@PolymorphicMapType_6250)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id t1_2)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon4_correct  (=> (= AssertMask@0 (PolymorphicMapType_6271 (store (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| QPMask@0) x f_7 (- (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| QPMask@0) x f_7) FullPerm)) (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| QPMask@0) (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| QPMask@0) (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| QPMask@0) (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| QPMask@0))) (=> (and (state Heap@@17 QPMask@0) (= (ControlFlow 0 3) (- 0 2))) (= FullPerm (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| QPMask@0) x f_7))))))
(let ((anon6_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 6) 3)) anon4_correct)))
(let ((anon6_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (<= FullPerm (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| QPMask@0) x f_7))) (=> (<= FullPerm (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| QPMask@0) x f_7)) (=> (= (ControlFlow 0 4) 3) anon4_correct))))))
(let ((anon5_Else_correct  (and (=> (= (ControlFlow 0 7) (- 0 8)) (forall ((y_1 T@Ref) (y_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= y_1 y_1_1)) (select xs y_1)) (select xs y_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= y_1 y_1_1)))
 :qid |stdinbpl.422:15|
 :skolemid |82|
))) (=> (forall ((y_1@@0 T@Ref) (y_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= y_1@@0 y_1_1@@0)) (select xs y_1@@0)) (select xs y_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= y_1@@0 y_1_1@@0)))
 :qid |stdinbpl.422:15|
 :skolemid |82|
)) (=> (and (and (forall ((y_1@@1 T@Ref) ) (!  (=> (and (select xs y_1@@1) (< NoPerm FullPerm)) (and (qpRange1 y_1@@1) (= (invRecv1 y_1@@1) y_1@@1)))
 :qid |stdinbpl.428:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| Heap@@17) y_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| QPMask@0) y_1@@1 f_7))
 :pattern ( (select xs y_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select xs (invRecv1 o_9)) (< NoPerm FullPerm)) (qpRange1 o_9)) (= (invRecv1 o_9) o_9))
 :qid |stdinbpl.432:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_9))
))) (and (forall ((y_1@@2 T@Ref) ) (!  (=> (select xs y_1@@2) (not (= y_1@@2 null)))
 :qid |stdinbpl.438:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_6250_3954_3211#PolymorphicMapType_6250| Heap@@17) y_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| QPMask@0) y_1@@2 f_7))
 :pattern ( (select xs y_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select xs (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| QPMask@0) o_9@@0 f_7) (+ (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| ZeroMask) o_9@@0 f_7) FullPerm)))) (=> (not (and (and (select xs (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0))) (= (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| QPMask@0) o_9@@0 f_7) (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| ZeroMask) o_9@@0 f_7))))
 :qid |stdinbpl.444:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| QPMask@0) o_9@@0 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_6310_53) ) (!  (=> true (= (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.448:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_6271_3954_53#PolymorphicMapType_6271| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_6323_6324) ) (!  (=> true (= (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.448:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_6271_3954_6324#PolymorphicMapType_6271| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_12482_3211) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.448:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_6271_3954_3211#PolymorphicMapType_6271| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_6310_14978) ) (!  (=> true (= (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.448:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_6271_3954_14978#PolymorphicMapType_6271| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_6310_15111) ) (!  (=> true (= (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.448:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_6271_3954_19233#PolymorphicMapType_6271| QPMask@0) o_9@@5 f_5@@3))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (not (= x null)) (state Heap@@17 QPMask@0)) (and (select xs x) (state Heap@@17 QPMask@0)))) (and (=> (= (ControlFlow 0 7) 4) anon6_Then_correct) (=> (= (ControlFlow 0 7) 6) anon6_Else_correct))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_6250_3661_53#PolymorphicMapType_6250| Heap@@17) x $allocated)) (and (=> (= (ControlFlow 0 9) 1) anon5_Then_correct) (=> (= (ControlFlow 0 9) 7) anon5_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 9) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
