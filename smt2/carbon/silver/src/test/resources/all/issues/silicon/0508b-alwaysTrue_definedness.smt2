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
(declare-sort T@Field_5239_53 0)
(declare-sort T@Field_5252_5253 0)
(declare-sort T@Field_3123_15023 0)
(declare-sort T@Field_3123_14890 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5200 0)) (((PolymorphicMapType_5200 (|PolymorphicMapType_5200_3123_3124#PolymorphicMapType_5200| (Array T@Ref T@Field_5252_5253 Real)) (|PolymorphicMapType_5200_3121_1327#PolymorphicMapType_5200| (Array T@Ref T@Field_5239_53 Real)) (|PolymorphicMapType_5200_3123_14890#PolymorphicMapType_5200| (Array T@Ref T@Field_3123_14890 Real)) (|PolymorphicMapType_5200_3123_18557#PolymorphicMapType_5200| (Array T@Ref T@Field_3123_15023 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5728 0)) (((PolymorphicMapType_5728 (|PolymorphicMapType_5728_5239_53#PolymorphicMapType_5728| (Array T@Ref T@Field_5239_53 Bool)) (|PolymorphicMapType_5728_5239_5253#PolymorphicMapType_5728| (Array T@Ref T@Field_5252_5253 Bool)) (|PolymorphicMapType_5728_5239_14890#PolymorphicMapType_5728| (Array T@Ref T@Field_3123_14890 Bool)) (|PolymorphicMapType_5728_5239_16003#PolymorphicMapType_5728| (Array T@Ref T@Field_3123_15023 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5179 0)) (((PolymorphicMapType_5179 (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| (Array T@Ref T@Field_5239_53 Bool)) (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| (Array T@Ref T@Field_5252_5253 T@Ref)) (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| (Array T@Ref T@Field_3123_15023 T@PolymorphicMapType_5728)) (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| (Array T@Ref T@Field_3123_14890 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_5239_53)
(declare-fun bool_prop () T@Field_5239_53)
(declare-fun item () T@Field_5252_5253)
(declare-fun succHeap (T@PolymorphicMapType_5179 T@PolymorphicMapType_5179) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5179 T@PolymorphicMapType_5179) Bool)
(declare-fun state (T@PolymorphicMapType_5179 T@PolymorphicMapType_5200) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5200) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5728)
(declare-fun |alwaysTrue'| (T@PolymorphicMapType_5179 T@Ref) Bool)
(declare-fun dummyFunction_1526 (Bool) Bool)
(declare-fun |alwaysTrue#triggerStateless| (T@Ref) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5179 T@PolymorphicMapType_5179 T@PolymorphicMapType_5200) Bool)
(declare-fun IsPredicateField_3123_14981 (T@Field_3123_14890) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3123 (T@Field_3123_14890) T@Field_3123_15023)
(declare-fun HasDirectPerm_3123_14954 (T@PolymorphicMapType_5200 T@Ref T@Field_3123_14890) Bool)
(declare-fun IsWandField_3123_16530 (T@Field_3123_14890) Bool)
(declare-fun WandMaskField_3123 (T@Field_3123_14890) T@Field_3123_15023)
(declare-fun dummyHeap () T@PolymorphicMapType_5179)
(declare-fun ZeroMask () T@PolymorphicMapType_5200)
(declare-fun InsidePredicate_5239_5239 (T@Field_3123_14890 T@FrameType T@Field_3123_14890 T@FrameType) Bool)
(declare-fun IsPredicateField_3121_1327 (T@Field_5239_53) Bool)
(declare-fun IsWandField_3121_1327 (T@Field_5239_53) Bool)
(declare-fun IsPredicateField_3123_3124 (T@Field_5252_5253) Bool)
(declare-fun IsWandField_3123_3124 (T@Field_5252_5253) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3123_19438 (T@Field_3123_15023) Bool)
(declare-fun IsWandField_3123_19454 (T@Field_3123_15023) Bool)
(declare-fun FullPerm () Real)
(declare-fun HasDirectPerm_3123_19809 (T@PolymorphicMapType_5200 T@Ref T@Field_3123_15023) Bool)
(declare-fun HasDirectPerm_3123_53 (T@PolymorphicMapType_5200 T@Ref T@Field_5239_53) Bool)
(declare-fun HasDirectPerm_3123_3124 (T@PolymorphicMapType_5200 T@Ref T@Field_5252_5253) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |alwaysTrue#trigger| (T@FrameType T@Ref) Bool)
(declare-fun sumMask (T@PolymorphicMapType_5200 T@PolymorphicMapType_5200 T@PolymorphicMapType_5200) Bool)
(declare-fun |alwaysTrue#frame| (T@FrameType T@Ref) Bool)
(declare-fun alwaysTrue (T@PolymorphicMapType_5179 T@Ref) Bool)
(declare-sort T@VCTArrayDomainType_9354 0)
(declare-fun loc_3149 (T@VCTArrayDomainType_9354 Int) T@Ref)
(assert (distinct $allocated bool_prop)
)
(assert (forall ((Heap0 T@PolymorphicMapType_5179) (Heap1 T@PolymorphicMapType_5179) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5179) (Mask T@PolymorphicMapType_5200) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5179) (Heap1@@0 T@PolymorphicMapType_5179) (Heap2 T@PolymorphicMapType_5179) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3123_15023) ) (!  (not (select (|PolymorphicMapType_5728_5239_16003#PolymorphicMapType_5728| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5728_5239_16003#PolymorphicMapType_5728| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3123_14890) ) (!  (not (select (|PolymorphicMapType_5728_5239_14890#PolymorphicMapType_5728| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5728_5239_14890#PolymorphicMapType_5728| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5252_5253) ) (!  (not (select (|PolymorphicMapType_5728_5239_5253#PolymorphicMapType_5728| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5728_5239_5253#PolymorphicMapType_5728| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5239_53) ) (!  (not (select (|PolymorphicMapType_5728_5239_53#PolymorphicMapType_5728| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5728_5239_53#PolymorphicMapType_5728| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5179) (v_2 T@Ref) ) (! (dummyFunction_1526 (|alwaysTrue#triggerStateless| v_2))
 :qid |stdinbpl.238:15|
 :skolemid |24|
 :pattern ( (|alwaysTrue'| Heap@@0 v_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5179) (ExhaleHeap T@PolymorphicMapType_5179) (Mask@@0 T@PolymorphicMapType_5200) (pm_f_1 T@Field_3123_14890) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3123_14954 Mask@@0 null pm_f_1) (IsPredicateField_3123_14981 pm_f_1)) (= (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@1) null (PredicateMaskField_3123 pm_f_1)) (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| ExhaleHeap) null (PredicateMaskField_3123 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_3123_14981 pm_f_1) (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| ExhaleHeap) null (PredicateMaskField_3123 pm_f_1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5179) (ExhaleHeap@@0 T@PolymorphicMapType_5179) (Mask@@1 T@PolymorphicMapType_5200) (pm_f_1@@0 T@Field_3123_14890) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3123_14954 Mask@@1 null pm_f_1@@0) (IsWandField_3123_16530 pm_f_1@@0)) (= (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@2) null (WandMaskField_3123 pm_f_1@@0)) (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| ExhaleHeap@@0) null (WandMaskField_3123 pm_f_1@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_3123_16530 pm_f_1@@0) (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| ExhaleHeap@@0) null (WandMaskField_3123 pm_f_1@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5179) (ExhaleHeap@@1 T@PolymorphicMapType_5179) (Mask@@2 T@PolymorphicMapType_5200) (pm_f_1@@1 T@Field_3123_14890) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3123_14954 Mask@@2 null pm_f_1@@1) (IsPredicateField_3123_14981 pm_f_1@@1)) (and (and (and (forall ((o2_1 T@Ref) (f_9 T@Field_5239_53) ) (!  (=> (select (|PolymorphicMapType_5728_5239_53#PolymorphicMapType_5728| (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@3) null (PredicateMaskField_3123 pm_f_1@@1))) o2_1 f_9) (= (select (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| Heap@@3) o2_1 f_9) (select (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| ExhaleHeap@@1) o2_1 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| ExhaleHeap@@1) o2_1 f_9))
)) (forall ((o2_1@@0 T@Ref) (f_9@@0 T@Field_5252_5253) ) (!  (=> (select (|PolymorphicMapType_5728_5239_5253#PolymorphicMapType_5728| (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@3) null (PredicateMaskField_3123 pm_f_1@@1))) o2_1@@0 f_9@@0) (= (select (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| Heap@@3) o2_1@@0 f_9@@0) (select (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| ExhaleHeap@@1) o2_1@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| ExhaleHeap@@1) o2_1@@0 f_9@@0))
))) (forall ((o2_1@@1 T@Ref) (f_9@@1 T@Field_3123_14890) ) (!  (=> (select (|PolymorphicMapType_5728_5239_14890#PolymorphicMapType_5728| (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@3) null (PredicateMaskField_3123 pm_f_1@@1))) o2_1@@1 f_9@@1) (= (select (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| Heap@@3) o2_1@@1 f_9@@1) (select (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| ExhaleHeap@@1) o2_1@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| ExhaleHeap@@1) o2_1@@1 f_9@@1))
))) (forall ((o2_1@@2 T@Ref) (f_9@@2 T@Field_3123_15023) ) (!  (=> (select (|PolymorphicMapType_5728_5239_16003#PolymorphicMapType_5728| (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@3) null (PredicateMaskField_3123 pm_f_1@@1))) o2_1@@2 f_9@@2) (= (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@3) o2_1@@2 f_9@@2) (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| ExhaleHeap@@1) o2_1@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| ExhaleHeap@@1) o2_1@@2 f_9@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_3123_14981 pm_f_1@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5179) (ExhaleHeap@@2 T@PolymorphicMapType_5179) (Mask@@3 T@PolymorphicMapType_5200) (pm_f_1@@2 T@Field_3123_14890) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3123_14954 Mask@@3 null pm_f_1@@2) (IsWandField_3123_16530 pm_f_1@@2)) (and (and (and (forall ((o2_1@@3 T@Ref) (f_9@@3 T@Field_5239_53) ) (!  (=> (select (|PolymorphicMapType_5728_5239_53#PolymorphicMapType_5728| (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@4) null (WandMaskField_3123 pm_f_1@@2))) o2_1@@3 f_9@@3) (= (select (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| Heap@@4) o2_1@@3 f_9@@3) (select (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| ExhaleHeap@@2) o2_1@@3 f_9@@3)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| ExhaleHeap@@2) o2_1@@3 f_9@@3))
)) (forall ((o2_1@@4 T@Ref) (f_9@@4 T@Field_5252_5253) ) (!  (=> (select (|PolymorphicMapType_5728_5239_5253#PolymorphicMapType_5728| (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@4) null (WandMaskField_3123 pm_f_1@@2))) o2_1@@4 f_9@@4) (= (select (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| Heap@@4) o2_1@@4 f_9@@4) (select (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| ExhaleHeap@@2) o2_1@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| ExhaleHeap@@2) o2_1@@4 f_9@@4))
))) (forall ((o2_1@@5 T@Ref) (f_9@@5 T@Field_3123_14890) ) (!  (=> (select (|PolymorphicMapType_5728_5239_14890#PolymorphicMapType_5728| (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@4) null (WandMaskField_3123 pm_f_1@@2))) o2_1@@5 f_9@@5) (= (select (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| Heap@@4) o2_1@@5 f_9@@5) (select (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| ExhaleHeap@@2) o2_1@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| ExhaleHeap@@2) o2_1@@5 f_9@@5))
))) (forall ((o2_1@@6 T@Ref) (f_9@@6 T@Field_3123_15023) ) (!  (=> (select (|PolymorphicMapType_5728_5239_16003#PolymorphicMapType_5728| (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@4) null (WandMaskField_3123 pm_f_1@@2))) o2_1@@6 f_9@@6) (= (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@4) o2_1@@6 f_9@@6) (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| ExhaleHeap@@2) o2_1@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| ExhaleHeap@@2) o2_1@@6 f_9@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_3123_16530 pm_f_1@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5179) (ExhaleHeap@@3 T@PolymorphicMapType_5179) (Mask@@4 T@PolymorphicMapType_5200) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| Heap@@5) o_4 $allocated) (select (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| ExhaleHeap@@3) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| ExhaleHeap@@3) o_4 $allocated))
)))
(assert (forall ((p T@Field_3123_14890) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5239_5239 p v_1 p w))
 :qid |stdinbpl.195:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5239_5239 p v_1 p w))
)))
(assert  (not (IsPredicateField_3121_1327 bool_prop)))
(assert  (not (IsWandField_3121_1327 bool_prop)))
(assert  (not (IsPredicateField_3123_3124 item)))
(assert  (not (IsWandField_3123_3124 item)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5179) (ExhaleHeap@@4 T@PolymorphicMapType_5179) (Mask@@5 T@PolymorphicMapType_5200) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@6 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5200) (o_2@@3 T@Ref) (f_4@@3 T@Field_3123_15023) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5200_3123_18557#PolymorphicMapType_5200| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_3123_19438 f_4@@3))) (not (IsWandField_3123_19454 f_4@@3))) (<= (select (|PolymorphicMapType_5200_3123_18557#PolymorphicMapType_5200| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5200_3123_18557#PolymorphicMapType_5200| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5200) (o_2@@4 T@Ref) (f_4@@4 T@Field_3123_14890) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5200_3123_14890#PolymorphicMapType_5200| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_3123_14981 f_4@@4))) (not (IsWandField_3123_16530 f_4@@4))) (<= (select (|PolymorphicMapType_5200_3123_14890#PolymorphicMapType_5200| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5200_3123_14890#PolymorphicMapType_5200| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5200) (o_2@@5 T@Ref) (f_4@@5 T@Field_5239_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5200_3121_1327#PolymorphicMapType_5200| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_3121_1327 f_4@@5))) (not (IsWandField_3121_1327 f_4@@5))) (<= (select (|PolymorphicMapType_5200_3121_1327#PolymorphicMapType_5200| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5200_3121_1327#PolymorphicMapType_5200| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5200) (o_2@@6 T@Ref) (f_4@@6 T@Field_5252_5253) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5200_3123_3124#PolymorphicMapType_5200| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_3123_3124 f_4@@6))) (not (IsWandField_3123_3124 f_4@@6))) (<= (select (|PolymorphicMapType_5200_3123_3124#PolymorphicMapType_5200| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5200_3123_3124#PolymorphicMapType_5200| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5200) (o_2@@7 T@Ref) (f_4@@7 T@Field_3123_15023) ) (! (= (HasDirectPerm_3123_19809 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_5200_3123_18557#PolymorphicMapType_5200| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3123_19809 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5200) (o_2@@8 T@Ref) (f_4@@8 T@Field_3123_14890) ) (! (= (HasDirectPerm_3123_14954 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_5200_3123_14890#PolymorphicMapType_5200| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3123_14954 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5200) (o_2@@9 T@Ref) (f_4@@9 T@Field_5239_53) ) (! (= (HasDirectPerm_3123_53 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5200_3121_1327#PolymorphicMapType_5200| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3123_53 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5200) (o_2@@10 T@Ref) (f_4@@10 T@Field_5252_5253) ) (! (= (HasDirectPerm_3123_3124 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5200_3123_3124#PolymorphicMapType_5200| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3123_3124 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.183:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5179) (ExhaleHeap@@5 T@PolymorphicMapType_5179) (Mask@@14 T@PolymorphicMapType_5200) (o_4@@0 T@Ref) (f_9@@7 T@Field_3123_15023) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_3123_19809 Mask@@14 o_4@@0 f_9@@7) (= (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@7) o_4@@0 f_9@@7) (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| ExhaleHeap@@5) o_4@@0 f_9@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| ExhaleHeap@@5) o_4@@0 f_9@@7))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5179) (ExhaleHeap@@6 T@PolymorphicMapType_5179) (Mask@@15 T@PolymorphicMapType_5200) (o_4@@1 T@Ref) (f_9@@8 T@Field_3123_14890) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_3123_14954 Mask@@15 o_4@@1 f_9@@8) (= (select (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| Heap@@8) o_4@@1 f_9@@8) (select (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| ExhaleHeap@@6) o_4@@1 f_9@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| ExhaleHeap@@6) o_4@@1 f_9@@8))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5179) (ExhaleHeap@@7 T@PolymorphicMapType_5179) (Mask@@16 T@PolymorphicMapType_5200) (o_4@@2 T@Ref) (f_9@@9 T@Field_5239_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_3123_53 Mask@@16 o_4@@2 f_9@@9) (= (select (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| Heap@@9) o_4@@2 f_9@@9) (select (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| ExhaleHeap@@7) o_4@@2 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| ExhaleHeap@@7) o_4@@2 f_9@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5179) (ExhaleHeap@@8 T@PolymorphicMapType_5179) (Mask@@17 T@PolymorphicMapType_5200) (o_4@@3 T@Ref) (f_9@@10 T@Field_5252_5253) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_3123_3124 Mask@@17 o_4@@3 f_9@@10) (= (select (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| Heap@@10) o_4@@3 f_9@@10) (select (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| ExhaleHeap@@8) o_4@@3 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| ExhaleHeap@@8) o_4@@3 f_9@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_3123_15023) ) (! (= (select (|PolymorphicMapType_5200_3123_18557#PolymorphicMapType_5200| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5200_3123_18557#PolymorphicMapType_5200| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_3123_14890) ) (! (= (select (|PolymorphicMapType_5200_3123_14890#PolymorphicMapType_5200| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5200_3123_14890#PolymorphicMapType_5200| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5239_53) ) (! (= (select (|PolymorphicMapType_5200_3121_1327#PolymorphicMapType_5200| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5200_3121_1327#PolymorphicMapType_5200| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5252_5253) ) (! (= (select (|PolymorphicMapType_5200_3123_3124#PolymorphicMapType_5200| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5200_3123_3124#PolymorphicMapType_5200| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5179) (Mask@@18 T@PolymorphicMapType_5200) (v_2@@0 T@Ref) ) (!  (=> (and (state Heap@@11 Mask@@18) (or (< AssumeFunctionsAbove 0) (|alwaysTrue#trigger| EmptyFrame v_2@@0))) (|alwaysTrue'| Heap@@11 v_2@@0))
 :qid |stdinbpl.251:15|
 :skolemid |26|
 :pattern ( (state Heap@@11 Mask@@18) (|alwaysTrue'| Heap@@11 v_2@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5200) (SummandMask1 T@PolymorphicMapType_5200) (SummandMask2 T@PolymorphicMapType_5200) (o_2@@15 T@Ref) (f_4@@15 T@Field_3123_15023) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5200_3123_18557#PolymorphicMapType_5200| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_5200_3123_18557#PolymorphicMapType_5200| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_5200_3123_18557#PolymorphicMapType_5200| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5200_3123_18557#PolymorphicMapType_5200| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5200_3123_18557#PolymorphicMapType_5200| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5200_3123_18557#PolymorphicMapType_5200| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5200) (SummandMask1@@0 T@PolymorphicMapType_5200) (SummandMask2@@0 T@PolymorphicMapType_5200) (o_2@@16 T@Ref) (f_4@@16 T@Field_3123_14890) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5200_3123_14890#PolymorphicMapType_5200| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_5200_3123_14890#PolymorphicMapType_5200| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_5200_3123_14890#PolymorphicMapType_5200| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5200_3123_14890#PolymorphicMapType_5200| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5200_3123_14890#PolymorphicMapType_5200| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5200_3123_14890#PolymorphicMapType_5200| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5200) (SummandMask1@@1 T@PolymorphicMapType_5200) (SummandMask2@@1 T@PolymorphicMapType_5200) (o_2@@17 T@Ref) (f_4@@17 T@Field_5239_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5200_3121_1327#PolymorphicMapType_5200| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_5200_3121_1327#PolymorphicMapType_5200| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_5200_3121_1327#PolymorphicMapType_5200| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5200_3121_1327#PolymorphicMapType_5200| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5200_3121_1327#PolymorphicMapType_5200| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5200_3121_1327#PolymorphicMapType_5200| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5200) (SummandMask1@@2 T@PolymorphicMapType_5200) (SummandMask2@@2 T@PolymorphicMapType_5200) (o_2@@18 T@Ref) (f_4@@18 T@Field_5252_5253) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5200_3123_3124#PolymorphicMapType_5200| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_5200_3123_3124#PolymorphicMapType_5200| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_5200_3123_3124#PolymorphicMapType_5200| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5200_3123_3124#PolymorphicMapType_5200| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5200_3123_3124#PolymorphicMapType_5200| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5200_3123_3124#PolymorphicMapType_5200| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5179) (Mask@@19 T@PolymorphicMapType_5200) (v_2@@1 T@Ref) ) (!  (=> (state Heap@@12 Mask@@19) (= (|alwaysTrue'| Heap@@12 v_2@@1) (|alwaysTrue#frame| EmptyFrame v_2@@1)))
 :qid |stdinbpl.245:15|
 :skolemid |25|
 :pattern ( (state Heap@@12 Mask@@19) (|alwaysTrue'| Heap@@12 v_2@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5179) (v_2@@2 T@Ref) ) (!  (and (= (alwaysTrue Heap@@13 v_2@@2) (|alwaysTrue'| Heap@@13 v_2@@2)) (dummyFunction_1526 (|alwaysTrue#triggerStateless| v_2@@2)))
 :qid |stdinbpl.234:15|
 :skolemid |23|
 :pattern ( (alwaysTrue Heap@@13 v_2@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5179) (o_3 T@Ref) (f_10 T@Field_3123_14890) (v T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_5179 (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| Heap@@14) (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| Heap@@14) (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@14) (store (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| Heap@@14) o_3 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5179 (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| Heap@@14) (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| Heap@@14) (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@14) (store (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| Heap@@14) o_3 f_10 v)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5179) (o_3@@0 T@Ref) (f_10@@0 T@Field_3123_15023) (v@@0 T@PolymorphicMapType_5728) ) (! (succHeap Heap@@15 (PolymorphicMapType_5179 (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| Heap@@15) (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| Heap@@15) (store (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@15) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5179 (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| Heap@@15) (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| Heap@@15) (store (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@15) o_3@@0 f_10@@0 v@@0) (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5179) (o_3@@1 T@Ref) (f_10@@1 T@Field_5252_5253) (v@@1 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_5179 (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| Heap@@16) (store (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| Heap@@16) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@16) (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5179 (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| Heap@@16) (store (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| Heap@@16) o_3@@1 f_10@@1 v@@1) (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@16) (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5179) (o_3@@2 T@Ref) (f_10@@2 T@Field_5239_53) (v@@2 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_5179 (store (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| Heap@@17) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| Heap@@17) (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@17) (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5179 (store (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| Heap@@17) o_3@@2 f_10@@2 v@@2) (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| Heap@@17) (|PolymorphicMapType_5179_3123_15067#PolymorphicMapType_5179| Heap@@17) (|PolymorphicMapType_5179_5239_14890#PolymorphicMapType_5179| Heap@@17)))
)))
(assert (forall ((a_2 T@VCTArrayDomainType_9354) (i Int) (j Int) ) (!  (=> (and (>= i 0) (and (>= j 0) (not (= i j)))) (not (= (loc_3149 a_2 i) (loc_3149 a_2 j))))
 :qid |stdinbpl.211:20|
 :skolemid |22|
 :pattern ( (loc_3149 a_2 i) (loc_3149 a_2 j))
)))
(assert (forall ((o_3@@3 T@Ref) (f_8 T@Field_5252_5253) (Heap@@18 T@PolymorphicMapType_5179) ) (!  (=> (select (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| Heap@@18) o_3@@3 $allocated) (select (|PolymorphicMapType_5179_2985_53#PolymorphicMapType_5179| Heap@@18) (select (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| Heap@@18) o_3@@3 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5179_2988_2989#PolymorphicMapType_5179| Heap@@18) o_3@@3 f_8))
)))
(assert (forall ((p@@1 T@Field_3123_14890) (v_1@@0 T@FrameType) (q T@Field_3123_14890) (w@@0 T@FrameType) (r T@Field_3123_14890) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5239_5239 p@@1 v_1@@0 q w@@0) (InsidePredicate_5239_5239 q w@@0 r u)) (InsidePredicate_5239_5239 p@@1 v_1@@0 r u))
 :qid |stdinbpl.190:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5239_5239 p@@1 v_1@@0 q w@@0) (InsidePredicate_5239_5239 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |alwaysTrue#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
