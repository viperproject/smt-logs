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
(declare-sort T@Field_4956_53 0)
(declare-sort T@Field_4969_4970 0)
(declare-sort T@Field_8795_8796 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_4956_8796 0)
(declare-sort T@Field_4956_8812 0)
(declare-sort T@Field_8795_53 0)
(declare-sort T@Field_8795_4970 0)
(declare-sort T@Field_8807_8812 0)
(declare-datatypes ((T@PolymorphicMapType_4917 0)) (((PolymorphicMapType_4917 (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| (Array T@Ref T@Field_8795_8796 Real)) (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| (Array T@Ref T@Field_8795_53 Real)) (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| (Array T@Ref T@Field_8795_4970 Real)) (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| (Array T@Ref T@Field_8807_8812 Real)) (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| (Array T@Ref T@Field_4956_8796 Real)) (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| (Array T@Ref T@Field_4956_53 Real)) (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| (Array T@Ref T@Field_4969_4970 Real)) (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| (Array T@Ref T@Field_4956_8812 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5445 0)) (((PolymorphicMapType_5445 (|PolymorphicMapType_5445_4956_53#PolymorphicMapType_5445| (Array T@Ref T@Field_4956_53 Bool)) (|PolymorphicMapType_5445_4956_4970#PolymorphicMapType_5445| (Array T@Ref T@Field_4969_4970 Bool)) (|PolymorphicMapType_5445_4956_8796#PolymorphicMapType_5445| (Array T@Ref T@Field_4956_8796 Bool)) (|PolymorphicMapType_5445_4956_16263#PolymorphicMapType_5445| (Array T@Ref T@Field_4956_8812 Bool)) (|PolymorphicMapType_5445_8795_53#PolymorphicMapType_5445| (Array T@Ref T@Field_8795_53 Bool)) (|PolymorphicMapType_5445_8795_4970#PolymorphicMapType_5445| (Array T@Ref T@Field_8795_4970 Bool)) (|PolymorphicMapType_5445_8795_8796#PolymorphicMapType_5445| (Array T@Ref T@Field_8795_8796 Bool)) (|PolymorphicMapType_5445_8795_17113#PolymorphicMapType_5445| (Array T@Ref T@Field_8807_8812 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4896 0)) (((PolymorphicMapType_4896 (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| (Array T@Ref T@Field_4956_53 Bool)) (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| (Array T@Ref T@Field_4969_4970 T@Ref)) (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| (Array T@Ref T@Field_8795_8796 T@FrameType)) (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| (Array T@Ref T@Field_4956_8796 T@FrameType)) (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| (Array T@Ref T@Field_4956_8812 T@PolymorphicMapType_5445)) (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| (Array T@Ref T@Field_8795_53 Bool)) (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| (Array T@Ref T@Field_8795_4970 T@Ref)) (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| (Array T@Ref T@Field_8807_8812 T@PolymorphicMapType_5445)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_4896 T@PolymorphicMapType_4896) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4896 T@PolymorphicMapType_4896) Bool)
(declare-fun state (T@PolymorphicMapType_4896 T@PolymorphicMapType_4917) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4917) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4896 T@PolymorphicMapType_4896 T@PolymorphicMapType_4917) Bool)
(declare-fun IsPredicateField_3132_3133 (T@Field_8795_8796) Bool)
(declare-fun HasDirectPerm_8795_8796 (T@PolymorphicMapType_4917 T@Ref T@Field_8795_8796) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3132 (T@Field_8795_8796) T@Field_8807_8812)
(declare-fun IsPredicateField_4956_14977 (T@Field_4956_8796) Bool)
(declare-fun HasDirectPerm_4956_8796 (T@PolymorphicMapType_4917 T@Ref T@Field_4956_8796) Bool)
(declare-fun PredicateMaskField_4956 (T@Field_4956_8796) T@Field_4956_8812)
(declare-fun IsWandField_8795_18278 (T@Field_8795_8796) Bool)
(declare-fun WandMaskField_8795 (T@Field_8795_8796) T@Field_8807_8812)
(declare-fun IsWandField_4956_17921 (T@Field_4956_8796) Bool)
(declare-fun WandMaskField_4956 (T@Field_4956_8796) T@Field_4956_8812)
(declare-fun accessible_withdraw (Int Int Int) T@Field_8795_8796)
(declare-fun |accessible_withdraw#trigger_3132| (T@PolymorphicMapType_4896 T@Field_8795_8796) Bool)
(declare-fun |accessible_withdraw#everUsed_3132| (T@Field_8795_8796) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5445)
(declare-fun getPredWandId_3132_3133 (T@Field_8795_8796) Int)
(declare-fun |isInt'| (T@PolymorphicMapType_4896 Int) Bool)
(declare-fun dummyFunction_1513 (Bool) Bool)
(declare-fun |isInt#triggerStateless| (Int) Bool)
(declare-fun |accessible_withdraw#sm| (Int Int Int) T@Field_8807_8812)
(declare-fun isInt (T@PolymorphicMapType_4896 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_4896)
(declare-fun ZeroMask () T@PolymorphicMapType_4917)
(declare-fun $allocated () T@Field_4956_53)
(declare-fun InsidePredicate_8795_8795 (T@Field_8795_8796 T@FrameType T@Field_8795_8796 T@FrameType) Bool)
(declare-fun InsidePredicate_4956_4956 (T@Field_4956_8796 T@FrameType T@Field_4956_8796 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4956_24018 (T@Field_4956_8812) Bool)
(declare-fun IsWandField_4956_24034 (T@Field_4956_8812) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4956_4970 (T@Field_4969_4970) Bool)
(declare-fun IsWandField_4956_4970 (T@Field_4969_4970) Bool)
(declare-fun IsPredicateField_4956_53 (T@Field_4956_53) Bool)
(declare-fun IsWandField_4956_53 (T@Field_4956_53) Bool)
(declare-fun IsPredicateField_3132_23355 (T@Field_8807_8812) Bool)
(declare-fun IsWandField_3132_23371 (T@Field_8807_8812) Bool)
(declare-fun IsPredicateField_3132_4970 (T@Field_8795_4970) Bool)
(declare-fun IsWandField_3132_4970 (T@Field_8795_4970) Bool)
(declare-fun IsPredicateField_3132_53 (T@Field_8795_53) Bool)
(declare-fun IsWandField_3132_53 (T@Field_8795_53) Bool)
(declare-fun HasDirectPerm_8795_14689 (T@PolymorphicMapType_4917 T@Ref T@Field_8807_8812) Bool)
(declare-fun HasDirectPerm_8795_4970 (T@PolymorphicMapType_4917 T@Ref T@Field_8795_4970) Bool)
(declare-fun HasDirectPerm_8795_53 (T@PolymorphicMapType_4917 T@Ref T@Field_8795_53) Bool)
(declare-fun HasDirectPerm_4956_13749 (T@PolymorphicMapType_4917 T@Ref T@Field_4956_8812) Bool)
(declare-fun HasDirectPerm_4956_4970 (T@PolymorphicMapType_4917 T@Ref T@Field_4969_4970) Bool)
(declare-fun HasDirectPerm_4956_53 (T@PolymorphicMapType_4917 T@Ref T@Field_4956_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4917 T@PolymorphicMapType_4917 T@PolymorphicMapType_4917) Bool)
(declare-fun |isInt#frame| (T@FrameType Int) Bool)
(declare-fun InsidePredicate_8795_4956 (T@Field_8795_8796 T@FrameType T@Field_4956_8796 T@FrameType) Bool)
(declare-fun InsidePredicate_4956_8795 (T@Field_4956_8796 T@FrameType T@Field_8795_8796 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4896) (Heap1 T@PolymorphicMapType_4896) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4896) (Mask T@PolymorphicMapType_4917) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4896) (ExhaleHeap T@PolymorphicMapType_4896) (Mask@@0 T@PolymorphicMapType_4917) (pm_f_5 T@Field_8795_8796) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8795_8796 Mask@@0 null pm_f_5) (IsPredicateField_3132_3133 pm_f_5)) (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_4956_53) ) (!  (=> (select (|PolymorphicMapType_5445_4956_53#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@0) null (PredicateMaskField_3132 pm_f_5))) o2_5 f_16) (= (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@0) o2_5 f_16) (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| ExhaleHeap) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| ExhaleHeap) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_4969_4970) ) (!  (=> (select (|PolymorphicMapType_5445_4956_4970#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@0) null (PredicateMaskField_3132 pm_f_5))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@0) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| ExhaleHeap) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| ExhaleHeap) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_4956_8796) ) (!  (=> (select (|PolymorphicMapType_5445_4956_8796#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@0) null (PredicateMaskField_3132 pm_f_5))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@0) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| ExhaleHeap) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| ExhaleHeap) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_4956_8812) ) (!  (=> (select (|PolymorphicMapType_5445_4956_16263#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@0) null (PredicateMaskField_3132 pm_f_5))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@0) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| ExhaleHeap) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| ExhaleHeap) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_8795_53) ) (!  (=> (select (|PolymorphicMapType_5445_8795_53#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@0) null (PredicateMaskField_3132 pm_f_5))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@0) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| ExhaleHeap) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| ExhaleHeap) o2_5@@3 f_16@@3))
))) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_8795_4970) ) (!  (=> (select (|PolymorphicMapType_5445_8795_4970#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@0) null (PredicateMaskField_3132 pm_f_5))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@0) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| ExhaleHeap) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| ExhaleHeap) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_8795_8796) ) (!  (=> (select (|PolymorphicMapType_5445_8795_8796#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@0) null (PredicateMaskField_3132 pm_f_5))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@0) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| ExhaleHeap) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| ExhaleHeap) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_8807_8812) ) (!  (=> (select (|PolymorphicMapType_5445_8795_17113#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@0) null (PredicateMaskField_3132 pm_f_5))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@0) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| ExhaleHeap) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| ExhaleHeap) o2_5@@6 f_16@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3132_3133 pm_f_5))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4896) (ExhaleHeap@@0 T@PolymorphicMapType_4896) (Mask@@1 T@PolymorphicMapType_4917) (pm_f_5@@0 T@Field_4956_8796) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4956_8796 Mask@@1 null pm_f_5@@0) (IsPredicateField_4956_14977 pm_f_5@@0)) (and (and (and (and (and (and (and (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_4956_53) ) (!  (=> (select (|PolymorphicMapType_5445_4956_53#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@1) null (PredicateMaskField_4956 pm_f_5@@0))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@1) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@7 f_16@@7))
)) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_4969_4970) ) (!  (=> (select (|PolymorphicMapType_5445_4956_4970#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@1) null (PredicateMaskField_4956 pm_f_5@@0))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@1) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@8 f_16@@8))
))) (forall ((o2_5@@9 T@Ref) (f_16@@9 T@Field_4956_8796) ) (!  (=> (select (|PolymorphicMapType_5445_4956_8796#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@1) null (PredicateMaskField_4956 pm_f_5@@0))) o2_5@@9 f_16@@9) (= (select (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@1) o2_5@@9 f_16@@9) (select (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@9 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@9 f_16@@9))
))) (forall ((o2_5@@10 T@Ref) (f_16@@10 T@Field_4956_8812) ) (!  (=> (select (|PolymorphicMapType_5445_4956_16263#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@1) null (PredicateMaskField_4956 pm_f_5@@0))) o2_5@@10 f_16@@10) (= (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@1) o2_5@@10 f_16@@10) (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@10 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@10 f_16@@10))
))) (forall ((o2_5@@11 T@Ref) (f_16@@11 T@Field_8795_53) ) (!  (=> (select (|PolymorphicMapType_5445_8795_53#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@1) null (PredicateMaskField_4956 pm_f_5@@0))) o2_5@@11 f_16@@11) (= (select (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@1) o2_5@@11 f_16@@11) (select (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@11 f_16@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@11 f_16@@11))
))) (forall ((o2_5@@12 T@Ref) (f_16@@12 T@Field_8795_4970) ) (!  (=> (select (|PolymorphicMapType_5445_8795_4970#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@1) null (PredicateMaskField_4956 pm_f_5@@0))) o2_5@@12 f_16@@12) (= (select (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@1) o2_5@@12 f_16@@12) (select (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@12 f_16@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@12 f_16@@12))
))) (forall ((o2_5@@13 T@Ref) (f_16@@13 T@Field_8795_8796) ) (!  (=> (select (|PolymorphicMapType_5445_8795_8796#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@1) null (PredicateMaskField_4956 pm_f_5@@0))) o2_5@@13 f_16@@13) (= (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@1) o2_5@@13 f_16@@13) (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@13 f_16@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@13 f_16@@13))
))) (forall ((o2_5@@14 T@Ref) (f_16@@14 T@Field_8807_8812) ) (!  (=> (select (|PolymorphicMapType_5445_8795_17113#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@1) null (PredicateMaskField_4956 pm_f_5@@0))) o2_5@@14 f_16@@14) (= (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@1) o2_5@@14 f_16@@14) (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@14 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| ExhaleHeap@@0) o2_5@@14 f_16@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4956_14977 pm_f_5@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4896) (ExhaleHeap@@1 T@PolymorphicMapType_4896) (Mask@@2 T@PolymorphicMapType_4917) (pm_f_5@@1 T@Field_8795_8796) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8795_8796 Mask@@2 null pm_f_5@@1) (IsWandField_8795_18278 pm_f_5@@1)) (and (and (and (and (and (and (and (forall ((o2_5@@15 T@Ref) (f_16@@15 T@Field_4956_53) ) (!  (=> (select (|PolymorphicMapType_5445_4956_53#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@2) null (WandMaskField_8795 pm_f_5@@1))) o2_5@@15 f_16@@15) (= (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@2) o2_5@@15 f_16@@15) (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@15 f_16@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@15 f_16@@15))
)) (forall ((o2_5@@16 T@Ref) (f_16@@16 T@Field_4969_4970) ) (!  (=> (select (|PolymorphicMapType_5445_4956_4970#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@2) null (WandMaskField_8795 pm_f_5@@1))) o2_5@@16 f_16@@16) (= (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@2) o2_5@@16 f_16@@16) (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@16 f_16@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@16 f_16@@16))
))) (forall ((o2_5@@17 T@Ref) (f_16@@17 T@Field_4956_8796) ) (!  (=> (select (|PolymorphicMapType_5445_4956_8796#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@2) null (WandMaskField_8795 pm_f_5@@1))) o2_5@@17 f_16@@17) (= (select (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@2) o2_5@@17 f_16@@17) (select (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@17 f_16@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@17 f_16@@17))
))) (forall ((o2_5@@18 T@Ref) (f_16@@18 T@Field_4956_8812) ) (!  (=> (select (|PolymorphicMapType_5445_4956_16263#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@2) null (WandMaskField_8795 pm_f_5@@1))) o2_5@@18 f_16@@18) (= (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@2) o2_5@@18 f_16@@18) (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@18 f_16@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@18 f_16@@18))
))) (forall ((o2_5@@19 T@Ref) (f_16@@19 T@Field_8795_53) ) (!  (=> (select (|PolymorphicMapType_5445_8795_53#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@2) null (WandMaskField_8795 pm_f_5@@1))) o2_5@@19 f_16@@19) (= (select (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@2) o2_5@@19 f_16@@19) (select (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@19 f_16@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@19 f_16@@19))
))) (forall ((o2_5@@20 T@Ref) (f_16@@20 T@Field_8795_4970) ) (!  (=> (select (|PolymorphicMapType_5445_8795_4970#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@2) null (WandMaskField_8795 pm_f_5@@1))) o2_5@@20 f_16@@20) (= (select (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@2) o2_5@@20 f_16@@20) (select (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@20 f_16@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@20 f_16@@20))
))) (forall ((o2_5@@21 T@Ref) (f_16@@21 T@Field_8795_8796) ) (!  (=> (select (|PolymorphicMapType_5445_8795_8796#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@2) null (WandMaskField_8795 pm_f_5@@1))) o2_5@@21 f_16@@21) (= (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@2) o2_5@@21 f_16@@21) (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@21 f_16@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@21 f_16@@21))
))) (forall ((o2_5@@22 T@Ref) (f_16@@22 T@Field_8807_8812) ) (!  (=> (select (|PolymorphicMapType_5445_8795_17113#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@2) null (WandMaskField_8795 pm_f_5@@1))) o2_5@@22 f_16@@22) (= (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@2) o2_5@@22 f_16@@22) (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@22 f_16@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| ExhaleHeap@@1) o2_5@@22 f_16@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_8795_18278 pm_f_5@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4896) (ExhaleHeap@@2 T@PolymorphicMapType_4896) (Mask@@3 T@PolymorphicMapType_4917) (pm_f_5@@2 T@Field_4956_8796) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4956_8796 Mask@@3 null pm_f_5@@2) (IsWandField_4956_17921 pm_f_5@@2)) (and (and (and (and (and (and (and (forall ((o2_5@@23 T@Ref) (f_16@@23 T@Field_4956_53) ) (!  (=> (select (|PolymorphicMapType_5445_4956_53#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@3) null (WandMaskField_4956 pm_f_5@@2))) o2_5@@23 f_16@@23) (= (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@3) o2_5@@23 f_16@@23) (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@23 f_16@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@23 f_16@@23))
)) (forall ((o2_5@@24 T@Ref) (f_16@@24 T@Field_4969_4970) ) (!  (=> (select (|PolymorphicMapType_5445_4956_4970#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@3) null (WandMaskField_4956 pm_f_5@@2))) o2_5@@24 f_16@@24) (= (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@3) o2_5@@24 f_16@@24) (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@24 f_16@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@24 f_16@@24))
))) (forall ((o2_5@@25 T@Ref) (f_16@@25 T@Field_4956_8796) ) (!  (=> (select (|PolymorphicMapType_5445_4956_8796#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@3) null (WandMaskField_4956 pm_f_5@@2))) o2_5@@25 f_16@@25) (= (select (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@3) o2_5@@25 f_16@@25) (select (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@25 f_16@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@25 f_16@@25))
))) (forall ((o2_5@@26 T@Ref) (f_16@@26 T@Field_4956_8812) ) (!  (=> (select (|PolymorphicMapType_5445_4956_16263#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@3) null (WandMaskField_4956 pm_f_5@@2))) o2_5@@26 f_16@@26) (= (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@3) o2_5@@26 f_16@@26) (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@26 f_16@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@26 f_16@@26))
))) (forall ((o2_5@@27 T@Ref) (f_16@@27 T@Field_8795_53) ) (!  (=> (select (|PolymorphicMapType_5445_8795_53#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@3) null (WandMaskField_4956 pm_f_5@@2))) o2_5@@27 f_16@@27) (= (select (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@3) o2_5@@27 f_16@@27) (select (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@27 f_16@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@27 f_16@@27))
))) (forall ((o2_5@@28 T@Ref) (f_16@@28 T@Field_8795_4970) ) (!  (=> (select (|PolymorphicMapType_5445_8795_4970#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@3) null (WandMaskField_4956 pm_f_5@@2))) o2_5@@28 f_16@@28) (= (select (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@3) o2_5@@28 f_16@@28) (select (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@28 f_16@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@28 f_16@@28))
))) (forall ((o2_5@@29 T@Ref) (f_16@@29 T@Field_8795_8796) ) (!  (=> (select (|PolymorphicMapType_5445_8795_8796#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@3) null (WandMaskField_4956 pm_f_5@@2))) o2_5@@29 f_16@@29) (= (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@3) o2_5@@29 f_16@@29) (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@29 f_16@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@29 f_16@@29))
))) (forall ((o2_5@@30 T@Ref) (f_16@@30 T@Field_8807_8812) ) (!  (=> (select (|PolymorphicMapType_5445_8795_17113#PolymorphicMapType_5445| (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@3) null (WandMaskField_4956 pm_f_5@@2))) o2_5@@30 f_16@@30) (= (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@3) o2_5@@30 f_16@@30) (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@30 f_16@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| ExhaleHeap@@2) o2_5@@30 f_16@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4956_17921 pm_f_5@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4896) (Heap1@@0 T@PolymorphicMapType_4896) (Heap2 T@PolymorphicMapType_4896) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((msg_sender Int) (amount Int) (parameter Int) ) (! (IsPredicateField_3132_3133 (accessible_withdraw msg_sender amount parameter))
 :qid |stdinbpl.262:15|
 :skolemid |27|
 :pattern ( (accessible_withdraw msg_sender amount parameter))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4896) (msg_sender@@0 Int) (amount@@0 Int) (parameter@@0 Int) ) (! (|accessible_withdraw#everUsed_3132| (accessible_withdraw msg_sender@@0 amount@@0 parameter@@0))
 :qid |stdinbpl.281:15|
 :skolemid |31|
 :pattern ( (|accessible_withdraw#trigger_3132| Heap@@4 (accessible_withdraw msg_sender@@0 amount@@0 parameter@@0)))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8807_8812) ) (!  (not (select (|PolymorphicMapType_5445_8795_17113#PolymorphicMapType_5445| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5445_8795_17113#PolymorphicMapType_5445| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8795_8796) ) (!  (not (select (|PolymorphicMapType_5445_8795_8796#PolymorphicMapType_5445| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5445_8795_8796#PolymorphicMapType_5445| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8795_4970) ) (!  (not (select (|PolymorphicMapType_5445_8795_4970#PolymorphicMapType_5445| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5445_8795_4970#PolymorphicMapType_5445| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8795_53) ) (!  (not (select (|PolymorphicMapType_5445_8795_53#PolymorphicMapType_5445| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5445_8795_53#PolymorphicMapType_5445| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4956_8812) ) (!  (not (select (|PolymorphicMapType_5445_4956_16263#PolymorphicMapType_5445| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5445_4956_16263#PolymorphicMapType_5445| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4956_8796) ) (!  (not (select (|PolymorphicMapType_5445_4956_8796#PolymorphicMapType_5445| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5445_4956_8796#PolymorphicMapType_5445| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_4969_4970) ) (!  (not (select (|PolymorphicMapType_5445_4956_4970#PolymorphicMapType_5445| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5445_4956_4970#PolymorphicMapType_5445| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_4956_53) ) (!  (not (select (|PolymorphicMapType_5445_4956_53#PolymorphicMapType_5445| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5445_4956_53#PolymorphicMapType_5445| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((msg_sender@@1 Int) (amount@@1 Int) (parameter@@1 Int) ) (! (= (getPredWandId_3132_3133 (accessible_withdraw msg_sender@@1 amount@@1 parameter@@1)) 0)
 :qid |stdinbpl.266:15|
 :skolemid |28|
 :pattern ( (accessible_withdraw msg_sender@@1 amount@@1 parameter@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4896) (i Int) ) (! (dummyFunction_1513 (|isInt#triggerStateless| i))
 :qid |stdinbpl.212:15|
 :skolemid |23|
 :pattern ( (|isInt'| Heap@@5 i))
)))
(assert (forall ((msg_sender@@2 Int) (amount@@2 Int) (parameter@@2 Int) ) (! (= (PredicateMaskField_3132 (accessible_withdraw msg_sender@@2 amount@@2 parameter@@2)) (|accessible_withdraw#sm| msg_sender@@2 amount@@2 parameter@@2))
 :qid |stdinbpl.258:15|
 :skolemid |26|
 :pattern ( (PredicateMaskField_3132 (accessible_withdraw msg_sender@@2 amount@@2 parameter@@2)))
)))
(assert (forall ((msg_sender@@3 Int) (amount@@3 Int) (parameter@@3 Int) (msg_sender2 Int) (amount2 Int) (parameter2 Int) ) (!  (=> (= (accessible_withdraw msg_sender@@3 amount@@3 parameter@@3) (accessible_withdraw msg_sender2 amount2 parameter2)) (and (= msg_sender@@3 msg_sender2) (and (= amount@@3 amount2) (= parameter@@3 parameter2))))
 :qid |stdinbpl.272:15|
 :skolemid |29|
 :pattern ( (accessible_withdraw msg_sender@@3 amount@@3 parameter@@3) (accessible_withdraw msg_sender2 amount2 parameter2))
)))
(assert (forall ((msg_sender@@4 Int) (amount@@4 Int) (parameter@@4 Int) (msg_sender2@@0 Int) (amount2@@0 Int) (parameter2@@0 Int) ) (!  (=> (= (|accessible_withdraw#sm| msg_sender@@4 amount@@4 parameter@@4) (|accessible_withdraw#sm| msg_sender2@@0 amount2@@0 parameter2@@0)) (and (= msg_sender@@4 msg_sender2@@0) (and (= amount@@4 amount2@@0) (= parameter@@4 parameter2@@0))))
 :qid |stdinbpl.276:15|
 :skolemid |30|
 :pattern ( (|accessible_withdraw#sm| msg_sender@@4 amount@@4 parameter@@4) (|accessible_withdraw#sm| msg_sender2@@0 amount2@@0 parameter2@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4896) (ExhaleHeap@@3 T@PolymorphicMapType_4896) (Mask@@4 T@PolymorphicMapType_4917) (pm_f_5@@3 T@Field_8795_8796) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_8795_8796 Mask@@4 null pm_f_5@@3) (IsPredicateField_3132_3133 pm_f_5@@3)) (= (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@6) null (PredicateMaskField_3132 pm_f_5@@3)) (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| ExhaleHeap@@3) null (PredicateMaskField_3132 pm_f_5@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3132_3133 pm_f_5@@3) (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| ExhaleHeap@@3) null (PredicateMaskField_3132 pm_f_5@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4896) (ExhaleHeap@@4 T@PolymorphicMapType_4896) (Mask@@5 T@PolymorphicMapType_4917) (pm_f_5@@4 T@Field_4956_8796) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4956_8796 Mask@@5 null pm_f_5@@4) (IsPredicateField_4956_14977 pm_f_5@@4)) (= (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@7) null (PredicateMaskField_4956 pm_f_5@@4)) (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| ExhaleHeap@@4) null (PredicateMaskField_4956 pm_f_5@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsPredicateField_4956_14977 pm_f_5@@4) (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| ExhaleHeap@@4) null (PredicateMaskField_4956 pm_f_5@@4)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4896) (ExhaleHeap@@5 T@PolymorphicMapType_4896) (Mask@@6 T@PolymorphicMapType_4917) (pm_f_5@@5 T@Field_8795_8796) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8795_8796 Mask@@6 null pm_f_5@@5) (IsWandField_8795_18278 pm_f_5@@5)) (= (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@8) null (WandMaskField_8795 pm_f_5@@5)) (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| ExhaleHeap@@5) null (WandMaskField_8795 pm_f_5@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_8795_18278 pm_f_5@@5) (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| ExhaleHeap@@5) null (WandMaskField_8795 pm_f_5@@5)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4896) (ExhaleHeap@@6 T@PolymorphicMapType_4896) (Mask@@7 T@PolymorphicMapType_4917) (pm_f_5@@6 T@Field_4956_8796) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4956_8796 Mask@@7 null pm_f_5@@6) (IsWandField_4956_17921 pm_f_5@@6)) (= (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@9) null (WandMaskField_4956 pm_f_5@@6)) (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| ExhaleHeap@@6) null (WandMaskField_4956 pm_f_5@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_4956_17921 pm_f_5@@6) (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| ExhaleHeap@@6) null (WandMaskField_4956 pm_f_5@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4896) (Mask@@8 T@PolymorphicMapType_4917) (i@@0 Int) ) (!  (=> (and (state Heap@@10 Mask@@8) (< AssumeFunctionsAbove 0)) (isInt Heap@@10 i@@0))
 :qid |stdinbpl.218:15|
 :skolemid |24|
 :pattern ( (state Heap@@10 Mask@@8) (isInt Heap@@10 i@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4896) (ExhaleHeap@@7 T@PolymorphicMapType_4896) (Mask@@9 T@PolymorphicMapType_4917) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@11) o_12 $allocated) (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_8795_8796) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8795_8795 p v_1 p w))
 :qid |stdinbpl.196:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8795_8795 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4956_8796) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4956_4956 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.196:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4956_4956 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4896) (ExhaleHeap@@8 T@PolymorphicMapType_4896) (Mask@@10 T@PolymorphicMapType_4917) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4917) (o_2@@7 T@Ref) (f_4@@7 T@Field_4956_8812) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| Mask@@11) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4956_24018 f_4@@7))) (not (IsWandField_4956_24034 f_4@@7))) (<= (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| Mask@@11) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| Mask@@11) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4917) (o_2@@8 T@Ref) (f_4@@8 T@Field_4969_4970) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| Mask@@12) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4956_4970 f_4@@8))) (not (IsWandField_4956_4970 f_4@@8))) (<= (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| Mask@@12) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| Mask@@12) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4917) (o_2@@9 T@Ref) (f_4@@9 T@Field_4956_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| Mask@@13) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4956_53 f_4@@9))) (not (IsWandField_4956_53 f_4@@9))) (<= (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| Mask@@13) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| Mask@@13) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4917) (o_2@@10 T@Ref) (f_4@@10 T@Field_4956_8796) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| Mask@@14) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4956_14977 f_4@@10))) (not (IsWandField_4956_17921 f_4@@10))) (<= (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| Mask@@14) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| Mask@@14) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4917) (o_2@@11 T@Ref) (f_4@@11 T@Field_8807_8812) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| Mask@@15) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3132_23355 f_4@@11))) (not (IsWandField_3132_23371 f_4@@11))) (<= (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| Mask@@15) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| Mask@@15) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4917) (o_2@@12 T@Ref) (f_4@@12 T@Field_8795_4970) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| Mask@@16) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3132_4970 f_4@@12))) (not (IsWandField_3132_4970 f_4@@12))) (<= (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| Mask@@16) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| Mask@@16) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4917) (o_2@@13 T@Ref) (f_4@@13 T@Field_8795_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| Mask@@17) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3132_53 f_4@@13))) (not (IsWandField_3132_53 f_4@@13))) (<= (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| Mask@@17) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| Mask@@17) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4917) (o_2@@14 T@Ref) (f_4@@14 T@Field_8795_8796) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| Mask@@18) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3132_3133 f_4@@14))) (not (IsWandField_8795_18278 f_4@@14))) (<= (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| Mask@@18) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| Mask@@18) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4917) (o_2@@15 T@Ref) (f_4@@15 T@Field_8807_8812) ) (! (= (HasDirectPerm_8795_14689 Mask@@19 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| Mask@@19) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8795_14689 Mask@@19 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4917) (o_2@@16 T@Ref) (f_4@@16 T@Field_8795_8796) ) (! (= (HasDirectPerm_8795_8796 Mask@@20 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| Mask@@20) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8795_8796 Mask@@20 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4917) (o_2@@17 T@Ref) (f_4@@17 T@Field_8795_4970) ) (! (= (HasDirectPerm_8795_4970 Mask@@21 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| Mask@@21) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8795_4970 Mask@@21 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4917) (o_2@@18 T@Ref) (f_4@@18 T@Field_8795_53) ) (! (= (HasDirectPerm_8795_53 Mask@@22 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| Mask@@22) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8795_53 Mask@@22 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4917) (o_2@@19 T@Ref) (f_4@@19 T@Field_4956_8812) ) (! (= (HasDirectPerm_4956_13749 Mask@@23 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| Mask@@23) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4956_13749 Mask@@23 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4917) (o_2@@20 T@Ref) (f_4@@20 T@Field_4956_8796) ) (! (= (HasDirectPerm_4956_8796 Mask@@24 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| Mask@@24) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4956_8796 Mask@@24 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4917) (o_2@@21 T@Ref) (f_4@@21 T@Field_4969_4970) ) (! (= (HasDirectPerm_4956_4970 Mask@@25 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| Mask@@25) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4956_4970 Mask@@25 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_4917) (o_2@@22 T@Ref) (f_4@@22 T@Field_4956_53) ) (! (= (HasDirectPerm_4956_53 Mask@@26 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| Mask@@26) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4956_53 Mask@@26 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.184:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4896) (ExhaleHeap@@9 T@PolymorphicMapType_4896) (Mask@@27 T@PolymorphicMapType_4917) (o_12@@0 T@Ref) (f_16@@31 T@Field_8807_8812) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_8795_14689 Mask@@27 o_12@@0 f_16@@31) (= (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@13) o_12@@0 f_16@@31) (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| ExhaleHeap@@9) o_12@@0 f_16@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| ExhaleHeap@@9) o_12@@0 f_16@@31))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4896) (ExhaleHeap@@10 T@PolymorphicMapType_4896) (Mask@@28 T@PolymorphicMapType_4917) (o_12@@1 T@Ref) (f_16@@32 T@Field_8795_8796) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@28) (=> (HasDirectPerm_8795_8796 Mask@@28 o_12@@1 f_16@@32) (= (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@14) o_12@@1 f_16@@32) (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| ExhaleHeap@@10) o_12@@1 f_16@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@28) (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| ExhaleHeap@@10) o_12@@1 f_16@@32))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4896) (ExhaleHeap@@11 T@PolymorphicMapType_4896) (Mask@@29 T@PolymorphicMapType_4917) (o_12@@2 T@Ref) (f_16@@33 T@Field_8795_4970) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@29) (=> (HasDirectPerm_8795_4970 Mask@@29 o_12@@2 f_16@@33) (= (select (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@15) o_12@@2 f_16@@33) (select (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| ExhaleHeap@@11) o_12@@2 f_16@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@29) (select (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| ExhaleHeap@@11) o_12@@2 f_16@@33))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4896) (ExhaleHeap@@12 T@PolymorphicMapType_4896) (Mask@@30 T@PolymorphicMapType_4917) (o_12@@3 T@Ref) (f_16@@34 T@Field_8795_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@30) (=> (HasDirectPerm_8795_53 Mask@@30 o_12@@3 f_16@@34) (= (select (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@16) o_12@@3 f_16@@34) (select (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| ExhaleHeap@@12) o_12@@3 f_16@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@30) (select (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| ExhaleHeap@@12) o_12@@3 f_16@@34))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4896) (ExhaleHeap@@13 T@PolymorphicMapType_4896) (Mask@@31 T@PolymorphicMapType_4917) (o_12@@4 T@Ref) (f_16@@35 T@Field_4956_8812) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@31) (=> (HasDirectPerm_4956_13749 Mask@@31 o_12@@4 f_16@@35) (= (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@17) o_12@@4 f_16@@35) (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| ExhaleHeap@@13) o_12@@4 f_16@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@31) (select (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| ExhaleHeap@@13) o_12@@4 f_16@@35))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4896) (ExhaleHeap@@14 T@PolymorphicMapType_4896) (Mask@@32 T@PolymorphicMapType_4917) (o_12@@5 T@Ref) (f_16@@36 T@Field_4956_8796) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@32) (=> (HasDirectPerm_4956_8796 Mask@@32 o_12@@5 f_16@@36) (= (select (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@18) o_12@@5 f_16@@36) (select (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| ExhaleHeap@@14) o_12@@5 f_16@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@32) (select (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| ExhaleHeap@@14) o_12@@5 f_16@@36))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4896) (ExhaleHeap@@15 T@PolymorphicMapType_4896) (Mask@@33 T@PolymorphicMapType_4917) (o_12@@6 T@Ref) (f_16@@37 T@Field_4969_4970) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@33) (=> (HasDirectPerm_4956_4970 Mask@@33 o_12@@6 f_16@@37) (= (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@19) o_12@@6 f_16@@37) (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| ExhaleHeap@@15) o_12@@6 f_16@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@33) (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| ExhaleHeap@@15) o_12@@6 f_16@@37))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4896) (ExhaleHeap@@16 T@PolymorphicMapType_4896) (Mask@@34 T@PolymorphicMapType_4917) (o_12@@7 T@Ref) (f_16@@38 T@Field_4956_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@34) (=> (HasDirectPerm_4956_53 Mask@@34 o_12@@7 f_16@@38) (= (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@20) o_12@@7 f_16@@38) (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| ExhaleHeap@@16) o_12@@7 f_16@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@34) (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| ExhaleHeap@@16) o_12@@7 f_16@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_4956_8812) ) (! (= (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_4969_4970) ) (! (= (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_4956_53) ) (! (= (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_4956_8796) ) (! (= (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_8807_8812) ) (! (= (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_8795_4970) ) (! (= (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_8795_53) ) (! (= (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8795_8796) ) (! (= (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4917) (SummandMask1 T@PolymorphicMapType_4917) (SummandMask2 T@PolymorphicMapType_4917) (o_2@@31 T@Ref) (f_4@@31 T@Field_4956_8812) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4917) (SummandMask1@@0 T@PolymorphicMapType_4917) (SummandMask2@@0 T@PolymorphicMapType_4917) (o_2@@32 T@Ref) (f_4@@32 T@Field_4969_4970) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4917) (SummandMask1@@1 T@PolymorphicMapType_4917) (SummandMask2@@1 T@PolymorphicMapType_4917) (o_2@@33 T@Ref) (f_4@@33 T@Field_4956_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4917) (SummandMask1@@2 T@PolymorphicMapType_4917) (SummandMask2@@2 T@PolymorphicMapType_4917) (o_2@@34 T@Ref) (f_4@@34 T@Field_4956_8796) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4917) (SummandMask1@@3 T@PolymorphicMapType_4917) (SummandMask2@@3 T@PolymorphicMapType_4917) (o_2@@35 T@Ref) (f_4@@35 T@Field_8807_8812) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4917) (SummandMask1@@4 T@PolymorphicMapType_4917) (SummandMask2@@4 T@PolymorphicMapType_4917) (o_2@@36 T@Ref) (f_4@@36 T@Field_8795_4970) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4917) (SummandMask1@@5 T@PolymorphicMapType_4917) (SummandMask2@@5 T@PolymorphicMapType_4917) (o_2@@37 T@Ref) (f_4@@37 T@Field_8795_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4917) (SummandMask1@@6 T@PolymorphicMapType_4917) (SummandMask2@@6 T@PolymorphicMapType_4917) (o_2@@38 T@Ref) (f_4@@38 T@Field_8795_8796) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4896) (Mask@@35 T@PolymorphicMapType_4917) (i@@1 Int) ) (!  (=> (state Heap@@21 Mask@@35) (= (|isInt'| Heap@@21 i@@1) (|isInt#frame| EmptyFrame i@@1)))
 :qid |stdinbpl.225:15|
 :skolemid |25|
 :pattern ( (state Heap@@21 Mask@@35) (|isInt'| Heap@@21 i@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4896) (i@@2 Int) ) (!  (and (= (isInt Heap@@22 i@@2) (|isInt'| Heap@@22 i@@2)) (dummyFunction_1513 (|isInt#triggerStateless| i@@2)))
 :qid |stdinbpl.208:15|
 :skolemid |22|
 :pattern ( (isInt Heap@@22 i@@2))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4896) (o_11 T@Ref) (f_17 T@Field_8807_8812) (v T@PolymorphicMapType_5445) ) (! (succHeap Heap@@23 (PolymorphicMapType_4896 (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@23) (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@23) (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@23) (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@23) (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@23) (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@23) (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@23) (store (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@23) o_11 f_17 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4896 (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@23) (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@23) (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@23) (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@23) (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@23) (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@23) (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@23) (store (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@23) o_11 f_17 v)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4896) (o_11@@0 T@Ref) (f_17@@0 T@Field_8795_8796) (v@@0 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_4896 (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@24) (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@24) (store (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@24) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@24) (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@24) (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@24) (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@24) (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4896 (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@24) (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@24) (store (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@24) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@24) (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@24) (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@24) (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@24) (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4896) (o_11@@1 T@Ref) (f_17@@1 T@Field_8795_4970) (v@@1 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_4896 (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@25) (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@25) (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@25) (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@25) (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@25) (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@25) (store (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@25) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4896 (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@25) (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@25) (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@25) (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@25) (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@25) (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@25) (store (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@25) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4896) (o_11@@2 T@Ref) (f_17@@2 T@Field_8795_53) (v@@2 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_4896 (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@26) (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@26) (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@26) (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@26) (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@26) (store (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@26) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@26) (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4896 (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@26) (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@26) (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@26) (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@26) (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@26) (store (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@26) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@26) (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4896) (o_11@@3 T@Ref) (f_17@@3 T@Field_4956_8812) (v@@3 T@PolymorphicMapType_5445) ) (! (succHeap Heap@@27 (PolymorphicMapType_4896 (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@27) (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@27) (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@27) (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@27) (store (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@27) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@27) (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@27) (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4896 (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@27) (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@27) (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@27) (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@27) (store (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@27) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@27) (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@27) (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4896) (o_11@@4 T@Ref) (f_17@@4 T@Field_4956_8796) (v@@4 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_4896 (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@28) (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@28) (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@28) (store (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@28) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@28) (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@28) (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@28) (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4896 (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@28) (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@28) (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@28) (store (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@28) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@28) (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@28) (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@28) (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4896) (o_11@@5 T@Ref) (f_17@@5 T@Field_4969_4970) (v@@5 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_4896 (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@29) (store (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@29) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@29) (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@29) (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@29) (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@29) (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@29) (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4896 (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@29) (store (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@29) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@29) (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@29) (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@29) (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@29) (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@29) (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4896) (o_11@@6 T@Ref) (f_17@@6 T@Field_4956_53) (v@@6 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_4896 (store (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@30) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@30) (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@30) (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@30) (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@30) (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@30) (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@30) (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4896 (store (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@30) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@30) (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@30) (|PolymorphicMapType_4896_4956_8796#PolymorphicMapType_4896| Heap@@30) (|PolymorphicMapType_4896_4956_13791#PolymorphicMapType_4896| Heap@@30) (|PolymorphicMapType_4896_8795_53#PolymorphicMapType_4896| Heap@@30) (|PolymorphicMapType_4896_8795_4970#PolymorphicMapType_4896| Heap@@30) (|PolymorphicMapType_4896_8795_14731#PolymorphicMapType_4896| Heap@@30)))
)))
(assert (forall ((o_11@@7 T@Ref) (f_10 T@Field_4969_4970) (Heap@@31 T@PolymorphicMapType_4896) ) (!  (=> (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@31) o_11@@7 $allocated) (select (|PolymorphicMapType_4896_2994_53#PolymorphicMapType_4896| Heap@@31) (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@31) o_11@@7 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4896_2997_2998#PolymorphicMapType_4896| Heap@@31) o_11@@7 f_10))
)))
(assert (forall ((p@@2 T@Field_8795_8796) (v_1@@1 T@FrameType) (q T@Field_8795_8796) (w@@1 T@FrameType) (r T@Field_8795_8796) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8795_8795 p@@2 v_1@@1 q w@@1) (InsidePredicate_8795_8795 q w@@1 r u)) (InsidePredicate_8795_8795 p@@2 v_1@@1 r u))
 :qid |stdinbpl.191:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8795_8795 p@@2 v_1@@1 q w@@1) (InsidePredicate_8795_8795 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_8795_8796) (v_1@@2 T@FrameType) (q@@0 T@Field_8795_8796) (w@@2 T@FrameType) (r@@0 T@Field_4956_8796) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8795_8795 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8795_4956 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_8795_4956 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.191:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8795_8795 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8795_4956 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_8795_8796) (v_1@@3 T@FrameType) (q@@1 T@Field_4956_8796) (w@@3 T@FrameType) (r@@1 T@Field_8795_8796) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8795_4956 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4956_8795 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_8795_8795 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.191:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8795_4956 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4956_8795 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_8795_8796) (v_1@@4 T@FrameType) (q@@2 T@Field_4956_8796) (w@@4 T@FrameType) (r@@2 T@Field_4956_8796) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8795_4956 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4956_4956 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_8795_4956 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.191:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8795_4956 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4956_4956 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4956_8796) (v_1@@5 T@FrameType) (q@@3 T@Field_8795_8796) (w@@5 T@FrameType) (r@@3 T@Field_8795_8796) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4956_8795 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8795_8795 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4956_8795 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.191:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4956_8795 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8795_8795 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4956_8796) (v_1@@6 T@FrameType) (q@@4 T@Field_8795_8796) (w@@6 T@FrameType) (r@@4 T@Field_4956_8796) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4956_8795 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8795_4956 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4956_4956 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.191:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4956_8795 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8795_4956 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4956_8796) (v_1@@7 T@FrameType) (q@@5 T@Field_4956_8796) (w@@7 T@FrameType) (r@@5 T@Field_8795_8796) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4956_4956 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4956_8795 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4956_8795 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.191:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4956_4956 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4956_8795 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4956_8796) (v_1@@8 T@FrameType) (q@@6 T@Field_4956_8796) (w@@8 T@FrameType) (r@@6 T@Field_4956_8796) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4956_4956 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4956_4956 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4956_4956 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.191:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4956_4956 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4956_4956 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered3 (Int Int Int) Bool)
(declare-fun balance_1 () Int)
(declare-fun Heap@@32 () T@PolymorphicMapType_4896)
(declare-fun invRecv1 (Int Int Int) Int)
(declare-fun invRecv2 (Int Int Int) Int)
(declare-fun invRecv3 (Int Int Int) Int)
(declare-fun qpRange3 (Int Int Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_4917)
(declare-fun getPredWandId_3132_53 (T@Field_8795_53) Int)
(declare-fun getPredWandId_3132_4970 (T@Field_8795_4970) Int)
(declare-fun getPredWandId_3132_28720 (T@Field_8807_8812) Int)
(declare-fun getPredWandId_4956_3133 (T@Field_4956_8796) Int)
(declare-fun getPredWandId_4956_53 (T@Field_4956_53) Int)
(declare-fun getPredWandId_4956_4970 (T@Field_4969_4970) Int)
(declare-fun getPredWandId_4956_29374 (T@Field_4956_8812) Int)
(declare-fun msg_sender@@5 () Int)
(set-info :boogie-vc-id test1)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((a_1_1 Int) (i_1 Int) (j_1 Int) (a_1_2 Int) (i_1_1 Int) (j_1_1 Int) ) (!  (=> (and (and (and (and (and (and (not (= a_1_1 a_1_2)) (not (= i_1 i_1_1))) (not (= j_1 j_1_1))) (>= balance_1 i_1)) (>= balance_1 i_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (or (not (= a_1_1 a_1_2)) (not (= i_1 i_1_1))) (not (= j_1 j_1_1))))
 :qid |stdinbpl.325:17|
 :skolemid |32|
 :pattern ( (neverTriggered3 a_1_1 i_1 j_1) (neverTriggered3 a_1_2 i_1_1 j_1_1))
))) (=> (forall ((a_1_1@@0 Int) (i_1@@0 Int) (j_1@@0 Int) (a_1_2@@0 Int) (i_1_1@@0 Int) (j_1_1@@0 Int) ) (!  (=> (and (and (and (and (and (and (not (= a_1_1@@0 a_1_2@@0)) (not (= i_1@@0 i_1_1@@0))) (not (= j_1@@0 j_1_1@@0))) (>= balance_1 i_1@@0)) (>= balance_1 i_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (or (not (= a_1_1@@0 a_1_2@@0)) (not (= i_1@@0 i_1_1@@0))) (not (= j_1@@0 j_1_1@@0))))
 :qid |stdinbpl.325:17|
 :skolemid |32|
 :pattern ( (neverTriggered3 a_1_1@@0 i_1@@0 j_1@@0) (neverTriggered3 a_1_2@@0 i_1_1@@0 j_1_1@@0))
)) (=> (forall ((a_1_1@@1 Int) (i_1@@1 Int) (j_1@@1 Int) ) (!  (=> (and (>= balance_1 i_1@@1) (< NoPerm FullPerm)) (and (and (and (= (invRecv1 a_1_1@@1 i_1@@1 j_1@@1) a_1_1@@1) (= (invRecv2 a_1_1@@1 i_1@@1 j_1@@1) i_1@@1)) (= (invRecv3 a_1_1@@1 i_1@@1 j_1@@1) j_1@@1)) (qpRange3 a_1_1@@1 i_1@@1 j_1@@1)))
 :qid |stdinbpl.331:22|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@32) null (accessible_withdraw a_1_1@@1 i_1@@1 j_1@@1)))
 :pattern ( (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| ZeroMask) null (accessible_withdraw a_1_1@@1 i_1@@1 j_1@@1)))
 :pattern ( (select (|PolymorphicMapType_4896_3132_3133#PolymorphicMapType_4896| Heap@@32) null (accessible_withdraw a_1_1@@1 i_1@@1 j_1@@1)))
)) (=> (and (forall ((msg_sender_1_1 Int) (amount@@5 Int) (parameter@@5 Int) ) (!  (=> (and (and (>= balance_1 (invRecv2 msg_sender_1_1 amount@@5 parameter@@5)) (< NoPerm FullPerm)) (qpRange3 msg_sender_1_1 amount@@5 parameter@@5)) (and (and (= (invRecv1 msg_sender_1_1 amount@@5 parameter@@5) msg_sender_1_1) (= (invRecv2 msg_sender_1_1 amount@@5 parameter@@5) amount@@5)) (= (invRecv3 msg_sender_1_1 amount@@5 parameter@@5) parameter@@5)))
 :qid |stdinbpl.335:22|
 :skolemid |34|
 :pattern ( (invRecv1 msg_sender_1_1 amount@@5 parameter@@5) (invRecv2 msg_sender_1_1 amount@@5 parameter@@5) (invRecv3 msg_sender_1_1 amount@@5 parameter@@5))
)) (forall ((msg_sender_1_1@@0 Int) (amount@@6 Int) (parameter@@6 Int) ) (!  (=> (and (and (>= balance_1 (invRecv2 msg_sender_1_1@@0 amount@@6 parameter@@6)) (< NoPerm FullPerm)) (qpRange3 msg_sender_1_1@@0 amount@@6 parameter@@6)) (and (=> (< NoPerm FullPerm) (and (and (= (invRecv1 msg_sender_1_1@@0 amount@@6 parameter@@6) msg_sender_1_1@@0) (= (invRecv2 msg_sender_1_1@@0 amount@@6 parameter@@6) amount@@6)) (= (invRecv3 msg_sender_1_1@@0 amount@@6 parameter@@6) parameter@@6))) (= (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| QPMask@0) null (accessible_withdraw msg_sender_1_1@@0 amount@@6 parameter@@6)) (+ (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| ZeroMask) null (accessible_withdraw msg_sender_1_1@@0 amount@@6 parameter@@6)) FullPerm))))
 :qid |stdinbpl.341:22|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| QPMask@0) null (accessible_withdraw msg_sender_1_1@@0 amount@@6 parameter@@6)))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_5 T@Field_8795_8796) ) (!  (=> (or (or (not (= o_4 null)) (not (IsPredicateField_3132_3133 f_5))) (not (= (getPredWandId_3132_3133 f_5) 0))) (= (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| ZeroMask) o_4 f_5) (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| QPMask@0) o_4 f_5)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| ZeroMask) o_4 f_5))
 :pattern ( (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| QPMask@0) o_4 f_5))
)) (forall ((o_4@@0 T@Ref) (f_5@@0 T@Field_8795_53) ) (!  (=> (or (or (not (= o_4@@0 null)) (not (IsPredicateField_3132_53 f_5@@0))) (not (= (getPredWandId_3132_53 f_5@@0) 0))) (= (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| ZeroMask) o_4@@0 f_5@@0) (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| QPMask@0) o_4@@0 f_5@@0)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| ZeroMask) o_4@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_4917_3132_53#PolymorphicMapType_4917| QPMask@0) o_4@@0 f_5@@0))
))) (forall ((o_4@@1 T@Ref) (f_5@@1 T@Field_8795_4970) ) (!  (=> (or (or (not (= o_4@@1 null)) (not (IsPredicateField_3132_4970 f_5@@1))) (not (= (getPredWandId_3132_4970 f_5@@1) 0))) (= (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| ZeroMask) o_4@@1 f_5@@1) (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| QPMask@0) o_4@@1 f_5@@1)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| ZeroMask) o_4@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_4917_3132_4970#PolymorphicMapType_4917| QPMask@0) o_4@@1 f_5@@1))
))) (forall ((o_4@@2 T@Ref) (f_5@@2 T@Field_8807_8812) ) (!  (=> (or (or (not (= o_4@@2 null)) (not (IsPredicateField_3132_23355 f_5@@2))) (not (= (getPredWandId_3132_28720 f_5@@2) 0))) (= (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| ZeroMask) o_4@@2 f_5@@2) (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| QPMask@0) o_4@@2 f_5@@2)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| ZeroMask) o_4@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_4917_3132_21834#PolymorphicMapType_4917| QPMask@0) o_4@@2 f_5@@2))
))) (forall ((o_4@@3 T@Ref) (f_5@@3 T@Field_4956_8796) ) (!  (=> (or (or (not (= o_4@@3 null)) (not (IsPredicateField_4956_14977 f_5@@3))) (not (= (getPredWandId_4956_3133 f_5@@3) 0))) (= (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| ZeroMask) o_4@@3 f_5@@3) (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| QPMask@0) o_4@@3 f_5@@3)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| ZeroMask) o_4@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_4917_4956_3133#PolymorphicMapType_4917| QPMask@0) o_4@@3 f_5@@3))
))) (forall ((o_4@@4 T@Ref) (f_5@@4 T@Field_4956_53) ) (!  (=> (or (or (not (= o_4@@4 null)) (not (IsPredicateField_4956_53 f_5@@4))) (not (= (getPredWandId_4956_53 f_5@@4) 0))) (= (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| ZeroMask) o_4@@4 f_5@@4) (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| QPMask@0) o_4@@4 f_5@@4)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| ZeroMask) o_4@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_4917_4956_53#PolymorphicMapType_4917| QPMask@0) o_4@@4 f_5@@4))
))) (forall ((o_4@@5 T@Ref) (f_5@@5 T@Field_4969_4970) ) (!  (=> (or (or (not (= o_4@@5 null)) (not (IsPredicateField_4956_4970 f_5@@5))) (not (= (getPredWandId_4956_4970 f_5@@5) 0))) (= (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| ZeroMask) o_4@@5 f_5@@5) (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| QPMask@0) o_4@@5 f_5@@5)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| ZeroMask) o_4@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_4917_4956_4970#PolymorphicMapType_4917| QPMask@0) o_4@@5 f_5@@5))
))) (forall ((o_4@@6 T@Ref) (f_5@@6 T@Field_4956_8812) ) (!  (=> (or (or (not (= o_4@@6 null)) (not (IsPredicateField_4956_24018 f_5@@6))) (not (= (getPredWandId_4956_29374 f_5@@6) 0))) (= (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| ZeroMask) o_4@@6 f_5@@6) (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| QPMask@0) o_4@@6 f_5@@6)))
 :qid |stdinbpl.347:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| ZeroMask) o_4@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_4917_4956_22180#PolymorphicMapType_4917| QPMask@0) o_4@@6 f_5@@6))
))) (forall ((msg_sender_1_1@@1 Int) (amount@@7 Int) (parameter@@7 Int) ) (!  (=> (not (and (and (>= balance_1 (invRecv2 msg_sender_1_1@@1 amount@@7 parameter@@7)) (< NoPerm FullPerm)) (qpRange3 msg_sender_1_1@@1 amount@@7 parameter@@7))) (= (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| QPMask@0) null (accessible_withdraw msg_sender_1_1@@1 amount@@7 parameter@@7)) (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| ZeroMask) null (accessible_withdraw msg_sender_1_1@@1 amount@@7 parameter@@7))))
 :qid |stdinbpl.351:22|
 :skolemid |37|
 :pattern ( (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| QPMask@0) null (accessible_withdraw msg_sender_1_1@@1 amount@@7 parameter@@7)))
))) (and (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0)) (and (state Heap@@32 QPMask@0) (= (ControlFlow 0 3) (- 0 2))))) (= (select (|PolymorphicMapType_4917_3132_3133#PolymorphicMapType_4917| QPMask@0) null (accessible_withdraw msg_sender@@5 (+ balance_1 1) (+ balance_1 2))) NoPerm))))))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 5) 1) anon3_Then_correct) (=> (= (ControlFlow 0 5) 3) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
