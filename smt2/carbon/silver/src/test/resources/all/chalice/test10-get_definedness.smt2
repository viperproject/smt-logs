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
(declare-sort T@Field_10825_53 0)
(declare-sort T@Field_10838_10839 0)
(declare-sort T@Field_14152_1189 0)
(declare-sort T@Field_14540_14541 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_16662_16667 0)
(declare-sort T@Field_5347_14541 0)
(declare-sort T@Field_5347_16667 0)
(declare-sort T@Field_14540_1189 0)
(declare-sort T@Field_14540_5350 0)
(declare-sort T@Field_14540_53 0)
(declare-datatypes ((T@PolymorphicMapType_10786 0)) (((PolymorphicMapType_10786 (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| (Array T@Ref T@Field_14540_14541 Real)) (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| (Array T@Ref T@Field_14152_1189 Real)) (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| (Array T@Ref T@Field_10838_10839 Real)) (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| (Array T@Ref T@Field_14540_1189 Real)) (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| (Array T@Ref T@Field_14540_5350 Real)) (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| (Array T@Ref T@Field_14540_53 Real)) (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| (Array T@Ref T@Field_16662_16667 Real)) (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| (Array T@Ref T@Field_5347_14541 Real)) (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| (Array T@Ref T@Field_10825_53 Real)) (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| (Array T@Ref T@Field_5347_16667 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11314 0)) (((PolymorphicMapType_11314 (|PolymorphicMapType_11314_5347_1189#PolymorphicMapType_11314| (Array T@Ref T@Field_14152_1189 Bool)) (|PolymorphicMapType_11314_5349_5350#PolymorphicMapType_11314| (Array T@Ref T@Field_10838_10839 Bool)) (|PolymorphicMapType_11314_5347_53#PolymorphicMapType_11314| (Array T@Ref T@Field_10825_53 Bool)) (|PolymorphicMapType_11314_5347_14541#PolymorphicMapType_11314| (Array T@Ref T@Field_5347_14541 Bool)) (|PolymorphicMapType_11314_5347_43098#PolymorphicMapType_11314| (Array T@Ref T@Field_5347_16667 Bool)) (|PolymorphicMapType_11314_14540_1189#PolymorphicMapType_11314| (Array T@Ref T@Field_14540_1189 Bool)) (|PolymorphicMapType_11314_14540_5350#PolymorphicMapType_11314| (Array T@Ref T@Field_14540_5350 Bool)) (|PolymorphicMapType_11314_14540_53#PolymorphicMapType_11314| (Array T@Ref T@Field_14540_53 Bool)) (|PolymorphicMapType_11314_14540_14541#PolymorphicMapType_11314| (Array T@Ref T@Field_14540_14541 Bool)) (|PolymorphicMapType_11314_14540_44146#PolymorphicMapType_11314| (Array T@Ref T@Field_16662_16667 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10765 0)) (((PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| (Array T@Ref T@Field_10825_53 Bool)) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| (Array T@Ref T@Field_10838_10839 T@Ref)) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| (Array T@Ref T@Field_14152_1189 Int)) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| (Array T@Ref T@Field_14540_14541 T@FrameType)) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| (Array T@Ref T@Field_16662_16667 T@PolymorphicMapType_11314)) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| (Array T@Ref T@Field_5347_14541 T@FrameType)) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| (Array T@Ref T@Field_5347_16667 T@PolymorphicMapType_11314)) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| (Array T@Ref T@Field_14540_1189 Int)) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| (Array T@Ref T@Field_14540_5350 T@Ref)) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| (Array T@Ref T@Field_14540_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_10825_53)
(declare-fun value_1 () T@Field_14152_1189)
(declare-fun next () T@Field_10838_10839)
(declare-fun succHeap (T@PolymorphicMapType_10765 T@PolymorphicMapType_10765) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10765 T@PolymorphicMapType_10765) Bool)
(declare-fun state (T@PolymorphicMapType_10765 T@PolymorphicMapType_10786) Bool)
(declare-fun get (T@PolymorphicMapType_10765 T@Ref) Int)
(declare-fun |get#triggerStateless| (T@Ref) Int)
(declare-fun |inv#trigger_5382| (T@PolymorphicMapType_10765 T@Field_14540_14541) Bool)
(declare-fun inv (T@Ref) T@Field_14540_14541)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_10786) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11314)
(declare-fun IsPredicateField_5382_5383 (T@Field_14540_14541) Bool)
(declare-fun |get'| (T@PolymorphicMapType_10765 T@Ref) Int)
(declare-fun dummyFunction_1407 (Int) Bool)
(declare-fun |inv#everUsed_5382| (T@Field_14540_14541) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10765 T@PolymorphicMapType_10765 T@PolymorphicMapType_10786) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5382 (T@Field_14540_14541) T@Field_16662_16667)
(declare-fun HasDirectPerm_14540_14541 (T@PolymorphicMapType_10786 T@Ref T@Field_14540_14541) Bool)
(declare-fun IsPredicateField_5347_41641 (T@Field_5347_14541) Bool)
(declare-fun PredicateMaskField_5347 (T@Field_5347_14541) T@Field_5347_16667)
(declare-fun HasDirectPerm_5347_14541 (T@PolymorphicMapType_10786 T@Ref T@Field_5347_14541) Bool)
(declare-fun IsWandField_14540_45311 (T@Field_14540_14541) Bool)
(declare-fun WandMaskField_14540 (T@Field_14540_14541) T@Field_16662_16667)
(declare-fun IsWandField_5347_44954 (T@Field_5347_14541) Bool)
(declare-fun WandMaskField_5347 (T@Field_5347_14541) T@Field_5347_16667)
(declare-fun |inv#sm| (T@Ref) T@Field_16662_16667)
(declare-fun dummyHeap () T@PolymorphicMapType_10765)
(declare-fun ZeroMask () T@PolymorphicMapType_10786)
(declare-fun InsidePredicate_10825_10825 (T@Field_5347_14541 T@FrameType T@Field_5347_14541 T@FrameType) Bool)
(declare-fun InsidePredicate_5382_5382 (T@Field_14540_14541 T@FrameType T@Field_14540_14541 T@FrameType) Bool)
(declare-fun IsPredicateField_5347_1189 (T@Field_14152_1189) Bool)
(declare-fun IsWandField_5347_1189 (T@Field_14152_1189) Bool)
(declare-fun IsPredicateField_5349_5350 (T@Field_10838_10839) Bool)
(declare-fun IsWandField_5349_5350 (T@Field_10838_10839) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5347_52214 (T@Field_5347_16667) Bool)
(declare-fun IsWandField_5347_52230 (T@Field_5347_16667) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5347_53 (T@Field_10825_53) Bool)
(declare-fun IsWandField_5347_53 (T@Field_10825_53) Bool)
(declare-fun IsPredicateField_5382_51411 (T@Field_16662_16667) Bool)
(declare-fun IsWandField_5382_51427 (T@Field_16662_16667) Bool)
(declare-fun IsPredicateField_5382_53 (T@Field_14540_53) Bool)
(declare-fun IsWandField_5382_53 (T@Field_14540_53) Bool)
(declare-fun IsPredicateField_5382_5350 (T@Field_14540_5350) Bool)
(declare-fun IsWandField_5382_5350 (T@Field_14540_5350) Bool)
(declare-fun IsPredicateField_5382_1189 (T@Field_14540_1189) Bool)
(declare-fun IsWandField_5382_1189 (T@Field_14540_1189) Bool)
(declare-fun HasDirectPerm_14540_41396 (T@PolymorphicMapType_10786 T@Ref T@Field_16662_16667) Bool)
(declare-fun HasDirectPerm_14540_53 (T@PolymorphicMapType_10786 T@Ref T@Field_14540_53) Bool)
(declare-fun HasDirectPerm_14540_5350 (T@PolymorphicMapType_10786 T@Ref T@Field_14540_5350) Bool)
(declare-fun HasDirectPerm_14540_1189 (T@PolymorphicMapType_10786 T@Ref T@Field_14540_1189) Bool)
(declare-fun HasDirectPerm_5347_40235 (T@PolymorphicMapType_10786 T@Ref T@Field_5347_16667) Bool)
(declare-fun HasDirectPerm_5347_53 (T@PolymorphicMapType_10786 T@Ref T@Field_10825_53) Bool)
(declare-fun HasDirectPerm_5349_5350 (T@PolymorphicMapType_10786 T@Ref T@Field_10838_10839) Bool)
(declare-fun HasDirectPerm_5347_1189 (T@PolymorphicMapType_10786 T@Ref T@Field_14152_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10786 T@PolymorphicMapType_10786 T@PolymorphicMapType_10786) Bool)
(declare-fun |get#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_5382_5383 (T@Field_14540_14541) Int)
(declare-fun InsidePredicate_10825_5382 (T@Field_5347_14541 T@FrameType T@Field_14540_14541 T@FrameType) Bool)
(declare-fun InsidePredicate_5382_10825 (T@Field_14540_14541 T@FrameType T@Field_5347_14541 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_10765) (Heap1 T@PolymorphicMapType_10765) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10765) (Mask T@PolymorphicMapType_10786) (this T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (get Heap this) (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap) this value_1)))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (state Heap Mask) (get Heap this))
 :pattern ( (state Heap Mask) (|get#triggerStateless| this) (|inv#trigger_5382| Heap (inv this)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10765) (Mask@@0 T@PolymorphicMapType_10786) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10765) (Heap1@@0 T@PolymorphicMapType_10765) (Heap2 T@PolymorphicMapType_10765) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16662_16667) ) (!  (not (select (|PolymorphicMapType_11314_14540_44146#PolymorphicMapType_11314| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11314_14540_44146#PolymorphicMapType_11314| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_14540_14541) ) (!  (not (select (|PolymorphicMapType_11314_14540_14541#PolymorphicMapType_11314| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11314_14540_14541#PolymorphicMapType_11314| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14540_53) ) (!  (not (select (|PolymorphicMapType_11314_14540_53#PolymorphicMapType_11314| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11314_14540_53#PolymorphicMapType_11314| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_14540_5350) ) (!  (not (select (|PolymorphicMapType_11314_14540_5350#PolymorphicMapType_11314| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11314_14540_5350#PolymorphicMapType_11314| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_14540_1189) ) (!  (not (select (|PolymorphicMapType_11314_14540_1189#PolymorphicMapType_11314| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11314_14540_1189#PolymorphicMapType_11314| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_5347_16667) ) (!  (not (select (|PolymorphicMapType_11314_5347_43098#PolymorphicMapType_11314| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11314_5347_43098#PolymorphicMapType_11314| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5347_14541) ) (!  (not (select (|PolymorphicMapType_11314_5347_14541#PolymorphicMapType_11314| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11314_5347_14541#PolymorphicMapType_11314| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_10825_53) ) (!  (not (select (|PolymorphicMapType_11314_5347_53#PolymorphicMapType_11314| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11314_5347_53#PolymorphicMapType_11314| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_10838_10839) ) (!  (not (select (|PolymorphicMapType_11314_5349_5350#PolymorphicMapType_11314| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11314_5349_5350#PolymorphicMapType_11314| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_14152_1189) ) (!  (not (select (|PolymorphicMapType_11314_5347_1189#PolymorphicMapType_11314| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11314_5347_1189#PolymorphicMapType_11314| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_5382_5383 (inv this@@0))
 :qid |stdinbpl.309:15|
 :skolemid |28|
 :pattern ( (inv this@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10765) (this@@1 T@Ref) ) (! (dummyFunction_1407 (|get#triggerStateless| this@@1))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|get'| Heap@@1 this@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10765) (this@@2 T@Ref) ) (! (|inv#everUsed_5382| (inv this@@2))
 :qid |stdinbpl.328:15|
 :skolemid |32|
 :pattern ( (|inv#trigger_5382| Heap@@2 (inv this@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10765) (this@@3 T@Ref) ) (!  (and (= (get Heap@@3 this@@3) (|get'| Heap@@3 this@@3)) (dummyFunction_1407 (|get#triggerStateless| this@@3)))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (get Heap@@3 this@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10765) (ExhaleHeap T@PolymorphicMapType_10765) (Mask@@1 T@PolymorphicMapType_10786) (pm_f_37 T@Field_14540_14541) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_14540_14541 Mask@@1 null pm_f_37) (IsPredicateField_5382_5383 pm_f_37)) (= (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@4) null (PredicateMaskField_5382 pm_f_37)) (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| ExhaleHeap) null (PredicateMaskField_5382 pm_f_37)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_5382_5383 pm_f_37) (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| ExhaleHeap) null (PredicateMaskField_5382 pm_f_37)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10765) (ExhaleHeap@@0 T@PolymorphicMapType_10765) (Mask@@2 T@PolymorphicMapType_10786) (pm_f_37@@0 T@Field_5347_14541) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_5347_14541 Mask@@2 null pm_f_37@@0) (IsPredicateField_5347_41641 pm_f_37@@0)) (= (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@5) null (PredicateMaskField_5347 pm_f_37@@0)) (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| ExhaleHeap@@0) null (PredicateMaskField_5347 pm_f_37@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsPredicateField_5347_41641 pm_f_37@@0) (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| ExhaleHeap@@0) null (PredicateMaskField_5347 pm_f_37@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10765) (ExhaleHeap@@1 T@PolymorphicMapType_10765) (Mask@@3 T@PolymorphicMapType_10786) (pm_f_37@@1 T@Field_14540_14541) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_14540_14541 Mask@@3 null pm_f_37@@1) (IsWandField_14540_45311 pm_f_37@@1)) (= (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@6) null (WandMaskField_14540 pm_f_37@@1)) (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| ExhaleHeap@@1) null (WandMaskField_14540 pm_f_37@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsWandField_14540_45311 pm_f_37@@1) (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| ExhaleHeap@@1) null (WandMaskField_14540 pm_f_37@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10765) (ExhaleHeap@@2 T@PolymorphicMapType_10765) (Mask@@4 T@PolymorphicMapType_10786) (pm_f_37@@2 T@Field_5347_14541) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_5347_14541 Mask@@4 null pm_f_37@@2) (IsWandField_5347_44954 pm_f_37@@2)) (= (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@7) null (WandMaskField_5347 pm_f_37@@2)) (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| ExhaleHeap@@2) null (WandMaskField_5347 pm_f_37@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_5347_44954 pm_f_37@@2) (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| ExhaleHeap@@2) null (WandMaskField_5347 pm_f_37@@2)))
)))
(assert (forall ((this@@4 T@Ref) (this2 T@Ref) ) (!  (=> (= (inv this@@4) (inv this2)) (= this@@4 this2))
 :qid |stdinbpl.319:15|
 :skolemid |30|
 :pattern ( (inv this@@4) (inv this2))
)))
(assert (forall ((this@@5 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|inv#sm| this@@5) (|inv#sm| this2@@0)) (= this@@5 this2@@0))
 :qid |stdinbpl.323:15|
 :skolemid |31|
 :pattern ( (|inv#sm| this@@5) (|inv#sm| this2@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10765) (ExhaleHeap@@3 T@PolymorphicMapType_10765) (Mask@@5 T@PolymorphicMapType_10786) (pm_f_37@@3 T@Field_14540_14541) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_14540_14541 Mask@@5 null pm_f_37@@3) (IsPredicateField_5382_5383 pm_f_37@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_37 T@Ref) (f_29 T@Field_14152_1189) ) (!  (=> (select (|PolymorphicMapType_11314_5347_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@8) null (PredicateMaskField_5382 pm_f_37@@3))) o2_37 f_29) (= (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@8) o2_37 f_29) (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37 f_29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37 f_29))
)) (forall ((o2_37@@0 T@Ref) (f_29@@0 T@Field_10838_10839) ) (!  (=> (select (|PolymorphicMapType_11314_5349_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@8) null (PredicateMaskField_5382 pm_f_37@@3))) o2_37@@0 f_29@@0) (= (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@8) o2_37@@0 f_29@@0) (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@0 f_29@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@0 f_29@@0))
))) (forall ((o2_37@@1 T@Ref) (f_29@@1 T@Field_10825_53) ) (!  (=> (select (|PolymorphicMapType_11314_5347_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@8) null (PredicateMaskField_5382 pm_f_37@@3))) o2_37@@1 f_29@@1) (= (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@8) o2_37@@1 f_29@@1) (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@1 f_29@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@1 f_29@@1))
))) (forall ((o2_37@@2 T@Ref) (f_29@@2 T@Field_5347_14541) ) (!  (=> (select (|PolymorphicMapType_11314_5347_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@8) null (PredicateMaskField_5382 pm_f_37@@3))) o2_37@@2 f_29@@2) (= (select (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@8) o2_37@@2 f_29@@2) (select (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@2 f_29@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@2 f_29@@2))
))) (forall ((o2_37@@3 T@Ref) (f_29@@3 T@Field_5347_16667) ) (!  (=> (select (|PolymorphicMapType_11314_5347_43098#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@8) null (PredicateMaskField_5382 pm_f_37@@3))) o2_37@@3 f_29@@3) (= (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@8) o2_37@@3 f_29@@3) (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@3 f_29@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@3 f_29@@3))
))) (forall ((o2_37@@4 T@Ref) (f_29@@4 T@Field_14540_1189) ) (!  (=> (select (|PolymorphicMapType_11314_14540_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@8) null (PredicateMaskField_5382 pm_f_37@@3))) o2_37@@4 f_29@@4) (= (select (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@8) o2_37@@4 f_29@@4) (select (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@4 f_29@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@4 f_29@@4))
))) (forall ((o2_37@@5 T@Ref) (f_29@@5 T@Field_14540_5350) ) (!  (=> (select (|PolymorphicMapType_11314_14540_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@8) null (PredicateMaskField_5382 pm_f_37@@3))) o2_37@@5 f_29@@5) (= (select (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@8) o2_37@@5 f_29@@5) (select (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@5 f_29@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@5 f_29@@5))
))) (forall ((o2_37@@6 T@Ref) (f_29@@6 T@Field_14540_53) ) (!  (=> (select (|PolymorphicMapType_11314_14540_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@8) null (PredicateMaskField_5382 pm_f_37@@3))) o2_37@@6 f_29@@6) (= (select (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@8) o2_37@@6 f_29@@6) (select (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@6 f_29@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@6 f_29@@6))
))) (forall ((o2_37@@7 T@Ref) (f_29@@7 T@Field_14540_14541) ) (!  (=> (select (|PolymorphicMapType_11314_14540_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@8) null (PredicateMaskField_5382 pm_f_37@@3))) o2_37@@7 f_29@@7) (= (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@8) o2_37@@7 f_29@@7) (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@7 f_29@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@7 f_29@@7))
))) (forall ((o2_37@@8 T@Ref) (f_29@@8 T@Field_16662_16667) ) (!  (=> (select (|PolymorphicMapType_11314_14540_44146#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@8) null (PredicateMaskField_5382 pm_f_37@@3))) o2_37@@8 f_29@@8) (= (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@8) o2_37@@8 f_29@@8) (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@8 f_29@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| ExhaleHeap@@3) o2_37@@8 f_29@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (IsPredicateField_5382_5383 pm_f_37@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10765) (ExhaleHeap@@4 T@PolymorphicMapType_10765) (Mask@@6 T@PolymorphicMapType_10786) (pm_f_37@@4 T@Field_5347_14541) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_5347_14541 Mask@@6 null pm_f_37@@4) (IsPredicateField_5347_41641 pm_f_37@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_37@@9 T@Ref) (f_29@@9 T@Field_14152_1189) ) (!  (=> (select (|PolymorphicMapType_11314_5347_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@9) null (PredicateMaskField_5347 pm_f_37@@4))) o2_37@@9 f_29@@9) (= (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@9) o2_37@@9 f_29@@9) (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@9 f_29@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@9 f_29@@9))
)) (forall ((o2_37@@10 T@Ref) (f_29@@10 T@Field_10838_10839) ) (!  (=> (select (|PolymorphicMapType_11314_5349_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@9) null (PredicateMaskField_5347 pm_f_37@@4))) o2_37@@10 f_29@@10) (= (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@9) o2_37@@10 f_29@@10) (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@10 f_29@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@10 f_29@@10))
))) (forall ((o2_37@@11 T@Ref) (f_29@@11 T@Field_10825_53) ) (!  (=> (select (|PolymorphicMapType_11314_5347_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@9) null (PredicateMaskField_5347 pm_f_37@@4))) o2_37@@11 f_29@@11) (= (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@9) o2_37@@11 f_29@@11) (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@11 f_29@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@11 f_29@@11))
))) (forall ((o2_37@@12 T@Ref) (f_29@@12 T@Field_5347_14541) ) (!  (=> (select (|PolymorphicMapType_11314_5347_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@9) null (PredicateMaskField_5347 pm_f_37@@4))) o2_37@@12 f_29@@12) (= (select (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@9) o2_37@@12 f_29@@12) (select (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@12 f_29@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@12 f_29@@12))
))) (forall ((o2_37@@13 T@Ref) (f_29@@13 T@Field_5347_16667) ) (!  (=> (select (|PolymorphicMapType_11314_5347_43098#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@9) null (PredicateMaskField_5347 pm_f_37@@4))) o2_37@@13 f_29@@13) (= (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@9) o2_37@@13 f_29@@13) (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@13 f_29@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@13 f_29@@13))
))) (forall ((o2_37@@14 T@Ref) (f_29@@14 T@Field_14540_1189) ) (!  (=> (select (|PolymorphicMapType_11314_14540_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@9) null (PredicateMaskField_5347 pm_f_37@@4))) o2_37@@14 f_29@@14) (= (select (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@9) o2_37@@14 f_29@@14) (select (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@14 f_29@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@14 f_29@@14))
))) (forall ((o2_37@@15 T@Ref) (f_29@@15 T@Field_14540_5350) ) (!  (=> (select (|PolymorphicMapType_11314_14540_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@9) null (PredicateMaskField_5347 pm_f_37@@4))) o2_37@@15 f_29@@15) (= (select (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@9) o2_37@@15 f_29@@15) (select (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@15 f_29@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@15 f_29@@15))
))) (forall ((o2_37@@16 T@Ref) (f_29@@16 T@Field_14540_53) ) (!  (=> (select (|PolymorphicMapType_11314_14540_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@9) null (PredicateMaskField_5347 pm_f_37@@4))) o2_37@@16 f_29@@16) (= (select (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@9) o2_37@@16 f_29@@16) (select (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@16 f_29@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@16 f_29@@16))
))) (forall ((o2_37@@17 T@Ref) (f_29@@17 T@Field_14540_14541) ) (!  (=> (select (|PolymorphicMapType_11314_14540_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@9) null (PredicateMaskField_5347 pm_f_37@@4))) o2_37@@17 f_29@@17) (= (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@9) o2_37@@17 f_29@@17) (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@17 f_29@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@17 f_29@@17))
))) (forall ((o2_37@@18 T@Ref) (f_29@@18 T@Field_16662_16667) ) (!  (=> (select (|PolymorphicMapType_11314_14540_44146#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@9) null (PredicateMaskField_5347 pm_f_37@@4))) o2_37@@18 f_29@@18) (= (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@9) o2_37@@18 f_29@@18) (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@18 f_29@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| ExhaleHeap@@4) o2_37@@18 f_29@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (IsPredicateField_5347_41641 pm_f_37@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10765) (ExhaleHeap@@5 T@PolymorphicMapType_10765) (Mask@@7 T@PolymorphicMapType_10786) (pm_f_37@@5 T@Field_14540_14541) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_14540_14541 Mask@@7 null pm_f_37@@5) (IsWandField_14540_45311 pm_f_37@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_37@@19 T@Ref) (f_29@@19 T@Field_14152_1189) ) (!  (=> (select (|PolymorphicMapType_11314_5347_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@10) null (WandMaskField_14540 pm_f_37@@5))) o2_37@@19 f_29@@19) (= (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@10) o2_37@@19 f_29@@19) (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@19 f_29@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@19 f_29@@19))
)) (forall ((o2_37@@20 T@Ref) (f_29@@20 T@Field_10838_10839) ) (!  (=> (select (|PolymorphicMapType_11314_5349_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@10) null (WandMaskField_14540 pm_f_37@@5))) o2_37@@20 f_29@@20) (= (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@10) o2_37@@20 f_29@@20) (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@20 f_29@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@20 f_29@@20))
))) (forall ((o2_37@@21 T@Ref) (f_29@@21 T@Field_10825_53) ) (!  (=> (select (|PolymorphicMapType_11314_5347_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@10) null (WandMaskField_14540 pm_f_37@@5))) o2_37@@21 f_29@@21) (= (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@10) o2_37@@21 f_29@@21) (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@21 f_29@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@21 f_29@@21))
))) (forall ((o2_37@@22 T@Ref) (f_29@@22 T@Field_5347_14541) ) (!  (=> (select (|PolymorphicMapType_11314_5347_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@10) null (WandMaskField_14540 pm_f_37@@5))) o2_37@@22 f_29@@22) (= (select (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@10) o2_37@@22 f_29@@22) (select (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@22 f_29@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@22 f_29@@22))
))) (forall ((o2_37@@23 T@Ref) (f_29@@23 T@Field_5347_16667) ) (!  (=> (select (|PolymorphicMapType_11314_5347_43098#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@10) null (WandMaskField_14540 pm_f_37@@5))) o2_37@@23 f_29@@23) (= (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@10) o2_37@@23 f_29@@23) (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@23 f_29@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@23 f_29@@23))
))) (forall ((o2_37@@24 T@Ref) (f_29@@24 T@Field_14540_1189) ) (!  (=> (select (|PolymorphicMapType_11314_14540_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@10) null (WandMaskField_14540 pm_f_37@@5))) o2_37@@24 f_29@@24) (= (select (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@10) o2_37@@24 f_29@@24) (select (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@24 f_29@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@24 f_29@@24))
))) (forall ((o2_37@@25 T@Ref) (f_29@@25 T@Field_14540_5350) ) (!  (=> (select (|PolymorphicMapType_11314_14540_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@10) null (WandMaskField_14540 pm_f_37@@5))) o2_37@@25 f_29@@25) (= (select (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@10) o2_37@@25 f_29@@25) (select (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@25 f_29@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@25 f_29@@25))
))) (forall ((o2_37@@26 T@Ref) (f_29@@26 T@Field_14540_53) ) (!  (=> (select (|PolymorphicMapType_11314_14540_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@10) null (WandMaskField_14540 pm_f_37@@5))) o2_37@@26 f_29@@26) (= (select (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@10) o2_37@@26 f_29@@26) (select (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@26 f_29@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@26 f_29@@26))
))) (forall ((o2_37@@27 T@Ref) (f_29@@27 T@Field_14540_14541) ) (!  (=> (select (|PolymorphicMapType_11314_14540_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@10) null (WandMaskField_14540 pm_f_37@@5))) o2_37@@27 f_29@@27) (= (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@10) o2_37@@27 f_29@@27) (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@27 f_29@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@27 f_29@@27))
))) (forall ((o2_37@@28 T@Ref) (f_29@@28 T@Field_16662_16667) ) (!  (=> (select (|PolymorphicMapType_11314_14540_44146#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@10) null (WandMaskField_14540 pm_f_37@@5))) o2_37@@28 f_29@@28) (= (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@10) o2_37@@28 f_29@@28) (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@28 f_29@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| ExhaleHeap@@5) o2_37@@28 f_29@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (IsWandField_14540_45311 pm_f_37@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10765) (ExhaleHeap@@6 T@PolymorphicMapType_10765) (Mask@@8 T@PolymorphicMapType_10786) (pm_f_37@@6 T@Field_5347_14541) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_5347_14541 Mask@@8 null pm_f_37@@6) (IsWandField_5347_44954 pm_f_37@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_37@@29 T@Ref) (f_29@@29 T@Field_14152_1189) ) (!  (=> (select (|PolymorphicMapType_11314_5347_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@11) null (WandMaskField_5347 pm_f_37@@6))) o2_37@@29 f_29@@29) (= (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@11) o2_37@@29 f_29@@29) (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@29 f_29@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@29 f_29@@29))
)) (forall ((o2_37@@30 T@Ref) (f_29@@30 T@Field_10838_10839) ) (!  (=> (select (|PolymorphicMapType_11314_5349_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@11) null (WandMaskField_5347 pm_f_37@@6))) o2_37@@30 f_29@@30) (= (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@11) o2_37@@30 f_29@@30) (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@30 f_29@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@30 f_29@@30))
))) (forall ((o2_37@@31 T@Ref) (f_29@@31 T@Field_10825_53) ) (!  (=> (select (|PolymorphicMapType_11314_5347_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@11) null (WandMaskField_5347 pm_f_37@@6))) o2_37@@31 f_29@@31) (= (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@11) o2_37@@31 f_29@@31) (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@31 f_29@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@31 f_29@@31))
))) (forall ((o2_37@@32 T@Ref) (f_29@@32 T@Field_5347_14541) ) (!  (=> (select (|PolymorphicMapType_11314_5347_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@11) null (WandMaskField_5347 pm_f_37@@6))) o2_37@@32 f_29@@32) (= (select (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@11) o2_37@@32 f_29@@32) (select (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@32 f_29@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@32 f_29@@32))
))) (forall ((o2_37@@33 T@Ref) (f_29@@33 T@Field_5347_16667) ) (!  (=> (select (|PolymorphicMapType_11314_5347_43098#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@11) null (WandMaskField_5347 pm_f_37@@6))) o2_37@@33 f_29@@33) (= (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@11) o2_37@@33 f_29@@33) (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@33 f_29@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@33 f_29@@33))
))) (forall ((o2_37@@34 T@Ref) (f_29@@34 T@Field_14540_1189) ) (!  (=> (select (|PolymorphicMapType_11314_14540_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@11) null (WandMaskField_5347 pm_f_37@@6))) o2_37@@34 f_29@@34) (= (select (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@11) o2_37@@34 f_29@@34) (select (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@34 f_29@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@34 f_29@@34))
))) (forall ((o2_37@@35 T@Ref) (f_29@@35 T@Field_14540_5350) ) (!  (=> (select (|PolymorphicMapType_11314_14540_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@11) null (WandMaskField_5347 pm_f_37@@6))) o2_37@@35 f_29@@35) (= (select (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@11) o2_37@@35 f_29@@35) (select (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@35 f_29@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@35 f_29@@35))
))) (forall ((o2_37@@36 T@Ref) (f_29@@36 T@Field_14540_53) ) (!  (=> (select (|PolymorphicMapType_11314_14540_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@11) null (WandMaskField_5347 pm_f_37@@6))) o2_37@@36 f_29@@36) (= (select (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@11) o2_37@@36 f_29@@36) (select (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@36 f_29@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@36 f_29@@36))
))) (forall ((o2_37@@37 T@Ref) (f_29@@37 T@Field_14540_14541) ) (!  (=> (select (|PolymorphicMapType_11314_14540_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@11) null (WandMaskField_5347 pm_f_37@@6))) o2_37@@37 f_29@@37) (= (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@11) o2_37@@37 f_29@@37) (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@37 f_29@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@37 f_29@@37))
))) (forall ((o2_37@@38 T@Ref) (f_29@@38 T@Field_16662_16667) ) (!  (=> (select (|PolymorphicMapType_11314_14540_44146#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@11) null (WandMaskField_5347 pm_f_37@@6))) o2_37@@38 f_29@@38) (= (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@11) o2_37@@38 f_29@@38) (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@38 f_29@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| ExhaleHeap@@6) o2_37@@38 f_29@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (IsWandField_5347_44954 pm_f_37@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10765) (ExhaleHeap@@7 T@PolymorphicMapType_10765) (Mask@@9 T@PolymorphicMapType_10786) (o_20 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@12) o_20 $allocated) (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| ExhaleHeap@@7) o_20 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| ExhaleHeap@@7) o_20 $allocated))
)))
(assert (forall ((p T@Field_5347_14541) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10825_10825 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10825_10825 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_14540_14541) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_5382_5382 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5382_5382 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_5347_1189 value_1)))
(assert  (not (IsWandField_5347_1189 value_1)))
(assert  (not (IsPredicateField_5349_5350 next)))
(assert  (not (IsWandField_5349_5350 next)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10765) (ExhaleHeap@@8 T@PolymorphicMapType_10765) (Mask@@10 T@PolymorphicMapType_10786) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@13 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10786) (o_2@@9 T@Ref) (f_4@@9 T@Field_5347_16667) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5347_52214 f_4@@9))) (not (IsWandField_5347_52230 f_4@@9))) (<= (select (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10786) (o_2@@10 T@Ref) (f_4@@10 T@Field_10825_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5347_53 f_4@@10))) (not (IsWandField_5347_53 f_4@@10))) (<= (select (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10786) (o_2@@11 T@Ref) (f_4@@11 T@Field_10838_10839) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5349_5350 f_4@@11))) (not (IsWandField_5349_5350 f_4@@11))) (<= (select (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10786) (o_2@@12 T@Ref) (f_4@@12 T@Field_14152_1189) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_5347_1189 f_4@@12))) (not (IsWandField_5347_1189 f_4@@12))) (<= (select (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10786) (o_2@@13 T@Ref) (f_4@@13 T@Field_5347_14541) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_5347_41641 f_4@@13))) (not (IsWandField_5347_44954 f_4@@13))) (<= (select (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10786) (o_2@@14 T@Ref) (f_4@@14 T@Field_16662_16667) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_5382_51411 f_4@@14))) (not (IsWandField_5382_51427 f_4@@14))) (<= (select (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10786) (o_2@@15 T@Ref) (f_4@@15 T@Field_14540_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_5382_53 f_4@@15))) (not (IsWandField_5382_53 f_4@@15))) (<= (select (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10786) (o_2@@16 T@Ref) (f_4@@16 T@Field_14540_5350) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_5382_5350 f_4@@16))) (not (IsWandField_5382_5350 f_4@@16))) (<= (select (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_10786) (o_2@@17 T@Ref) (f_4@@17 T@Field_14540_1189) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_5382_1189 f_4@@17))) (not (IsWandField_5382_1189 f_4@@17))) (<= (select (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_10786) (o_2@@18 T@Ref) (f_4@@18 T@Field_14540_14541) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_5382_5383 f_4@@18))) (not (IsWandField_14540_45311 f_4@@18))) (<= (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_10786) (o_2@@19 T@Ref) (f_4@@19 T@Field_16662_16667) ) (! (= (HasDirectPerm_14540_41396 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14540_41396 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_10786) (o_2@@20 T@Ref) (f_4@@20 T@Field_14540_14541) ) (! (= (HasDirectPerm_14540_14541 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14540_14541 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_10786) (o_2@@21 T@Ref) (f_4@@21 T@Field_14540_53) ) (! (= (HasDirectPerm_14540_53 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14540_53 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_10786) (o_2@@22 T@Ref) (f_4@@22 T@Field_14540_5350) ) (! (= (HasDirectPerm_14540_5350 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14540_5350 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_10786) (o_2@@23 T@Ref) (f_4@@23 T@Field_14540_1189) ) (! (= (HasDirectPerm_14540_1189 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14540_1189 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_10786) (o_2@@24 T@Ref) (f_4@@24 T@Field_5347_16667) ) (! (= (HasDirectPerm_5347_40235 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5347_40235 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_10786) (o_2@@25 T@Ref) (f_4@@25 T@Field_5347_14541) ) (! (= (HasDirectPerm_5347_14541 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5347_14541 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_10786) (o_2@@26 T@Ref) (f_4@@26 T@Field_10825_53) ) (! (= (HasDirectPerm_5347_53 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5347_53 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_10786) (o_2@@27 T@Ref) (f_4@@27 T@Field_10838_10839) ) (! (= (HasDirectPerm_5349_5350 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5349_5350 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_10786) (o_2@@28 T@Ref) (f_4@@28 T@Field_14152_1189) ) (! (= (HasDirectPerm_5347_1189 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5347_1189 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10765) (ExhaleHeap@@9 T@PolymorphicMapType_10765) (Mask@@31 T@PolymorphicMapType_10786) (o_20@@0 T@Ref) (f_29@@39 T@Field_16662_16667) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_14540_41396 Mask@@31 o_20@@0 f_29@@39) (= (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@14) o_20@@0 f_29@@39) (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| ExhaleHeap@@9) o_20@@0 f_29@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| ExhaleHeap@@9) o_20@@0 f_29@@39))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10765) (ExhaleHeap@@10 T@PolymorphicMapType_10765) (Mask@@32 T@PolymorphicMapType_10786) (o_20@@1 T@Ref) (f_29@@40 T@Field_14540_14541) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_14540_14541 Mask@@32 o_20@@1 f_29@@40) (= (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@15) o_20@@1 f_29@@40) (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| ExhaleHeap@@10) o_20@@1 f_29@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| ExhaleHeap@@10) o_20@@1 f_29@@40))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10765) (ExhaleHeap@@11 T@PolymorphicMapType_10765) (Mask@@33 T@PolymorphicMapType_10786) (o_20@@2 T@Ref) (f_29@@41 T@Field_14540_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_14540_53 Mask@@33 o_20@@2 f_29@@41) (= (select (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@16) o_20@@2 f_29@@41) (select (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| ExhaleHeap@@11) o_20@@2 f_29@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| ExhaleHeap@@11) o_20@@2 f_29@@41))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10765) (ExhaleHeap@@12 T@PolymorphicMapType_10765) (Mask@@34 T@PolymorphicMapType_10786) (o_20@@3 T@Ref) (f_29@@42 T@Field_14540_5350) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_14540_5350 Mask@@34 o_20@@3 f_29@@42) (= (select (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@17) o_20@@3 f_29@@42) (select (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| ExhaleHeap@@12) o_20@@3 f_29@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| ExhaleHeap@@12) o_20@@3 f_29@@42))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10765) (ExhaleHeap@@13 T@PolymorphicMapType_10765) (Mask@@35 T@PolymorphicMapType_10786) (o_20@@4 T@Ref) (f_29@@43 T@Field_14540_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_14540_1189 Mask@@35 o_20@@4 f_29@@43) (= (select (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@18) o_20@@4 f_29@@43) (select (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| ExhaleHeap@@13) o_20@@4 f_29@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| ExhaleHeap@@13) o_20@@4 f_29@@43))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10765) (ExhaleHeap@@14 T@PolymorphicMapType_10765) (Mask@@36 T@PolymorphicMapType_10786) (o_20@@5 T@Ref) (f_29@@44 T@Field_5347_16667) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_5347_40235 Mask@@36 o_20@@5 f_29@@44) (= (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@19) o_20@@5 f_29@@44) (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| ExhaleHeap@@14) o_20@@5 f_29@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| ExhaleHeap@@14) o_20@@5 f_29@@44))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10765) (ExhaleHeap@@15 T@PolymorphicMapType_10765) (Mask@@37 T@PolymorphicMapType_10786) (o_20@@6 T@Ref) (f_29@@45 T@Field_5347_14541) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_5347_14541 Mask@@37 o_20@@6 f_29@@45) (= (select (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@20) o_20@@6 f_29@@45) (select (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| ExhaleHeap@@15) o_20@@6 f_29@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| ExhaleHeap@@15) o_20@@6 f_29@@45))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10765) (ExhaleHeap@@16 T@PolymorphicMapType_10765) (Mask@@38 T@PolymorphicMapType_10786) (o_20@@7 T@Ref) (f_29@@46 T@Field_10825_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_5347_53 Mask@@38 o_20@@7 f_29@@46) (= (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@21) o_20@@7 f_29@@46) (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| ExhaleHeap@@16) o_20@@7 f_29@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| ExhaleHeap@@16) o_20@@7 f_29@@46))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10765) (ExhaleHeap@@17 T@PolymorphicMapType_10765) (Mask@@39 T@PolymorphicMapType_10786) (o_20@@8 T@Ref) (f_29@@47 T@Field_10838_10839) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_5349_5350 Mask@@39 o_20@@8 f_29@@47) (= (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@22) o_20@@8 f_29@@47) (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| ExhaleHeap@@17) o_20@@8 f_29@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| ExhaleHeap@@17) o_20@@8 f_29@@47))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10765) (ExhaleHeap@@18 T@PolymorphicMapType_10765) (Mask@@40 T@PolymorphicMapType_10786) (o_20@@9 T@Ref) (f_29@@48 T@Field_14152_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_5347_1189 Mask@@40 o_20@@9 f_29@@48) (= (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@23) o_20@@9 f_29@@48) (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| ExhaleHeap@@18) o_20@@9 f_29@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| ExhaleHeap@@18) o_20@@9 f_29@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_5347_16667) ) (! (= (select (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_10825_53) ) (! (= (select (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_10838_10839) ) (! (= (select (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_14152_1189) ) (! (= (select (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_5347_14541) ) (! (= (select (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_16662_16667) ) (! (= (select (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_14540_53) ) (! (= (select (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_14540_5350) ) (! (= (select (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_14540_1189) ) (! (= (select (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_14540_14541) ) (! (= (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10786) (SummandMask1 T@PolymorphicMapType_10786) (SummandMask2 T@PolymorphicMapType_10786) (o_2@@39 T@Ref) (f_4@@39 T@Field_5347_16667) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10786) (SummandMask1@@0 T@PolymorphicMapType_10786) (SummandMask2@@0 T@PolymorphicMapType_10786) (o_2@@40 T@Ref) (f_4@@40 T@Field_10825_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10786) (SummandMask1@@1 T@PolymorphicMapType_10786) (SummandMask2@@1 T@PolymorphicMapType_10786) (o_2@@41 T@Ref) (f_4@@41 T@Field_10838_10839) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10786) (SummandMask1@@2 T@PolymorphicMapType_10786) (SummandMask2@@2 T@PolymorphicMapType_10786) (o_2@@42 T@Ref) (f_4@@42 T@Field_14152_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10786) (SummandMask1@@3 T@PolymorphicMapType_10786) (SummandMask2@@3 T@PolymorphicMapType_10786) (o_2@@43 T@Ref) (f_4@@43 T@Field_5347_14541) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_10786) (SummandMask1@@4 T@PolymorphicMapType_10786) (SummandMask2@@4 T@PolymorphicMapType_10786) (o_2@@44 T@Ref) (f_4@@44 T@Field_16662_16667) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_10786) (SummandMask1@@5 T@PolymorphicMapType_10786) (SummandMask2@@5 T@PolymorphicMapType_10786) (o_2@@45 T@Ref) (f_4@@45 T@Field_14540_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_10786) (SummandMask1@@6 T@PolymorphicMapType_10786) (SummandMask2@@6 T@PolymorphicMapType_10786) (o_2@@46 T@Ref) (f_4@@46 T@Field_14540_5350) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_10786) (SummandMask1@@7 T@PolymorphicMapType_10786) (SummandMask2@@7 T@PolymorphicMapType_10786) (o_2@@47 T@Ref) (f_4@@47 T@Field_14540_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_10786) (SummandMask1@@8 T@PolymorphicMapType_10786) (SummandMask2@@8 T@PolymorphicMapType_10786) (o_2@@48 T@Ref) (f_4@@48 T@Field_14540_14541) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10765) (Mask@@41 T@PolymorphicMapType_10786) (this@@6 T@Ref) ) (!  (=> (state Heap@@24 Mask@@41) (= (|get'| Heap@@24 this@@6) (|get#frame| (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@24) null (inv this@@6)) this@@6)))
 :qid |stdinbpl.214:15|
 :skolemid |25|
 :pattern ( (state Heap@@24 Mask@@41) (|get'| Heap@@24 this@@6))
)))
(assert (forall ((this@@7 T@Ref) ) (! (= (getPredWandId_5382_5383 (inv this@@7)) 0)
 :qid |stdinbpl.313:15|
 :skolemid |29|
 :pattern ( (inv this@@7))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10765) (o_13 T@Ref) (f_66 T@Field_16662_16667) (v T@PolymorphicMapType_11314) ) (! (succHeap Heap@@25 (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@25) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@25) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@25) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@25) (store (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@25) o_13 f_66 v) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@25) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@25) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@25) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@25) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@25) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@25) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@25) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@25) (store (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@25) o_13 f_66 v) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@25) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@25) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@25) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@25) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10765) (o_13@@0 T@Ref) (f_66@@0 T@Field_14540_14541) (v@@0 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@26) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@26) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@26) (store (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@26) o_13@@0 f_66@@0 v@@0) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@26) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@26) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@26) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@26) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@26) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@26) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@26) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@26) (store (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@26) o_13@@0 f_66@@0 v@@0) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@26) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@26) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@26) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@26) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@26) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10765) (o_13@@1 T@Ref) (f_66@@1 T@Field_14540_1189) (v@@1 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@27) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@27) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@27) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@27) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@27) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@27) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@27) (store (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@27) o_13@@1 f_66@@1 v@@1) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@27) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@27) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@27) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@27) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@27) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@27) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@27) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@27) (store (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@27) o_13@@1 f_66@@1 v@@1) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@27) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10765) (o_13@@2 T@Ref) (f_66@@2 T@Field_14540_5350) (v@@2 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@28) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@28) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@28) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@28) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@28) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@28) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@28) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@28) (store (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@28) o_13@@2 f_66@@2 v@@2) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@28) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@28) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@28) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@28) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@28) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@28) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@28) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@28) (store (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@28) o_13@@2 f_66@@2 v@@2) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10765) (o_13@@3 T@Ref) (f_66@@3 T@Field_14540_53) (v@@3 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@29) (store (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@29) o_13@@3 f_66@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@29) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@29) (store (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@29) o_13@@3 f_66@@3 v@@3)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10765) (o_13@@4 T@Ref) (f_66@@4 T@Field_5347_16667) (v@@4 T@PolymorphicMapType_11314) ) (! (succHeap Heap@@30 (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@30) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@30) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@30) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@30) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@30) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@30) (store (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@30) o_13@@4 f_66@@4 v@@4) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@30) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@30) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@30) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@30) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@30) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@30) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@30) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@30) (store (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@30) o_13@@4 f_66@@4 v@@4) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@30) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@30) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_10765) (o_13@@5 T@Ref) (f_66@@5 T@Field_5347_14541) (v@@5 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@31) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@31) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@31) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@31) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@31) (store (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@31) o_13@@5 f_66@@5 v@@5) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@31) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@31) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@31) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@31) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@31) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@31) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@31) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@31) (store (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@31) o_13@@5 f_66@@5 v@@5) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@31) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@31) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@31) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_10765) (o_13@@6 T@Ref) (f_66@@6 T@Field_14152_1189) (v@@6 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@32) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@32) (store (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@32) o_13@@6 f_66@@6 v@@6) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@32) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@32) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@32) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@32) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@32) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@32) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@32) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@32) (store (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@32) o_13@@6 f_66@@6 v@@6) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@32) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@32) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@32) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@32) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@32) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@32) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_10765) (o_13@@7 T@Ref) (f_66@@7 T@Field_10838_10839) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@33) (store (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@33) o_13@@7 f_66@@7 v@@7) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@33) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@33) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@33) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@33) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@33) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@33) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@33) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@33) (store (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@33) o_13@@7 f_66@@7 v@@7) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@33) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@33) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@33) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@33) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@33) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@33) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@33) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_10765) (o_13@@8 T@Ref) (f_66@@8 T@Field_10825_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_10765 (store (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@34) o_13@@8 f_66@@8 v@@8) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10765 (store (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@34) o_13@@8 f_66@@8 v@@8) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@34) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@34)))
)))
(assert (forall ((this@@8 T@Ref) ) (! (= (PredicateMaskField_5382 (inv this@@8)) (|inv#sm| this@@8))
 :qid |stdinbpl.305:15|
 :skolemid |27|
 :pattern ( (PredicateMaskField_5382 (inv this@@8)))
)))
(assert (forall ((o_13@@9 T@Ref) (f_20 T@Field_10838_10839) (Heap@@35 T@PolymorphicMapType_10765) ) (!  (=> (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@35) o_13@@9 $allocated) (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@35) (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@35) o_13@@9 f_20) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@35) o_13@@9 f_20))
)))
(assert (forall ((p@@2 T@Field_5347_14541) (v_1@@1 T@FrameType) (q T@Field_5347_14541) (w@@1 T@FrameType) (r T@Field_5347_14541) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10825_10825 p@@2 v_1@@1 q w@@1) (InsidePredicate_10825_10825 q w@@1 r u)) (InsidePredicate_10825_10825 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10825_10825 p@@2 v_1@@1 q w@@1) (InsidePredicate_10825_10825 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_5347_14541) (v_1@@2 T@FrameType) (q@@0 T@Field_5347_14541) (w@@2 T@FrameType) (r@@0 T@Field_14540_14541) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_10825_10825 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_10825_5382 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_10825_5382 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10825_10825 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_10825_5382 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_5347_14541) (v_1@@3 T@FrameType) (q@@1 T@Field_14540_14541) (w@@3 T@FrameType) (r@@1 T@Field_5347_14541) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_10825_5382 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5382_10825 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_10825_10825 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10825_5382 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_5382_10825 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_5347_14541) (v_1@@4 T@FrameType) (q@@2 T@Field_14540_14541) (w@@4 T@FrameType) (r@@2 T@Field_14540_14541) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_10825_5382 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5382_5382 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_10825_5382 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10825_5382 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_5382_5382 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_14540_14541) (v_1@@5 T@FrameType) (q@@3 T@Field_5347_14541) (w@@5 T@FrameType) (r@@3 T@Field_5347_14541) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_5382_10825 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_10825_10825 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_5382_10825 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5382_10825 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_10825_10825 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_14540_14541) (v_1@@6 T@FrameType) (q@@4 T@Field_5347_14541) (w@@6 T@FrameType) (r@@4 T@Field_14540_14541) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_5382_10825 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_10825_5382 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_5382_5382 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5382_10825 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_10825_5382 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_14540_14541) (v_1@@7 T@FrameType) (q@@5 T@Field_14540_14541) (w@@7 T@FrameType) (r@@5 T@Field_5347_14541) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_5382_5382 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5382_10825 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_5382_10825 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5382_5382 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_5382_10825 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_14540_14541) (v_1@@8 T@FrameType) (q@@6 T@Field_14540_14541) (w@@8 T@FrameType) (r@@6 T@Field_14540_14541) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_5382_5382 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5382_5382 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_5382_5382 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5382_5382 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_5382_5382 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@1 () T@PolymorphicMapType_10765)
(declare-fun this@@9 () T@Ref)
(declare-fun Heap@3 () T@PolymorphicMapType_10765)
(declare-fun newPMask@0 () T@PolymorphicMapType_11314)
(declare-fun Heap@2 () T@PolymorphicMapType_10765)
(declare-fun Heap@@36 () T@PolymorphicMapType_10765)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_10786)
(declare-fun Heap@0 () T@PolymorphicMapType_10765)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_10786)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_10786)
(declare-fun Mask@0 () T@PolymorphicMapType_10786)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun FrameFragment_5350 (T@Ref) T@FrameType)
(declare-fun FrameFragment_5383 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_10786)
(set-info :boogie-vc-id |get#definedness|)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon4_correct true))
(let ((anon6_Else_correct  (=> (= (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@1) this@@9 next) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 3) 1)) anon4_correct))))
(let ((anon6_Then_correct  (=> (not (= (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@1) this@@9 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_5 T@Ref) (f_11 T@Field_14152_1189) ) (!  (=> (or (select (|PolymorphicMapType_11314_5347_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| this@@9))) o_5 f_11) (select (|PolymorphicMapType_11314_5347_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@1) this@@9 next)))) o_5 f_11)) (select (|PolymorphicMapType_11314_5347_1189#PolymorphicMapType_11314| newPMask@0) o_5 f_11))
 :qid |stdinbpl.286:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11314_5347_1189#PolymorphicMapType_11314| newPMask@0) o_5 f_11))
)) (forall ((o_5@@0 T@Ref) (f_11@@0 T@Field_10838_10839) ) (!  (=> (or (select (|PolymorphicMapType_11314_5349_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| this@@9))) o_5@@0 f_11@@0) (select (|PolymorphicMapType_11314_5349_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@1) this@@9 next)))) o_5@@0 f_11@@0)) (select (|PolymorphicMapType_11314_5349_5350#PolymorphicMapType_11314| newPMask@0) o_5@@0 f_11@@0))
 :qid |stdinbpl.286:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11314_5349_5350#PolymorphicMapType_11314| newPMask@0) o_5@@0 f_11@@0))
))) (forall ((o_5@@1 T@Ref) (f_11@@1 T@Field_10825_53) ) (!  (=> (or (select (|PolymorphicMapType_11314_5347_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| this@@9))) o_5@@1 f_11@@1) (select (|PolymorphicMapType_11314_5347_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@1) this@@9 next)))) o_5@@1 f_11@@1)) (select (|PolymorphicMapType_11314_5347_53#PolymorphicMapType_11314| newPMask@0) o_5@@1 f_11@@1))
 :qid |stdinbpl.286:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11314_5347_53#PolymorphicMapType_11314| newPMask@0) o_5@@1 f_11@@1))
))) (forall ((o_5@@2 T@Ref) (f_11@@2 T@Field_5347_14541) ) (!  (=> (or (select (|PolymorphicMapType_11314_5347_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| this@@9))) o_5@@2 f_11@@2) (select (|PolymorphicMapType_11314_5347_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@1) this@@9 next)))) o_5@@2 f_11@@2)) (select (|PolymorphicMapType_11314_5347_14541#PolymorphicMapType_11314| newPMask@0) o_5@@2 f_11@@2))
 :qid |stdinbpl.286:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11314_5347_14541#PolymorphicMapType_11314| newPMask@0) o_5@@2 f_11@@2))
))) (forall ((o_5@@3 T@Ref) (f_11@@3 T@Field_5347_16667) ) (!  (=> (or (select (|PolymorphicMapType_11314_5347_43098#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| this@@9))) o_5@@3 f_11@@3) (select (|PolymorphicMapType_11314_5347_43098#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@1) this@@9 next)))) o_5@@3 f_11@@3)) (select (|PolymorphicMapType_11314_5347_43098#PolymorphicMapType_11314| newPMask@0) o_5@@3 f_11@@3))
 :qid |stdinbpl.286:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11314_5347_43098#PolymorphicMapType_11314| newPMask@0) o_5@@3 f_11@@3))
))) (forall ((o_5@@4 T@Ref) (f_11@@4 T@Field_14540_1189) ) (!  (=> (or (select (|PolymorphicMapType_11314_14540_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| this@@9))) o_5@@4 f_11@@4) (select (|PolymorphicMapType_11314_14540_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@1) this@@9 next)))) o_5@@4 f_11@@4)) (select (|PolymorphicMapType_11314_14540_1189#PolymorphicMapType_11314| newPMask@0) o_5@@4 f_11@@4))
 :qid |stdinbpl.286:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11314_14540_1189#PolymorphicMapType_11314| newPMask@0) o_5@@4 f_11@@4))
))) (forall ((o_5@@5 T@Ref) (f_11@@5 T@Field_14540_5350) ) (!  (=> (or (select (|PolymorphicMapType_11314_14540_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| this@@9))) o_5@@5 f_11@@5) (select (|PolymorphicMapType_11314_14540_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@1) this@@9 next)))) o_5@@5 f_11@@5)) (select (|PolymorphicMapType_11314_14540_5350#PolymorphicMapType_11314| newPMask@0) o_5@@5 f_11@@5))
 :qid |stdinbpl.286:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11314_14540_5350#PolymorphicMapType_11314| newPMask@0) o_5@@5 f_11@@5))
))) (forall ((o_5@@6 T@Ref) (f_11@@6 T@Field_14540_53) ) (!  (=> (or (select (|PolymorphicMapType_11314_14540_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| this@@9))) o_5@@6 f_11@@6) (select (|PolymorphicMapType_11314_14540_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@1) this@@9 next)))) o_5@@6 f_11@@6)) (select (|PolymorphicMapType_11314_14540_53#PolymorphicMapType_11314| newPMask@0) o_5@@6 f_11@@6))
 :qid |stdinbpl.286:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11314_14540_53#PolymorphicMapType_11314| newPMask@0) o_5@@6 f_11@@6))
))) (forall ((o_5@@7 T@Ref) (f_11@@7 T@Field_14540_14541) ) (!  (=> (or (select (|PolymorphicMapType_11314_14540_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| this@@9))) o_5@@7 f_11@@7) (select (|PolymorphicMapType_11314_14540_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@1) this@@9 next)))) o_5@@7 f_11@@7)) (select (|PolymorphicMapType_11314_14540_14541#PolymorphicMapType_11314| newPMask@0) o_5@@7 f_11@@7))
 :qid |stdinbpl.286:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11314_14540_14541#PolymorphicMapType_11314| newPMask@0) o_5@@7 f_11@@7))
))) (forall ((o_5@@8 T@Ref) (f_11@@8 T@Field_16662_16667) ) (!  (=> (or (select (|PolymorphicMapType_11314_14540_44146#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| this@@9))) o_5@@8 f_11@@8) (select (|PolymorphicMapType_11314_14540_44146#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@1) this@@9 next)))) o_5@@8 f_11@@8)) (select (|PolymorphicMapType_11314_14540_44146#PolymorphicMapType_11314| newPMask@0) o_5@@8 f_11@@8))
 :qid |stdinbpl.286:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_11314_14540_44146#PolymorphicMapType_11314| newPMask@0) o_5@@8 f_11@@8))
))) (= Heap@2 (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@1) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@1) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@1) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@1) (store (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@1) null (|inv#sm| this@@9) newPMask@0) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@1) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@1) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@1) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@1) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 2) 1))) anon4_correct))))
(let ((anon2_correct  (=> (state Heap@@36 UnfoldingMask@3) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_5347_1189 UnfoldingMask@3 this@@9 value_1)) (=> (HasDirectPerm_5347_1189 UnfoldingMask@3 this@@9 value_1) (=> (and (= Heap@0 (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@36) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@36) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@36) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@36) (store (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@36) null (|inv#sm| this@@9) (PolymorphicMapType_11314 (store (|PolymorphicMapType_11314_5347_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@36) null (|inv#sm| this@@9))) this@@9 value_1 true) (|PolymorphicMapType_11314_5349_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@36) null (|inv#sm| this@@9))) (|PolymorphicMapType_11314_5347_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@36) null (|inv#sm| this@@9))) (|PolymorphicMapType_11314_5347_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@36) null (|inv#sm| this@@9))) (|PolymorphicMapType_11314_5347_43098#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@36) null (|inv#sm| this@@9))) (|PolymorphicMapType_11314_14540_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@36) null (|inv#sm| this@@9))) (|PolymorphicMapType_11314_14540_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@36) null (|inv#sm| this@@9))) (|PolymorphicMapType_11314_14540_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@36) null (|inv#sm| this@@9))) (|PolymorphicMapType_11314_14540_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@36) null (|inv#sm| this@@9))) (|PolymorphicMapType_11314_14540_44146#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@@36) null (|inv#sm| this@@9))))) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@@36) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@@36) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@@36) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@@36) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@@36))) (= Heap@1 (PolymorphicMapType_10765 (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@0) (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@0) (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@0) (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@0) (store (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@0) null (|inv#sm| this@@9) (PolymorphicMapType_11314 (|PolymorphicMapType_11314_5347_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@0) null (|inv#sm| this@@9))) (store (|PolymorphicMapType_11314_5349_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@0) null (|inv#sm| this@@9))) this@@9 next true) (|PolymorphicMapType_11314_5347_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@0) null (|inv#sm| this@@9))) (|PolymorphicMapType_11314_5347_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@0) null (|inv#sm| this@@9))) (|PolymorphicMapType_11314_5347_43098#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@0) null (|inv#sm| this@@9))) (|PolymorphicMapType_11314_14540_1189#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@0) null (|inv#sm| this@@9))) (|PolymorphicMapType_11314_14540_5350#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@0) null (|inv#sm| this@@9))) (|PolymorphicMapType_11314_14540_53#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@0) null (|inv#sm| this@@9))) (|PolymorphicMapType_11314_14540_14541#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@0) null (|inv#sm| this@@9))) (|PolymorphicMapType_11314_14540_44146#PolymorphicMapType_11314| (select (|PolymorphicMapType_10765_5386_16754#PolymorphicMapType_10765| Heap@0) null (|inv#sm| this@@9))))) (|PolymorphicMapType_10765_5347_14541#PolymorphicMapType_10765| Heap@0) (|PolymorphicMapType_10765_5347_40277#PolymorphicMapType_10765| Heap@0) (|PolymorphicMapType_10765_14540_1189#PolymorphicMapType_10765| Heap@0) (|PolymorphicMapType_10765_14540_5350#PolymorphicMapType_10765| Heap@0) (|PolymorphicMapType_10765_14540_53#PolymorphicMapType_10765| Heap@0)))) (and (=> (= (ControlFlow 0 4) 2) anon6_Then_correct) (=> (= (ControlFlow 0 4) 3) anon6_Else_correct))))))))
(let ((anon5_Else_correct  (=> (= (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@36) this@@9 next) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 7) 4)) anon2_correct))))
(let ((anon5_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@36) this@@9 next) null)) (= UnfoldingMask@2 (PolymorphicMapType_10786 (store (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| UnfoldingMask@1) null (inv (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@36) this@@9 next)) (+ (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| UnfoldingMask@1) null (inv (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@36) this@@9 next))) FullPerm)) (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| UnfoldingMask@1) (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| UnfoldingMask@1) (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| UnfoldingMask@1) (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| UnfoldingMask@1) (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| UnfoldingMask@1) (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| UnfoldingMask@1) (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| UnfoldingMask@1) (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| UnfoldingMask@1) (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_5382_5382 (inv this@@9) (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@36) null (inv this@@9)) (inv (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@36) this@@9 next)) (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@36) null (inv (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@36) this@@9 next)))) (state Heap@@36 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 6) 4))) anon2_correct))))
(let ((anon0_correct  (=> (state Heap@@36 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_10765_5219_53#PolymorphicMapType_10765| Heap@@36) this@@9 $allocated)) (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_10786 (store (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| ZeroMask) null (inv this@@9) (+ (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| ZeroMask) null (inv this@@9)) FullPerm)) (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| ZeroMask) (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| ZeroMask) (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| ZeroMask) (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| ZeroMask) (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| ZeroMask) (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| ZeroMask) (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| ZeroMask) (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| ZeroMask) (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| ZeroMask))))) (and (and (state Heap@@36 Mask@0) (state Heap@@36 Mask@0)) (and (|inv#trigger_5382| Heap@@36 (inv this@@9)) (= (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@36) null (inv this@@9)) (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_10765_5347_1189#PolymorphicMapType_10765| Heap@@36) this@@9 value_1)) (CombineFrames (FrameFragment_5350 (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@36) this@@9 next)) (FrameFragment_5383 (ite (not (= (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@36) this@@9 next) null)) (select (|PolymorphicMapType_10765_5382_5383#PolymorphicMapType_10765| Heap@@36) null (inv (select (|PolymorphicMapType_10765_5222_5223#PolymorphicMapType_10765| Heap@@36) this@@9 next))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| Mask@0) null (inv this@@9))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| Mask@0) null (inv this@@9)))) (=> (and (not (= this@@9 null)) (= UnfoldingMask@0 (PolymorphicMapType_10786 (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| Mask@0) (store (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| Mask@0) this@@9 value_1 (+ (select (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| Mask@0) this@@9 value_1) FullPerm)) (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| Mask@0) (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| Mask@0) (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| Mask@0) (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| Mask@0) (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| Mask@0) (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| Mask@0) (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| Mask@0) (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| Mask@0)))) (=> (and (and (state Heap@@36 UnfoldingMask@0) (not (= this@@9 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_10786 (|PolymorphicMapType_10786_5382_5383#PolymorphicMapType_10786| UnfoldingMask@0) (|PolymorphicMapType_10786_5347_1189#PolymorphicMapType_10786| UnfoldingMask@0) (store (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| UnfoldingMask@0) this@@9 next (+ (select (|PolymorphicMapType_10786_5349_5350#PolymorphicMapType_10786| UnfoldingMask@0) this@@9 next) FullPerm)) (|PolymorphicMapType_10786_5382_1189#PolymorphicMapType_10786| UnfoldingMask@0) (|PolymorphicMapType_10786_5382_5350#PolymorphicMapType_10786| UnfoldingMask@0) (|PolymorphicMapType_10786_5382_53#PolymorphicMapType_10786| UnfoldingMask@0) (|PolymorphicMapType_10786_5382_49537#PolymorphicMapType_10786| UnfoldingMask@0) (|PolymorphicMapType_10786_5347_5383#PolymorphicMapType_10786| UnfoldingMask@0) (|PolymorphicMapType_10786_5347_53#PolymorphicMapType_10786| UnfoldingMask@0) (|PolymorphicMapType_10786_5347_49936#PolymorphicMapType_10786| UnfoldingMask@0))) (state Heap@@36 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 8) 6) anon5_Then_correct) (=> (= (ControlFlow 0 8) 7) anon5_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 8) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
