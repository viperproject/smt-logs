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
(declare-sort T@Field_7193_53 0)
(declare-sort T@Field_7206_7207 0)
(declare-sort T@Field_10986_10987 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_10520_1189 0)
(declare-sort T@Field_13743_13748 0)
(declare-sort T@Field_3840_3875 0)
(declare-sort T@Field_3840_13748 0)
(declare-sort T@Field_3874_3841 0)
(declare-sort T@Field_3874_53 0)
(declare-sort T@Field_3874_1189 0)
(declare-datatypes ((T@PolymorphicMapType_7154 0)) (((PolymorphicMapType_7154 (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| (Array T@Ref T@Field_10986_10987 Real)) (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| (Array T@Ref T@Field_10520_1189 Real)) (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| (Array T@Ref T@Field_7206_7207 Real)) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| (Array T@Ref T@Field_3874_1189 Real)) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| (Array T@Ref T@Field_3874_3841 Real)) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| (Array T@Ref T@Field_3874_53 Real)) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| (Array T@Ref T@Field_13743_13748 Real)) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| (Array T@Ref T@Field_3840_3875 Real)) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| (Array T@Ref T@Field_7193_53 Real)) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| (Array T@Ref T@Field_3840_13748 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7682 0)) (((PolymorphicMapType_7682 (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (Array T@Ref T@Field_10520_1189 Bool)) (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (Array T@Ref T@Field_7206_7207 Bool)) (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (Array T@Ref T@Field_7193_53 Bool)) (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (Array T@Ref T@Field_3840_3875 Bool)) (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (Array T@Ref T@Field_3840_13748 Bool)) (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (Array T@Ref T@Field_3874_1189 Bool)) (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (Array T@Ref T@Field_3874_3841 Bool)) (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (Array T@Ref T@Field_3874_53 Bool)) (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (Array T@Ref T@Field_10986_10987 Bool)) (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (Array T@Ref T@Field_13743_13748 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7133 0)) (((PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| (Array T@Ref T@Field_7193_53 Bool)) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| (Array T@Ref T@Field_7206_7207 T@Ref)) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| (Array T@Ref T@Field_10986_10987 T@FrameType)) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| (Array T@Ref T@Field_10520_1189 Int)) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| (Array T@Ref T@Field_13743_13748 T@PolymorphicMapType_7682)) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| (Array T@Ref T@Field_3840_3875 T@FrameType)) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| (Array T@Ref T@Field_3840_13748 T@PolymorphicMapType_7682)) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| (Array T@Ref T@Field_3874_3841 T@Ref)) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| (Array T@Ref T@Field_3874_53 Bool)) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| (Array T@Ref T@Field_3874_1189 Int)) ) ) ))
(declare-fun $allocated () T@Field_7193_53)
(declare-fun elem () T@Field_10520_1189)
(declare-fun next () T@Field_7206_7207)
(declare-fun succHeap (T@PolymorphicMapType_7133 T@PolymorphicMapType_7133) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7133 T@PolymorphicMapType_7133) Bool)
(declare-fun state (T@PolymorphicMapType_7133 T@PolymorphicMapType_7154) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7154) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7682)
(declare-fun list2 (T@Ref Int) T@Field_10986_10987)
(declare-fun IsPredicateField_3874_3875 (T@Field_10986_10987) Bool)
(declare-fun |foo'| (T@PolymorphicMapType_7133 T@Ref Int) Bool)
(declare-fun dummyFunction_1482 (Bool) Bool)
(declare-fun |foo#triggerStateless| (T@Ref Int) Bool)
(declare-fun |list2#trigger_3874| (T@PolymorphicMapType_7133 T@Field_10986_10987) Bool)
(declare-fun |list2#everUsed_3874| (T@Field_10986_10987) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7133 T@PolymorphicMapType_7133 T@PolymorphicMapType_7154) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3874 (T@Field_10986_10987) T@Field_13743_13748)
(declare-fun HasDirectPerm_3874_3875 (T@PolymorphicMapType_7154 T@Ref T@Field_10986_10987) Bool)
(declare-fun IsPredicateField_3840_25789 (T@Field_3840_3875) Bool)
(declare-fun PredicateMaskField_3840 (T@Field_3840_3875) T@Field_3840_13748)
(declare-fun HasDirectPerm_3840_3875 (T@PolymorphicMapType_7154 T@Ref T@Field_3840_3875) Bool)
(declare-fun IsWandField_3874_29459 (T@Field_10986_10987) Bool)
(declare-fun WandMaskField_3874 (T@Field_10986_10987) T@Field_13743_13748)
(declare-fun IsWandField_3840_29102 (T@Field_3840_3875) Bool)
(declare-fun WandMaskField_3840 (T@Field_3840_3875) T@Field_3840_13748)
(declare-fun |list2#sm| (T@Ref Int) T@Field_13743_13748)
(declare-fun dummyHeap () T@PolymorphicMapType_7133)
(declare-fun ZeroMask () T@PolymorphicMapType_7154)
(declare-fun InsidePredicate_7193_7193 (T@Field_3840_3875 T@FrameType T@Field_3840_3875 T@FrameType) Bool)
(declare-fun InsidePredicate_3874_3874 (T@Field_10986_10987 T@FrameType T@Field_10986_10987 T@FrameType) Bool)
(declare-fun IsPredicateField_3838_1189 (T@Field_10520_1189) Bool)
(declare-fun IsWandField_3838_1189 (T@Field_10520_1189) Bool)
(declare-fun IsPredicateField_3840_3841 (T@Field_7206_7207) Bool)
(declare-fun IsWandField_3840_3841 (T@Field_7206_7207) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3838_36362 (T@Field_3840_13748) Bool)
(declare-fun IsWandField_3838_36378 (T@Field_3840_13748) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3838_53 (T@Field_7193_53) Bool)
(declare-fun IsWandField_3838_53 (T@Field_7193_53) Bool)
(declare-fun IsPredicateField_3874_35559 (T@Field_13743_13748) Bool)
(declare-fun IsWandField_3874_35575 (T@Field_13743_13748) Bool)
(declare-fun IsPredicateField_3874_53 (T@Field_3874_53) Bool)
(declare-fun IsWandField_3874_53 (T@Field_3874_53) Bool)
(declare-fun IsPredicateField_3874_3841 (T@Field_3874_3841) Bool)
(declare-fun IsWandField_3874_3841 (T@Field_3874_3841) Bool)
(declare-fun IsPredicateField_3874_1189 (T@Field_3874_1189) Bool)
(declare-fun IsWandField_3874_1189 (T@Field_3874_1189) Bool)
(declare-fun HasDirectPerm_3874_25544 (T@PolymorphicMapType_7154 T@Ref T@Field_13743_13748) Bool)
(declare-fun HasDirectPerm_3874_1189 (T@PolymorphicMapType_7154 T@Ref T@Field_3874_1189) Bool)
(declare-fun HasDirectPerm_3874_53 (T@PolymorphicMapType_7154 T@Ref T@Field_3874_53) Bool)
(declare-fun HasDirectPerm_3874_3841 (T@PolymorphicMapType_7154 T@Ref T@Field_3874_3841) Bool)
(declare-fun HasDirectPerm_3840_24403 (T@PolymorphicMapType_7154 T@Ref T@Field_3840_13748) Bool)
(declare-fun HasDirectPerm_3840_1189 (T@PolymorphicMapType_7154 T@Ref T@Field_10520_1189) Bool)
(declare-fun HasDirectPerm_3840_53 (T@PolymorphicMapType_7154 T@Ref T@Field_7193_53) Bool)
(declare-fun HasDirectPerm_3840_3841 (T@PolymorphicMapType_7154 T@Ref T@Field_7206_7207) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7154 T@PolymorphicMapType_7154 T@PolymorphicMapType_7154) Bool)
(declare-fun getPredWandId_3874_3875 (T@Field_10986_10987) Int)
(declare-fun InsidePredicate_7193_3874 (T@Field_3840_3875 T@FrameType T@Field_10986_10987 T@FrameType) Bool)
(declare-fun InsidePredicate_3874_7193 (T@Field_10986_10987 T@FrameType T@Field_3840_3875 T@FrameType) Bool)
(declare-fun foo_1 (T@PolymorphicMapType_7133 T@Ref Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |foo#frame| (T@FrameType T@Ref Int) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7133) (Heap1 T@PolymorphicMapType_7133) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7133) (Mask T@PolymorphicMapType_7154) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7133) (Heap1@@0 T@PolymorphicMapType_7133) (Heap2 T@PolymorphicMapType_7133) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_13743_13748) ) (!  (not (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10986_10987) ) (!  (not (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3874_53) ) (!  (not (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3874_3841) ) (!  (not (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3874_1189) ) (!  (not (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3840_13748) ) (!  (not (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3840_3875) ) (!  (not (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7193_53) ) (!  (not (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_7206_7207) ) (!  (not (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_10520_1189) ) (!  (not (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((this T@Ref) (i Int) ) (! (IsPredicateField_3874_3875 (list2 this i))
 :qid |stdinbpl.344:15|
 :skolemid |30|
 :pattern ( (list2 this i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7133) (l_1 T@Ref) (i@@0 Int) ) (! (dummyFunction_1482 (|foo#triggerStateless| l_1 i@@0))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|foo'| Heap@@0 l_1 i@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7133) (this@@0 T@Ref) (i@@1 Int) ) (! (|list2#everUsed_3874| (list2 this@@0 i@@1))
 :qid |stdinbpl.363:15|
 :skolemid |34|
 :pattern ( (|list2#trigger_3874| Heap@@1 (list2 this@@0 i@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7133) (ExhaleHeap T@PolymorphicMapType_7133) (Mask@@0 T@PolymorphicMapType_7154) (pm_f_18 T@Field_10986_10987) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3874_3875 Mask@@0 null pm_f_18) (IsPredicateField_3874_3875 pm_f_18)) (= (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@2) null (PredicateMaskField_3874 pm_f_18)) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap) null (PredicateMaskField_3874 pm_f_18)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_3874_3875 pm_f_18) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap) null (PredicateMaskField_3874 pm_f_18)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7133) (ExhaleHeap@@0 T@PolymorphicMapType_7133) (Mask@@1 T@PolymorphicMapType_7154) (pm_f_18@@0 T@Field_3840_3875) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3840_3875 Mask@@1 null pm_f_18@@0) (IsPredicateField_3840_25789 pm_f_18@@0)) (= (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@3) null (PredicateMaskField_3840 pm_f_18@@0)) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@0) null (PredicateMaskField_3840 pm_f_18@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3840_25789 pm_f_18@@0) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@0) null (PredicateMaskField_3840 pm_f_18@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7133) (ExhaleHeap@@1 T@PolymorphicMapType_7133) (Mask@@2 T@PolymorphicMapType_7154) (pm_f_18@@1 T@Field_10986_10987) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3874_3875 Mask@@2 null pm_f_18@@1) (IsWandField_3874_29459 pm_f_18@@1)) (= (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@4) null (WandMaskField_3874 pm_f_18@@1)) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@1) null (WandMaskField_3874 pm_f_18@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsWandField_3874_29459 pm_f_18@@1) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@1) null (WandMaskField_3874 pm_f_18@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7133) (ExhaleHeap@@2 T@PolymorphicMapType_7133) (Mask@@3 T@PolymorphicMapType_7154) (pm_f_18@@2 T@Field_3840_3875) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3840_3875 Mask@@3 null pm_f_18@@2) (IsWandField_3840_29102 pm_f_18@@2)) (= (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@5) null (WandMaskField_3840 pm_f_18@@2)) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@2) null (WandMaskField_3840 pm_f_18@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_3840_29102 pm_f_18@@2) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@2) null (WandMaskField_3840 pm_f_18@@2)))
)))
(assert (forall ((this@@1 T@Ref) (i@@2 Int) (this2 T@Ref) (i2 Int) ) (!  (=> (= (list2 this@@1 i@@2) (list2 this2 i2)) (and (= this@@1 this2) (= i@@2 i2)))
 :qid |stdinbpl.354:15|
 :skolemid |32|
 :pattern ( (list2 this@@1 i@@2) (list2 this2 i2))
)))
(assert (forall ((this@@2 T@Ref) (i@@3 Int) (this2@@0 T@Ref) (i2@@0 Int) ) (!  (=> (= (|list2#sm| this@@2 i@@3) (|list2#sm| this2@@0 i2@@0)) (and (= this@@2 this2@@0) (= i@@3 i2@@0)))
 :qid |stdinbpl.358:15|
 :skolemid |33|
 :pattern ( (|list2#sm| this@@2 i@@3) (|list2#sm| this2@@0 i2@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7133) (ExhaleHeap@@3 T@PolymorphicMapType_7133) (Mask@@4 T@PolymorphicMapType_7154) (pm_f_18@@3 T@Field_10986_10987) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_3874_3875 Mask@@4 null pm_f_18@@3) (IsPredicateField_3874_3875 pm_f_18@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_18 T@Ref) (f_21 T@Field_10520_1189) ) (!  (=> (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_18@@3))) o2_18 f_21) (= (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@6) o2_18 f_21) (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18 f_21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18 f_21))
)) (forall ((o2_18@@0 T@Ref) (f_21@@0 T@Field_7206_7207) ) (!  (=> (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_18@@3))) o2_18@@0 f_21@@0) (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@6) o2_18@@0 f_21@@0) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@0 f_21@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@0 f_21@@0))
))) (forall ((o2_18@@1 T@Ref) (f_21@@1 T@Field_7193_53) ) (!  (=> (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_18@@3))) o2_18@@1 f_21@@1) (= (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@6) o2_18@@1 f_21@@1) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@1 f_21@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@1 f_21@@1))
))) (forall ((o2_18@@2 T@Ref) (f_21@@2 T@Field_3840_3875) ) (!  (=> (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_18@@3))) o2_18@@2 f_21@@2) (= (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@6) o2_18@@2 f_21@@2) (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@2 f_21@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@2 f_21@@2))
))) (forall ((o2_18@@3 T@Ref) (f_21@@3 T@Field_3840_13748) ) (!  (=> (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_18@@3))) o2_18@@3 f_21@@3) (= (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@6) o2_18@@3 f_21@@3) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@3 f_21@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@3 f_21@@3))
))) (forall ((o2_18@@4 T@Ref) (f_21@@4 T@Field_3874_1189) ) (!  (=> (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_18@@3))) o2_18@@4 f_21@@4) (= (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@6) o2_18@@4 f_21@@4) (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@4 f_21@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@4 f_21@@4))
))) (forall ((o2_18@@5 T@Ref) (f_21@@5 T@Field_3874_3841) ) (!  (=> (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_18@@3))) o2_18@@5 f_21@@5) (= (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@6) o2_18@@5 f_21@@5) (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@5 f_21@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@5 f_21@@5))
))) (forall ((o2_18@@6 T@Ref) (f_21@@6 T@Field_3874_53) ) (!  (=> (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_18@@3))) o2_18@@6 f_21@@6) (= (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@6) o2_18@@6 f_21@@6) (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@6 f_21@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@6 f_21@@6))
))) (forall ((o2_18@@7 T@Ref) (f_21@@7 T@Field_10986_10987) ) (!  (=> (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_18@@3))) o2_18@@7 f_21@@7) (= (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@6) o2_18@@7 f_21@@7) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@7 f_21@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@7 f_21@@7))
))) (forall ((o2_18@@8 T@Ref) (f_21@@8 T@Field_13743_13748) ) (!  (=> (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_18@@3))) o2_18@@8 f_21@@8) (= (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) o2_18@@8 f_21@@8) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@8 f_21@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@3) o2_18@@8 f_21@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3874_3875 pm_f_18@@3))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7133) (ExhaleHeap@@4 T@PolymorphicMapType_7133) (Mask@@5 T@PolymorphicMapType_7154) (pm_f_18@@4 T@Field_3840_3875) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3840_3875 Mask@@5 null pm_f_18@@4) (IsPredicateField_3840_25789 pm_f_18@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_18@@9 T@Ref) (f_21@@9 T@Field_10520_1189) ) (!  (=> (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_18@@4))) o2_18@@9 f_21@@9) (= (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@7) o2_18@@9 f_21@@9) (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@9 f_21@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@9 f_21@@9))
)) (forall ((o2_18@@10 T@Ref) (f_21@@10 T@Field_7206_7207) ) (!  (=> (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_18@@4))) o2_18@@10 f_21@@10) (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@7) o2_18@@10 f_21@@10) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@10 f_21@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@10 f_21@@10))
))) (forall ((o2_18@@11 T@Ref) (f_21@@11 T@Field_7193_53) ) (!  (=> (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_18@@4))) o2_18@@11 f_21@@11) (= (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@7) o2_18@@11 f_21@@11) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@11 f_21@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@11 f_21@@11))
))) (forall ((o2_18@@12 T@Ref) (f_21@@12 T@Field_3840_3875) ) (!  (=> (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_18@@4))) o2_18@@12 f_21@@12) (= (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@7) o2_18@@12 f_21@@12) (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@12 f_21@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@12 f_21@@12))
))) (forall ((o2_18@@13 T@Ref) (f_21@@13 T@Field_3840_13748) ) (!  (=> (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_18@@4))) o2_18@@13 f_21@@13) (= (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) o2_18@@13 f_21@@13) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@13 f_21@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@13 f_21@@13))
))) (forall ((o2_18@@14 T@Ref) (f_21@@14 T@Field_3874_1189) ) (!  (=> (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_18@@4))) o2_18@@14 f_21@@14) (= (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@7) o2_18@@14 f_21@@14) (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@14 f_21@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@14 f_21@@14))
))) (forall ((o2_18@@15 T@Ref) (f_21@@15 T@Field_3874_3841) ) (!  (=> (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_18@@4))) o2_18@@15 f_21@@15) (= (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@7) o2_18@@15 f_21@@15) (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@15 f_21@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@15 f_21@@15))
))) (forall ((o2_18@@16 T@Ref) (f_21@@16 T@Field_3874_53) ) (!  (=> (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_18@@4))) o2_18@@16 f_21@@16) (= (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@7) o2_18@@16 f_21@@16) (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@16 f_21@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@16 f_21@@16))
))) (forall ((o2_18@@17 T@Ref) (f_21@@17 T@Field_10986_10987) ) (!  (=> (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_18@@4))) o2_18@@17 f_21@@17) (= (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@7) o2_18@@17 f_21@@17) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@17 f_21@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@17 f_21@@17))
))) (forall ((o2_18@@18 T@Ref) (f_21@@18 T@Field_13743_13748) ) (!  (=> (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_18@@4))) o2_18@@18 f_21@@18) (= (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@7) o2_18@@18 f_21@@18) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@18 f_21@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@4) o2_18@@18 f_21@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3840_25789 pm_f_18@@4))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7133) (ExhaleHeap@@5 T@PolymorphicMapType_7133) (Mask@@6 T@PolymorphicMapType_7154) (pm_f_18@@5 T@Field_10986_10987) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_3874_3875 Mask@@6 null pm_f_18@@5) (IsWandField_3874_29459 pm_f_18@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_18@@19 T@Ref) (f_21@@19 T@Field_10520_1189) ) (!  (=> (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_18@@5))) o2_18@@19 f_21@@19) (= (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@8) o2_18@@19 f_21@@19) (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@19 f_21@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@19 f_21@@19))
)) (forall ((o2_18@@20 T@Ref) (f_21@@20 T@Field_7206_7207) ) (!  (=> (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_18@@5))) o2_18@@20 f_21@@20) (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@8) o2_18@@20 f_21@@20) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@20 f_21@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@20 f_21@@20))
))) (forall ((o2_18@@21 T@Ref) (f_21@@21 T@Field_7193_53) ) (!  (=> (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_18@@5))) o2_18@@21 f_21@@21) (= (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@8) o2_18@@21 f_21@@21) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@21 f_21@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@21 f_21@@21))
))) (forall ((o2_18@@22 T@Ref) (f_21@@22 T@Field_3840_3875) ) (!  (=> (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_18@@5))) o2_18@@22 f_21@@22) (= (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@8) o2_18@@22 f_21@@22) (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@22 f_21@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@22 f_21@@22))
))) (forall ((o2_18@@23 T@Ref) (f_21@@23 T@Field_3840_13748) ) (!  (=> (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_18@@5))) o2_18@@23 f_21@@23) (= (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@8) o2_18@@23 f_21@@23) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@23 f_21@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@23 f_21@@23))
))) (forall ((o2_18@@24 T@Ref) (f_21@@24 T@Field_3874_1189) ) (!  (=> (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_18@@5))) o2_18@@24 f_21@@24) (= (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@8) o2_18@@24 f_21@@24) (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@24 f_21@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@24 f_21@@24))
))) (forall ((o2_18@@25 T@Ref) (f_21@@25 T@Field_3874_3841) ) (!  (=> (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_18@@5))) o2_18@@25 f_21@@25) (= (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@8) o2_18@@25 f_21@@25) (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@25 f_21@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@25 f_21@@25))
))) (forall ((o2_18@@26 T@Ref) (f_21@@26 T@Field_3874_53) ) (!  (=> (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_18@@5))) o2_18@@26 f_21@@26) (= (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@8) o2_18@@26 f_21@@26) (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@26 f_21@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@26 f_21@@26))
))) (forall ((o2_18@@27 T@Ref) (f_21@@27 T@Field_10986_10987) ) (!  (=> (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_18@@5))) o2_18@@27 f_21@@27) (= (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@8) o2_18@@27 f_21@@27) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@27 f_21@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@27 f_21@@27))
))) (forall ((o2_18@@28 T@Ref) (f_21@@28 T@Field_13743_13748) ) (!  (=> (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_18@@5))) o2_18@@28 f_21@@28) (= (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) o2_18@@28 f_21@@28) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@28 f_21@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@5) o2_18@@28 f_21@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_3874_29459 pm_f_18@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7133) (ExhaleHeap@@6 T@PolymorphicMapType_7133) (Mask@@7 T@PolymorphicMapType_7154) (pm_f_18@@6 T@Field_3840_3875) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3840_3875 Mask@@7 null pm_f_18@@6) (IsWandField_3840_29102 pm_f_18@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_18@@29 T@Ref) (f_21@@29 T@Field_10520_1189) ) (!  (=> (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_18@@6))) o2_18@@29 f_21@@29) (= (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@9) o2_18@@29 f_21@@29) (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@29 f_21@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@29 f_21@@29))
)) (forall ((o2_18@@30 T@Ref) (f_21@@30 T@Field_7206_7207) ) (!  (=> (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_18@@6))) o2_18@@30 f_21@@30) (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@9) o2_18@@30 f_21@@30) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@30 f_21@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@30 f_21@@30))
))) (forall ((o2_18@@31 T@Ref) (f_21@@31 T@Field_7193_53) ) (!  (=> (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_18@@6))) o2_18@@31 f_21@@31) (= (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@9) o2_18@@31 f_21@@31) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@31 f_21@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@31 f_21@@31))
))) (forall ((o2_18@@32 T@Ref) (f_21@@32 T@Field_3840_3875) ) (!  (=> (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_18@@6))) o2_18@@32 f_21@@32) (= (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@9) o2_18@@32 f_21@@32) (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@32 f_21@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@32 f_21@@32))
))) (forall ((o2_18@@33 T@Ref) (f_21@@33 T@Field_3840_13748) ) (!  (=> (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_18@@6))) o2_18@@33 f_21@@33) (= (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) o2_18@@33 f_21@@33) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@33 f_21@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@33 f_21@@33))
))) (forall ((o2_18@@34 T@Ref) (f_21@@34 T@Field_3874_1189) ) (!  (=> (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_18@@6))) o2_18@@34 f_21@@34) (= (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@9) o2_18@@34 f_21@@34) (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@34 f_21@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@34 f_21@@34))
))) (forall ((o2_18@@35 T@Ref) (f_21@@35 T@Field_3874_3841) ) (!  (=> (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_18@@6))) o2_18@@35 f_21@@35) (= (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@9) o2_18@@35 f_21@@35) (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@35 f_21@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@35 f_21@@35))
))) (forall ((o2_18@@36 T@Ref) (f_21@@36 T@Field_3874_53) ) (!  (=> (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_18@@6))) o2_18@@36 f_21@@36) (= (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@9) o2_18@@36 f_21@@36) (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@36 f_21@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@36 f_21@@36))
))) (forall ((o2_18@@37 T@Ref) (f_21@@37 T@Field_10986_10987) ) (!  (=> (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_18@@6))) o2_18@@37 f_21@@37) (= (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@9) o2_18@@37 f_21@@37) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@37 f_21@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@37 f_21@@37))
))) (forall ((o2_18@@38 T@Ref) (f_21@@38 T@Field_13743_13748) ) (!  (=> (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_18@@6))) o2_18@@38 f_21@@38) (= (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@9) o2_18@@38 f_21@@38) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@38 f_21@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@6) o2_18@@38 f_21@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_3840_29102 pm_f_18@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7133) (ExhaleHeap@@7 T@PolymorphicMapType_7133) (Mask@@8 T@PolymorphicMapType_7154) (o_39 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@10) o_39 $allocated) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@7) o_39 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@7) o_39 $allocated))
)))
(assert (forall ((p T@Field_3840_3875) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7193_7193 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7193_7193 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_10986_10987) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3874_3874 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3874_3874 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3838_1189 elem)))
(assert  (not (IsWandField_3838_1189 elem)))
(assert  (not (IsPredicateField_3840_3841 next)))
(assert  (not (IsWandField_3840_3841 next)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7133) (ExhaleHeap@@8 T@PolymorphicMapType_7133) (Mask@@9 T@PolymorphicMapType_7154) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@11 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7154) (o_2@@9 T@Ref) (f_4@@9 T@Field_3840_13748) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3838_36362 f_4@@9))) (not (IsWandField_3838_36378 f_4@@9))) (<= (select (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7154) (o_2@@10 T@Ref) (f_4@@10 T@Field_7193_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3838_53 f_4@@10))) (not (IsWandField_3838_53 f_4@@10))) (<= (select (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7154) (o_2@@11 T@Ref) (f_4@@11 T@Field_7206_7207) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3840_3841 f_4@@11))) (not (IsWandField_3840_3841 f_4@@11))) (<= (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7154) (o_2@@12 T@Ref) (f_4@@12 T@Field_10520_1189) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3838_1189 f_4@@12))) (not (IsWandField_3838_1189 f_4@@12))) (<= (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7154) (o_2@@13 T@Ref) (f_4@@13 T@Field_3840_3875) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3840_25789 f_4@@13))) (not (IsWandField_3840_29102 f_4@@13))) (<= (select (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7154) (o_2@@14 T@Ref) (f_4@@14 T@Field_13743_13748) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3874_35559 f_4@@14))) (not (IsWandField_3874_35575 f_4@@14))) (<= (select (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7154) (o_2@@15 T@Ref) (f_4@@15 T@Field_3874_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3874_53 f_4@@15))) (not (IsWandField_3874_53 f_4@@15))) (<= (select (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7154) (o_2@@16 T@Ref) (f_4@@16 T@Field_3874_3841) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3874_3841 f_4@@16))) (not (IsWandField_3874_3841 f_4@@16))) (<= (select (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7154) (o_2@@17 T@Ref) (f_4@@17 T@Field_3874_1189) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3874_1189 f_4@@17))) (not (IsWandField_3874_1189 f_4@@17))) (<= (select (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7154) (o_2@@18 T@Ref) (f_4@@18 T@Field_10986_10987) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3874_3875 f_4@@18))) (not (IsWandField_3874_29459 f_4@@18))) (<= (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7154) (o_2@@19 T@Ref) (f_4@@19 T@Field_13743_13748) ) (! (= (HasDirectPerm_3874_25544 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3874_25544 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7154) (o_2@@20 T@Ref) (f_4@@20 T@Field_3874_1189) ) (! (= (HasDirectPerm_3874_1189 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3874_1189 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7154) (o_2@@21 T@Ref) (f_4@@21 T@Field_3874_53) ) (! (= (HasDirectPerm_3874_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3874_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7154) (o_2@@22 T@Ref) (f_4@@22 T@Field_10986_10987) ) (! (= (HasDirectPerm_3874_3875 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3874_3875 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7154) (o_2@@23 T@Ref) (f_4@@23 T@Field_3874_3841) ) (! (= (HasDirectPerm_3874_3841 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3874_3841 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7154) (o_2@@24 T@Ref) (f_4@@24 T@Field_3840_13748) ) (! (= (HasDirectPerm_3840_24403 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3840_24403 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_7154) (o_2@@25 T@Ref) (f_4@@25 T@Field_10520_1189) ) (! (= (HasDirectPerm_3840_1189 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3840_1189 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_7154) (o_2@@26 T@Ref) (f_4@@26 T@Field_7193_53) ) (! (= (HasDirectPerm_3840_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3840_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_7154) (o_2@@27 T@Ref) (f_4@@27 T@Field_3840_3875) ) (! (= (HasDirectPerm_3840_3875 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3840_3875 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_7154) (o_2@@28 T@Ref) (f_4@@28 T@Field_7206_7207) ) (! (= (HasDirectPerm_3840_3841 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3840_3841 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7133) (ExhaleHeap@@9 T@PolymorphicMapType_7133) (Mask@@30 T@PolymorphicMapType_7154) (o_39@@0 T@Ref) (f_21@@39 T@Field_13743_13748) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_3874_25544 Mask@@30 o_39@@0 f_21@@39) (= (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@12) o_39@@0 f_21@@39) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@9) o_39@@0 f_21@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@9) o_39@@0 f_21@@39))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7133) (ExhaleHeap@@10 T@PolymorphicMapType_7133) (Mask@@31 T@PolymorphicMapType_7154) (o_39@@1 T@Ref) (f_21@@40 T@Field_3874_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_3874_1189 Mask@@31 o_39@@1 f_21@@40) (= (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@13) o_39@@1 f_21@@40) (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@10) o_39@@1 f_21@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@10) o_39@@1 f_21@@40))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7133) (ExhaleHeap@@11 T@PolymorphicMapType_7133) (Mask@@32 T@PolymorphicMapType_7154) (o_39@@2 T@Ref) (f_21@@41 T@Field_3874_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_3874_53 Mask@@32 o_39@@2 f_21@@41) (= (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@14) o_39@@2 f_21@@41) (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@11) o_39@@2 f_21@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@11) o_39@@2 f_21@@41))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7133) (ExhaleHeap@@12 T@PolymorphicMapType_7133) (Mask@@33 T@PolymorphicMapType_7154) (o_39@@3 T@Ref) (f_21@@42 T@Field_10986_10987) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_3874_3875 Mask@@33 o_39@@3 f_21@@42) (= (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@15) o_39@@3 f_21@@42) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@12) o_39@@3 f_21@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@12) o_39@@3 f_21@@42))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7133) (ExhaleHeap@@13 T@PolymorphicMapType_7133) (Mask@@34 T@PolymorphicMapType_7154) (o_39@@4 T@Ref) (f_21@@43 T@Field_3874_3841) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_3874_3841 Mask@@34 o_39@@4 f_21@@43) (= (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@16) o_39@@4 f_21@@43) (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@13) o_39@@4 f_21@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@13) o_39@@4 f_21@@43))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7133) (ExhaleHeap@@14 T@PolymorphicMapType_7133) (Mask@@35 T@PolymorphicMapType_7154) (o_39@@5 T@Ref) (f_21@@44 T@Field_3840_13748) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_3840_24403 Mask@@35 o_39@@5 f_21@@44) (= (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@17) o_39@@5 f_21@@44) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@14) o_39@@5 f_21@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@14) o_39@@5 f_21@@44))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7133) (ExhaleHeap@@15 T@PolymorphicMapType_7133) (Mask@@36 T@PolymorphicMapType_7154) (o_39@@6 T@Ref) (f_21@@45 T@Field_10520_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_3840_1189 Mask@@36 o_39@@6 f_21@@45) (= (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@18) o_39@@6 f_21@@45) (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@15) o_39@@6 f_21@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@15) o_39@@6 f_21@@45))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7133) (ExhaleHeap@@16 T@PolymorphicMapType_7133) (Mask@@37 T@PolymorphicMapType_7154) (o_39@@7 T@Ref) (f_21@@46 T@Field_7193_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_3840_53 Mask@@37 o_39@@7 f_21@@46) (= (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@19) o_39@@7 f_21@@46) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@16) o_39@@7 f_21@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@16) o_39@@7 f_21@@46))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7133) (ExhaleHeap@@17 T@PolymorphicMapType_7133) (Mask@@38 T@PolymorphicMapType_7154) (o_39@@8 T@Ref) (f_21@@47 T@Field_3840_3875) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_3840_3875 Mask@@38 o_39@@8 f_21@@47) (= (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@20) o_39@@8 f_21@@47) (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@17) o_39@@8 f_21@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@17) o_39@@8 f_21@@47))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7133) (ExhaleHeap@@18 T@PolymorphicMapType_7133) (Mask@@39 T@PolymorphicMapType_7154) (o_39@@9 T@Ref) (f_21@@48 T@Field_7206_7207) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_3840_3841 Mask@@39 o_39@@9 f_21@@48) (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@21) o_39@@9 f_21@@48) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@18) o_39@@9 f_21@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@18) o_39@@9 f_21@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_3840_13748) ) (! (= (select (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_7193_53) ) (! (= (select (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_7206_7207) ) (! (= (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_10520_1189) ) (! (= (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_3840_3875) ) (! (= (select (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_13743_13748) ) (! (= (select (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_3874_53) ) (! (= (select (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_3874_3841) ) (! (= (select (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_3874_1189) ) (! (= (select (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_10986_10987) ) (! (= (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7154) (SummandMask1 T@PolymorphicMapType_7154) (SummandMask2 T@PolymorphicMapType_7154) (o_2@@39 T@Ref) (f_4@@39 T@Field_3840_13748) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7154) (SummandMask1@@0 T@PolymorphicMapType_7154) (SummandMask2@@0 T@PolymorphicMapType_7154) (o_2@@40 T@Ref) (f_4@@40 T@Field_7193_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7154) (SummandMask1@@1 T@PolymorphicMapType_7154) (SummandMask2@@1 T@PolymorphicMapType_7154) (o_2@@41 T@Ref) (f_4@@41 T@Field_7206_7207) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7154) (SummandMask1@@2 T@PolymorphicMapType_7154) (SummandMask2@@2 T@PolymorphicMapType_7154) (o_2@@42 T@Ref) (f_4@@42 T@Field_10520_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7154) (SummandMask1@@3 T@PolymorphicMapType_7154) (SummandMask2@@3 T@PolymorphicMapType_7154) (o_2@@43 T@Ref) (f_4@@43 T@Field_3840_3875) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7154) (SummandMask1@@4 T@PolymorphicMapType_7154) (SummandMask2@@4 T@PolymorphicMapType_7154) (o_2@@44 T@Ref) (f_4@@44 T@Field_13743_13748) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7154) (SummandMask1@@5 T@PolymorphicMapType_7154) (SummandMask2@@5 T@PolymorphicMapType_7154) (o_2@@45 T@Ref) (f_4@@45 T@Field_3874_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7154) (SummandMask1@@6 T@PolymorphicMapType_7154) (SummandMask2@@6 T@PolymorphicMapType_7154) (o_2@@46 T@Ref) (f_4@@46 T@Field_3874_3841) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_7154) (SummandMask1@@7 T@PolymorphicMapType_7154) (SummandMask2@@7 T@PolymorphicMapType_7154) (o_2@@47 T@Ref) (f_4@@47 T@Field_3874_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_7154) (SummandMask1@@8 T@PolymorphicMapType_7154) (SummandMask2@@8 T@PolymorphicMapType_7154) (o_2@@48 T@Ref) (f_4@@48 T@Field_10986_10987) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((this@@3 T@Ref) (i@@4 Int) ) (! (= (getPredWandId_3874_3875 (list2 this@@3 i@@4)) 0)
 :qid |stdinbpl.348:15|
 :skolemid |31|
 :pattern ( (list2 this@@3 i@@4))
)))
(assert (forall ((this@@4 T@Ref) (i@@5 Int) ) (! (= (PredicateMaskField_3874 (list2 this@@4 i@@5)) (|list2#sm| this@@4 i@@5))
 :qid |stdinbpl.340:15|
 :skolemid |29|
 :pattern ( (PredicateMaskField_3874 (list2 this@@4 i@@5)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7133) (o_38 T@Ref) (f_23 T@Field_13743_13748) (v T@PolymorphicMapType_7682) ) (! (succHeap Heap@@22 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@22) (store (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@22) o_38 f_23 v) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@22) (store (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@22) o_38 f_23 v) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7133) (o_38@@0 T@Ref) (f_23@@0 T@Field_3874_1189) (v@@0 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@23) (store (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@23) o_38@@0 f_23@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@23) (store (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@23) o_38@@0 f_23@@0 v@@0)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7133) (o_38@@1 T@Ref) (f_23@@1 T@Field_10986_10987) (v@@1 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@24) (store (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@24) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@24) (store (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@24) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7133) (o_38@@2 T@Ref) (f_23@@2 T@Field_3874_3841) (v@@2 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@25) (store (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@25) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@25) (store (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@25) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7133) (o_38@@3 T@Ref) (f_23@@3 T@Field_3874_53) (v@@3 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@26) (store (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@26) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@26) (store (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@26) o_38@@3 f_23@@3 v@@3) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7133) (o_38@@4 T@Ref) (f_23@@4 T@Field_3840_13748) (v@@4 T@PolymorphicMapType_7682) ) (! (succHeap Heap@@27 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@27) (store (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@27) o_38@@4 f_23@@4 v@@4) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@27) (store (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@27) o_38@@4 f_23@@4 v@@4) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7133) (o_38@@5 T@Ref) (f_23@@5 T@Field_10520_1189) (v@@5 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@28) (store (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@28) o_38@@5 f_23@@5 v@@5) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@28) (store (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@28) o_38@@5 f_23@@5 v@@5) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7133) (o_38@@6 T@Ref) (f_23@@6 T@Field_3840_3875) (v@@6 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@29) (store (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@29) o_38@@6 f_23@@6 v@@6) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@29) (store (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@29) o_38@@6 f_23@@6 v@@6) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7133) (o_38@@7 T@Ref) (f_23@@7 T@Field_7206_7207) (v@@7 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@30) (store (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@30) o_38@@7 f_23@@7 v@@7) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@30) (store (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@30) o_38@@7 f_23@@7 v@@7) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7133) (o_38@@8 T@Ref) (f_23@@8 T@Field_7193_53) (v@@8 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_7133 (store (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@31) o_38@@8 f_23@@8 v@@8) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (store (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@31) o_38@@8 f_23@@8 v@@8) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@31)))
)))
(assert (forall ((o_38@@9 T@Ref) (f_51 T@Field_7206_7207) (Heap@@32 T@PolymorphicMapType_7133) ) (!  (=> (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@32) o_38@@9 $allocated) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@32) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@32) o_38@@9 f_51) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@32) o_38@@9 f_51))
)))
(assert (forall ((p@@2 T@Field_3840_3875) (v_1@@1 T@FrameType) (q T@Field_3840_3875) (w@@1 T@FrameType) (r T@Field_3840_3875) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7193_7193 p@@2 v_1@@1 q w@@1) (InsidePredicate_7193_7193 q w@@1 r u)) (InsidePredicate_7193_7193 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7193_7193 p@@2 v_1@@1 q w@@1) (InsidePredicate_7193_7193 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_3840_3875) (v_1@@2 T@FrameType) (q@@0 T@Field_3840_3875) (w@@2 T@FrameType) (r@@0 T@Field_10986_10987) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_7193_7193 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7193_3874 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_7193_3874 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7193_7193 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7193_3874 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_3840_3875) (v_1@@3 T@FrameType) (q@@1 T@Field_10986_10987) (w@@3 T@FrameType) (r@@1 T@Field_3840_3875) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_7193_3874 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3874_7193 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_7193_7193 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7193_3874 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3874_7193 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_3840_3875) (v_1@@4 T@FrameType) (q@@2 T@Field_10986_10987) (w@@4 T@FrameType) (r@@2 T@Field_10986_10987) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_7193_3874 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3874_3874 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_7193_3874 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7193_3874 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3874_3874 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_10986_10987) (v_1@@5 T@FrameType) (q@@3 T@Field_3840_3875) (w@@5 T@FrameType) (r@@3 T@Field_3840_3875) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_3874_7193 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7193_7193 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_3874_7193 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3874_7193 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7193_7193 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_10986_10987) (v_1@@6 T@FrameType) (q@@4 T@Field_3840_3875) (w@@6 T@FrameType) (r@@4 T@Field_10986_10987) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_3874_7193 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7193_3874 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_3874_3874 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3874_7193 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7193_3874 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_10986_10987) (v_1@@7 T@FrameType) (q@@5 T@Field_10986_10987) (w@@7 T@FrameType) (r@@5 T@Field_3840_3875) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_3874_3874 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3874_7193 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_3874_7193 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3874_3874 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3874_7193 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_10986_10987) (v_1@@8 T@FrameType) (q@@6 T@Field_10986_10987) (w@@8 T@FrameType) (r@@6 T@Field_10986_10987) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_3874_3874 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3874_3874 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_3874_3874 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3874_3874 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3874_3874 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@33 T@PolymorphicMapType_7133) (l_1@@0 T@Ref) (i@@6 Int) ) (!  (and (= (foo_1 Heap@@33 l_1@@0 i@@6) (|foo'| Heap@@33 l_1@@0 i@@6)) (dummyFunction_1482 (|foo#triggerStateless| l_1@@0 i@@6)))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (foo_1 Heap@@33 l_1@@0 i@@6))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_7133) (Mask@@40 T@PolymorphicMapType_7154) (l_1@@1 T@Ref) (i@@7 Int) ) (!  (=> (and (state Heap@@34 Mask@@40) (< AssumeFunctionsAbove 0)) (= (foo_1 Heap@@34 l_1@@1 i@@7) (forall ((j Int) ) (!  (=> (= i@@7 j) (or (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@34) l_1@@1 next) null) (|foo'| Heap@@34 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@34) l_1@@1 next) j)))
 :qid |stdinbpl.209:84|
 :skolemid |24|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@34) null (list2 l_1@@1 j)))
 :pattern ( (|foo#frame| (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@34) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@34) l_1@@1 next) j)) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@34) l_1@@1 next) j))
))))
 :qid |stdinbpl.207:15|
 :skolemid |25|
 :pattern ( (state Heap@@34 Mask@@40) (foo_1 Heap@@34 l_1@@1 i@@7))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_7133) (Mask@@41 T@PolymorphicMapType_7154) (l_1@@2 T@Ref) (i@@8 Int) ) (!  (=> (state Heap@@35 Mask@@41) (= (|foo'| Heap@@35 l_1@@2 i@@8) (|foo#frame| (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@35) null (list2 l_1@@2 i@@8)) l_1@@2 i@@8)))
 :qid |stdinbpl.217:15|
 :skolemid |26|
 :pattern ( (state Heap@@35 Mask@@41) (|foo'| Heap@@35 l_1@@2 i@@8))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@36 () T@PolymorphicMapType_7133)
(declare-fun this@@5 () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_7154)
(declare-fun Mask@1 () T@PolymorphicMapType_7154)
(declare-fun Mask@2 () T@PolymorphicMapType_7154)
(declare-fun i@@9 () Int)
(declare-fun Mask@0 () T@PolymorphicMapType_7154)
(set-info :boogie-vc-id |list2#definedness|)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon2_correct true))
(let ((anon3_Else_correct  (=> (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@36) this@@5 next) null) (=> (and (= Mask@3 Mask@1) (= (ControlFlow 0 4) 1)) anon2_correct))))
(let ((anon3_Then_correct  (=> (not (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@36) this@@5 next) null)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_3840_3841 Mask@1 this@@5 next)) (=> (HasDirectPerm_3840_3841 Mask@1 this@@5 next) (=> (and (and (= Mask@2 (PolymorphicMapType_7154 (store (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@1) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@36) this@@5 next) i@@9) (+ (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@1) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@36) this@@5 next) i@@9)) FullPerm)) (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@1) (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@1) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@1) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@1) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@1) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@1) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@1) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@1) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@1))) (state Heap@@36 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 2) 1))) anon2_correct))))))
(let ((anon0_correct  (=> (and (state Heap@@36 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@36) this@@5 $allocated)) (and (not (= this@@5 null)) (= Mask@0 (PolymorphicMapType_7154 (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| ZeroMask) (store (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| ZeroMask) this@@5 elem (+ (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| ZeroMask) this@@5 elem) FullPerm)) (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| ZeroMask) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| ZeroMask) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| ZeroMask) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| ZeroMask) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| ZeroMask) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| ZeroMask) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| ZeroMask) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| ZeroMask))))) (and (and (state Heap@@36 Mask@0) (not (= this@@5 null))) (and (= Mask@1 (PolymorphicMapType_7154 (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@0) (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@0) (store (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@0) this@@5 next (+ (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@0) this@@5 next) FullPerm)) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@0) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@0) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@0) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@0) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@0) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@0) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@0))) (state Heap@@36 Mask@1)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_3840_3841 Mask@1 this@@5 next)) (=> (HasDirectPerm_3840_3841 Mask@1 this@@5 next) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
