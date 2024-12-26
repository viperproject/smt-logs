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
(declare-sort T@Field_9258_53 0)
(declare-sort T@Field_9271_9272 0)
(declare-sort T@Field_9258_24135 0)
(declare-sort T@Field_9258_24002 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9219 0)) (((PolymorphicMapType_9219 (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| (Array T@Ref T@Field_9258_53 Real)) (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| (Array T@Ref T@Field_9271_9272 Real)) (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| (Array T@Ref T@Field_9258_24002 Real)) (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| (Array T@Ref T@Field_9258_24135 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9747 0)) (((PolymorphicMapType_9747 (|PolymorphicMapType_9747_9258_53#PolymorphicMapType_9747| (Array T@Ref T@Field_9258_53 Bool)) (|PolymorphicMapType_9747_9258_9272#PolymorphicMapType_9747| (Array T@Ref T@Field_9271_9272 Bool)) (|PolymorphicMapType_9747_9258_24002#PolymorphicMapType_9747| (Array T@Ref T@Field_9258_24002 Bool)) (|PolymorphicMapType_9747_9258_25115#PolymorphicMapType_9747| (Array T@Ref T@Field_9258_24135 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9198 0)) (((PolymorphicMapType_9198 (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| (Array T@Ref T@Field_9258_53 Bool)) (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| (Array T@Ref T@Field_9271_9272 T@Ref)) (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| (Array T@Ref T@Field_9258_24135 T@PolymorphicMapType_9747)) (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| (Array T@Ref T@Field_9258_24002 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_9198 T@PolymorphicMapType_9198) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9198 T@PolymorphicMapType_9198) Bool)
(declare-fun state (T@PolymorphicMapType_9198 T@PolymorphicMapType_9219) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9219) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9747)
(declare-fun |fun11'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun dummyFunction_1352 (Int) Bool)
(declare-fun |fun11#triggerStateless| (Int) Int)
(declare-fun |fun12'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun12#triggerStateless| (Int) Int)
(declare-fun |fun13'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun13#triggerStateless| (Int) Int)
(declare-fun |fun14'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun14#triggerStateless| (Int) Int)
(declare-fun |fun15'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun15#triggerStateless| (Int) Int)
(declare-fun |fun16'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun16#triggerStateless| (Int) Int)
(declare-fun |fun17'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun17#triggerStateless| (Int) Int)
(declare-fun |fun18'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun18#triggerStateless| (Int) Int)
(declare-fun fun11 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun fun12 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun fun13 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun fun14 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun fun15 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun fun16 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun fun17 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun fun18 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun02'| (T@PolymorphicMapType_9198) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |fun02#trigger| (T@FrameType) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |fun03'| (T@PolymorphicMapType_9198) Int)
(declare-fun |fun03#trigger| (T@FrameType) Bool)
(declare-fun |fun01'| (T@PolymorphicMapType_9198) Int)
(declare-fun |fun01#trigger| (T@FrameType) Bool)
(declare-fun |fun04'| (T@PolymorphicMapType_9198) Int)
(declare-fun |fun04#trigger| (T@FrameType) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9198 T@PolymorphicMapType_9198 T@PolymorphicMapType_9219) Bool)
(declare-fun IsPredicateField_9258_24093 (T@Field_9258_24002) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9258 (T@Field_9258_24002) T@Field_9258_24135)
(declare-fun HasDirectPerm_9258_24066 (T@PolymorphicMapType_9219 T@Ref T@Field_9258_24002) Bool)
(declare-fun IsWandField_9258_25642 (T@Field_9258_24002) Bool)
(declare-fun WandMaskField_9258 (T@Field_9258_24002) T@Field_9258_24135)
(declare-fun dummyHeap () T@PolymorphicMapType_9198)
(declare-fun ZeroMask () T@PolymorphicMapType_9219)
(declare-fun $allocated () T@Field_9258_53)
(declare-fun InsidePredicate_9258_9258 (T@Field_9258_24002 T@FrameType T@Field_9258_24002 T@FrameType) Bool)
(declare-fun |fun05'| (T@PolymorphicMapType_9198) Int)
(declare-fun |fun05#trigger| (T@FrameType) Bool)
(declare-fun |fun06'| (T@PolymorphicMapType_9198) Int)
(declare-fun |fun06#trigger| (T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9258_28605 (T@Field_9258_24135) Bool)
(declare-fun IsWandField_9258_28621 (T@Field_9258_24135) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9258_9272 (T@Field_9271_9272) Bool)
(declare-fun IsWandField_9258_9272 (T@Field_9271_9272) Bool)
(declare-fun IsPredicateField_9258_53 (T@Field_9258_53) Bool)
(declare-fun IsWandField_9258_53 (T@Field_9258_53) Bool)
(declare-fun HasDirectPerm_9258_28976 (T@PolymorphicMapType_9219 T@Ref T@Field_9258_24135) Bool)
(declare-fun HasDirectPerm_9258_9272 (T@PolymorphicMapType_9219 T@Ref T@Field_9271_9272) Bool)
(declare-fun HasDirectPerm_9258_53 (T@PolymorphicMapType_9219 T@Ref T@Field_9258_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun fun01 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun01#triggerStateless| () Int)
(declare-fun fun02 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun02#triggerStateless| () Int)
(declare-fun fun03 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun03#triggerStateless| () Int)
(declare-fun fun04 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun04#triggerStateless| () Int)
(declare-fun fun05 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun05#triggerStateless| () Int)
(declare-fun fun06 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun06#triggerStateless| () Int)
(declare-fun fun07 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun07'| (T@PolymorphicMapType_9198) Int)
(declare-fun |fun07#triggerStateless| () Int)
(declare-fun fun08 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun08'| (T@PolymorphicMapType_9198) Int)
(declare-fun |fun08#triggerStateless| () Int)
(declare-fun sumMask (T@PolymorphicMapType_9219 T@PolymorphicMapType_9219 T@PolymorphicMapType_9219) Bool)
(declare-fun |fun11#frame| (T@FrameType Int) Int)
(declare-fun |fun12#frame| (T@FrameType Int) Int)
(declare-fun |fun13#frame| (T@FrameType Int) Int)
(declare-fun |fun14#frame| (T@FrameType Int) Int)
(declare-fun |fun15#frame| (T@FrameType Int) Int)
(declare-fun |fun16#frame| (T@FrameType Int) Int)
(declare-fun |fun17#frame| (T@FrameType Int) Int)
(declare-fun |fun18#frame| (T@FrameType Int) Int)
(declare-fun |fun01#frame| (T@FrameType) Int)
(declare-fun |fun02#frame| (T@FrameType) Int)
(declare-fun |fun03#frame| (T@FrameType) Int)
(declare-fun |fun04#frame| (T@FrameType) Int)
(declare-fun |fun05#frame| (T@FrameType) Int)
(declare-fun |fun06#frame| (T@FrameType) Int)
(declare-fun |fun07#frame| (T@FrameType) Int)
(declare-fun |fun08#frame| (T@FrameType) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_9198) (Heap1 T@PolymorphicMapType_9198) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9198) (Mask T@PolymorphicMapType_9219) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9198) (Heap1@@0 T@PolymorphicMapType_9198) (Heap2 T@PolymorphicMapType_9198) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9258_24135) ) (!  (not (select (|PolymorphicMapType_9747_9258_25115#PolymorphicMapType_9747| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9747_9258_25115#PolymorphicMapType_9747| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9258_24002) ) (!  (not (select (|PolymorphicMapType_9747_9258_24002#PolymorphicMapType_9747| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9747_9258_24002#PolymorphicMapType_9747| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9271_9272) ) (!  (not (select (|PolymorphicMapType_9747_9258_9272#PolymorphicMapType_9747| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9747_9258_9272#PolymorphicMapType_9747| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9258_53) ) (!  (not (select (|PolymorphicMapType_9747_9258_53#PolymorphicMapType_9747| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9747_9258_53#PolymorphicMapType_9747| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9198) (x Int) ) (! (dummyFunction_1352 (|fun11#triggerStateless| x))
 :qid |stdinbpl.800:15|
 :skolemid |61|
 :pattern ( (|fun11'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9198) (x@@0 Int) ) (! (dummyFunction_1352 (|fun12#triggerStateless| x@@0))
 :qid |stdinbpl.851:15|
 :skolemid |64|
 :pattern ( (|fun12'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9198) (x@@1 Int) ) (! (dummyFunction_1352 (|fun13#triggerStateless| x@@1))
 :qid |stdinbpl.911:15|
 :skolemid |68|
 :pattern ( (|fun13'| Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9198) (x@@2 Int) ) (! (dummyFunction_1352 (|fun14#triggerStateless| x@@2))
 :qid |stdinbpl.976:15|
 :skolemid |71|
 :pattern ( (|fun14'| Heap@@3 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9198) (x@@3 Int) ) (! (dummyFunction_1352 (|fun15#triggerStateless| x@@3))
 :qid |stdinbpl.1050:15|
 :skolemid |75|
 :pattern ( (|fun15'| Heap@@4 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9198) (x@@4 Int) ) (! (dummyFunction_1352 (|fun16#triggerStateless| x@@4))
 :qid |stdinbpl.1115:15|
 :skolemid |78|
 :pattern ( (|fun16'| Heap@@5 x@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9198) (x@@5 Int) ) (! (dummyFunction_1352 (|fun17#triggerStateless| x@@5))
 :qid |stdinbpl.1189:15|
 :skolemid |82|
 :pattern ( (|fun17'| Heap@@6 x@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9198) (x@@6 Int) ) (! (dummyFunction_1352 (|fun18#triggerStateless| x@@6))
 :qid |stdinbpl.1249:15|
 :skolemid |85|
 :pattern ( (|fun18'| Heap@@7 x@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9198) (x@@7 Int) ) (!  (and (= (fun11 Heap@@8 x@@7) (|fun11'| Heap@@8 x@@7)) (dummyFunction_1352 (|fun11#triggerStateless| x@@7)))
 :qid |stdinbpl.796:15|
 :skolemid |60|
 :pattern ( (fun11 Heap@@8 x@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9198) (x@@8 Int) ) (!  (and (= (fun12 Heap@@9 x@@8) (|fun12'| Heap@@9 x@@8)) (dummyFunction_1352 (|fun12#triggerStateless| x@@8)))
 :qid |stdinbpl.847:15|
 :skolemid |63|
 :pattern ( (fun12 Heap@@9 x@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9198) (x@@9 Int) ) (!  (and (= (fun13 Heap@@10 x@@9) (|fun13'| Heap@@10 x@@9)) (dummyFunction_1352 (|fun13#triggerStateless| x@@9)))
 :qid |stdinbpl.907:15|
 :skolemid |67|
 :pattern ( (fun13 Heap@@10 x@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9198) (x@@10 Int) ) (!  (and (= (fun14 Heap@@11 x@@10) (|fun14'| Heap@@11 x@@10)) (dummyFunction_1352 (|fun14#triggerStateless| x@@10)))
 :qid |stdinbpl.972:15|
 :skolemid |70|
 :pattern ( (fun14 Heap@@11 x@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9198) (x@@11 Int) ) (!  (and (= (fun15 Heap@@12 x@@11) (|fun15'| Heap@@12 x@@11)) (dummyFunction_1352 (|fun15#triggerStateless| x@@11)))
 :qid |stdinbpl.1046:15|
 :skolemid |74|
 :pattern ( (fun15 Heap@@12 x@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9198) (x@@12 Int) ) (!  (and (= (fun16 Heap@@13 x@@12) (|fun16'| Heap@@13 x@@12)) (dummyFunction_1352 (|fun16#triggerStateless| x@@12)))
 :qid |stdinbpl.1111:15|
 :skolemid |77|
 :pattern ( (fun16 Heap@@13 x@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9198) (x@@13 Int) ) (!  (and (= (fun17 Heap@@14 x@@13) (|fun17'| Heap@@14 x@@13)) (dummyFunction_1352 (|fun17#triggerStateless| x@@13)))
 :qid |stdinbpl.1185:15|
 :skolemid |81|
 :pattern ( (fun17 Heap@@14 x@@13))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9198) (x@@14 Int) ) (!  (and (= (fun18 Heap@@15 x@@14) (|fun18'| Heap@@15 x@@14)) (dummyFunction_1352 (|fun18#triggerStateless| x@@14)))
 :qid |stdinbpl.1245:15|
 :skolemid |84|
 :pattern ( (fun18 Heap@@15 x@@14))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9198) (Mask@@0 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@16 Mask@@0) (or (< AssumeFunctionsAbove 3) (|fun02#trigger| EmptyFrame))) (not (= (|fun02'| Heap@@16) 0)))
 :qid |stdinbpl.285:15|
 :skolemid |31|
 :pattern ( (state Heap@@16 Mask@@0) (|fun02'| Heap@@16))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9198) (Mask@@1 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@17 Mask@@1) (or (< AssumeFunctionsAbove 10) (|fun03#trigger| EmptyFrame))) (not (= (|fun03'| Heap@@17) 0)))
 :qid |stdinbpl.353:15|
 :skolemid |36|
 :pattern ( (state Heap@@17 Mask@@1) (|fun03'| Heap@@17))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9198) (Mask@@2 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@18 Mask@@2) (or (< AssumeFunctionsAbove 14) (|fun01#trigger| EmptyFrame))) (not (= (|fun01'| Heap@@18) 0)))
 :qid |stdinbpl.218:15|
 :skolemid |25|
 :pattern ( (state Heap@@18 Mask@@2) (|fun01'| Heap@@18))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9198) (Mask@@3 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@19 Mask@@3) (or (< AssumeFunctionsAbove 15) (|fun04#trigger| EmptyFrame))) (not (= (|fun04'| Heap@@19) 0)))
 :qid |stdinbpl.434:15|
 :skolemid |42|
 :pattern ( (state Heap@@19 Mask@@3) (|fun04'| Heap@@19))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9198) (ExhaleHeap T@PolymorphicMapType_9198) (Mask@@4 T@PolymorphicMapType_9219) (pm_f T@Field_9258_24002) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_9258_24066 Mask@@4 null pm_f) (IsPredicateField_9258_24093 pm_f)) (= (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@20) null (PredicateMaskField_9258 pm_f)) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap) null (PredicateMaskField_9258 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap Mask@@4) (IsPredicateField_9258_24093 pm_f) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap) null (PredicateMaskField_9258 pm_f)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9198) (ExhaleHeap@@0 T@PolymorphicMapType_9198) (Mask@@5 T@PolymorphicMapType_9219) (pm_f@@0 T@Field_9258_24002) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_9258_24066 Mask@@5 null pm_f@@0) (IsWandField_9258_25642 pm_f@@0)) (= (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@21) null (WandMaskField_9258 pm_f@@0)) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@0) null (WandMaskField_9258 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@0 Mask@@5) (IsWandField_9258_25642 pm_f@@0) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@0) null (WandMaskField_9258 pm_f@@0)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9198) (ExhaleHeap@@1 T@PolymorphicMapType_9198) (Mask@@6 T@PolymorphicMapType_9219) (pm_f@@1 T@Field_9258_24002) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@1 Mask@@6) (=> (and (HasDirectPerm_9258_24066 Mask@@6 null pm_f@@1) (IsPredicateField_9258_24093 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_9258_53) ) (!  (=> (select (|PolymorphicMapType_9747_9258_53#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@22) null (PredicateMaskField_9258 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@22) o2 f_2) (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_9271_9272) ) (!  (=> (select (|PolymorphicMapType_9747_9258_9272#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@22) null (PredicateMaskField_9258 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@22) o2@@0 f_2@@0) (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_9258_24002) ) (!  (=> (select (|PolymorphicMapType_9747_9258_24002#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@22) null (PredicateMaskField_9258 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@22) o2@@1 f_2@@1) (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_9258_24135) ) (!  (=> (select (|PolymorphicMapType_9747_9258_25115#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@22) null (PredicateMaskField_9258 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@22) o2@@2 f_2@@2) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@1 Mask@@6) (IsPredicateField_9258_24093 pm_f@@1))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9198) (ExhaleHeap@@2 T@PolymorphicMapType_9198) (Mask@@7 T@PolymorphicMapType_9219) (pm_f@@2 T@Field_9258_24002) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@2 Mask@@7) (=> (and (HasDirectPerm_9258_24066 Mask@@7 null pm_f@@2) (IsWandField_9258_25642 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_9258_53) ) (!  (=> (select (|PolymorphicMapType_9747_9258_53#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@23) null (WandMaskField_9258 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@23) o2@@3 f_2@@3) (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_9271_9272) ) (!  (=> (select (|PolymorphicMapType_9747_9258_9272#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@23) null (WandMaskField_9258 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@23) o2@@4 f_2@@4) (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_9258_24002) ) (!  (=> (select (|PolymorphicMapType_9747_9258_24002#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@23) null (WandMaskField_9258 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@23) o2@@5 f_2@@5) (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9258_24135) ) (!  (=> (select (|PolymorphicMapType_9747_9258_25115#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@23) null (WandMaskField_9258 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@23) o2@@6 f_2@@6) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@2 Mask@@7) (IsWandField_9258_25642 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9198) (ExhaleHeap@@3 T@PolymorphicMapType_9198) (Mask@@8 T@PolymorphicMapType_9219) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@3 Mask@@8) (=> (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@24) o_1 $allocated) (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@3 Mask@@8) (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_9258_24002) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9258_9258 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9258_9258 p v_1 p w))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9198) (ExhaleHeap@@4 T@PolymorphicMapType_9198) (Mask@@9 T@PolymorphicMapType_9219) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@4 Mask@@9) (succHeap Heap@@25 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@4 Mask@@9))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9198) (Mask@@10 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@26 Mask@@10) (or (< AssumeFunctionsAbove 3) (|fun02#trigger| EmptyFrame))) (not (= (div 1 (|fun02'| Heap@@26)) 2)))
 :qid |stdinbpl.289:15|
 :skolemid |32|
 :pattern ( (state Heap@@26 Mask@@10) (|fun02'| Heap@@26))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9198) (Mask@@11 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@27 Mask@@11) (or (< AssumeFunctionsAbove 4) (|fun05#trigger| EmptyFrame))) (not (= (div 1 (|fun05'| Heap@@27)) 2)))
 :qid |stdinbpl.516:15|
 :skolemid |47|
 :pattern ( (state Heap@@27 Mask@@11) (|fun05'| Heap@@27))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9198) (Mask@@12 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@28 Mask@@12) (or (< AssumeFunctionsAbove 10) (|fun03#trigger| EmptyFrame))) (not (= (div 1 (|fun03'| Heap@@28)) 2)))
 :qid |stdinbpl.357:15|
 :skolemid |37|
 :pattern ( (state Heap@@28 Mask@@12) (|fun03'| Heap@@28))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9198) (Mask@@13 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@29 Mask@@13) (or (< AssumeFunctionsAbove 11) (|fun06#trigger| EmptyFrame))) (not (= (div 1 (|fun06'| Heap@@29)) 2)))
 :qid |stdinbpl.594:15|
 :skolemid |52|
 :pattern ( (state Heap@@29 Mask@@13) (|fun06'| Heap@@29))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9198) (Mask@@14 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@30 Mask@@14) (or (< AssumeFunctionsAbove 14) (|fun01#trigger| EmptyFrame))) (not (= (div 1 (|fun01'| Heap@@30)) 2)))
 :qid |stdinbpl.222:15|
 :skolemid |26|
 :pattern ( (state Heap@@30 Mask@@14) (|fun01'| Heap@@30))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9198) (Mask@@15 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@31 Mask@@15) (or (< AssumeFunctionsAbove 15) (|fun04#trigger| EmptyFrame))) (not (= (div 1 (|fun04'| Heap@@31)) 2)))
 :qid |stdinbpl.438:15|
 :skolemid |43|
 :pattern ( (state Heap@@31 Mask@@15) (|fun04'| Heap@@31))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9219) (o_2@@3 T@Ref) (f_4@@3 T@Field_9258_24135) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| Mask@@16) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9258_28605 f_4@@3))) (not (IsWandField_9258_28621 f_4@@3))) (<= (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| Mask@@16) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| Mask@@16) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9219) (o_2@@4 T@Ref) (f_4@@4 T@Field_9258_24002) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| Mask@@17) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9258_24093 f_4@@4))) (not (IsWandField_9258_25642 f_4@@4))) (<= (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| Mask@@17) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| Mask@@17) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9219) (o_2@@5 T@Ref) (f_4@@5 T@Field_9271_9272) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| Mask@@18) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_9258_9272 f_4@@5))) (not (IsWandField_9258_9272 f_4@@5))) (<= (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| Mask@@18) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| Mask@@18) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9219) (o_2@@6 T@Ref) (f_4@@6 T@Field_9258_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| Mask@@19) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9258_53 f_4@@6))) (not (IsWandField_9258_53 f_4@@6))) (<= (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| Mask@@19) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| Mask@@19) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9219) (o_2@@7 T@Ref) (f_4@@7 T@Field_9258_24135) ) (! (= (HasDirectPerm_9258_28976 Mask@@20 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| Mask@@20) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9258_28976 Mask@@20 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9219) (o_2@@8 T@Ref) (f_4@@8 T@Field_9258_24002) ) (! (= (HasDirectPerm_9258_24066 Mask@@21 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| Mask@@21) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9258_24066 Mask@@21 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9219) (o_2@@9 T@Ref) (f_4@@9 T@Field_9271_9272) ) (! (= (HasDirectPerm_9258_9272 Mask@@22 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| Mask@@22) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9258_9272 Mask@@22 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9219) (o_2@@10 T@Ref) (f_4@@10 T@Field_9258_53) ) (! (= (HasDirectPerm_9258_53 Mask@@23 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| Mask@@23) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9258_53 Mask@@23 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9198) (ExhaleHeap@@5 T@PolymorphicMapType_9198) (Mask@@24 T@PolymorphicMapType_9219) (o_1@@0 T@Ref) (f_2@@7 T@Field_9258_24135) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@5 Mask@@24) (=> (HasDirectPerm_9258_28976 Mask@@24 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@32) o_1@@0 f_2@@7) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@5 Mask@@24) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9198) (ExhaleHeap@@6 T@PolymorphicMapType_9198) (Mask@@25 T@PolymorphicMapType_9219) (o_1@@1 T@Ref) (f_2@@8 T@Field_9258_24002) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@6 Mask@@25) (=> (HasDirectPerm_9258_24066 Mask@@25 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@33) o_1@@1 f_2@@8) (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@6 Mask@@25) (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9198) (ExhaleHeap@@7 T@PolymorphicMapType_9198) (Mask@@26 T@PolymorphicMapType_9219) (o_1@@2 T@Ref) (f_2@@9 T@Field_9271_9272) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@7 Mask@@26) (=> (HasDirectPerm_9258_9272 Mask@@26 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@34) o_1@@2 f_2@@9) (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@7 Mask@@26) (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9198) (ExhaleHeap@@8 T@PolymorphicMapType_9198) (Mask@@27 T@PolymorphicMapType_9219) (o_1@@3 T@Ref) (f_2@@10 T@Field_9258_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@8 Mask@@27) (=> (HasDirectPerm_9258_53 Mask@@27 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@35) o_1@@3 f_2@@10) (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@8 Mask@@27) (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9198) ) (!  (and (= (fun01 Heap@@36) (|fun01'| Heap@@36)) (dummyFunction_1352 |fun01#triggerStateless|))
 :qid |stdinbpl.201:15|
 :skolemid |22|
 :pattern ( (fun01 Heap@@36))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9198) ) (!  (and (= (fun02 Heap@@37) (|fun02'| Heap@@37)) (dummyFunction_1352 |fun02#triggerStateless|))
 :qid |stdinbpl.262:15|
 :skolemid |27|
 :pattern ( (fun02 Heap@@37))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9198) ) (!  (and (= (fun03 Heap@@38) (|fun03'| Heap@@38)) (dummyFunction_1352 |fun03#triggerStateless|))
 :qid |stdinbpl.336:15|
 :skolemid |33|
 :pattern ( (fun03 Heap@@38))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9198) ) (!  (and (= (fun04 Heap@@39) (|fun04'| Heap@@39)) (dummyFunction_1352 |fun04#triggerStateless|))
 :qid |stdinbpl.411:15|
 :skolemid |38|
 :pattern ( (fun04 Heap@@39))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9198) ) (!  (and (= (fun05 Heap@@40) (|fun05'| Heap@@40)) (dummyFunction_1352 |fun05#triggerStateless|))
 :qid |stdinbpl.498:15|
 :skolemid |44|
 :pattern ( (fun05 Heap@@40))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9198) ) (!  (and (= (fun06 Heap@@41) (|fun06'| Heap@@41)) (dummyFunction_1352 |fun06#triggerStateless|))
 :qid |stdinbpl.570:15|
 :skolemid |48|
 :pattern ( (fun06 Heap@@41))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9198) ) (!  (and (= (fun07 Heap@@42) (|fun07'| Heap@@42)) (dummyFunction_1352 |fun07#triggerStateless|))
 :qid |stdinbpl.655:15|
 :skolemid |53|
 :pattern ( (fun07 Heap@@42))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_9198) ) (!  (and (= (fun08 Heap@@43) (|fun08'| Heap@@43)) (dummyFunction_1352 |fun08#triggerStateless|))
 :qid |stdinbpl.719:15|
 :skolemid |56|
 :pattern ( (fun08 Heap@@43))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9258_24135) ) (! (= (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9258_24002) ) (! (= (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_9271_9272) ) (! (= (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9258_53) ) (! (= (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9219) (SummandMask1 T@PolymorphicMapType_9219) (SummandMask2 T@PolymorphicMapType_9219) (o_2@@15 T@Ref) (f_4@@15 T@Field_9258_24135) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9219) (SummandMask1@@0 T@PolymorphicMapType_9219) (SummandMask2@@0 T@PolymorphicMapType_9219) (o_2@@16 T@Ref) (f_4@@16 T@Field_9258_24002) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9219) (SummandMask1@@1 T@PolymorphicMapType_9219) (SummandMask2@@1 T@PolymorphicMapType_9219) (o_2@@17 T@Ref) (f_4@@17 T@Field_9271_9272) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9219) (SummandMask1@@2 T@PolymorphicMapType_9219) (SummandMask2@@2 T@PolymorphicMapType_9219) (o_2@@18 T@Ref) (f_4@@18 T@Field_9258_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_9198) (Mask@@28 T@PolymorphicMapType_9219) (x@@15 Int) ) (!  (=> (and (state Heap@@44 Mask@@28) (< AssumeFunctionsAbove 0)) (=> (not (= (div 1 x@@15) 2)) (= (fun14 Heap@@44 x@@15) 1)))
 :qid |stdinbpl.982:15|
 :skolemid |72|
 :pattern ( (state Heap@@44 Mask@@28) (fun14 Heap@@44 x@@15))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_9198) (Mask@@29 T@PolymorphicMapType_9219) (x@@16 Int) ) (!  (=> (state Heap@@45 Mask@@29) (= (|fun11'| Heap@@45 x@@16) (|fun11#frame| EmptyFrame x@@16)))
 :qid |stdinbpl.807:15|
 :skolemid |62|
 :pattern ( (state Heap@@45 Mask@@29) (|fun11'| Heap@@45 x@@16))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_9198) (Mask@@30 T@PolymorphicMapType_9219) (x@@17 Int) ) (!  (=> (state Heap@@46 Mask@@30) (= (|fun12'| Heap@@46 x@@17) (|fun12#frame| EmptyFrame x@@17)))
 :qid |stdinbpl.864:15|
 :skolemid |66|
 :pattern ( (state Heap@@46 Mask@@30) (|fun12'| Heap@@46 x@@17))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_9198) (Mask@@31 T@PolymorphicMapType_9219) (x@@18 Int) ) (!  (=> (state Heap@@47 Mask@@31) (= (|fun13'| Heap@@47 x@@18) (|fun13#frame| EmptyFrame x@@18)))
 :qid |stdinbpl.918:15|
 :skolemid |69|
 :pattern ( (state Heap@@47 Mask@@31) (|fun13'| Heap@@47 x@@18))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_9198) (Mask@@32 T@PolymorphicMapType_9219) (x@@19 Int) ) (!  (=> (state Heap@@48 Mask@@32) (= (|fun14'| Heap@@48 x@@19) (|fun14#frame| EmptyFrame x@@19)))
 :qid |stdinbpl.989:15|
 :skolemid |73|
 :pattern ( (state Heap@@48 Mask@@32) (|fun14'| Heap@@48 x@@19))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_9198) (Mask@@33 T@PolymorphicMapType_9219) (x@@20 Int) ) (!  (=> (state Heap@@49 Mask@@33) (= (|fun15'| Heap@@49 x@@20) (|fun15#frame| EmptyFrame x@@20)))
 :qid |stdinbpl.1057:15|
 :skolemid |76|
 :pattern ( (state Heap@@49 Mask@@33) (|fun15'| Heap@@49 x@@20))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_9198) (Mask@@34 T@PolymorphicMapType_9219) (x@@21 Int) ) (!  (=> (state Heap@@50 Mask@@34) (= (|fun16'| Heap@@50 x@@21) (|fun16#frame| EmptyFrame x@@21)))
 :qid |stdinbpl.1128:15|
 :skolemid |80|
 :pattern ( (state Heap@@50 Mask@@34) (|fun16'| Heap@@50 x@@21))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_9198) (Mask@@35 T@PolymorphicMapType_9219) (x@@22 Int) ) (!  (=> (state Heap@@51 Mask@@35) (= (|fun17'| Heap@@51 x@@22) (|fun17#frame| EmptyFrame x@@22)))
 :qid |stdinbpl.1196:15|
 :skolemid |83|
 :pattern ( (state Heap@@51 Mask@@35) (|fun17'| Heap@@51 x@@22))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_9198) (Mask@@36 T@PolymorphicMapType_9219) (x@@23 Int) ) (!  (=> (state Heap@@52 Mask@@36) (= (|fun18'| Heap@@52 x@@23) (|fun18#frame| EmptyFrame x@@23)))
 :qid |stdinbpl.1262:15|
 :skolemid |87|
 :pattern ( (state Heap@@52 Mask@@36) (|fun18'| Heap@@52 x@@23))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun01#triggerStateless|)
 :qid |stdinbpl.205:15|
 :skolemid |23|
 :pattern ( (|fun01'| Heap@@53))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun02#triggerStateless|)
 :qid |stdinbpl.266:15|
 :skolemid |28|
 :pattern ( (|fun02'| Heap@@54))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun03#triggerStateless|)
 :qid |stdinbpl.340:15|
 :skolemid |34|
 :pattern ( (|fun03'| Heap@@55))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun04#triggerStateless|)
 :qid |stdinbpl.415:15|
 :skolemid |39|
 :pattern ( (|fun04'| Heap@@56))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun05#triggerStateless|)
 :qid |stdinbpl.502:15|
 :skolemid |45|
 :pattern ( (|fun05'| Heap@@57))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun06#triggerStateless|)
 :qid |stdinbpl.574:15|
 :skolemid |49|
 :pattern ( (|fun06'| Heap@@58))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun07#triggerStateless|)
 :qid |stdinbpl.659:15|
 :skolemid |54|
 :pattern ( (|fun07'| Heap@@59))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun08#triggerStateless|)
 :qid |stdinbpl.723:15|
 :skolemid |57|
 :pattern ( (|fun08'| Heap@@60))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_9198) (Mask@@37 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@61 Mask@@37) (= (|fun01'| Heap@@61) (|fun01#frame| EmptyFrame)))
 :qid |stdinbpl.212:15|
 :skolemid |24|
 :pattern ( (state Heap@@61 Mask@@37) (|fun01'| Heap@@61))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_9198) (Mask@@38 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@62 Mask@@38) (= (|fun02'| Heap@@62) (|fun02#frame| EmptyFrame)))
 :qid |stdinbpl.279:15|
 :skolemid |30|
 :pattern ( (state Heap@@62 Mask@@38) (|fun02'| Heap@@62))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_9198) (Mask@@39 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@63 Mask@@39) (= (|fun03'| Heap@@63) (|fun03#frame| EmptyFrame)))
 :qid |stdinbpl.347:15|
 :skolemid |35|
 :pattern ( (state Heap@@63 Mask@@39) (|fun03'| Heap@@63))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_9198) (Mask@@40 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@64 Mask@@40) (= (|fun04'| Heap@@64) (|fun04#frame| EmptyFrame)))
 :qid |stdinbpl.428:15|
 :skolemid |41|
 :pattern ( (state Heap@@64 Mask@@40) (|fun04'| Heap@@64))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_9198) (Mask@@41 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@65 Mask@@41) (= (|fun05'| Heap@@65) (|fun05#frame| EmptyFrame)))
 :qid |stdinbpl.509:15|
 :skolemid |46|
 :pattern ( (state Heap@@65 Mask@@41) (|fun05'| Heap@@65))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_9198) (Mask@@42 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@66 Mask@@42) (= (|fun06'| Heap@@66) (|fun06#frame| EmptyFrame)))
 :qid |stdinbpl.587:15|
 :skolemid |51|
 :pattern ( (state Heap@@66 Mask@@42) (|fun06'| Heap@@66))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_9198) (Mask@@43 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@67 Mask@@43) (= (|fun07'| Heap@@67) (|fun07#frame| EmptyFrame)))
 :qid |stdinbpl.666:15|
 :skolemid |55|
 :pattern ( (state Heap@@67 Mask@@43) (|fun07'| Heap@@67))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_9198) (Mask@@44 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@68 Mask@@44) (= (|fun08'| Heap@@68) (|fun08#frame| EmptyFrame)))
 :qid |stdinbpl.736:15|
 :skolemid |59|
 :pattern ( (state Heap@@68 Mask@@44) (|fun08'| Heap@@68))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_9198) (o T@Ref) (f_3 T@Field_9258_24002) (v T@FrameType) ) (! (succHeap Heap@@69 (PolymorphicMapType_9198 (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@69) (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@69) (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@69) (store (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@69) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9198 (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@69) (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@69) (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@69) (store (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@69) o f_3 v)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_9198) (o@@0 T@Ref) (f_3@@0 T@Field_9258_24135) (v@@0 T@PolymorphicMapType_9747) ) (! (succHeap Heap@@70 (PolymorphicMapType_9198 (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@70) (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@70) (store (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@70) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9198 (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@70) (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@70) (store (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@70) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_9198) (o@@1 T@Ref) (f_3@@1 T@Field_9271_9272) (v@@1 T@Ref) ) (! (succHeap Heap@@71 (PolymorphicMapType_9198 (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@71) (store (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@71) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@71) (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9198 (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@71) (store (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@71) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@71) (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_9198) (o@@2 T@Ref) (f_3@@2 T@Field_9258_53) (v@@2 Bool) ) (! (succHeap Heap@@72 (PolymorphicMapType_9198 (store (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@72) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@72) (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@72) (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9198 (store (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@72) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@72) (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@72) (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@72)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_9271_9272) (Heap@@73 T@PolymorphicMapType_9198) ) (!  (=> (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@73) o@@3 $allocated) (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@73) (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@73) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@73) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_9258_24002) (v_1@@0 T@FrameType) (q T@Field_9258_24002) (w@@0 T@FrameType) (r T@Field_9258_24002) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9258_9258 p@@1 v_1@@0 q w@@0) (InsidePredicate_9258_9258 q w@@0 r u)) (InsidePredicate_9258_9258 p@@1 v_1@@0 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9258_9258 p@@1 v_1@@0 q w@@0) (InsidePredicate_9258_9258 q w@@0 r u))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_9198) (Mask@@45 T@PolymorphicMapType_9219) (x@@24 Int) ) (!  (=> (and (state Heap@@74 Mask@@45) (< AssumeFunctionsAbove 1)) (=> (and (not (= x@@24 0)) (not (= (div 1 x@@24) 2))) (= (fun16 Heap@@74 x@@24) 1)))
 :qid |stdinbpl.1121:15|
 :skolemid |79|
 :pattern ( (state Heap@@74 Mask@@45) (fun16 Heap@@74 x@@24))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_9198) (Mask@@46 T@PolymorphicMapType_9219) (x@@25 Int) ) (!  (=> (and (state Heap@@75 Mask@@46) (< AssumeFunctionsAbove 6)) (=> (and (not (= x@@25 0)) (not (= (div 1 x@@25) 2))) (= (fun18 Heap@@75 x@@25) 1)))
 :qid |stdinbpl.1255:15|
 :skolemid |86|
 :pattern ( (state Heap@@75 Mask@@46) (fun18 Heap@@75 x@@25))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_9198) (Mask@@47 T@PolymorphicMapType_9219) (x@@26 Int) ) (!  (=> (and (state Heap@@76 Mask@@47) (< AssumeFunctionsAbove 8)) (=> (and (not (= x@@26 0)) (not (= (div 1 x@@26) 2))) (= (fun12 Heap@@76 x@@26) 1)))
 :qid |stdinbpl.857:15|
 :skolemid |65|
 :pattern ( (state Heap@@76 Mask@@47) (fun12 Heap@@76 x@@26))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_9198) (Mask@@48 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@77 Mask@@48) (< AssumeFunctionsAbove 2)) (= (fun08 Heap@@77) 1))
 :qid |stdinbpl.729:15|
 :skolemid |58|
 :pattern ( (state Heap@@77 Mask@@48) (fun08 Heap@@77))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_9198) (Mask@@49 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@78 Mask@@49) (< AssumeFunctionsAbove 3)) (= (fun02 Heap@@78) 1))
 :qid |stdinbpl.272:15|
 :skolemid |29|
 :pattern ( (state Heap@@78 Mask@@49) (fun02 Heap@@78))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_9198) (Mask@@50 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@79 Mask@@50) (< AssumeFunctionsAbove 11)) (= (fun06 Heap@@79) 1))
 :qid |stdinbpl.580:15|
 :skolemid |50|
 :pattern ( (state Heap@@79 Mask@@50) (fun06 Heap@@79))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_9198) (Mask@@51 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@80 Mask@@51) (< AssumeFunctionsAbove 15)) (= (fun04 Heap@@80) 1))
 :qid |stdinbpl.421:15|
 :skolemid |40|
 :pattern ( (state Heap@@80 Mask@@51) (fun04 Heap@@80))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@81 () T@PolymorphicMapType_9198)
(declare-fun x@@27 () Int)
(set-info :boogie-vc-id |fun12#definedness|)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (state Heap@@81 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (= AssumeFunctionsAbove 8) (not (= x@@27 0))) (and (state Heap@@81 ZeroMask) (= (ControlFlow 0 2) (- 0 1)))) (not (= x@@27 0))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
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
(declare-sort T@Field_9258_53 0)
(declare-sort T@Field_9271_9272 0)
(declare-sort T@Field_9258_24135 0)
(declare-sort T@Field_9258_24002 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_9219 0)) (((PolymorphicMapType_9219 (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| (Array T@Ref T@Field_9258_53 Real)) (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| (Array T@Ref T@Field_9271_9272 Real)) (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| (Array T@Ref T@Field_9258_24002 Real)) (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| (Array T@Ref T@Field_9258_24135 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9747 0)) (((PolymorphicMapType_9747 (|PolymorphicMapType_9747_9258_53#PolymorphicMapType_9747| (Array T@Ref T@Field_9258_53 Bool)) (|PolymorphicMapType_9747_9258_9272#PolymorphicMapType_9747| (Array T@Ref T@Field_9271_9272 Bool)) (|PolymorphicMapType_9747_9258_24002#PolymorphicMapType_9747| (Array T@Ref T@Field_9258_24002 Bool)) (|PolymorphicMapType_9747_9258_25115#PolymorphicMapType_9747| (Array T@Ref T@Field_9258_24135 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9198 0)) (((PolymorphicMapType_9198 (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| (Array T@Ref T@Field_9258_53 Bool)) (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| (Array T@Ref T@Field_9271_9272 T@Ref)) (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| (Array T@Ref T@Field_9258_24135 T@PolymorphicMapType_9747)) (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| (Array T@Ref T@Field_9258_24002 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_9198 T@PolymorphicMapType_9198) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9198 T@PolymorphicMapType_9198) Bool)
(declare-fun state (T@PolymorphicMapType_9198 T@PolymorphicMapType_9219) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9219) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9747)
(declare-fun |fun11'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun dummyFunction_1352 (Int) Bool)
(declare-fun |fun11#triggerStateless| (Int) Int)
(declare-fun |fun12'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun12#triggerStateless| (Int) Int)
(declare-fun |fun13'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun13#triggerStateless| (Int) Int)
(declare-fun |fun14'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun14#triggerStateless| (Int) Int)
(declare-fun |fun15'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun15#triggerStateless| (Int) Int)
(declare-fun |fun16'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun16#triggerStateless| (Int) Int)
(declare-fun |fun17'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun17#triggerStateless| (Int) Int)
(declare-fun |fun18'| (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun18#triggerStateless| (Int) Int)
(declare-fun fun11 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun fun12 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun fun13 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun fun14 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun fun15 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun fun16 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun fun17 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun fun18 (T@PolymorphicMapType_9198 Int) Int)
(declare-fun |fun02'| (T@PolymorphicMapType_9198) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |fun02#trigger| (T@FrameType) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |fun03'| (T@PolymorphicMapType_9198) Int)
(declare-fun |fun03#trigger| (T@FrameType) Bool)
(declare-fun |fun01'| (T@PolymorphicMapType_9198) Int)
(declare-fun |fun01#trigger| (T@FrameType) Bool)
(declare-fun |fun04'| (T@PolymorphicMapType_9198) Int)
(declare-fun |fun04#trigger| (T@FrameType) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9198 T@PolymorphicMapType_9198 T@PolymorphicMapType_9219) Bool)
(declare-fun IsPredicateField_9258_24093 (T@Field_9258_24002) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9258 (T@Field_9258_24002) T@Field_9258_24135)
(declare-fun HasDirectPerm_9258_24066 (T@PolymorphicMapType_9219 T@Ref T@Field_9258_24002) Bool)
(declare-fun IsWandField_9258_25642 (T@Field_9258_24002) Bool)
(declare-fun WandMaskField_9258 (T@Field_9258_24002) T@Field_9258_24135)
(declare-fun dummyHeap () T@PolymorphicMapType_9198)
(declare-fun ZeroMask () T@PolymorphicMapType_9219)
(declare-fun $allocated () T@Field_9258_53)
(declare-fun InsidePredicate_9258_9258 (T@Field_9258_24002 T@FrameType T@Field_9258_24002 T@FrameType) Bool)
(declare-fun |fun05'| (T@PolymorphicMapType_9198) Int)
(declare-fun |fun05#trigger| (T@FrameType) Bool)
(declare-fun |fun06'| (T@PolymorphicMapType_9198) Int)
(declare-fun |fun06#trigger| (T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9258_28605 (T@Field_9258_24135) Bool)
(declare-fun IsWandField_9258_28621 (T@Field_9258_24135) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9258_9272 (T@Field_9271_9272) Bool)
(declare-fun IsWandField_9258_9272 (T@Field_9271_9272) Bool)
(declare-fun IsPredicateField_9258_53 (T@Field_9258_53) Bool)
(declare-fun IsWandField_9258_53 (T@Field_9258_53) Bool)
(declare-fun HasDirectPerm_9258_28976 (T@PolymorphicMapType_9219 T@Ref T@Field_9258_24135) Bool)
(declare-fun HasDirectPerm_9258_9272 (T@PolymorphicMapType_9219 T@Ref T@Field_9271_9272) Bool)
(declare-fun HasDirectPerm_9258_53 (T@PolymorphicMapType_9219 T@Ref T@Field_9258_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun fun01 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun01#triggerStateless| () Int)
(declare-fun fun02 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun02#triggerStateless| () Int)
(declare-fun fun03 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun03#triggerStateless| () Int)
(declare-fun fun04 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun04#triggerStateless| () Int)
(declare-fun fun05 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun05#triggerStateless| () Int)
(declare-fun fun06 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun06#triggerStateless| () Int)
(declare-fun fun07 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun07'| (T@PolymorphicMapType_9198) Int)
(declare-fun |fun07#triggerStateless| () Int)
(declare-fun fun08 (T@PolymorphicMapType_9198) Int)
(declare-fun |fun08'| (T@PolymorphicMapType_9198) Int)
(declare-fun |fun08#triggerStateless| () Int)
(declare-fun sumMask (T@PolymorphicMapType_9219 T@PolymorphicMapType_9219 T@PolymorphicMapType_9219) Bool)
(declare-fun |fun11#frame| (T@FrameType Int) Int)
(declare-fun |fun12#frame| (T@FrameType Int) Int)
(declare-fun |fun13#frame| (T@FrameType Int) Int)
(declare-fun |fun14#frame| (T@FrameType Int) Int)
(declare-fun |fun15#frame| (T@FrameType Int) Int)
(declare-fun |fun16#frame| (T@FrameType Int) Int)
(declare-fun |fun17#frame| (T@FrameType Int) Int)
(declare-fun |fun18#frame| (T@FrameType Int) Int)
(declare-fun |fun01#frame| (T@FrameType) Int)
(declare-fun |fun02#frame| (T@FrameType) Int)
(declare-fun |fun03#frame| (T@FrameType) Int)
(declare-fun |fun04#frame| (T@FrameType) Int)
(declare-fun |fun05#frame| (T@FrameType) Int)
(declare-fun |fun06#frame| (T@FrameType) Int)
(declare-fun |fun07#frame| (T@FrameType) Int)
(declare-fun |fun08#frame| (T@FrameType) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_9198) (Heap1 T@PolymorphicMapType_9198) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9198) (Mask T@PolymorphicMapType_9219) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9198) (Heap1@@0 T@PolymorphicMapType_9198) (Heap2 T@PolymorphicMapType_9198) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9258_24135) ) (!  (not (select (|PolymorphicMapType_9747_9258_25115#PolymorphicMapType_9747| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9747_9258_25115#PolymorphicMapType_9747| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9258_24002) ) (!  (not (select (|PolymorphicMapType_9747_9258_24002#PolymorphicMapType_9747| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9747_9258_24002#PolymorphicMapType_9747| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9271_9272) ) (!  (not (select (|PolymorphicMapType_9747_9258_9272#PolymorphicMapType_9747| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9747_9258_9272#PolymorphicMapType_9747| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9258_53) ) (!  (not (select (|PolymorphicMapType_9747_9258_53#PolymorphicMapType_9747| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9747_9258_53#PolymorphicMapType_9747| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9198) (x Int) ) (! (dummyFunction_1352 (|fun11#triggerStateless| x))
 :qid |stdinbpl.800:15|
 :skolemid |61|
 :pattern ( (|fun11'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9198) (x@@0 Int) ) (! (dummyFunction_1352 (|fun12#triggerStateless| x@@0))
 :qid |stdinbpl.851:15|
 :skolemid |64|
 :pattern ( (|fun12'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9198) (x@@1 Int) ) (! (dummyFunction_1352 (|fun13#triggerStateless| x@@1))
 :qid |stdinbpl.911:15|
 :skolemid |68|
 :pattern ( (|fun13'| Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9198) (x@@2 Int) ) (! (dummyFunction_1352 (|fun14#triggerStateless| x@@2))
 :qid |stdinbpl.976:15|
 :skolemid |71|
 :pattern ( (|fun14'| Heap@@3 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9198) (x@@3 Int) ) (! (dummyFunction_1352 (|fun15#triggerStateless| x@@3))
 :qid |stdinbpl.1050:15|
 :skolemid |75|
 :pattern ( (|fun15'| Heap@@4 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9198) (x@@4 Int) ) (! (dummyFunction_1352 (|fun16#triggerStateless| x@@4))
 :qid |stdinbpl.1115:15|
 :skolemid |78|
 :pattern ( (|fun16'| Heap@@5 x@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9198) (x@@5 Int) ) (! (dummyFunction_1352 (|fun17#triggerStateless| x@@5))
 :qid |stdinbpl.1189:15|
 :skolemid |82|
 :pattern ( (|fun17'| Heap@@6 x@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9198) (x@@6 Int) ) (! (dummyFunction_1352 (|fun18#triggerStateless| x@@6))
 :qid |stdinbpl.1249:15|
 :skolemid |85|
 :pattern ( (|fun18'| Heap@@7 x@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9198) (x@@7 Int) ) (!  (and (= (fun11 Heap@@8 x@@7) (|fun11'| Heap@@8 x@@7)) (dummyFunction_1352 (|fun11#triggerStateless| x@@7)))
 :qid |stdinbpl.796:15|
 :skolemid |60|
 :pattern ( (fun11 Heap@@8 x@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9198) (x@@8 Int) ) (!  (and (= (fun12 Heap@@9 x@@8) (|fun12'| Heap@@9 x@@8)) (dummyFunction_1352 (|fun12#triggerStateless| x@@8)))
 :qid |stdinbpl.847:15|
 :skolemid |63|
 :pattern ( (fun12 Heap@@9 x@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9198) (x@@9 Int) ) (!  (and (= (fun13 Heap@@10 x@@9) (|fun13'| Heap@@10 x@@9)) (dummyFunction_1352 (|fun13#triggerStateless| x@@9)))
 :qid |stdinbpl.907:15|
 :skolemid |67|
 :pattern ( (fun13 Heap@@10 x@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9198) (x@@10 Int) ) (!  (and (= (fun14 Heap@@11 x@@10) (|fun14'| Heap@@11 x@@10)) (dummyFunction_1352 (|fun14#triggerStateless| x@@10)))
 :qid |stdinbpl.972:15|
 :skolemid |70|
 :pattern ( (fun14 Heap@@11 x@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9198) (x@@11 Int) ) (!  (and (= (fun15 Heap@@12 x@@11) (|fun15'| Heap@@12 x@@11)) (dummyFunction_1352 (|fun15#triggerStateless| x@@11)))
 :qid |stdinbpl.1046:15|
 :skolemid |74|
 :pattern ( (fun15 Heap@@12 x@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9198) (x@@12 Int) ) (!  (and (= (fun16 Heap@@13 x@@12) (|fun16'| Heap@@13 x@@12)) (dummyFunction_1352 (|fun16#triggerStateless| x@@12)))
 :qid |stdinbpl.1111:15|
 :skolemid |77|
 :pattern ( (fun16 Heap@@13 x@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9198) (x@@13 Int) ) (!  (and (= (fun17 Heap@@14 x@@13) (|fun17'| Heap@@14 x@@13)) (dummyFunction_1352 (|fun17#triggerStateless| x@@13)))
 :qid |stdinbpl.1185:15|
 :skolemid |81|
 :pattern ( (fun17 Heap@@14 x@@13))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9198) (x@@14 Int) ) (!  (and (= (fun18 Heap@@15 x@@14) (|fun18'| Heap@@15 x@@14)) (dummyFunction_1352 (|fun18#triggerStateless| x@@14)))
 :qid |stdinbpl.1245:15|
 :skolemid |84|
 :pattern ( (fun18 Heap@@15 x@@14))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9198) (Mask@@0 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@16 Mask@@0) (or (< AssumeFunctionsAbove 3) (|fun02#trigger| EmptyFrame))) (not (= (|fun02'| Heap@@16) 0)))
 :qid |stdinbpl.285:15|
 :skolemid |31|
 :pattern ( (state Heap@@16 Mask@@0) (|fun02'| Heap@@16))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9198) (Mask@@1 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@17 Mask@@1) (or (< AssumeFunctionsAbove 10) (|fun03#trigger| EmptyFrame))) (not (= (|fun03'| Heap@@17) 0)))
 :qid |stdinbpl.353:15|
 :skolemid |36|
 :pattern ( (state Heap@@17 Mask@@1) (|fun03'| Heap@@17))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9198) (Mask@@2 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@18 Mask@@2) (or (< AssumeFunctionsAbove 14) (|fun01#trigger| EmptyFrame))) (not (= (|fun01'| Heap@@18) 0)))
 :qid |stdinbpl.218:15|
 :skolemid |25|
 :pattern ( (state Heap@@18 Mask@@2) (|fun01'| Heap@@18))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9198) (Mask@@3 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@19 Mask@@3) (or (< AssumeFunctionsAbove 15) (|fun04#trigger| EmptyFrame))) (not (= (|fun04'| Heap@@19) 0)))
 :qid |stdinbpl.434:15|
 :skolemid |42|
 :pattern ( (state Heap@@19 Mask@@3) (|fun04'| Heap@@19))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9198) (ExhaleHeap T@PolymorphicMapType_9198) (Mask@@4 T@PolymorphicMapType_9219) (pm_f T@Field_9258_24002) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_9258_24066 Mask@@4 null pm_f) (IsPredicateField_9258_24093 pm_f)) (= (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@20) null (PredicateMaskField_9258 pm_f)) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap) null (PredicateMaskField_9258 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap Mask@@4) (IsPredicateField_9258_24093 pm_f) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap) null (PredicateMaskField_9258 pm_f)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9198) (ExhaleHeap@@0 T@PolymorphicMapType_9198) (Mask@@5 T@PolymorphicMapType_9219) (pm_f@@0 T@Field_9258_24002) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_9258_24066 Mask@@5 null pm_f@@0) (IsWandField_9258_25642 pm_f@@0)) (= (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@21) null (WandMaskField_9258 pm_f@@0)) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@0) null (WandMaskField_9258 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@0 Mask@@5) (IsWandField_9258_25642 pm_f@@0) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@0) null (WandMaskField_9258 pm_f@@0)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9198) (ExhaleHeap@@1 T@PolymorphicMapType_9198) (Mask@@6 T@PolymorphicMapType_9219) (pm_f@@1 T@Field_9258_24002) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@1 Mask@@6) (=> (and (HasDirectPerm_9258_24066 Mask@@6 null pm_f@@1) (IsPredicateField_9258_24093 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_9258_53) ) (!  (=> (select (|PolymorphicMapType_9747_9258_53#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@22) null (PredicateMaskField_9258 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@22) o2 f_2) (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_9271_9272) ) (!  (=> (select (|PolymorphicMapType_9747_9258_9272#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@22) null (PredicateMaskField_9258 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@22) o2@@0 f_2@@0) (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_9258_24002) ) (!  (=> (select (|PolymorphicMapType_9747_9258_24002#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@22) null (PredicateMaskField_9258 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@22) o2@@1 f_2@@1) (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_9258_24135) ) (!  (=> (select (|PolymorphicMapType_9747_9258_25115#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@22) null (PredicateMaskField_9258 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@22) o2@@2 f_2@@2) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@1 Mask@@6) (IsPredicateField_9258_24093 pm_f@@1))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9198) (ExhaleHeap@@2 T@PolymorphicMapType_9198) (Mask@@7 T@PolymorphicMapType_9219) (pm_f@@2 T@Field_9258_24002) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@2 Mask@@7) (=> (and (HasDirectPerm_9258_24066 Mask@@7 null pm_f@@2) (IsWandField_9258_25642 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_9258_53) ) (!  (=> (select (|PolymorphicMapType_9747_9258_53#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@23) null (WandMaskField_9258 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@23) o2@@3 f_2@@3) (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_9271_9272) ) (!  (=> (select (|PolymorphicMapType_9747_9258_9272#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@23) null (WandMaskField_9258 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@23) o2@@4 f_2@@4) (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_9258_24002) ) (!  (=> (select (|PolymorphicMapType_9747_9258_24002#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@23) null (WandMaskField_9258 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@23) o2@@5 f_2@@5) (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9258_24135) ) (!  (=> (select (|PolymorphicMapType_9747_9258_25115#PolymorphicMapType_9747| (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@23) null (WandMaskField_9258 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@23) o2@@6 f_2@@6) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@2 Mask@@7) (IsWandField_9258_25642 pm_f@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9198) (ExhaleHeap@@3 T@PolymorphicMapType_9198) (Mask@@8 T@PolymorphicMapType_9219) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@3 Mask@@8) (=> (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@24) o_1 $allocated) (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@3 Mask@@8) (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_9258_24002) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9258_9258 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9258_9258 p v_1 p w))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9198) (ExhaleHeap@@4 T@PolymorphicMapType_9198) (Mask@@9 T@PolymorphicMapType_9219) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@4 Mask@@9) (succHeap Heap@@25 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@4 Mask@@9))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9198) (Mask@@10 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@26 Mask@@10) (or (< AssumeFunctionsAbove 3) (|fun02#trigger| EmptyFrame))) (not (= (div 1 (|fun02'| Heap@@26)) 2)))
 :qid |stdinbpl.289:15|
 :skolemid |32|
 :pattern ( (state Heap@@26 Mask@@10) (|fun02'| Heap@@26))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_9198) (Mask@@11 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@27 Mask@@11) (or (< AssumeFunctionsAbove 4) (|fun05#trigger| EmptyFrame))) (not (= (div 1 (|fun05'| Heap@@27)) 2)))
 :qid |stdinbpl.516:15|
 :skolemid |47|
 :pattern ( (state Heap@@27 Mask@@11) (|fun05'| Heap@@27))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_9198) (Mask@@12 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@28 Mask@@12) (or (< AssumeFunctionsAbove 10) (|fun03#trigger| EmptyFrame))) (not (= (div 1 (|fun03'| Heap@@28)) 2)))
 :qid |stdinbpl.357:15|
 :skolemid |37|
 :pattern ( (state Heap@@28 Mask@@12) (|fun03'| Heap@@28))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_9198) (Mask@@13 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@29 Mask@@13) (or (< AssumeFunctionsAbove 11) (|fun06#trigger| EmptyFrame))) (not (= (div 1 (|fun06'| Heap@@29)) 2)))
 :qid |stdinbpl.594:15|
 :skolemid |52|
 :pattern ( (state Heap@@29 Mask@@13) (|fun06'| Heap@@29))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_9198) (Mask@@14 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@30 Mask@@14) (or (< AssumeFunctionsAbove 14) (|fun01#trigger| EmptyFrame))) (not (= (div 1 (|fun01'| Heap@@30)) 2)))
 :qid |stdinbpl.222:15|
 :skolemid |26|
 :pattern ( (state Heap@@30 Mask@@14) (|fun01'| Heap@@30))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_9198) (Mask@@15 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@31 Mask@@15) (or (< AssumeFunctionsAbove 15) (|fun04#trigger| EmptyFrame))) (not (= (div 1 (|fun04'| Heap@@31)) 2)))
 :qid |stdinbpl.438:15|
 :skolemid |43|
 :pattern ( (state Heap@@31 Mask@@15) (|fun04'| Heap@@31))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9219) (o_2@@3 T@Ref) (f_4@@3 T@Field_9258_24135) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| Mask@@16) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9258_28605 f_4@@3))) (not (IsWandField_9258_28621 f_4@@3))) (<= (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| Mask@@16) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| Mask@@16) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9219) (o_2@@4 T@Ref) (f_4@@4 T@Field_9258_24002) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| Mask@@17) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9258_24093 f_4@@4))) (not (IsWandField_9258_25642 f_4@@4))) (<= (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| Mask@@17) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| Mask@@17) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9219) (o_2@@5 T@Ref) (f_4@@5 T@Field_9271_9272) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| Mask@@18) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_9258_9272 f_4@@5))) (not (IsWandField_9258_9272 f_4@@5))) (<= (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| Mask@@18) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| Mask@@18) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9219) (o_2@@6 T@Ref) (f_4@@6 T@Field_9258_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| Mask@@19) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9258_53 f_4@@6))) (not (IsWandField_9258_53 f_4@@6))) (<= (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| Mask@@19) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| Mask@@19) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9219) (o_2@@7 T@Ref) (f_4@@7 T@Field_9258_24135) ) (! (= (HasDirectPerm_9258_28976 Mask@@20 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| Mask@@20) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9258_28976 Mask@@20 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9219) (o_2@@8 T@Ref) (f_4@@8 T@Field_9258_24002) ) (! (= (HasDirectPerm_9258_24066 Mask@@21 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| Mask@@21) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9258_24066 Mask@@21 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9219) (o_2@@9 T@Ref) (f_4@@9 T@Field_9271_9272) ) (! (= (HasDirectPerm_9258_9272 Mask@@22 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| Mask@@22) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9258_9272 Mask@@22 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9219) (o_2@@10 T@Ref) (f_4@@10 T@Field_9258_53) ) (! (= (HasDirectPerm_9258_53 Mask@@23 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| Mask@@23) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9258_53 Mask@@23 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_9198) (ExhaleHeap@@5 T@PolymorphicMapType_9198) (Mask@@24 T@PolymorphicMapType_9219) (o_1@@0 T@Ref) (f_2@@7 T@Field_9258_24135) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@5 Mask@@24) (=> (HasDirectPerm_9258_28976 Mask@@24 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@32) o_1@@0 f_2@@7) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@5 Mask@@24) (select (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_9198) (ExhaleHeap@@6 T@PolymorphicMapType_9198) (Mask@@25 T@PolymorphicMapType_9219) (o_1@@1 T@Ref) (f_2@@8 T@Field_9258_24002) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@6 Mask@@25) (=> (HasDirectPerm_9258_24066 Mask@@25 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@33) o_1@@1 f_2@@8) (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@6 Mask@@25) (select (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_9198) (ExhaleHeap@@7 T@PolymorphicMapType_9198) (Mask@@26 T@PolymorphicMapType_9219) (o_1@@2 T@Ref) (f_2@@9 T@Field_9271_9272) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@7 Mask@@26) (=> (HasDirectPerm_9258_9272 Mask@@26 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@34) o_1@@2 f_2@@9) (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@7 Mask@@26) (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_9198) (ExhaleHeap@@8 T@PolymorphicMapType_9198) (Mask@@27 T@PolymorphicMapType_9219) (o_1@@3 T@Ref) (f_2@@10 T@Field_9258_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@8 Mask@@27) (=> (HasDirectPerm_9258_53 Mask@@27 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@35) o_1@@3 f_2@@10) (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@8 Mask@@27) (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_9198) ) (!  (and (= (fun01 Heap@@36) (|fun01'| Heap@@36)) (dummyFunction_1352 |fun01#triggerStateless|))
 :qid |stdinbpl.201:15|
 :skolemid |22|
 :pattern ( (fun01 Heap@@36))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_9198) ) (!  (and (= (fun02 Heap@@37) (|fun02'| Heap@@37)) (dummyFunction_1352 |fun02#triggerStateless|))
 :qid |stdinbpl.262:15|
 :skolemid |27|
 :pattern ( (fun02 Heap@@37))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_9198) ) (!  (and (= (fun03 Heap@@38) (|fun03'| Heap@@38)) (dummyFunction_1352 |fun03#triggerStateless|))
 :qid |stdinbpl.336:15|
 :skolemid |33|
 :pattern ( (fun03 Heap@@38))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_9198) ) (!  (and (= (fun04 Heap@@39) (|fun04'| Heap@@39)) (dummyFunction_1352 |fun04#triggerStateless|))
 :qid |stdinbpl.411:15|
 :skolemid |38|
 :pattern ( (fun04 Heap@@39))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_9198) ) (!  (and (= (fun05 Heap@@40) (|fun05'| Heap@@40)) (dummyFunction_1352 |fun05#triggerStateless|))
 :qid |stdinbpl.498:15|
 :skolemid |44|
 :pattern ( (fun05 Heap@@40))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_9198) ) (!  (and (= (fun06 Heap@@41) (|fun06'| Heap@@41)) (dummyFunction_1352 |fun06#triggerStateless|))
 :qid |stdinbpl.570:15|
 :skolemid |48|
 :pattern ( (fun06 Heap@@41))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_9198) ) (!  (and (= (fun07 Heap@@42) (|fun07'| Heap@@42)) (dummyFunction_1352 |fun07#triggerStateless|))
 :qid |stdinbpl.655:15|
 :skolemid |53|
 :pattern ( (fun07 Heap@@42))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_9198) ) (!  (and (= (fun08 Heap@@43) (|fun08'| Heap@@43)) (dummyFunction_1352 |fun08#triggerStateless|))
 :qid |stdinbpl.719:15|
 :skolemid |56|
 :pattern ( (fun08 Heap@@43))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_9258_24135) ) (! (= (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_9258_24002) ) (! (= (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_9271_9272) ) (! (= (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_9258_53) ) (! (= (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9219) (SummandMask1 T@PolymorphicMapType_9219) (SummandMask2 T@PolymorphicMapType_9219) (o_2@@15 T@Ref) (f_4@@15 T@Field_9258_24135) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9219_9258_27696#PolymorphicMapType_9219| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9219) (SummandMask1@@0 T@PolymorphicMapType_9219) (SummandMask2@@0 T@PolymorphicMapType_9219) (o_2@@16 T@Ref) (f_4@@16 T@Field_9258_24002) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9219_9258_24002#PolymorphicMapType_9219| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9219) (SummandMask1@@1 T@PolymorphicMapType_9219) (SummandMask2@@1 T@PolymorphicMapType_9219) (o_2@@17 T@Ref) (f_4@@17 T@Field_9271_9272) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9219_9258_9272#PolymorphicMapType_9219| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9219) (SummandMask1@@2 T@PolymorphicMapType_9219) (SummandMask2@@2 T@PolymorphicMapType_9219) (o_2@@18 T@Ref) (f_4@@18 T@Field_9258_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9219_9258_53#PolymorphicMapType_9219| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_9198) (Mask@@28 T@PolymorphicMapType_9219) (x@@15 Int) ) (!  (=> (and (state Heap@@44 Mask@@28) (< AssumeFunctionsAbove 0)) (=> (not (= (div 1 x@@15) 2)) (= (fun14 Heap@@44 x@@15) 1)))
 :qid |stdinbpl.982:15|
 :skolemid |72|
 :pattern ( (state Heap@@44 Mask@@28) (fun14 Heap@@44 x@@15))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_9198) (Mask@@29 T@PolymorphicMapType_9219) (x@@16 Int) ) (!  (=> (state Heap@@45 Mask@@29) (= (|fun11'| Heap@@45 x@@16) (|fun11#frame| EmptyFrame x@@16)))
 :qid |stdinbpl.807:15|
 :skolemid |62|
 :pattern ( (state Heap@@45 Mask@@29) (|fun11'| Heap@@45 x@@16))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_9198) (Mask@@30 T@PolymorphicMapType_9219) (x@@17 Int) ) (!  (=> (state Heap@@46 Mask@@30) (= (|fun12'| Heap@@46 x@@17) (|fun12#frame| EmptyFrame x@@17)))
 :qid |stdinbpl.864:15|
 :skolemid |66|
 :pattern ( (state Heap@@46 Mask@@30) (|fun12'| Heap@@46 x@@17))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_9198) (Mask@@31 T@PolymorphicMapType_9219) (x@@18 Int) ) (!  (=> (state Heap@@47 Mask@@31) (= (|fun13'| Heap@@47 x@@18) (|fun13#frame| EmptyFrame x@@18)))
 :qid |stdinbpl.918:15|
 :skolemid |69|
 :pattern ( (state Heap@@47 Mask@@31) (|fun13'| Heap@@47 x@@18))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_9198) (Mask@@32 T@PolymorphicMapType_9219) (x@@19 Int) ) (!  (=> (state Heap@@48 Mask@@32) (= (|fun14'| Heap@@48 x@@19) (|fun14#frame| EmptyFrame x@@19)))
 :qid |stdinbpl.989:15|
 :skolemid |73|
 :pattern ( (state Heap@@48 Mask@@32) (|fun14'| Heap@@48 x@@19))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_9198) (Mask@@33 T@PolymorphicMapType_9219) (x@@20 Int) ) (!  (=> (state Heap@@49 Mask@@33) (= (|fun15'| Heap@@49 x@@20) (|fun15#frame| EmptyFrame x@@20)))
 :qid |stdinbpl.1057:15|
 :skolemid |76|
 :pattern ( (state Heap@@49 Mask@@33) (|fun15'| Heap@@49 x@@20))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_9198) (Mask@@34 T@PolymorphicMapType_9219) (x@@21 Int) ) (!  (=> (state Heap@@50 Mask@@34) (= (|fun16'| Heap@@50 x@@21) (|fun16#frame| EmptyFrame x@@21)))
 :qid |stdinbpl.1128:15|
 :skolemid |80|
 :pattern ( (state Heap@@50 Mask@@34) (|fun16'| Heap@@50 x@@21))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_9198) (Mask@@35 T@PolymorphicMapType_9219) (x@@22 Int) ) (!  (=> (state Heap@@51 Mask@@35) (= (|fun17'| Heap@@51 x@@22) (|fun17#frame| EmptyFrame x@@22)))
 :qid |stdinbpl.1196:15|
 :skolemid |83|
 :pattern ( (state Heap@@51 Mask@@35) (|fun17'| Heap@@51 x@@22))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_9198) (Mask@@36 T@PolymorphicMapType_9219) (x@@23 Int) ) (!  (=> (state Heap@@52 Mask@@36) (= (|fun18'| Heap@@52 x@@23) (|fun18#frame| EmptyFrame x@@23)))
 :qid |stdinbpl.1262:15|
 :skolemid |87|
 :pattern ( (state Heap@@52 Mask@@36) (|fun18'| Heap@@52 x@@23))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun01#triggerStateless|)
 :qid |stdinbpl.205:15|
 :skolemid |23|
 :pattern ( (|fun01'| Heap@@53))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun02#triggerStateless|)
 :qid |stdinbpl.266:15|
 :skolemid |28|
 :pattern ( (|fun02'| Heap@@54))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun03#triggerStateless|)
 :qid |stdinbpl.340:15|
 :skolemid |34|
 :pattern ( (|fun03'| Heap@@55))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun04#triggerStateless|)
 :qid |stdinbpl.415:15|
 :skolemid |39|
 :pattern ( (|fun04'| Heap@@56))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun05#triggerStateless|)
 :qid |stdinbpl.502:15|
 :skolemid |45|
 :pattern ( (|fun05'| Heap@@57))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun06#triggerStateless|)
 :qid |stdinbpl.574:15|
 :skolemid |49|
 :pattern ( (|fun06'| Heap@@58))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun07#triggerStateless|)
 :qid |stdinbpl.659:15|
 :skolemid |54|
 :pattern ( (|fun07'| Heap@@59))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_9198) ) (! (dummyFunction_1352 |fun08#triggerStateless|)
 :qid |stdinbpl.723:15|
 :skolemid |57|
 :pattern ( (|fun08'| Heap@@60))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_9198) (Mask@@37 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@61 Mask@@37) (= (|fun01'| Heap@@61) (|fun01#frame| EmptyFrame)))
 :qid |stdinbpl.212:15|
 :skolemid |24|
 :pattern ( (state Heap@@61 Mask@@37) (|fun01'| Heap@@61))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_9198) (Mask@@38 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@62 Mask@@38) (= (|fun02'| Heap@@62) (|fun02#frame| EmptyFrame)))
 :qid |stdinbpl.279:15|
 :skolemid |30|
 :pattern ( (state Heap@@62 Mask@@38) (|fun02'| Heap@@62))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_9198) (Mask@@39 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@63 Mask@@39) (= (|fun03'| Heap@@63) (|fun03#frame| EmptyFrame)))
 :qid |stdinbpl.347:15|
 :skolemid |35|
 :pattern ( (state Heap@@63 Mask@@39) (|fun03'| Heap@@63))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_9198) (Mask@@40 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@64 Mask@@40) (= (|fun04'| Heap@@64) (|fun04#frame| EmptyFrame)))
 :qid |stdinbpl.428:15|
 :skolemid |41|
 :pattern ( (state Heap@@64 Mask@@40) (|fun04'| Heap@@64))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_9198) (Mask@@41 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@65 Mask@@41) (= (|fun05'| Heap@@65) (|fun05#frame| EmptyFrame)))
 :qid |stdinbpl.509:15|
 :skolemid |46|
 :pattern ( (state Heap@@65 Mask@@41) (|fun05'| Heap@@65))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_9198) (Mask@@42 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@66 Mask@@42) (= (|fun06'| Heap@@66) (|fun06#frame| EmptyFrame)))
 :qid |stdinbpl.587:15|
 :skolemid |51|
 :pattern ( (state Heap@@66 Mask@@42) (|fun06'| Heap@@66))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_9198) (Mask@@43 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@67 Mask@@43) (= (|fun07'| Heap@@67) (|fun07#frame| EmptyFrame)))
 :qid |stdinbpl.666:15|
 :skolemid |55|
 :pattern ( (state Heap@@67 Mask@@43) (|fun07'| Heap@@67))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_9198) (Mask@@44 T@PolymorphicMapType_9219) ) (!  (=> (state Heap@@68 Mask@@44) (= (|fun08'| Heap@@68) (|fun08#frame| EmptyFrame)))
 :qid |stdinbpl.736:15|
 :skolemid |59|
 :pattern ( (state Heap@@68 Mask@@44) (|fun08'| Heap@@68))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_9198) (o T@Ref) (f_3 T@Field_9258_24002) (v T@FrameType) ) (! (succHeap Heap@@69 (PolymorphicMapType_9198 (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@69) (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@69) (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@69) (store (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@69) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9198 (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@69) (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@69) (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@69) (store (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@69) o f_3 v)))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_9198) (o@@0 T@Ref) (f_3@@0 T@Field_9258_24135) (v@@0 T@PolymorphicMapType_9747) ) (! (succHeap Heap@@70 (PolymorphicMapType_9198 (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@70) (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@70) (store (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@70) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@70)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9198 (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@70) (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@70) (store (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@70) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@70)))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_9198) (o@@1 T@Ref) (f_3@@1 T@Field_9271_9272) (v@@1 T@Ref) ) (! (succHeap Heap@@71 (PolymorphicMapType_9198 (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@71) (store (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@71) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@71) (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@71)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9198 (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@71) (store (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@71) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@71) (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@71)))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_9198) (o@@2 T@Ref) (f_3@@2 T@Field_9258_53) (v@@2 Bool) ) (! (succHeap Heap@@72 (PolymorphicMapType_9198 (store (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@72) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@72) (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@72) (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@72)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9198 (store (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@72) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@72) (|PolymorphicMapType_9198_9258_24179#PolymorphicMapType_9198| Heap@@72) (|PolymorphicMapType_9198_9258_24002#PolymorphicMapType_9198| Heap@@72)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_9271_9272) (Heap@@73 T@PolymorphicMapType_9198) ) (!  (=> (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@73) o@@3 $allocated) (select (|PolymorphicMapType_9198_4966_53#PolymorphicMapType_9198| Heap@@73) (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@73) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9198_4969_4970#PolymorphicMapType_9198| Heap@@73) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_9258_24002) (v_1@@0 T@FrameType) (q T@Field_9258_24002) (w@@0 T@FrameType) (r T@Field_9258_24002) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9258_9258 p@@1 v_1@@0 q w@@0) (InsidePredicate_9258_9258 q w@@0 r u)) (InsidePredicate_9258_9258 p@@1 v_1@@0 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9258_9258 p@@1 v_1@@0 q w@@0) (InsidePredicate_9258_9258 q w@@0 r u))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_9198) (Mask@@45 T@PolymorphicMapType_9219) (x@@24 Int) ) (!  (=> (and (state Heap@@74 Mask@@45) (< AssumeFunctionsAbove 1)) (=> (and (not (= x@@24 0)) (not (= (div 1 x@@24) 2))) (= (fun16 Heap@@74 x@@24) 1)))
 :qid |stdinbpl.1121:15|
 :skolemid |79|
 :pattern ( (state Heap@@74 Mask@@45) (fun16 Heap@@74 x@@24))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_9198) (Mask@@46 T@PolymorphicMapType_9219) (x@@25 Int) ) (!  (=> (and (state Heap@@75 Mask@@46) (< AssumeFunctionsAbove 6)) (=> (and (not (= x@@25 0)) (not (= (div 1 x@@25) 2))) (= (fun18 Heap@@75 x@@25) 1)))
 :qid |stdinbpl.1255:15|
 :skolemid |86|
 :pattern ( (state Heap@@75 Mask@@46) (fun18 Heap@@75 x@@25))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_9198) (Mask@@47 T@PolymorphicMapType_9219) (x@@26 Int) ) (!  (=> (and (state Heap@@76 Mask@@47) (< AssumeFunctionsAbove 8)) (=> (and (not (= x@@26 0)) (not (= (div 1 x@@26) 2))) (= (fun12 Heap@@76 x@@26) 1)))
 :qid |stdinbpl.857:15|
 :skolemid |65|
 :pattern ( (state Heap@@76 Mask@@47) (fun12 Heap@@76 x@@26))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_9198) (Mask@@48 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@77 Mask@@48) (< AssumeFunctionsAbove 2)) (= (fun08 Heap@@77) 1))
 :qid |stdinbpl.729:15|
 :skolemid |58|
 :pattern ( (state Heap@@77 Mask@@48) (fun08 Heap@@77))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_9198) (Mask@@49 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@78 Mask@@49) (< AssumeFunctionsAbove 3)) (= (fun02 Heap@@78) 1))
 :qid |stdinbpl.272:15|
 :skolemid |29|
 :pattern ( (state Heap@@78 Mask@@49) (fun02 Heap@@78))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_9198) (Mask@@50 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@79 Mask@@50) (< AssumeFunctionsAbove 11)) (= (fun06 Heap@@79) 1))
 :qid |stdinbpl.580:15|
 :skolemid |50|
 :pattern ( (state Heap@@79 Mask@@50) (fun06 Heap@@79))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_9198) (Mask@@51 T@PolymorphicMapType_9219) ) (!  (=> (and (state Heap@@80 Mask@@51) (< AssumeFunctionsAbove 15)) (= (fun04 Heap@@80) 1))
 :qid |stdinbpl.421:15|
 :skolemid |40|
 :pattern ( (state Heap@@80 Mask@@51) (fun04 Heap@@80))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

