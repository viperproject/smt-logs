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
(declare-fun elem_1 () T@Field_10520_1189)
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
(declare-fun foo_2 (T@PolymorphicMapType_7133 T@Ref Int) Bool)
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_7133) (l_2 T@Ref) (i@@0 Int) ) (! (dummyFunction_1482 (|foo#triggerStateless| l_2 i@@0))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|foo'| Heap@@0 l_2 i@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7133) (this@@0 T@Ref) (i@@1 Int) ) (! (|list2#everUsed_3874| (list2 this@@0 i@@1))
 :qid |stdinbpl.363:15|
 :skolemid |34|
 :pattern ( (|list2#trigger_3874| Heap@@1 (list2 this@@0 i@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7133) (ExhaleHeap T@PolymorphicMapType_7133) (Mask@@0 T@PolymorphicMapType_7154) (pm_f_34 T@Field_10986_10987) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3874_3875 Mask@@0 null pm_f_34) (IsPredicateField_3874_3875 pm_f_34)) (= (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@2) null (PredicateMaskField_3874 pm_f_34)) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap) null (PredicateMaskField_3874 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_3874_3875 pm_f_34) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap) null (PredicateMaskField_3874 pm_f_34)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7133) (ExhaleHeap@@0 T@PolymorphicMapType_7133) (Mask@@1 T@PolymorphicMapType_7154) (pm_f_34@@0 T@Field_3840_3875) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3840_3875 Mask@@1 null pm_f_34@@0) (IsPredicateField_3840_25789 pm_f_34@@0)) (= (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@3) null (PredicateMaskField_3840 pm_f_34@@0)) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@0) null (PredicateMaskField_3840 pm_f_34@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3840_25789 pm_f_34@@0) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@0) null (PredicateMaskField_3840 pm_f_34@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7133) (ExhaleHeap@@1 T@PolymorphicMapType_7133) (Mask@@2 T@PolymorphicMapType_7154) (pm_f_34@@1 T@Field_10986_10987) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3874_3875 Mask@@2 null pm_f_34@@1) (IsWandField_3874_29459 pm_f_34@@1)) (= (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@4) null (WandMaskField_3874 pm_f_34@@1)) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@1) null (WandMaskField_3874 pm_f_34@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsWandField_3874_29459 pm_f_34@@1) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@1) null (WandMaskField_3874 pm_f_34@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7133) (ExhaleHeap@@2 T@PolymorphicMapType_7133) (Mask@@3 T@PolymorphicMapType_7154) (pm_f_34@@2 T@Field_3840_3875) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3840_3875 Mask@@3 null pm_f_34@@2) (IsWandField_3840_29102 pm_f_34@@2)) (= (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@5) null (WandMaskField_3840 pm_f_34@@2)) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@2) null (WandMaskField_3840 pm_f_34@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_3840_29102 pm_f_34@@2) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@2) null (WandMaskField_3840 pm_f_34@@2)))
)))
(assert (forall ((this@@1 T@Ref) (i@@2 Int) (this2 T@Ref) (i2_1 Int) ) (!  (=> (= (list2 this@@1 i@@2) (list2 this2 i2_1)) (and (= this@@1 this2) (= i@@2 i2_1)))
 :qid |stdinbpl.354:15|
 :skolemid |32|
 :pattern ( (list2 this@@1 i@@2) (list2 this2 i2_1))
)))
(assert (forall ((this@@2 T@Ref) (i@@3 Int) (this2@@0 T@Ref) (i2_1@@0 Int) ) (!  (=> (= (|list2#sm| this@@2 i@@3) (|list2#sm| this2@@0 i2_1@@0)) (and (= this@@2 this2@@0) (= i@@3 i2_1@@0)))
 :qid |stdinbpl.358:15|
 :skolemid |33|
 :pattern ( (|list2#sm| this@@2 i@@3) (|list2#sm| this2@@0 i2_1@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7133) (ExhaleHeap@@3 T@PolymorphicMapType_7133) (Mask@@4 T@PolymorphicMapType_7154) (pm_f_34@@3 T@Field_10986_10987) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_3874_3875 Mask@@4 null pm_f_34@@3) (IsPredicateField_3874_3875 pm_f_34@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_34 T@Ref) (f_35 T@Field_10520_1189) ) (!  (=> (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_34@@3))) o2_34 f_35) (= (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@6) o2_34 f_35) (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34 f_35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34 f_35))
)) (forall ((o2_34@@0 T@Ref) (f_35@@0 T@Field_7206_7207) ) (!  (=> (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_34@@3))) o2_34@@0 f_35@@0) (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@6) o2_34@@0 f_35@@0) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@0 f_35@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@0 f_35@@0))
))) (forall ((o2_34@@1 T@Ref) (f_35@@1 T@Field_7193_53) ) (!  (=> (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_34@@3))) o2_34@@1 f_35@@1) (= (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@6) o2_34@@1 f_35@@1) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@1 f_35@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@1 f_35@@1))
))) (forall ((o2_34@@2 T@Ref) (f_35@@2 T@Field_3840_3875) ) (!  (=> (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_34@@3))) o2_34@@2 f_35@@2) (= (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@6) o2_34@@2 f_35@@2) (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@2 f_35@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@2 f_35@@2))
))) (forall ((o2_34@@3 T@Ref) (f_35@@3 T@Field_3840_13748) ) (!  (=> (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_34@@3))) o2_34@@3 f_35@@3) (= (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@6) o2_34@@3 f_35@@3) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@3 f_35@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@3 f_35@@3))
))) (forall ((o2_34@@4 T@Ref) (f_35@@4 T@Field_3874_1189) ) (!  (=> (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_34@@3))) o2_34@@4 f_35@@4) (= (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@6) o2_34@@4 f_35@@4) (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@4 f_35@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@4 f_35@@4))
))) (forall ((o2_34@@5 T@Ref) (f_35@@5 T@Field_3874_3841) ) (!  (=> (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_34@@3))) o2_34@@5 f_35@@5) (= (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@6) o2_34@@5 f_35@@5) (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@5 f_35@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@5 f_35@@5))
))) (forall ((o2_34@@6 T@Ref) (f_35@@6 T@Field_3874_53) ) (!  (=> (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_34@@3))) o2_34@@6 f_35@@6) (= (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@6) o2_34@@6 f_35@@6) (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@6 f_35@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@6 f_35@@6))
))) (forall ((o2_34@@7 T@Ref) (f_35@@7 T@Field_10986_10987) ) (!  (=> (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_34@@3))) o2_34@@7 f_35@@7) (= (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@6) o2_34@@7 f_35@@7) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@7 f_35@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@7 f_35@@7))
))) (forall ((o2_34@@8 T@Ref) (f_35@@8 T@Field_13743_13748) ) (!  (=> (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) null (PredicateMaskField_3874 pm_f_34@@3))) o2_34@@8 f_35@@8) (= (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@6) o2_34@@8 f_35@@8) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@8 f_35@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@3) o2_34@@8 f_35@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3874_3875 pm_f_34@@3))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7133) (ExhaleHeap@@4 T@PolymorphicMapType_7133) (Mask@@5 T@PolymorphicMapType_7154) (pm_f_34@@4 T@Field_3840_3875) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3840_3875 Mask@@5 null pm_f_34@@4) (IsPredicateField_3840_25789 pm_f_34@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@9 T@Ref) (f_35@@9 T@Field_10520_1189) ) (!  (=> (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_34@@4))) o2_34@@9 f_35@@9) (= (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@7) o2_34@@9 f_35@@9) (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@9 f_35@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@9 f_35@@9))
)) (forall ((o2_34@@10 T@Ref) (f_35@@10 T@Field_7206_7207) ) (!  (=> (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_34@@4))) o2_34@@10 f_35@@10) (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@7) o2_34@@10 f_35@@10) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@10 f_35@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@10 f_35@@10))
))) (forall ((o2_34@@11 T@Ref) (f_35@@11 T@Field_7193_53) ) (!  (=> (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_34@@4))) o2_34@@11 f_35@@11) (= (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@7) o2_34@@11 f_35@@11) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@11 f_35@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@11 f_35@@11))
))) (forall ((o2_34@@12 T@Ref) (f_35@@12 T@Field_3840_3875) ) (!  (=> (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_34@@4))) o2_34@@12 f_35@@12) (= (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@7) o2_34@@12 f_35@@12) (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@12 f_35@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@12 f_35@@12))
))) (forall ((o2_34@@13 T@Ref) (f_35@@13 T@Field_3840_13748) ) (!  (=> (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_34@@4))) o2_34@@13 f_35@@13) (= (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) o2_34@@13 f_35@@13) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@13 f_35@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@13 f_35@@13))
))) (forall ((o2_34@@14 T@Ref) (f_35@@14 T@Field_3874_1189) ) (!  (=> (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_34@@4))) o2_34@@14 f_35@@14) (= (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@7) o2_34@@14 f_35@@14) (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@14 f_35@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@14 f_35@@14))
))) (forall ((o2_34@@15 T@Ref) (f_35@@15 T@Field_3874_3841) ) (!  (=> (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_34@@4))) o2_34@@15 f_35@@15) (= (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@7) o2_34@@15 f_35@@15) (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@15 f_35@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@15 f_35@@15))
))) (forall ((o2_34@@16 T@Ref) (f_35@@16 T@Field_3874_53) ) (!  (=> (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_34@@4))) o2_34@@16 f_35@@16) (= (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@7) o2_34@@16 f_35@@16) (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@16 f_35@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@16 f_35@@16))
))) (forall ((o2_34@@17 T@Ref) (f_35@@17 T@Field_10986_10987) ) (!  (=> (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_34@@4))) o2_34@@17 f_35@@17) (= (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@7) o2_34@@17 f_35@@17) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@17 f_35@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@17 f_35@@17))
))) (forall ((o2_34@@18 T@Ref) (f_35@@18 T@Field_13743_13748) ) (!  (=> (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@7) null (PredicateMaskField_3840 pm_f_34@@4))) o2_34@@18 f_35@@18) (= (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@7) o2_34@@18 f_35@@18) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@18 f_35@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@4) o2_34@@18 f_35@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3840_25789 pm_f_34@@4))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7133) (ExhaleHeap@@5 T@PolymorphicMapType_7133) (Mask@@6 T@PolymorphicMapType_7154) (pm_f_34@@5 T@Field_10986_10987) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_3874_3875 Mask@@6 null pm_f_34@@5) (IsWandField_3874_29459 pm_f_34@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@19 T@Ref) (f_35@@19 T@Field_10520_1189) ) (!  (=> (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_34@@5))) o2_34@@19 f_35@@19) (= (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@8) o2_34@@19 f_35@@19) (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@19 f_35@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@19 f_35@@19))
)) (forall ((o2_34@@20 T@Ref) (f_35@@20 T@Field_7206_7207) ) (!  (=> (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_34@@5))) o2_34@@20 f_35@@20) (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@8) o2_34@@20 f_35@@20) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@20 f_35@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@20 f_35@@20))
))) (forall ((o2_34@@21 T@Ref) (f_35@@21 T@Field_7193_53) ) (!  (=> (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_34@@5))) o2_34@@21 f_35@@21) (= (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@8) o2_34@@21 f_35@@21) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@21 f_35@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@21 f_35@@21))
))) (forall ((o2_34@@22 T@Ref) (f_35@@22 T@Field_3840_3875) ) (!  (=> (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_34@@5))) o2_34@@22 f_35@@22) (= (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@8) o2_34@@22 f_35@@22) (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@22 f_35@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@22 f_35@@22))
))) (forall ((o2_34@@23 T@Ref) (f_35@@23 T@Field_3840_13748) ) (!  (=> (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_34@@5))) o2_34@@23 f_35@@23) (= (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@8) o2_34@@23 f_35@@23) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@23 f_35@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@23 f_35@@23))
))) (forall ((o2_34@@24 T@Ref) (f_35@@24 T@Field_3874_1189) ) (!  (=> (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_34@@5))) o2_34@@24 f_35@@24) (= (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@8) o2_34@@24 f_35@@24) (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@24 f_35@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@24 f_35@@24))
))) (forall ((o2_34@@25 T@Ref) (f_35@@25 T@Field_3874_3841) ) (!  (=> (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_34@@5))) o2_34@@25 f_35@@25) (= (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@8) o2_34@@25 f_35@@25) (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@25 f_35@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@25 f_35@@25))
))) (forall ((o2_34@@26 T@Ref) (f_35@@26 T@Field_3874_53) ) (!  (=> (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_34@@5))) o2_34@@26 f_35@@26) (= (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@8) o2_34@@26 f_35@@26) (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@26 f_35@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@26 f_35@@26))
))) (forall ((o2_34@@27 T@Ref) (f_35@@27 T@Field_10986_10987) ) (!  (=> (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_34@@5))) o2_34@@27 f_35@@27) (= (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@8) o2_34@@27 f_35@@27) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@27 f_35@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@27 f_35@@27))
))) (forall ((o2_34@@28 T@Ref) (f_35@@28 T@Field_13743_13748) ) (!  (=> (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) null (WandMaskField_3874 pm_f_34@@5))) o2_34@@28 f_35@@28) (= (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@8) o2_34@@28 f_35@@28) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@28 f_35@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@5) o2_34@@28 f_35@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (IsWandField_3874_29459 pm_f_34@@5))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7133) (ExhaleHeap@@6 T@PolymorphicMapType_7133) (Mask@@7 T@PolymorphicMapType_7154) (pm_f_34@@6 T@Field_3840_3875) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3840_3875 Mask@@7 null pm_f_34@@6) (IsWandField_3840_29102 pm_f_34@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_34@@29 T@Ref) (f_35@@29 T@Field_10520_1189) ) (!  (=> (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_34@@6))) o2_34@@29 f_35@@29) (= (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@9) o2_34@@29 f_35@@29) (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@29 f_35@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@29 f_35@@29))
)) (forall ((o2_34@@30 T@Ref) (f_35@@30 T@Field_7206_7207) ) (!  (=> (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_34@@6))) o2_34@@30 f_35@@30) (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@9) o2_34@@30 f_35@@30) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@30 f_35@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@30 f_35@@30))
))) (forall ((o2_34@@31 T@Ref) (f_35@@31 T@Field_7193_53) ) (!  (=> (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_34@@6))) o2_34@@31 f_35@@31) (= (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@9) o2_34@@31 f_35@@31) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@31 f_35@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@31 f_35@@31))
))) (forall ((o2_34@@32 T@Ref) (f_35@@32 T@Field_3840_3875) ) (!  (=> (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_34@@6))) o2_34@@32 f_35@@32) (= (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@9) o2_34@@32 f_35@@32) (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@32 f_35@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@32 f_35@@32))
))) (forall ((o2_34@@33 T@Ref) (f_35@@33 T@Field_3840_13748) ) (!  (=> (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_34@@6))) o2_34@@33 f_35@@33) (= (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) o2_34@@33 f_35@@33) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@33 f_35@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@33 f_35@@33))
))) (forall ((o2_34@@34 T@Ref) (f_35@@34 T@Field_3874_1189) ) (!  (=> (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_34@@6))) o2_34@@34 f_35@@34) (= (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@9) o2_34@@34 f_35@@34) (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@34 f_35@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@34 f_35@@34))
))) (forall ((o2_34@@35 T@Ref) (f_35@@35 T@Field_3874_3841) ) (!  (=> (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_34@@6))) o2_34@@35 f_35@@35) (= (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@9) o2_34@@35 f_35@@35) (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@35 f_35@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@35 f_35@@35))
))) (forall ((o2_34@@36 T@Ref) (f_35@@36 T@Field_3874_53) ) (!  (=> (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_34@@6))) o2_34@@36 f_35@@36) (= (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@9) o2_34@@36 f_35@@36) (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@36 f_35@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@36 f_35@@36))
))) (forall ((o2_34@@37 T@Ref) (f_35@@37 T@Field_10986_10987) ) (!  (=> (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_34@@6))) o2_34@@37 f_35@@37) (= (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@9) o2_34@@37 f_35@@37) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@37 f_35@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@37 f_35@@37))
))) (forall ((o2_34@@38 T@Ref) (f_35@@38 T@Field_13743_13748) ) (!  (=> (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@9) null (WandMaskField_3840 pm_f_34@@6))) o2_34@@38 f_35@@38) (= (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@9) o2_34@@38 f_35@@38) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@38 f_35@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@6) o2_34@@38 f_35@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (IsWandField_3840_29102 pm_f_34@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7133) (ExhaleHeap@@7 T@PolymorphicMapType_7133) (Mask@@8 T@PolymorphicMapType_7154) (o_30 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@10) o_30 $allocated) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@7) o_30 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@7) o_30 $allocated))
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
(assert  (not (IsPredicateField_3838_1189 elem_1)))
(assert  (not (IsWandField_3838_1189 elem_1)))
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
(assert (forall ((Heap@@12 T@PolymorphicMapType_7133) (ExhaleHeap@@9 T@PolymorphicMapType_7133) (Mask@@30 T@PolymorphicMapType_7154) (o_30@@0 T@Ref) (f_35@@39 T@Field_13743_13748) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_3874_25544 Mask@@30 o_30@@0 f_35@@39) (= (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@12) o_30@@0 f_35@@39) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@9) o_30@@0 f_35@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| ExhaleHeap@@9) o_30@@0 f_35@@39))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7133) (ExhaleHeap@@10 T@PolymorphicMapType_7133) (Mask@@31 T@PolymorphicMapType_7154) (o_30@@1 T@Ref) (f_35@@40 T@Field_3874_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_3874_1189 Mask@@31 o_30@@1 f_35@@40) (= (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@13) o_30@@1 f_35@@40) (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@10) o_30@@1 f_35@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| ExhaleHeap@@10) o_30@@1 f_35@@40))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7133) (ExhaleHeap@@11 T@PolymorphicMapType_7133) (Mask@@32 T@PolymorphicMapType_7154) (o_30@@2 T@Ref) (f_35@@41 T@Field_3874_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_3874_53 Mask@@32 o_30@@2 f_35@@41) (= (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@14) o_30@@2 f_35@@41) (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@11) o_30@@2 f_35@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| ExhaleHeap@@11) o_30@@2 f_35@@41))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7133) (ExhaleHeap@@12 T@PolymorphicMapType_7133) (Mask@@33 T@PolymorphicMapType_7154) (o_30@@3 T@Ref) (f_35@@42 T@Field_10986_10987) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_3874_3875 Mask@@33 o_30@@3 f_35@@42) (= (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@15) o_30@@3 f_35@@42) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@12) o_30@@3 f_35@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| ExhaleHeap@@12) o_30@@3 f_35@@42))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7133) (ExhaleHeap@@13 T@PolymorphicMapType_7133) (Mask@@34 T@PolymorphicMapType_7154) (o_30@@4 T@Ref) (f_35@@43 T@Field_3874_3841) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_3874_3841 Mask@@34 o_30@@4 f_35@@43) (= (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@16) o_30@@4 f_35@@43) (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@13) o_30@@4 f_35@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| ExhaleHeap@@13) o_30@@4 f_35@@43))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7133) (ExhaleHeap@@14 T@PolymorphicMapType_7133) (Mask@@35 T@PolymorphicMapType_7154) (o_30@@5 T@Ref) (f_35@@44 T@Field_3840_13748) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_3840_24403 Mask@@35 o_30@@5 f_35@@44) (= (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@17) o_30@@5 f_35@@44) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@14) o_30@@5 f_35@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| ExhaleHeap@@14) o_30@@5 f_35@@44))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7133) (ExhaleHeap@@15 T@PolymorphicMapType_7133) (Mask@@36 T@PolymorphicMapType_7154) (o_30@@6 T@Ref) (f_35@@45 T@Field_10520_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_3840_1189 Mask@@36 o_30@@6 f_35@@45) (= (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@18) o_30@@6 f_35@@45) (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@15) o_30@@6 f_35@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| ExhaleHeap@@15) o_30@@6 f_35@@45))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7133) (ExhaleHeap@@16 T@PolymorphicMapType_7133) (Mask@@37 T@PolymorphicMapType_7154) (o_30@@7 T@Ref) (f_35@@46 T@Field_7193_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_3840_53 Mask@@37 o_30@@7 f_35@@46) (= (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@19) o_30@@7 f_35@@46) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@16) o_30@@7 f_35@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| ExhaleHeap@@16) o_30@@7 f_35@@46))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7133) (ExhaleHeap@@17 T@PolymorphicMapType_7133) (Mask@@38 T@PolymorphicMapType_7154) (o_30@@8 T@Ref) (f_35@@47 T@Field_3840_3875) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_3840_3875 Mask@@38 o_30@@8 f_35@@47) (= (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@20) o_30@@8 f_35@@47) (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@17) o_30@@8 f_35@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| ExhaleHeap@@17) o_30@@8 f_35@@47))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7133) (ExhaleHeap@@18 T@PolymorphicMapType_7133) (Mask@@39 T@PolymorphicMapType_7154) (o_30@@9 T@Ref) (f_35@@48 T@Field_7206_7207) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_3840_3841 Mask@@39 o_30@@9 f_35@@48) (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@21) o_30@@9 f_35@@48) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@18) o_30@@9 f_35@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| ExhaleHeap@@18) o_30@@9 f_35@@48))
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
(assert (forall ((Heap@@22 T@PolymorphicMapType_7133) (o_6 T@Ref) (f_16 T@Field_13743_13748) (v T@PolymorphicMapType_7682) ) (! (succHeap Heap@@22 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@22) (store (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@22) o_6 f_16 v) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@22) (store (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@22) o_6 f_16 v) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@22) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7133) (o_6@@0 T@Ref) (f_16@@0 T@Field_3874_1189) (v@@0 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@23) (store (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@23) o_6@@0 f_16@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@23) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@23) (store (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@23) o_6@@0 f_16@@0 v@@0)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7133) (o_6@@1 T@Ref) (f_16@@1 T@Field_10986_10987) (v@@1 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@24) (store (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@24) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@24) (store (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@24) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@24) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7133) (o_6@@2 T@Ref) (f_16@@2 T@Field_3874_3841) (v@@2 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@25) (store (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@25) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@25) (store (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@25) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@25) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7133) (o_6@@3 T@Ref) (f_16@@3 T@Field_3874_53) (v@@3 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@26) (store (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@26) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@26) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@26) (store (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@26) o_6@@3 f_16@@3 v@@3) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7133) (o_6@@4 T@Ref) (f_16@@4 T@Field_3840_13748) (v@@4 T@PolymorphicMapType_7682) ) (! (succHeap Heap@@27 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@27) (store (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@27) o_6@@4 f_16@@4 v@@4) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@27) (store (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@27) o_6@@4 f_16@@4 v@@4) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@27) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7133) (o_6@@5 T@Ref) (f_16@@5 T@Field_10520_1189) (v@@5 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@28) (store (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@28) o_6@@5 f_16@@5 v@@5) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@28) (store (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@28) o_6@@5 f_16@@5 v@@5) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@28) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7133) (o_6@@6 T@Ref) (f_16@@6 T@Field_3840_3875) (v@@6 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@29) (store (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@29) o_6@@6 f_16@@6 v@@6) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@29) (store (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@29) o_6@@6 f_16@@6 v@@6) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@29) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7133) (o_6@@7 T@Ref) (f_16@@7 T@Field_7206_7207) (v@@7 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@30) (store (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@30) o_6@@7 f_16@@7 v@@7) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@30) (store (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@30) o_6@@7 f_16@@7 v@@7) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@30) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_7133) (o_6@@8 T@Ref) (f_16@@8 T@Field_7193_53) (v@@8 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_7133 (store (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@31) o_6@@8 f_16@@8 v@@8) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7133 (store (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@31) o_6@@8 f_16@@8 v@@8) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@31) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@31)))
)))
(assert (forall ((o_6@@9 T@Ref) (f_9 T@Field_7206_7207) (Heap@@32 T@PolymorphicMapType_7133) ) (!  (=> (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@32) o_6@@9 $allocated) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@32) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@32) o_6@@9 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@32) o_6@@9 f_9))
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
(assert (forall ((Heap@@33 T@PolymorphicMapType_7133) (l_2@@0 T@Ref) (i@@6 Int) ) (!  (and (= (foo_2 Heap@@33 l_2@@0 i@@6) (|foo'| Heap@@33 l_2@@0 i@@6)) (dummyFunction_1482 (|foo#triggerStateless| l_2@@0 i@@6)))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (foo_2 Heap@@33 l_2@@0 i@@6))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_7133) (Mask@@40 T@PolymorphicMapType_7154) (l_2@@1 T@Ref) (i@@7 Int) ) (!  (=> (and (state Heap@@34 Mask@@40) (< AssumeFunctionsAbove 0)) (= (foo_2 Heap@@34 l_2@@1 i@@7) (forall ((j_9 Int) ) (!  (=> (= i@@7 j_9) (or (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@34) l_2@@1 next) null) (|foo'| Heap@@34 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@34) l_2@@1 next) j_9)))
 :qid |stdinbpl.209:84|
 :skolemid |24|
 :pattern ( (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@34) null (list2 l_2@@1 j_9)))
 :pattern ( (|foo#frame| (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@34) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@34) l_2@@1 next) j_9)) (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@34) l_2@@1 next) j_9))
))))
 :qid |stdinbpl.207:15|
 :skolemid |25|
 :pattern ( (state Heap@@34 Mask@@40) (foo_2 Heap@@34 l_2@@1 i@@7))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_7133) (Mask@@41 T@PolymorphicMapType_7154) (l_2@@2 T@Ref) (i@@8 Int) ) (!  (=> (state Heap@@35 Mask@@41) (= (|foo'| Heap@@35 l_2@@2 i@@8) (|foo#frame| (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@35) null (list2 l_2@@2 i@@8)) l_2@@2 i@@8)))
 :qid |stdinbpl.217:15|
 :skolemid |26|
 :pattern ( (state Heap@@35 Mask@@41) (|foo'| Heap@@35 l_2@@2 i@@8))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@17 () T@PolymorphicMapType_7133)
(declare-fun freshObj@1 () T@Ref)
(declare-fun k () Int)
(declare-fun Mask@13 () T@PolymorphicMapType_7154)
(declare-fun Heap@15 () T@PolymorphicMapType_7133)
(declare-fun newPMask@1 () T@PolymorphicMapType_7682)
(declare-fun Heap@16 () T@PolymorphicMapType_7133)
(declare-fun Heap@14 () T@PolymorphicMapType_7133)
(declare-fun Heap@13 () T@PolymorphicMapType_7133)
(declare-fun Heap@10 () T@PolymorphicMapType_7133)
(declare-fun Heap@11 () T@PolymorphicMapType_7133)
(declare-fun Heap@12 () T@PolymorphicMapType_7133)
(declare-fun freshVersion@1 () T@FrameType)
(declare-fun Mask@12 () T@PolymorphicMapType_7154)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun FrameFragment_3841 (T@Ref) T@FrameType)
(declare-fun FrameFragment_3875 (T@FrameType) T@FrameType)
(declare-fun Mask@11 () T@PolymorphicMapType_7154)
(declare-fun Mask@10 () T@PolymorphicMapType_7154)
(declare-fun Mask@9 () T@PolymorphicMapType_7154)
(declare-fun Mask@8 () T@PolymorphicMapType_7154)
(declare-fun Heap@8 () T@PolymorphicMapType_7133)
(declare-fun Mask@6 () T@PolymorphicMapType_7154)
(declare-fun Heap@9 () T@PolymorphicMapType_7133)
(declare-fun Mask@7 () T@PolymorphicMapType_7154)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Heap@6 () T@PolymorphicMapType_7133)
(declare-fun newPMask@0 () T@PolymorphicMapType_7682)
(declare-fun Heap@7 () T@PolymorphicMapType_7133)
(declare-fun Heap@5 () T@PolymorphicMapType_7133)
(declare-fun Heap@4 () T@PolymorphicMapType_7133)
(declare-fun Heap@1 () T@PolymorphicMapType_7133)
(declare-fun Heap@2 () T@PolymorphicMapType_7133)
(declare-fun Heap@3 () T@PolymorphicMapType_7133)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@5 () T@PolymorphicMapType_7154)
(declare-fun Mask@4 () T@PolymorphicMapType_7154)
(declare-fun Mask@3 () T@PolymorphicMapType_7154)
(declare-fun Mask@2 () T@PolymorphicMapType_7154)
(declare-fun Mask@1 () T@PolymorphicMapType_7154)
(declare-fun Heap@@36 () T@PolymorphicMapType_7133)
(declare-fun l1_3 () T@Ref)
(declare-fun l2_2 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_7133)
(declare-fun Mask@0 () T@PolymorphicMapType_7154)
(set-info :boogie-vc-id needsPredicateTrigger)
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
 (=> (= (ControlFlow 0 0) 50) (let ((anon39_Else_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (foo_2 Heap@17 freshObj@1 k))))
(let ((anon39_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@13) null (list2 freshObj@1 k)))))))
(let ((anon24_correct  (=> (and (state Heap@17 Mask@13) (state Heap@17 Mask@13)) (and (=> (= (ControlFlow 0 5) 2) anon39_Then_correct) (=> (= (ControlFlow 0 5) 4) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@15) freshObj@1 next) null) (=> (and (= Heap@17 Heap@15) (= (ControlFlow 0 7) 5)) anon24_correct))))
(let ((anon38_Then_correct  (=> (not (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@15) freshObj@1 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_33 T@Ref) (f_39 T@Field_10520_1189) ) (!  (=> (or (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| freshObj@1 k))) o_33 f_39) (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@15) freshObj@1 next) k))) o_33 f_39)) (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| newPMask@1) o_33 f_39))
 :qid |stdinbpl.564:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| newPMask@1) o_33 f_39))
)) (forall ((o_33@@0 T@Ref) (f_39@@0 T@Field_7206_7207) ) (!  (=> (or (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| freshObj@1 k))) o_33@@0 f_39@@0) (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@15) freshObj@1 next) k))) o_33@@0 f_39@@0)) (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| newPMask@1) o_33@@0 f_39@@0))
 :qid |stdinbpl.564:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| newPMask@1) o_33@@0 f_39@@0))
))) (forall ((o_33@@1 T@Ref) (f_39@@1 T@Field_7193_53) ) (!  (=> (or (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| freshObj@1 k))) o_33@@1 f_39@@1) (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@15) freshObj@1 next) k))) o_33@@1 f_39@@1)) (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| newPMask@1) o_33@@1 f_39@@1))
 :qid |stdinbpl.564:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| newPMask@1) o_33@@1 f_39@@1))
))) (forall ((o_33@@2 T@Ref) (f_39@@2 T@Field_3840_3875) ) (!  (=> (or (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| freshObj@1 k))) o_33@@2 f_39@@2) (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@15) freshObj@1 next) k))) o_33@@2 f_39@@2)) (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| newPMask@1) o_33@@2 f_39@@2))
 :qid |stdinbpl.564:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| newPMask@1) o_33@@2 f_39@@2))
))) (forall ((o_33@@3 T@Ref) (f_39@@3 T@Field_3840_13748) ) (!  (=> (or (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| freshObj@1 k))) o_33@@3 f_39@@3) (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@15) freshObj@1 next) k))) o_33@@3 f_39@@3)) (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| newPMask@1) o_33@@3 f_39@@3))
 :qid |stdinbpl.564:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| newPMask@1) o_33@@3 f_39@@3))
))) (forall ((o_33@@4 T@Ref) (f_39@@4 T@Field_3874_1189) ) (!  (=> (or (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| freshObj@1 k))) o_33@@4 f_39@@4) (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@15) freshObj@1 next) k))) o_33@@4 f_39@@4)) (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| newPMask@1) o_33@@4 f_39@@4))
 :qid |stdinbpl.564:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| newPMask@1) o_33@@4 f_39@@4))
))) (forall ((o_33@@5 T@Ref) (f_39@@5 T@Field_3874_3841) ) (!  (=> (or (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| freshObj@1 k))) o_33@@5 f_39@@5) (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@15) freshObj@1 next) k))) o_33@@5 f_39@@5)) (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| newPMask@1) o_33@@5 f_39@@5))
 :qid |stdinbpl.564:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| newPMask@1) o_33@@5 f_39@@5))
))) (forall ((o_33@@6 T@Ref) (f_39@@6 T@Field_3874_53) ) (!  (=> (or (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| freshObj@1 k))) o_33@@6 f_39@@6) (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@15) freshObj@1 next) k))) o_33@@6 f_39@@6)) (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| newPMask@1) o_33@@6 f_39@@6))
 :qid |stdinbpl.564:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| newPMask@1) o_33@@6 f_39@@6))
))) (forall ((o_33@@7 T@Ref) (f_39@@7 T@Field_10986_10987) ) (!  (=> (or (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| freshObj@1 k))) o_33@@7 f_39@@7) (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@15) freshObj@1 next) k))) o_33@@7 f_39@@7)) (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| newPMask@1) o_33@@7 f_39@@7))
 :qid |stdinbpl.564:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| newPMask@1) o_33@@7 f_39@@7))
))) (forall ((o_33@@8 T@Ref) (f_39@@8 T@Field_13743_13748) ) (!  (=> (or (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| freshObj@1 k))) o_33@@8 f_39@@8) (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@15) freshObj@1 next) k))) o_33@@8 f_39@@8)) (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| newPMask@1) o_33@@8 f_39@@8))
 :qid |stdinbpl.564:29|
 :skolemid |36|
 :pattern ( (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| newPMask@1) o_33@@8 f_39@@8))
))) (= Heap@16 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@15) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@15) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@15) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@15) (store (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@15) null (|list2#sm| freshObj@1 k) newPMask@1) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@15) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@15) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@15) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@15) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@15)))) (and (= Heap@17 Heap@16) (= (ControlFlow 0 6) 5))) anon24_correct))))
(let ((anon22_correct  (=> (and (= Heap@14 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@13) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@13) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@13) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@13) (store (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@13) null (|list2#sm| freshObj@1 k) (PolymorphicMapType_7682 (store (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@13) null (|list2#sm| freshObj@1 k))) freshObj@1 elem_1 true) (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@13) null (|list2#sm| freshObj@1 k))) (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@13) null (|list2#sm| freshObj@1 k))) (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@13) null (|list2#sm| freshObj@1 k))) (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@13) null (|list2#sm| freshObj@1 k))) (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@13) null (|list2#sm| freshObj@1 k))) (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@13) null (|list2#sm| freshObj@1 k))) (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@13) null (|list2#sm| freshObj@1 k))) (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@13) null (|list2#sm| freshObj@1 k))) (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@13) null (|list2#sm| freshObj@1 k))))) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@13) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@13) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@13) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@13) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@13))) (= Heap@15 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@14) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@14) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@14) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@14) (store (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@14) null (|list2#sm| freshObj@1 k) (PolymorphicMapType_7682 (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@14) null (|list2#sm| freshObj@1 k))) (store (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@14) null (|list2#sm| freshObj@1 k))) freshObj@1 next true) (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@14) null (|list2#sm| freshObj@1 k))) (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@14) null (|list2#sm| freshObj@1 k))) (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@14) null (|list2#sm| freshObj@1 k))) (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@14) null (|list2#sm| freshObj@1 k))) (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@14) null (|list2#sm| freshObj@1 k))) (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@14) null (|list2#sm| freshObj@1 k))) (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@14) null (|list2#sm| freshObj@1 k))) (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@14) null (|list2#sm| freshObj@1 k))))) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@14) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@14) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@14) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@14) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@14)))) (and (=> (= (ControlFlow 0 8) 6) anon38_Then_correct) (=> (= (ControlFlow 0 8) 7) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (HasDirectPerm_3874_3875 Mask@13 null (list2 freshObj@1 k)) (=> (and (= Heap@13 Heap@10) (= (ControlFlow 0 10) 8)) anon22_correct))))
(let ((anon37_Then_correct  (=> (not (HasDirectPerm_3874_3875 Mask@13 null (list2 freshObj@1 k))) (=> (and (and (= Heap@11 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@10) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@10) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@10) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@10) (store (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@10) null (|list2#sm| freshObj@1 k) ZeroPMask) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@10) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@10) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@10) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@10) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@10))) (= Heap@12 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@11) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@11) (store (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@11) null (list2 freshObj@1 k) freshVersion@1) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@11) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@11) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@11) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@11) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@11) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@11) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@11)))) (and (= Heap@13 Heap@12) (= (ControlFlow 0 9) 8))) anon22_correct))))
(let ((anon20_correct  (=> (= Mask@13 (PolymorphicMapType_7154 (store (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@12) null (list2 freshObj@1 k) (+ (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@12) null (list2 freshObj@1 k)) FullPerm)) (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@12) (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@12) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@12) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@12) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@12) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@12) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@12) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@12) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@12))) (=> (and (and (state Heap@10 Mask@13) (state Heap@10 Mask@13)) (and (|list2#trigger_3874| Heap@10 (list2 freshObj@1 k)) (= (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@10) null (list2 freshObj@1 k)) (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@10) freshObj@1 elem_1)) (CombineFrames (FrameFragment_3841 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@10) freshObj@1 next)) (FrameFragment_3875 (ite (not (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@10) freshObj@1 next) null)) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@10) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@10) freshObj@1 next) k)) EmptyFrame))))))) (and (=> (= (ControlFlow 0 11) 9) anon37_Then_correct) (=> (= (ControlFlow 0 11) 10) anon37_Else_correct))))))
(let ((anon19_correct  (=> (and (and (= Mask@11 (PolymorphicMapType_7154 (store (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@10) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@10) freshObj@1 next) k) (- (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@10) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@10) freshObj@1 next) k)) FullPerm)) (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@10) (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@10) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@10) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@10) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@10) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@10) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@10) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@10) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@10))) (InsidePredicate_3874_3874 (list2 freshObj@1 k) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@10) null (list2 freshObj@1 k)) (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@10) freshObj@1 next) k) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@10) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@10) freshObj@1 next) k)))) (and (= Mask@12 Mask@11) (= (ControlFlow 0 13) 11))) anon20_correct)))
(let ((anon36_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 16) 13)) anon19_correct)))
(let ((anon36_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= FullPerm (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@10) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@10) freshObj@1 next) k)))) (=> (<= FullPerm (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@10) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@10) freshObj@1 next) k))) (=> (= (ControlFlow 0 14) 13) anon19_correct))))))
(let ((anon35_Then_correct  (=> (not (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@10) freshObj@1 next) null)) (and (=> (= (ControlFlow 0 17) 14) anon36_Then_correct) (=> (= (ControlFlow 0 17) 16) anon36_Else_correct)))))
(let ((anon35_Else_correct  (=> (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@10) freshObj@1 next) null) (=> (and (= Mask@12 Mask@10) (= (ControlFlow 0 12) 11)) anon20_correct))))
(let ((anon16_correct  (=> (= Mask@10 (PolymorphicMapType_7154 (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@9) (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@9) (store (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@9) freshObj@1 next (- (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@9) freshObj@1 next) FullPerm)) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@9) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@9) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@9) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@9) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@9) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@9) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@9))) (and (=> (= (ControlFlow 0 18) 17) anon35_Then_correct) (=> (= (ControlFlow 0 18) 12) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 21) 18)) anon16_correct)))
(let ((anon34_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (<= FullPerm (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@9) freshObj@1 next))) (=> (<= FullPerm (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@9) freshObj@1 next)) (=> (= (ControlFlow 0 19) 18) anon16_correct))))))
(let ((anon14_correct  (=> (= Mask@9 (PolymorphicMapType_7154 (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@8) (store (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@8) freshObj@1 elem_1 (- (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@8) freshObj@1 elem_1) FullPerm)) (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@8) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@8) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@8) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@8) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@8) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@8) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@8) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@8))) (and (=> (= (ControlFlow 0 22) 19) anon34_Then_correct) (=> (= (ControlFlow 0 22) 21) anon34_Else_correct)))))
(let ((anon33_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 25) 22)) anon14_correct)))
(let ((anon33_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (<= FullPerm (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@8) freshObj@1 elem_1))) (=> (<= FullPerm (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@8) freshObj@1 elem_1)) (=> (= (ControlFlow 0 23) 22) anon14_correct))))))
(let ((anon12_correct  (=> (and (and (and (state Heap@8 Mask@6) (state Heap@8 Mask@6)) (and (not (= freshObj@1 null)) (not (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@8) freshObj@1 $allocated)))) (and (and (= Heap@9 (PolymorphicMapType_7133 (store (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@8) freshObj@1 $allocated true) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@8) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@8) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@8) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@8) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@8) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@8) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@8) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@8) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@8))) (= Mask@7 (PolymorphicMapType_7154 (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@6) (store (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@6) freshObj@1 elem_1 (+ (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@6) freshObj@1 elem_1) FullPerm)) (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@6) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@6) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@6) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@6) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@6) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@6) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@6) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@6)))) (and (= Mask@8 (PolymorphicMapType_7154 (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@7) (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@7) (store (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@7) freshObj@1 next (+ (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@7) freshObj@1 next) FullPerm)) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@7) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@7) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@7) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@7) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@7) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@7) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@7))) (state Heap@9 Mask@8)))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (= FullPerm (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@8) freshObj@1 next))) (=> (= FullPerm (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@8) freshObj@1 next)) (=> (and (= Heap@10 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@9) (store (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@9) freshObj@1 next freshObj@0) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@9) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@9) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@9) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@9) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@9) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@9) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@9) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@9))) (state Heap@10 Mask@8)) (and (=> (= (ControlFlow 0 26) 23) anon33_Then_correct) (=> (= (ControlFlow 0 26) 25) anon33_Else_correct))))))))
(let ((anon32_Else_correct  (=> (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@6) freshObj@0 next) null) (=> (and (= Heap@8 Heap@6) (= (ControlFlow 0 29) 26)) anon12_correct))))
(let ((anon32_Then_correct  (=> (not (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@6) freshObj@0 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_32 T@Ref) (f_38 T@Field_10520_1189) ) (!  (=> (or (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| freshObj@0 k))) o_32 f_38) (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@6) freshObj@0 next) k))) o_32 f_38)) (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| newPMask@0) o_32 f_38))
 :qid |stdinbpl.499:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| newPMask@0) o_32 f_38))
)) (forall ((o_32@@0 T@Ref) (f_38@@0 T@Field_7206_7207) ) (!  (=> (or (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| freshObj@0 k))) o_32@@0 f_38@@0) (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@6) freshObj@0 next) k))) o_32@@0 f_38@@0)) (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| newPMask@0) o_32@@0 f_38@@0))
 :qid |stdinbpl.499:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| newPMask@0) o_32@@0 f_38@@0))
))) (forall ((o_32@@1 T@Ref) (f_38@@1 T@Field_7193_53) ) (!  (=> (or (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| freshObj@0 k))) o_32@@1 f_38@@1) (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@6) freshObj@0 next) k))) o_32@@1 f_38@@1)) (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| newPMask@0) o_32@@1 f_38@@1))
 :qid |stdinbpl.499:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| newPMask@0) o_32@@1 f_38@@1))
))) (forall ((o_32@@2 T@Ref) (f_38@@2 T@Field_3840_3875) ) (!  (=> (or (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| freshObj@0 k))) o_32@@2 f_38@@2) (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@6) freshObj@0 next) k))) o_32@@2 f_38@@2)) (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| newPMask@0) o_32@@2 f_38@@2))
 :qid |stdinbpl.499:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| newPMask@0) o_32@@2 f_38@@2))
))) (forall ((o_32@@3 T@Ref) (f_38@@3 T@Field_3840_13748) ) (!  (=> (or (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| freshObj@0 k))) o_32@@3 f_38@@3) (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@6) freshObj@0 next) k))) o_32@@3 f_38@@3)) (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| newPMask@0) o_32@@3 f_38@@3))
 :qid |stdinbpl.499:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| newPMask@0) o_32@@3 f_38@@3))
))) (forall ((o_32@@4 T@Ref) (f_38@@4 T@Field_3874_1189) ) (!  (=> (or (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| freshObj@0 k))) o_32@@4 f_38@@4) (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@6) freshObj@0 next) k))) o_32@@4 f_38@@4)) (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| newPMask@0) o_32@@4 f_38@@4))
 :qid |stdinbpl.499:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| newPMask@0) o_32@@4 f_38@@4))
))) (forall ((o_32@@5 T@Ref) (f_38@@5 T@Field_3874_3841) ) (!  (=> (or (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| freshObj@0 k))) o_32@@5 f_38@@5) (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@6) freshObj@0 next) k))) o_32@@5 f_38@@5)) (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| newPMask@0) o_32@@5 f_38@@5))
 :qid |stdinbpl.499:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| newPMask@0) o_32@@5 f_38@@5))
))) (forall ((o_32@@6 T@Ref) (f_38@@6 T@Field_3874_53) ) (!  (=> (or (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| freshObj@0 k))) o_32@@6 f_38@@6) (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@6) freshObj@0 next) k))) o_32@@6 f_38@@6)) (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| newPMask@0) o_32@@6 f_38@@6))
 :qid |stdinbpl.499:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| newPMask@0) o_32@@6 f_38@@6))
))) (forall ((o_32@@7 T@Ref) (f_38@@7 T@Field_10986_10987) ) (!  (=> (or (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| freshObj@0 k))) o_32@@7 f_38@@7) (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@6) freshObj@0 next) k))) o_32@@7 f_38@@7)) (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| newPMask@0) o_32@@7 f_38@@7))
 :qid |stdinbpl.499:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| newPMask@0) o_32@@7 f_38@@7))
))) (forall ((o_32@@8 T@Ref) (f_38@@8 T@Field_13743_13748) ) (!  (=> (or (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| freshObj@0 k))) o_32@@8 f_38@@8) (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@6) freshObj@0 next) k))) o_32@@8 f_38@@8)) (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| newPMask@0) o_32@@8 f_38@@8))
 :qid |stdinbpl.499:29|
 :skolemid |35|
 :pattern ( (select (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| newPMask@0) o_32@@8 f_38@@8))
))) (= Heap@7 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@6) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@6) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@6) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@6) (store (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@6) null (|list2#sm| freshObj@0 k) newPMask@0) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@6) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@6) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@6) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@6) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@6)))) (and (= Heap@8 Heap@7) (= (ControlFlow 0 28) 26))) anon12_correct))))
(let ((anon10_correct  (=> (and (= Heap@5 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@4) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@4) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@4) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@4) (store (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@4) null (|list2#sm| freshObj@0 k) (PolymorphicMapType_7682 (store (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@4) null (|list2#sm| freshObj@0 k))) freshObj@0 elem_1 true) (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@4) null (|list2#sm| freshObj@0 k))) (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@4) null (|list2#sm| freshObj@0 k))) (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@4) null (|list2#sm| freshObj@0 k))) (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@4) null (|list2#sm| freshObj@0 k))) (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@4) null (|list2#sm| freshObj@0 k))) (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@4) null (|list2#sm| freshObj@0 k))) (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@4) null (|list2#sm| freshObj@0 k))) (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@4) null (|list2#sm| freshObj@0 k))) (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@4) null (|list2#sm| freshObj@0 k))))) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@4) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@4) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@4) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@4) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@4))) (= Heap@6 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@5) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@5) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@5) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@5) (store (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@5) null (|list2#sm| freshObj@0 k) (PolymorphicMapType_7682 (|PolymorphicMapType_7682_3838_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@5) null (|list2#sm| freshObj@0 k))) (store (|PolymorphicMapType_7682_3840_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@5) null (|list2#sm| freshObj@0 k))) freshObj@0 next true) (|PolymorphicMapType_7682_3838_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@5) null (|list2#sm| freshObj@0 k))) (|PolymorphicMapType_7682_3838_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@5) null (|list2#sm| freshObj@0 k))) (|PolymorphicMapType_7682_3838_27246#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@5) null (|list2#sm| freshObj@0 k))) (|PolymorphicMapType_7682_10986_1189#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@5) null (|list2#sm| freshObj@0 k))) (|PolymorphicMapType_7682_10986_3841#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@5) null (|list2#sm| freshObj@0 k))) (|PolymorphicMapType_7682_10986_53#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@5) null (|list2#sm| freshObj@0 k))) (|PolymorphicMapType_7682_10986_10987#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@5) null (|list2#sm| freshObj@0 k))) (|PolymorphicMapType_7682_10986_28294#PolymorphicMapType_7682| (select (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@5) null (|list2#sm| freshObj@0 k))))) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@5) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@5) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@5) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@5) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@5)))) (and (=> (= (ControlFlow 0 30) 28) anon32_Then_correct) (=> (= (ControlFlow 0 30) 29) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (HasDirectPerm_3874_3875 Mask@6 null (list2 freshObj@0 k)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 32) 30)) anon10_correct))))
(let ((anon31_Then_correct  (=> (not (HasDirectPerm_3874_3875 Mask@6 null (list2 freshObj@0 k))) (=> (and (and (= Heap@2 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@1) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@1) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@1) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@1) (store (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@1) null (|list2#sm| freshObj@0 k) ZeroPMask) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@1) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@1) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@1) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@1) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@1))) (= Heap@3 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@2) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@2) (store (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@2) null (list2 freshObj@0 k) freshVersion@0) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@2) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@2) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@2) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@2) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@2) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@2) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 31) 30))) anon10_correct))))
(let ((anon8_correct  (=> (= Mask@6 (PolymorphicMapType_7154 (store (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@5) null (list2 freshObj@0 k) (+ (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@5) null (list2 freshObj@0 k)) FullPerm)) (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@5) (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@5) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@5) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@5) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@5) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@5) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@5) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@5) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@5))) (=> (and (and (state Heap@1 Mask@6) (state Heap@1 Mask@6)) (and (|list2#trigger_3874| Heap@1 (list2 freshObj@0 k)) (= (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@1) null (list2 freshObj@0 k)) (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@1) freshObj@0 elem_1)) (CombineFrames (FrameFragment_3841 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@1) freshObj@0 next)) (FrameFragment_3875 (ite (not (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@1) freshObj@0 next) null)) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@1) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@1) freshObj@0 next) k)) EmptyFrame))))))) (and (=> (= (ControlFlow 0 33) 31) anon31_Then_correct) (=> (= (ControlFlow 0 33) 32) anon31_Else_correct))))))
(let ((anon7_correct  (=> (and (and (= Mask@4 (PolymorphicMapType_7154 (store (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@3) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@1) freshObj@0 next) k) (- (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@3) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@1) freshObj@0 next) k)) FullPerm)) (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@3) (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@3) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@3) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@3) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@3) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@3) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@3) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@3) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@3))) (InsidePredicate_3874_3874 (list2 freshObj@0 k) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@1) null (list2 freshObj@0 k)) (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@1) freshObj@0 next) k) (select (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@1) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@1) freshObj@0 next) k)))) (and (= Mask@5 Mask@4) (= (ControlFlow 0 35) 33))) anon8_correct)))
(let ((anon30_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 38) 35)) anon7_correct)))
(let ((anon30_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (<= FullPerm (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@3) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@1) freshObj@0 next) k)))) (=> (<= FullPerm (select (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@3) null (list2 (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@1) freshObj@0 next) k))) (=> (= (ControlFlow 0 36) 35) anon7_correct))))))
(let ((anon29_Then_correct  (=> (not (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@1) freshObj@0 next) null)) (and (=> (= (ControlFlow 0 39) 36) anon30_Then_correct) (=> (= (ControlFlow 0 39) 38) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (= (select (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@1) freshObj@0 next) null) (=> (and (= Mask@5 Mask@3) (= (ControlFlow 0 34) 33)) anon8_correct))))
(let ((anon4_correct  (=> (= Mask@3 (PolymorphicMapType_7154 (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@2) (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@2) (store (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@2) freshObj@0 next (- (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@2) freshObj@0 next) FullPerm)) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@2) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@2) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@2) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@2) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@2) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@2) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@2))) (and (=> (= (ControlFlow 0 40) 39) anon29_Then_correct) (=> (= (ControlFlow 0 40) 34) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 43) 40)) anon4_correct)))
(let ((anon28_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (<= FullPerm (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@2) freshObj@0 next))) (=> (<= FullPerm (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@2) freshObj@0 next)) (=> (= (ControlFlow 0 41) 40) anon4_correct))))))
(let ((anon2_correct  (=> (= Mask@2 (PolymorphicMapType_7154 (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@1) (store (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@1) freshObj@0 elem_1 (- (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@1) freshObj@0 elem_1) FullPerm)) (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@1) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@1) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@1) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@1) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@1) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@1) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@1) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@1))) (and (=> (= (ControlFlow 0 44) 41) anon28_Then_correct) (=> (= (ControlFlow 0 44) 43) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 47) 44)) anon2_correct)))
(let ((anon27_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (<= FullPerm (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@1) freshObj@0 elem_1))) (=> (<= FullPerm (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@1) freshObj@0 elem_1)) (=> (= (ControlFlow 0 45) 44) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@36 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (and (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@36) l1_3 $allocated) (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@36) l2_2 $allocated)) (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@36) freshObj@0 $allocated)))) (and (and (= Heap@0 (PolymorphicMapType_7133 (store (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@@36) freshObj@0 $allocated true) (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@@36) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@@36) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@@36) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@@36) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@@36) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@@36) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@@36) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@@36) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@@36))) (= Mask@0 (PolymorphicMapType_7154 (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| ZeroMask) (store (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| ZeroMask) freshObj@0 elem_1 (+ (select (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| ZeroMask) freshObj@0 elem_1) FullPerm)) (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| ZeroMask) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| ZeroMask) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| ZeroMask) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| ZeroMask) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| ZeroMask) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| ZeroMask) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| ZeroMask) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| ZeroMask)))) (and (= Mask@1 (PolymorphicMapType_7154 (|PolymorphicMapType_7154_3874_3875#PolymorphicMapType_7154| Mask@0) (|PolymorphicMapType_7154_3838_1189#PolymorphicMapType_7154| Mask@0) (store (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@0) freshObj@0 next (+ (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@0) freshObj@0 next) FullPerm)) (|PolymorphicMapType_7154_3874_1189#PolymorphicMapType_7154| Mask@0) (|PolymorphicMapType_7154_3874_3841#PolymorphicMapType_7154| Mask@0) (|PolymorphicMapType_7154_3874_53#PolymorphicMapType_7154| Mask@0) (|PolymorphicMapType_7154_3874_33685#PolymorphicMapType_7154| Mask@0) (|PolymorphicMapType_7154_3838_3875#PolymorphicMapType_7154| Mask@0) (|PolymorphicMapType_7154_3838_53#PolymorphicMapType_7154| Mask@0) (|PolymorphicMapType_7154_3838_34084#PolymorphicMapType_7154| Mask@0))) (state Heap@0 Mask@1)))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (= FullPerm (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@1) freshObj@0 next))) (=> (= FullPerm (select (|PolymorphicMapType_7154_3840_3841#PolymorphicMapType_7154| Mask@1) freshObj@0 next)) (=> (and (= Heap@1 (PolymorphicMapType_7133 (|PolymorphicMapType_7133_3710_53#PolymorphicMapType_7133| Heap@0) (store (|PolymorphicMapType_7133_3713_3714#PolymorphicMapType_7133| Heap@0) freshObj@0 next null) (|PolymorphicMapType_7133_3874_3875#PolymorphicMapType_7133| Heap@0) (|PolymorphicMapType_7133_3838_1189#PolymorphicMapType_7133| Heap@0) (|PolymorphicMapType_7133_3878_13837#PolymorphicMapType_7133| Heap@0) (|PolymorphicMapType_7133_3840_3875#PolymorphicMapType_7133| Heap@0) (|PolymorphicMapType_7133_3840_24445#PolymorphicMapType_7133| Heap@0) (|PolymorphicMapType_7133_3874_3841#PolymorphicMapType_7133| Heap@0) (|PolymorphicMapType_7133_3874_53#PolymorphicMapType_7133| Heap@0) (|PolymorphicMapType_7133_3874_1189#PolymorphicMapType_7133| Heap@0))) (state Heap@1 Mask@1)) (and (=> (= (ControlFlow 0 48) 45) anon27_Then_correct) (=> (= (ControlFlow 0 48) 47) anon27_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 50) 48) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
