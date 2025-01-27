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
(declare-sort T@Field_18139_53 0)
(declare-sort T@Field_18152_18153 0)
(declare-sort T@Field_21466_1189 0)
(declare-sort T@Field_21854_21855 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_23976_23981 0)
(declare-sort T@Field_8876_8912 0)
(declare-sort T@Field_8876_23981 0)
(declare-sort T@Field_8911_1189 0)
(declare-sort T@Field_8911_8879 0)
(declare-sort T@Field_8911_53 0)
(declare-datatypes ((T@PolymorphicMapType_18100 0)) (((PolymorphicMapType_18100 (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| (Array T@Ref T@Field_21854_21855 Real)) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| (Array T@Ref T@Field_21466_1189 Real)) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| (Array T@Ref T@Field_18152_18153 Real)) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| (Array T@Ref T@Field_8911_1189 Real)) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| (Array T@Ref T@Field_8911_8879 Real)) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| (Array T@Ref T@Field_8911_53 Real)) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| (Array T@Ref T@Field_23976_23981 Real)) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| (Array T@Ref T@Field_8876_8912 Real)) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| (Array T@Ref T@Field_18139_53 Real)) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| (Array T@Ref T@Field_8876_23981 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18628 0)) (((PolymorphicMapType_18628 (|PolymorphicMapType_18628_8876_1189#PolymorphicMapType_18628| (Array T@Ref T@Field_21466_1189 Bool)) (|PolymorphicMapType_18628_8878_8879#PolymorphicMapType_18628| (Array T@Ref T@Field_18152_18153 Bool)) (|PolymorphicMapType_18628_8876_53#PolymorphicMapType_18628| (Array T@Ref T@Field_18139_53 Bool)) (|PolymorphicMapType_18628_8876_21855#PolymorphicMapType_18628| (Array T@Ref T@Field_8876_8912 Bool)) (|PolymorphicMapType_18628_8876_70711#PolymorphicMapType_18628| (Array T@Ref T@Field_8876_23981 Bool)) (|PolymorphicMapType_18628_21854_1189#PolymorphicMapType_18628| (Array T@Ref T@Field_8911_1189 Bool)) (|PolymorphicMapType_18628_21854_8879#PolymorphicMapType_18628| (Array T@Ref T@Field_8911_8879 Bool)) (|PolymorphicMapType_18628_21854_53#PolymorphicMapType_18628| (Array T@Ref T@Field_8911_53 Bool)) (|PolymorphicMapType_18628_21854_21855#PolymorphicMapType_18628| (Array T@Ref T@Field_21854_21855 Bool)) (|PolymorphicMapType_18628_21854_71759#PolymorphicMapType_18628| (Array T@Ref T@Field_23976_23981 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18079 0)) (((PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| (Array T@Ref T@Field_18139_53 Bool)) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| (Array T@Ref T@Field_18152_18153 T@Ref)) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| (Array T@Ref T@Field_21466_1189 Int)) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| (Array T@Ref T@Field_21854_21855 T@FrameType)) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| (Array T@Ref T@Field_23976_23981 T@PolymorphicMapType_18628)) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| (Array T@Ref T@Field_8876_8912 T@FrameType)) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| (Array T@Ref T@Field_8876_23981 T@PolymorphicMapType_18628)) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| (Array T@Ref T@Field_8911_1189 Int)) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| (Array T@Ref T@Field_8911_8879 T@Ref)) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| (Array T@Ref T@Field_8911_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_18139_53)
(declare-fun value_1 () T@Field_21466_1189)
(declare-fun next () T@Field_18152_18153)
(declare-fun succHeap (T@PolymorphicMapType_18079 T@PolymorphicMapType_18079) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_18079 T@PolymorphicMapType_18079) Bool)
(declare-fun state (T@PolymorphicMapType_18079 T@PolymorphicMapType_18100) Bool)
(declare-fun get (T@PolymorphicMapType_18079 T@Ref) Int)
(declare-fun |get#triggerStateless| (T@Ref) Int)
(declare-fun |inv#trigger_8911| (T@PolymorphicMapType_18079 T@Field_21854_21855) Bool)
(declare-fun inv (T@Ref) T@Field_21854_21855)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_18100) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_18628)
(declare-fun IsPredicateField_8911_8912 (T@Field_21854_21855) Bool)
(declare-fun |get'| (T@PolymorphicMapType_18079 T@Ref) Int)
(declare-fun dummyFunction_1407 (Int) Bool)
(declare-fun |inv#everUsed_8911| (T@Field_21854_21855) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_18079 T@PolymorphicMapType_18079 T@PolymorphicMapType_18100) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8911 (T@Field_21854_21855) T@Field_23976_23981)
(declare-fun HasDirectPerm_8911_8912 (T@PolymorphicMapType_18100 T@Ref T@Field_21854_21855) Bool)
(declare-fun IsPredicateField_8876_69254 (T@Field_8876_8912) Bool)
(declare-fun PredicateMaskField_8876 (T@Field_8876_8912) T@Field_8876_23981)
(declare-fun HasDirectPerm_8876_8912 (T@PolymorphicMapType_18100 T@Ref T@Field_8876_8912) Bool)
(declare-fun IsWandField_8911_72924 (T@Field_21854_21855) Bool)
(declare-fun WandMaskField_8911 (T@Field_21854_21855) T@Field_23976_23981)
(declare-fun IsWandField_8876_72567 (T@Field_8876_8912) Bool)
(declare-fun WandMaskField_8876 (T@Field_8876_8912) T@Field_8876_23981)
(declare-fun |inv#sm| (T@Ref) T@Field_23976_23981)
(declare-fun dummyHeap () T@PolymorphicMapType_18079)
(declare-fun ZeroMask () T@PolymorphicMapType_18100)
(declare-fun InsidePredicate_18139_18139 (T@Field_8876_8912 T@FrameType T@Field_8876_8912 T@FrameType) Bool)
(declare-fun InsidePredicate_8911_8911 (T@Field_21854_21855 T@FrameType T@Field_21854_21855 T@FrameType) Bool)
(declare-fun IsPredicateField_8876_1189 (T@Field_21466_1189) Bool)
(declare-fun IsWandField_8876_1189 (T@Field_21466_1189) Bool)
(declare-fun IsPredicateField_8878_8879 (T@Field_18152_18153) Bool)
(declare-fun IsWandField_8878_8879 (T@Field_18152_18153) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8876_79827 (T@Field_8876_23981) Bool)
(declare-fun IsWandField_8876_79843 (T@Field_8876_23981) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8876_53 (T@Field_18139_53) Bool)
(declare-fun IsWandField_8876_53 (T@Field_18139_53) Bool)
(declare-fun IsPredicateField_8911_79024 (T@Field_23976_23981) Bool)
(declare-fun IsWandField_8911_79040 (T@Field_23976_23981) Bool)
(declare-fun IsPredicateField_8911_53 (T@Field_8911_53) Bool)
(declare-fun IsWandField_8911_53 (T@Field_8911_53) Bool)
(declare-fun IsPredicateField_8911_8879 (T@Field_8911_8879) Bool)
(declare-fun IsWandField_8911_8879 (T@Field_8911_8879) Bool)
(declare-fun IsPredicateField_8911_1189 (T@Field_8911_1189) Bool)
(declare-fun IsWandField_8911_1189 (T@Field_8911_1189) Bool)
(declare-fun HasDirectPerm_8911_69009 (T@PolymorphicMapType_18100 T@Ref T@Field_23976_23981) Bool)
(declare-fun HasDirectPerm_8911_53 (T@PolymorphicMapType_18100 T@Ref T@Field_8911_53) Bool)
(declare-fun HasDirectPerm_8911_8879 (T@PolymorphicMapType_18100 T@Ref T@Field_8911_8879) Bool)
(declare-fun HasDirectPerm_8911_1189 (T@PolymorphicMapType_18100 T@Ref T@Field_8911_1189) Bool)
(declare-fun HasDirectPerm_8876_67868 (T@PolymorphicMapType_18100 T@Ref T@Field_8876_23981) Bool)
(declare-fun HasDirectPerm_8876_53 (T@PolymorphicMapType_18100 T@Ref T@Field_18139_53) Bool)
(declare-fun HasDirectPerm_8878_8879 (T@PolymorphicMapType_18100 T@Ref T@Field_18152_18153) Bool)
(declare-fun HasDirectPerm_8876_1189 (T@PolymorphicMapType_18100 T@Ref T@Field_21466_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_18100 T@PolymorphicMapType_18100 T@PolymorphicMapType_18100) Bool)
(declare-fun |get#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_8911_8912 (T@Field_21854_21855) Int)
(declare-fun InsidePredicate_18139_8911 (T@Field_8876_8912 T@FrameType T@Field_21854_21855 T@FrameType) Bool)
(declare-fun InsidePredicate_8911_18139 (T@Field_21854_21855 T@FrameType T@Field_8876_8912 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_18079) (Heap1 T@PolymorphicMapType_18079) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_18079) (Mask T@PolymorphicMapType_18100) (this T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (get Heap this) (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap) this value_1)))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (state Heap Mask) (get Heap this))
 :pattern ( (state Heap Mask) (|get#triggerStateless| this) (|inv#trigger_8911| Heap (inv this)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_18079) (Mask@@0 T@PolymorphicMapType_18100) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_18079) (Heap1@@0 T@PolymorphicMapType_18079) (Heap2 T@PolymorphicMapType_18079) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_23976_23981) ) (!  (not (select (|PolymorphicMapType_18628_21854_71759#PolymorphicMapType_18628| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18628_21854_71759#PolymorphicMapType_18628| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_21854_21855) ) (!  (not (select (|PolymorphicMapType_18628_21854_21855#PolymorphicMapType_18628| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18628_21854_21855#PolymorphicMapType_18628| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8911_53) ) (!  (not (select (|PolymorphicMapType_18628_21854_53#PolymorphicMapType_18628| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18628_21854_53#PolymorphicMapType_18628| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8911_8879) ) (!  (not (select (|PolymorphicMapType_18628_21854_8879#PolymorphicMapType_18628| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18628_21854_8879#PolymorphicMapType_18628| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8911_1189) ) (!  (not (select (|PolymorphicMapType_18628_21854_1189#PolymorphicMapType_18628| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18628_21854_1189#PolymorphicMapType_18628| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8876_23981) ) (!  (not (select (|PolymorphicMapType_18628_8876_70711#PolymorphicMapType_18628| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18628_8876_70711#PolymorphicMapType_18628| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8876_8912) ) (!  (not (select (|PolymorphicMapType_18628_8876_21855#PolymorphicMapType_18628| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18628_8876_21855#PolymorphicMapType_18628| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_18139_53) ) (!  (not (select (|PolymorphicMapType_18628_8876_53#PolymorphicMapType_18628| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18628_8876_53#PolymorphicMapType_18628| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_18152_18153) ) (!  (not (select (|PolymorphicMapType_18628_8878_8879#PolymorphicMapType_18628| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18628_8878_8879#PolymorphicMapType_18628| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_21466_1189) ) (!  (not (select (|PolymorphicMapType_18628_8876_1189#PolymorphicMapType_18628| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_18628_8876_1189#PolymorphicMapType_18628| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_8911_8912 (inv this@@0))
 :qid |stdinbpl.309:15|
 :skolemid |28|
 :pattern ( (inv this@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_18079) (this@@1 T@Ref) ) (! (dummyFunction_1407 (|get#triggerStateless| this@@1))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|get'| Heap@@1 this@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_18079) (this@@2 T@Ref) ) (! (|inv#everUsed_8911| (inv this@@2))
 :qid |stdinbpl.328:15|
 :skolemid |32|
 :pattern ( (|inv#trigger_8911| Heap@@2 (inv this@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_18079) (this@@3 T@Ref) ) (!  (and (= (get Heap@@3 this@@3) (|get'| Heap@@3 this@@3)) (dummyFunction_1407 (|get#triggerStateless| this@@3)))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (get Heap@@3 this@@3))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_18079) (ExhaleHeap T@PolymorphicMapType_18079) (Mask@@1 T@PolymorphicMapType_18100) (pm_f_39 T@Field_21854_21855) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_8911_8912 Mask@@1 null pm_f_39) (IsPredicateField_8911_8912 pm_f_39)) (= (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@4) null (PredicateMaskField_8911 pm_f_39)) (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| ExhaleHeap) null (PredicateMaskField_8911 pm_f_39)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@1) (IsPredicateField_8911_8912 pm_f_39) (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| ExhaleHeap) null (PredicateMaskField_8911 pm_f_39)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_18079) (ExhaleHeap@@0 T@PolymorphicMapType_18079) (Mask@@2 T@PolymorphicMapType_18100) (pm_f_39@@0 T@Field_8876_8912) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_8876_8912 Mask@@2 null pm_f_39@@0) (IsPredicateField_8876_69254 pm_f_39@@0)) (= (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@5) null (PredicateMaskField_8876 pm_f_39@@0)) (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| ExhaleHeap@@0) null (PredicateMaskField_8876 pm_f_39@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@2) (IsPredicateField_8876_69254 pm_f_39@@0) (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| ExhaleHeap@@0) null (PredicateMaskField_8876 pm_f_39@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_18079) (ExhaleHeap@@1 T@PolymorphicMapType_18079) (Mask@@3 T@PolymorphicMapType_18100) (pm_f_39@@1 T@Field_21854_21855) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_8911_8912 Mask@@3 null pm_f_39@@1) (IsWandField_8911_72924 pm_f_39@@1)) (= (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@6) null (WandMaskField_8911 pm_f_39@@1)) (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| ExhaleHeap@@1) null (WandMaskField_8911 pm_f_39@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@3) (IsWandField_8911_72924 pm_f_39@@1) (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| ExhaleHeap@@1) null (WandMaskField_8911 pm_f_39@@1)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_18079) (ExhaleHeap@@2 T@PolymorphicMapType_18079) (Mask@@4 T@PolymorphicMapType_18100) (pm_f_39@@2 T@Field_8876_8912) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_8876_8912 Mask@@4 null pm_f_39@@2) (IsWandField_8876_72567 pm_f_39@@2)) (= (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@7) null (WandMaskField_8876 pm_f_39@@2)) (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| ExhaleHeap@@2) null (WandMaskField_8876 pm_f_39@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@4) (IsWandField_8876_72567 pm_f_39@@2) (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| ExhaleHeap@@2) null (WandMaskField_8876 pm_f_39@@2)))
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
(assert (forall ((Heap@@8 T@PolymorphicMapType_18079) (ExhaleHeap@@3 T@PolymorphicMapType_18079) (Mask@@5 T@PolymorphicMapType_18100) (pm_f_39@@3 T@Field_21854_21855) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_8911_8912 Mask@@5 null pm_f_39@@3) (IsPredicateField_8911_8912 pm_f_39@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_39 T@Ref) (f_16 T@Field_21466_1189) ) (!  (=> (select (|PolymorphicMapType_18628_8876_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@8) null (PredicateMaskField_8911 pm_f_39@@3))) o2_39 f_16) (= (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@8) o2_39 f_16) (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39 f_16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39 f_16))
)) (forall ((o2_39@@0 T@Ref) (f_16@@0 T@Field_18152_18153) ) (!  (=> (select (|PolymorphicMapType_18628_8878_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@8) null (PredicateMaskField_8911 pm_f_39@@3))) o2_39@@0 f_16@@0) (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@8) o2_39@@0 f_16@@0) (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@0 f_16@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@0 f_16@@0))
))) (forall ((o2_39@@1 T@Ref) (f_16@@1 T@Field_18139_53) ) (!  (=> (select (|PolymorphicMapType_18628_8876_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@8) null (PredicateMaskField_8911 pm_f_39@@3))) o2_39@@1 f_16@@1) (= (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@8) o2_39@@1 f_16@@1) (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@1 f_16@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@1 f_16@@1))
))) (forall ((o2_39@@2 T@Ref) (f_16@@2 T@Field_8876_8912) ) (!  (=> (select (|PolymorphicMapType_18628_8876_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@8) null (PredicateMaskField_8911 pm_f_39@@3))) o2_39@@2 f_16@@2) (= (select (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@8) o2_39@@2 f_16@@2) (select (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@2 f_16@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@2 f_16@@2))
))) (forall ((o2_39@@3 T@Ref) (f_16@@3 T@Field_8876_23981) ) (!  (=> (select (|PolymorphicMapType_18628_8876_70711#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@8) null (PredicateMaskField_8911 pm_f_39@@3))) o2_39@@3 f_16@@3) (= (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@8) o2_39@@3 f_16@@3) (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@3 f_16@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@3 f_16@@3))
))) (forall ((o2_39@@4 T@Ref) (f_16@@4 T@Field_8911_1189) ) (!  (=> (select (|PolymorphicMapType_18628_21854_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@8) null (PredicateMaskField_8911 pm_f_39@@3))) o2_39@@4 f_16@@4) (= (select (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@8) o2_39@@4 f_16@@4) (select (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@4 f_16@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@4 f_16@@4))
))) (forall ((o2_39@@5 T@Ref) (f_16@@5 T@Field_8911_8879) ) (!  (=> (select (|PolymorphicMapType_18628_21854_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@8) null (PredicateMaskField_8911 pm_f_39@@3))) o2_39@@5 f_16@@5) (= (select (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@8) o2_39@@5 f_16@@5) (select (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@5 f_16@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@5 f_16@@5))
))) (forall ((o2_39@@6 T@Ref) (f_16@@6 T@Field_8911_53) ) (!  (=> (select (|PolymorphicMapType_18628_21854_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@8) null (PredicateMaskField_8911 pm_f_39@@3))) o2_39@@6 f_16@@6) (= (select (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@8) o2_39@@6 f_16@@6) (select (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@6 f_16@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@6 f_16@@6))
))) (forall ((o2_39@@7 T@Ref) (f_16@@7 T@Field_21854_21855) ) (!  (=> (select (|PolymorphicMapType_18628_21854_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@8) null (PredicateMaskField_8911 pm_f_39@@3))) o2_39@@7 f_16@@7) (= (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@8) o2_39@@7 f_16@@7) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@7 f_16@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@7 f_16@@7))
))) (forall ((o2_39@@8 T@Ref) (f_16@@8 T@Field_23976_23981) ) (!  (=> (select (|PolymorphicMapType_18628_21854_71759#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@8) null (PredicateMaskField_8911 pm_f_39@@3))) o2_39@@8 f_16@@8) (= (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@8) o2_39@@8 f_16@@8) (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@8 f_16@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| ExhaleHeap@@3) o2_39@@8 f_16@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@5) (IsPredicateField_8911_8912 pm_f_39@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_18079) (ExhaleHeap@@4 T@PolymorphicMapType_18079) (Mask@@6 T@PolymorphicMapType_18100) (pm_f_39@@4 T@Field_8876_8912) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_8876_8912 Mask@@6 null pm_f_39@@4) (IsPredicateField_8876_69254 pm_f_39@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_39@@9 T@Ref) (f_16@@9 T@Field_21466_1189) ) (!  (=> (select (|PolymorphicMapType_18628_8876_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@9) null (PredicateMaskField_8876 pm_f_39@@4))) o2_39@@9 f_16@@9) (= (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@9) o2_39@@9 f_16@@9) (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@9 f_16@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@9 f_16@@9))
)) (forall ((o2_39@@10 T@Ref) (f_16@@10 T@Field_18152_18153) ) (!  (=> (select (|PolymorphicMapType_18628_8878_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@9) null (PredicateMaskField_8876 pm_f_39@@4))) o2_39@@10 f_16@@10) (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@9) o2_39@@10 f_16@@10) (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@10 f_16@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@10 f_16@@10))
))) (forall ((o2_39@@11 T@Ref) (f_16@@11 T@Field_18139_53) ) (!  (=> (select (|PolymorphicMapType_18628_8876_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@9) null (PredicateMaskField_8876 pm_f_39@@4))) o2_39@@11 f_16@@11) (= (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@9) o2_39@@11 f_16@@11) (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@11 f_16@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@11 f_16@@11))
))) (forall ((o2_39@@12 T@Ref) (f_16@@12 T@Field_8876_8912) ) (!  (=> (select (|PolymorphicMapType_18628_8876_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@9) null (PredicateMaskField_8876 pm_f_39@@4))) o2_39@@12 f_16@@12) (= (select (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@9) o2_39@@12 f_16@@12) (select (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@12 f_16@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@12 f_16@@12))
))) (forall ((o2_39@@13 T@Ref) (f_16@@13 T@Field_8876_23981) ) (!  (=> (select (|PolymorphicMapType_18628_8876_70711#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@9) null (PredicateMaskField_8876 pm_f_39@@4))) o2_39@@13 f_16@@13) (= (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@9) o2_39@@13 f_16@@13) (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@13 f_16@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@13 f_16@@13))
))) (forall ((o2_39@@14 T@Ref) (f_16@@14 T@Field_8911_1189) ) (!  (=> (select (|PolymorphicMapType_18628_21854_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@9) null (PredicateMaskField_8876 pm_f_39@@4))) o2_39@@14 f_16@@14) (= (select (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@9) o2_39@@14 f_16@@14) (select (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@14 f_16@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@14 f_16@@14))
))) (forall ((o2_39@@15 T@Ref) (f_16@@15 T@Field_8911_8879) ) (!  (=> (select (|PolymorphicMapType_18628_21854_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@9) null (PredicateMaskField_8876 pm_f_39@@4))) o2_39@@15 f_16@@15) (= (select (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@9) o2_39@@15 f_16@@15) (select (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@15 f_16@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@15 f_16@@15))
))) (forall ((o2_39@@16 T@Ref) (f_16@@16 T@Field_8911_53) ) (!  (=> (select (|PolymorphicMapType_18628_21854_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@9) null (PredicateMaskField_8876 pm_f_39@@4))) o2_39@@16 f_16@@16) (= (select (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@9) o2_39@@16 f_16@@16) (select (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@16 f_16@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@16 f_16@@16))
))) (forall ((o2_39@@17 T@Ref) (f_16@@17 T@Field_21854_21855) ) (!  (=> (select (|PolymorphicMapType_18628_21854_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@9) null (PredicateMaskField_8876 pm_f_39@@4))) o2_39@@17 f_16@@17) (= (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@9) o2_39@@17 f_16@@17) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@17 f_16@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@17 f_16@@17))
))) (forall ((o2_39@@18 T@Ref) (f_16@@18 T@Field_23976_23981) ) (!  (=> (select (|PolymorphicMapType_18628_21854_71759#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@9) null (PredicateMaskField_8876 pm_f_39@@4))) o2_39@@18 f_16@@18) (= (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@9) o2_39@@18 f_16@@18) (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@18 f_16@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| ExhaleHeap@@4) o2_39@@18 f_16@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@6) (IsPredicateField_8876_69254 pm_f_39@@4))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_18079) (ExhaleHeap@@5 T@PolymorphicMapType_18079) (Mask@@7 T@PolymorphicMapType_18100) (pm_f_39@@5 T@Field_21854_21855) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_8911_8912 Mask@@7 null pm_f_39@@5) (IsWandField_8911_72924 pm_f_39@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_39@@19 T@Ref) (f_16@@19 T@Field_21466_1189) ) (!  (=> (select (|PolymorphicMapType_18628_8876_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@10) null (WandMaskField_8911 pm_f_39@@5))) o2_39@@19 f_16@@19) (= (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@10) o2_39@@19 f_16@@19) (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@19 f_16@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@19 f_16@@19))
)) (forall ((o2_39@@20 T@Ref) (f_16@@20 T@Field_18152_18153) ) (!  (=> (select (|PolymorphicMapType_18628_8878_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@10) null (WandMaskField_8911 pm_f_39@@5))) o2_39@@20 f_16@@20) (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@10) o2_39@@20 f_16@@20) (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@20 f_16@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@20 f_16@@20))
))) (forall ((o2_39@@21 T@Ref) (f_16@@21 T@Field_18139_53) ) (!  (=> (select (|PolymorphicMapType_18628_8876_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@10) null (WandMaskField_8911 pm_f_39@@5))) o2_39@@21 f_16@@21) (= (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@10) o2_39@@21 f_16@@21) (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@21 f_16@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@21 f_16@@21))
))) (forall ((o2_39@@22 T@Ref) (f_16@@22 T@Field_8876_8912) ) (!  (=> (select (|PolymorphicMapType_18628_8876_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@10) null (WandMaskField_8911 pm_f_39@@5))) o2_39@@22 f_16@@22) (= (select (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@10) o2_39@@22 f_16@@22) (select (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@22 f_16@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@22 f_16@@22))
))) (forall ((o2_39@@23 T@Ref) (f_16@@23 T@Field_8876_23981) ) (!  (=> (select (|PolymorphicMapType_18628_8876_70711#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@10) null (WandMaskField_8911 pm_f_39@@5))) o2_39@@23 f_16@@23) (= (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@10) o2_39@@23 f_16@@23) (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@23 f_16@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@23 f_16@@23))
))) (forall ((o2_39@@24 T@Ref) (f_16@@24 T@Field_8911_1189) ) (!  (=> (select (|PolymorphicMapType_18628_21854_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@10) null (WandMaskField_8911 pm_f_39@@5))) o2_39@@24 f_16@@24) (= (select (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@10) o2_39@@24 f_16@@24) (select (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@24 f_16@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@24 f_16@@24))
))) (forall ((o2_39@@25 T@Ref) (f_16@@25 T@Field_8911_8879) ) (!  (=> (select (|PolymorphicMapType_18628_21854_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@10) null (WandMaskField_8911 pm_f_39@@5))) o2_39@@25 f_16@@25) (= (select (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@10) o2_39@@25 f_16@@25) (select (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@25 f_16@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@25 f_16@@25))
))) (forall ((o2_39@@26 T@Ref) (f_16@@26 T@Field_8911_53) ) (!  (=> (select (|PolymorphicMapType_18628_21854_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@10) null (WandMaskField_8911 pm_f_39@@5))) o2_39@@26 f_16@@26) (= (select (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@10) o2_39@@26 f_16@@26) (select (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@26 f_16@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@26 f_16@@26))
))) (forall ((o2_39@@27 T@Ref) (f_16@@27 T@Field_21854_21855) ) (!  (=> (select (|PolymorphicMapType_18628_21854_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@10) null (WandMaskField_8911 pm_f_39@@5))) o2_39@@27 f_16@@27) (= (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@10) o2_39@@27 f_16@@27) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@27 f_16@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@27 f_16@@27))
))) (forall ((o2_39@@28 T@Ref) (f_16@@28 T@Field_23976_23981) ) (!  (=> (select (|PolymorphicMapType_18628_21854_71759#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@10) null (WandMaskField_8911 pm_f_39@@5))) o2_39@@28 f_16@@28) (= (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@10) o2_39@@28 f_16@@28) (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@28 f_16@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| ExhaleHeap@@5) o2_39@@28 f_16@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@7) (IsWandField_8911_72924 pm_f_39@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_18079) (ExhaleHeap@@6 T@PolymorphicMapType_18079) (Mask@@8 T@PolymorphicMapType_18100) (pm_f_39@@6 T@Field_8876_8912) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_8876_8912 Mask@@8 null pm_f_39@@6) (IsWandField_8876_72567 pm_f_39@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_39@@29 T@Ref) (f_16@@29 T@Field_21466_1189) ) (!  (=> (select (|PolymorphicMapType_18628_8876_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@11) null (WandMaskField_8876 pm_f_39@@6))) o2_39@@29 f_16@@29) (= (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@11) o2_39@@29 f_16@@29) (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@29 f_16@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@29 f_16@@29))
)) (forall ((o2_39@@30 T@Ref) (f_16@@30 T@Field_18152_18153) ) (!  (=> (select (|PolymorphicMapType_18628_8878_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@11) null (WandMaskField_8876 pm_f_39@@6))) o2_39@@30 f_16@@30) (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@11) o2_39@@30 f_16@@30) (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@30 f_16@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@30 f_16@@30))
))) (forall ((o2_39@@31 T@Ref) (f_16@@31 T@Field_18139_53) ) (!  (=> (select (|PolymorphicMapType_18628_8876_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@11) null (WandMaskField_8876 pm_f_39@@6))) o2_39@@31 f_16@@31) (= (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@11) o2_39@@31 f_16@@31) (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@31 f_16@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@31 f_16@@31))
))) (forall ((o2_39@@32 T@Ref) (f_16@@32 T@Field_8876_8912) ) (!  (=> (select (|PolymorphicMapType_18628_8876_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@11) null (WandMaskField_8876 pm_f_39@@6))) o2_39@@32 f_16@@32) (= (select (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@11) o2_39@@32 f_16@@32) (select (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@32 f_16@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@32 f_16@@32))
))) (forall ((o2_39@@33 T@Ref) (f_16@@33 T@Field_8876_23981) ) (!  (=> (select (|PolymorphicMapType_18628_8876_70711#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@11) null (WandMaskField_8876 pm_f_39@@6))) o2_39@@33 f_16@@33) (= (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@11) o2_39@@33 f_16@@33) (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@33 f_16@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@33 f_16@@33))
))) (forall ((o2_39@@34 T@Ref) (f_16@@34 T@Field_8911_1189) ) (!  (=> (select (|PolymorphicMapType_18628_21854_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@11) null (WandMaskField_8876 pm_f_39@@6))) o2_39@@34 f_16@@34) (= (select (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@11) o2_39@@34 f_16@@34) (select (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@34 f_16@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@34 f_16@@34))
))) (forall ((o2_39@@35 T@Ref) (f_16@@35 T@Field_8911_8879) ) (!  (=> (select (|PolymorphicMapType_18628_21854_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@11) null (WandMaskField_8876 pm_f_39@@6))) o2_39@@35 f_16@@35) (= (select (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@11) o2_39@@35 f_16@@35) (select (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@35 f_16@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@35 f_16@@35))
))) (forall ((o2_39@@36 T@Ref) (f_16@@36 T@Field_8911_53) ) (!  (=> (select (|PolymorphicMapType_18628_21854_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@11) null (WandMaskField_8876 pm_f_39@@6))) o2_39@@36 f_16@@36) (= (select (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@11) o2_39@@36 f_16@@36) (select (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@36 f_16@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@36 f_16@@36))
))) (forall ((o2_39@@37 T@Ref) (f_16@@37 T@Field_21854_21855) ) (!  (=> (select (|PolymorphicMapType_18628_21854_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@11) null (WandMaskField_8876 pm_f_39@@6))) o2_39@@37 f_16@@37) (= (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@11) o2_39@@37 f_16@@37) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@37 f_16@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@37 f_16@@37))
))) (forall ((o2_39@@38 T@Ref) (f_16@@38 T@Field_23976_23981) ) (!  (=> (select (|PolymorphicMapType_18628_21854_71759#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@11) null (WandMaskField_8876 pm_f_39@@6))) o2_39@@38 f_16@@38) (= (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@11) o2_39@@38 f_16@@38) (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@38 f_16@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| ExhaleHeap@@6) o2_39@@38 f_16@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@8) (IsWandField_8876_72567 pm_f_39@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@12 T@PolymorphicMapType_18079) (ExhaleHeap@@7 T@PolymorphicMapType_18079) (Mask@@9 T@PolymorphicMapType_18100) (o_10 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@12) o_10 $allocated) (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| ExhaleHeap@@7) o_10 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| ExhaleHeap@@7) o_10 $allocated))
)))
(assert (forall ((p T@Field_8876_8912) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18139_18139 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18139_18139 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_21854_21855) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8911_8911 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8911_8911 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_8876_1189 value_1)))
(assert  (not (IsWandField_8876_1189 value_1)))
(assert  (not (IsPredicateField_8878_8879 next)))
(assert  (not (IsWandField_8878_8879 next)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_18079) (ExhaleHeap@@8 T@PolymorphicMapType_18079) (Mask@@10 T@PolymorphicMapType_18100) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@13 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_18100) (o_2@@9 T@Ref) (f_4@@9 T@Field_8876_23981) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_8876_79827 f_4@@9))) (not (IsWandField_8876_79843 f_4@@9))) (<= (select (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_18100) (o_2@@10 T@Ref) (f_4@@10 T@Field_18139_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8876_53 f_4@@10))) (not (IsWandField_8876_53 f_4@@10))) (<= (select (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_18100) (o_2@@11 T@Ref) (f_4@@11 T@Field_18152_18153) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8878_8879 f_4@@11))) (not (IsWandField_8878_8879 f_4@@11))) (<= (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_18100) (o_2@@12 T@Ref) (f_4@@12 T@Field_21466_1189) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8876_1189 f_4@@12))) (not (IsWandField_8876_1189 f_4@@12))) (<= (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_18100) (o_2@@13 T@Ref) (f_4@@13 T@Field_8876_8912) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8876_69254 f_4@@13))) (not (IsWandField_8876_72567 f_4@@13))) (<= (select (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_18100) (o_2@@14 T@Ref) (f_4@@14 T@Field_23976_23981) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8911_79024 f_4@@14))) (not (IsWandField_8911_79040 f_4@@14))) (<= (select (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_18100) (o_2@@15 T@Ref) (f_4@@15 T@Field_8911_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8911_53 f_4@@15))) (not (IsWandField_8911_53 f_4@@15))) (<= (select (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_18100) (o_2@@16 T@Ref) (f_4@@16 T@Field_8911_8879) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8911_8879 f_4@@16))) (not (IsWandField_8911_8879 f_4@@16))) (<= (select (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_18100) (o_2@@17 T@Ref) (f_4@@17 T@Field_8911_1189) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8911_1189 f_4@@17))) (not (IsWandField_8911_1189 f_4@@17))) (<= (select (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_18100) (o_2@@18 T@Ref) (f_4@@18 T@Field_21854_21855) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_8911_8912 f_4@@18))) (not (IsWandField_8911_72924 f_4@@18))) (<= (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_18100) (o_2@@19 T@Ref) (f_4@@19 T@Field_23976_23981) ) (! (= (HasDirectPerm_8911_69009 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8911_69009 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_18100) (o_2@@20 T@Ref) (f_4@@20 T@Field_8911_53) ) (! (= (HasDirectPerm_8911_53 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8911_53 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_18100) (o_2@@21 T@Ref) (f_4@@21 T@Field_21854_21855) ) (! (= (HasDirectPerm_8911_8912 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8911_8912 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_18100) (o_2@@22 T@Ref) (f_4@@22 T@Field_8911_8879) ) (! (= (HasDirectPerm_8911_8879 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8911_8879 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_18100) (o_2@@23 T@Ref) (f_4@@23 T@Field_8911_1189) ) (! (= (HasDirectPerm_8911_1189 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8911_1189 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_18100) (o_2@@24 T@Ref) (f_4@@24 T@Field_8876_23981) ) (! (= (HasDirectPerm_8876_67868 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8876_67868 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_18100) (o_2@@25 T@Ref) (f_4@@25 T@Field_18139_53) ) (! (= (HasDirectPerm_8876_53 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8876_53 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_18100) (o_2@@26 T@Ref) (f_4@@26 T@Field_8876_8912) ) (! (= (HasDirectPerm_8876_8912 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8876_8912 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_18100) (o_2@@27 T@Ref) (f_4@@27 T@Field_18152_18153) ) (! (= (HasDirectPerm_8878_8879 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8878_8879 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_18100) (o_2@@28 T@Ref) (f_4@@28 T@Field_21466_1189) ) (! (= (HasDirectPerm_8876_1189 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8876_1189 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_18079) (ExhaleHeap@@9 T@PolymorphicMapType_18079) (Mask@@31 T@PolymorphicMapType_18100) (o_10@@0 T@Ref) (f_16@@39 T@Field_23976_23981) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_8911_69009 Mask@@31 o_10@@0 f_16@@39) (= (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@14) o_10@@0 f_16@@39) (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| ExhaleHeap@@9) o_10@@0 f_16@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| ExhaleHeap@@9) o_10@@0 f_16@@39))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_18079) (ExhaleHeap@@10 T@PolymorphicMapType_18079) (Mask@@32 T@PolymorphicMapType_18100) (o_10@@1 T@Ref) (f_16@@40 T@Field_8911_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_8911_53 Mask@@32 o_10@@1 f_16@@40) (= (select (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@15) o_10@@1 f_16@@40) (select (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| ExhaleHeap@@10) o_10@@1 f_16@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| ExhaleHeap@@10) o_10@@1 f_16@@40))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_18079) (ExhaleHeap@@11 T@PolymorphicMapType_18079) (Mask@@33 T@PolymorphicMapType_18100) (o_10@@2 T@Ref) (f_16@@41 T@Field_21854_21855) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_8911_8912 Mask@@33 o_10@@2 f_16@@41) (= (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@16) o_10@@2 f_16@@41) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| ExhaleHeap@@11) o_10@@2 f_16@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| ExhaleHeap@@11) o_10@@2 f_16@@41))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_18079) (ExhaleHeap@@12 T@PolymorphicMapType_18079) (Mask@@34 T@PolymorphicMapType_18100) (o_10@@3 T@Ref) (f_16@@42 T@Field_8911_8879) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_8911_8879 Mask@@34 o_10@@3 f_16@@42) (= (select (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@17) o_10@@3 f_16@@42) (select (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| ExhaleHeap@@12) o_10@@3 f_16@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| ExhaleHeap@@12) o_10@@3 f_16@@42))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_18079) (ExhaleHeap@@13 T@PolymorphicMapType_18079) (Mask@@35 T@PolymorphicMapType_18100) (o_10@@4 T@Ref) (f_16@@43 T@Field_8911_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_8911_1189 Mask@@35 o_10@@4 f_16@@43) (= (select (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@18) o_10@@4 f_16@@43) (select (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| ExhaleHeap@@13) o_10@@4 f_16@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| ExhaleHeap@@13) o_10@@4 f_16@@43))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_18079) (ExhaleHeap@@14 T@PolymorphicMapType_18079) (Mask@@36 T@PolymorphicMapType_18100) (o_10@@5 T@Ref) (f_16@@44 T@Field_8876_23981) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_8876_67868 Mask@@36 o_10@@5 f_16@@44) (= (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@19) o_10@@5 f_16@@44) (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| ExhaleHeap@@14) o_10@@5 f_16@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| ExhaleHeap@@14) o_10@@5 f_16@@44))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_18079) (ExhaleHeap@@15 T@PolymorphicMapType_18079) (Mask@@37 T@PolymorphicMapType_18100) (o_10@@6 T@Ref) (f_16@@45 T@Field_18139_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_8876_53 Mask@@37 o_10@@6 f_16@@45) (= (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@20) o_10@@6 f_16@@45) (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| ExhaleHeap@@15) o_10@@6 f_16@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| ExhaleHeap@@15) o_10@@6 f_16@@45))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_18079) (ExhaleHeap@@16 T@PolymorphicMapType_18079) (Mask@@38 T@PolymorphicMapType_18100) (o_10@@7 T@Ref) (f_16@@46 T@Field_8876_8912) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_8876_8912 Mask@@38 o_10@@7 f_16@@46) (= (select (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@21) o_10@@7 f_16@@46) (select (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| ExhaleHeap@@16) o_10@@7 f_16@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| ExhaleHeap@@16) o_10@@7 f_16@@46))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_18079) (ExhaleHeap@@17 T@PolymorphicMapType_18079) (Mask@@39 T@PolymorphicMapType_18100) (o_10@@8 T@Ref) (f_16@@47 T@Field_18152_18153) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_8878_8879 Mask@@39 o_10@@8 f_16@@47) (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@22) o_10@@8 f_16@@47) (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| ExhaleHeap@@17) o_10@@8 f_16@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| ExhaleHeap@@17) o_10@@8 f_16@@47))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_18079) (ExhaleHeap@@18 T@PolymorphicMapType_18079) (Mask@@40 T@PolymorphicMapType_18100) (o_10@@9 T@Ref) (f_16@@48 T@Field_21466_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_8876_1189 Mask@@40 o_10@@9 f_16@@48) (= (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@23) o_10@@9 f_16@@48) (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| ExhaleHeap@@18) o_10@@9 f_16@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| ExhaleHeap@@18) o_10@@9 f_16@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_8876_23981) ) (! (= (select (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_18139_53) ) (! (= (select (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_18152_18153) ) (! (= (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_21466_1189) ) (! (= (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_8876_8912) ) (! (= (select (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_23976_23981) ) (! (= (select (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_8911_53) ) (! (= (select (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_8911_8879) ) (! (= (select (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_8911_1189) ) (! (= (select (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_21854_21855) ) (! (= (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_18100) (SummandMask1 T@PolymorphicMapType_18100) (SummandMask2 T@PolymorphicMapType_18100) (o_2@@39 T@Ref) (f_4@@39 T@Field_8876_23981) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_18100) (SummandMask1@@0 T@PolymorphicMapType_18100) (SummandMask2@@0 T@PolymorphicMapType_18100) (o_2@@40 T@Ref) (f_4@@40 T@Field_18139_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_18100) (SummandMask1@@1 T@PolymorphicMapType_18100) (SummandMask2@@1 T@PolymorphicMapType_18100) (o_2@@41 T@Ref) (f_4@@41 T@Field_18152_18153) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_18100) (SummandMask1@@2 T@PolymorphicMapType_18100) (SummandMask2@@2 T@PolymorphicMapType_18100) (o_2@@42 T@Ref) (f_4@@42 T@Field_21466_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_18100) (SummandMask1@@3 T@PolymorphicMapType_18100) (SummandMask2@@3 T@PolymorphicMapType_18100) (o_2@@43 T@Ref) (f_4@@43 T@Field_8876_8912) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_18100) (SummandMask1@@4 T@PolymorphicMapType_18100) (SummandMask2@@4 T@PolymorphicMapType_18100) (o_2@@44 T@Ref) (f_4@@44 T@Field_23976_23981) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_18100) (SummandMask1@@5 T@PolymorphicMapType_18100) (SummandMask2@@5 T@PolymorphicMapType_18100) (o_2@@45 T@Ref) (f_4@@45 T@Field_8911_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_18100) (SummandMask1@@6 T@PolymorphicMapType_18100) (SummandMask2@@6 T@PolymorphicMapType_18100) (o_2@@46 T@Ref) (f_4@@46 T@Field_8911_8879) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_18100) (SummandMask1@@7 T@PolymorphicMapType_18100) (SummandMask2@@7 T@PolymorphicMapType_18100) (o_2@@47 T@Ref) (f_4@@47 T@Field_8911_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_18100) (SummandMask1@@8 T@PolymorphicMapType_18100) (SummandMask2@@8 T@PolymorphicMapType_18100) (o_2@@48 T@Ref) (f_4@@48 T@Field_21854_21855) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_18079) (Mask@@41 T@PolymorphicMapType_18100) (this@@6 T@Ref) ) (!  (=> (state Heap@@24 Mask@@41) (= (|get'| Heap@@24 this@@6) (|get#frame| (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@24) null (inv this@@6)) this@@6)))
 :qid |stdinbpl.214:15|
 :skolemid |25|
 :pattern ( (state Heap@@24 Mask@@41) (|get'| Heap@@24 this@@6))
)))
(assert (forall ((this@@7 T@Ref) ) (! (= (getPredWandId_8911_8912 (inv this@@7)) 0)
 :qid |stdinbpl.313:15|
 :skolemid |29|
 :pattern ( (inv this@@7))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_18079) (o_52 T@Ref) (f_50 T@Field_23976_23981) (v T@PolymorphicMapType_18628) ) (! (succHeap Heap@@25 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@25) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@25) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@25) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@25) (store (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@25) o_52 f_50 v) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@25) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@25) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@25) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@25) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@25) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@25) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@25) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@25) (store (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@25) o_52 f_50 v) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@25) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@25) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@25) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@25) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_18079) (o_52@@0 T@Ref) (f_50@@0 T@Field_21854_21855) (v@@0 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@26) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@26) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@26) (store (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@26) o_52@@0 f_50@@0 v@@0) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@26) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@26) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@26) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@26) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@26) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@26) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@26) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@26) (store (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@26) o_52@@0 f_50@@0 v@@0) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@26) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@26) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@26) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@26) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@26) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_18079) (o_52@@1 T@Ref) (f_50@@1 T@Field_8911_1189) (v@@1 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@27) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@27) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@27) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@27) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@27) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@27) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@27) (store (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@27) o_52@@1 f_50@@1 v@@1) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@27) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@27) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@27) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@27) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@27) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@27) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@27) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@27) (store (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@27) o_52@@1 f_50@@1 v@@1) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@27) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_18079) (o_52@@2 T@Ref) (f_50@@2 T@Field_8911_8879) (v@@2 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@28) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@28) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@28) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@28) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@28) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@28) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@28) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@28) (store (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@28) o_52@@2 f_50@@2 v@@2) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@28) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@28) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@28) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@28) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@28) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@28) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@28) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@28) (store (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@28) o_52@@2 f_50@@2 v@@2) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_18079) (o_52@@3 T@Ref) (f_50@@3 T@Field_8911_53) (v@@3 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@29) (store (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@29) o_52@@3 f_50@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@29) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@29) (store (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@29) o_52@@3 f_50@@3 v@@3)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_18079) (o_52@@4 T@Ref) (f_50@@4 T@Field_8876_23981) (v@@4 T@PolymorphicMapType_18628) ) (! (succHeap Heap@@30 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@30) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@30) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@30) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@30) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@30) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@30) (store (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@30) o_52@@4 f_50@@4 v@@4) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@30) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@30) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@30) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@30) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@30) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@30) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@30) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@30) (store (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@30) o_52@@4 f_50@@4 v@@4) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@30) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@30) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_18079) (o_52@@5 T@Ref) (f_50@@5 T@Field_8876_8912) (v@@5 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@31) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@31) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@31) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@31) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@31) (store (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@31) o_52@@5 f_50@@5 v@@5) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@31) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@31) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@31) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@31) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@31) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@31) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@31) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@31) (store (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@31) o_52@@5 f_50@@5 v@@5) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@31) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@31) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@31) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_18079) (o_52@@6 T@Ref) (f_50@@6 T@Field_21466_1189) (v@@6 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@32) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@32) (store (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@32) o_52@@6 f_50@@6 v@@6) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@32) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@32) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@32) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@32) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@32) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@32) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@32) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@32) (store (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@32) o_52@@6 f_50@@6 v@@6) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@32) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@32) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@32) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@32) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@32) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@32) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_18079) (o_52@@7 T@Ref) (f_50@@7 T@Field_18152_18153) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@33) (store (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@33) o_52@@7 f_50@@7 v@@7) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@33) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@33) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@33) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@33) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@33) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@33) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@33) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@33) (store (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@33) o_52@@7 f_50@@7 v@@7) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@33) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@33) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@33) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@33) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@33) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@33) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@33) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_18079) (o_52@@8 T@Ref) (f_50@@8 T@Field_18139_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_18079 (store (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@34) o_52@@8 f_50@@8 v@@8) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18079 (store (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@34) o_52@@8 f_50@@8 v@@8) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@34) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@34)))
)))
(assert (forall ((this@@8 T@Ref) ) (! (= (PredicateMaskField_8911 (inv this@@8)) (|inv#sm| this@@8))
 :qid |stdinbpl.305:15|
 :skolemid |27|
 :pattern ( (PredicateMaskField_8911 (inv this@@8)))
)))
(assert (forall ((o_52@@9 T@Ref) (f_63 T@Field_18152_18153) (Heap@@35 T@PolymorphicMapType_18079) ) (!  (=> (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@35) o_52@@9 $allocated) (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@35) (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@35) o_52@@9 f_63) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@35) o_52@@9 f_63))
)))
(assert (forall ((p@@2 T@Field_8876_8912) (v_1@@1 T@FrameType) (q T@Field_8876_8912) (w@@1 T@FrameType) (r T@Field_8876_8912) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18139_18139 p@@2 v_1@@1 q w@@1) (InsidePredicate_18139_18139 q w@@1 r u)) (InsidePredicate_18139_18139 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18139_18139 p@@2 v_1@@1 q w@@1) (InsidePredicate_18139_18139 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_8876_8912) (v_1@@2 T@FrameType) (q@@0 T@Field_8876_8912) (w@@2 T@FrameType) (r@@0 T@Field_21854_21855) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_18139_18139 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_18139_8911 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_18139_8911 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18139_18139 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_18139_8911 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_8876_8912) (v_1@@3 T@FrameType) (q@@1 T@Field_21854_21855) (w@@3 T@FrameType) (r@@1 T@Field_8876_8912) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_18139_8911 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8911_18139 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_18139_18139 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18139_8911 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8911_18139 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_8876_8912) (v_1@@4 T@FrameType) (q@@2 T@Field_21854_21855) (w@@4 T@FrameType) (r@@2 T@Field_21854_21855) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_18139_8911 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8911_8911 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_18139_8911 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18139_8911 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8911_8911 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_21854_21855) (v_1@@5 T@FrameType) (q@@3 T@Field_8876_8912) (w@@5 T@FrameType) (r@@3 T@Field_8876_8912) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8911_18139 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_18139_18139 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8911_18139 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8911_18139 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_18139_18139 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_21854_21855) (v_1@@6 T@FrameType) (q@@4 T@Field_8876_8912) (w@@6 T@FrameType) (r@@4 T@Field_21854_21855) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8911_18139 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_18139_8911 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8911_8911 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8911_18139 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_18139_8911 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_21854_21855) (v_1@@7 T@FrameType) (q@@5 T@Field_21854_21855) (w@@7 T@FrameType) (r@@5 T@Field_8876_8912) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8911_8911 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8911_18139 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8911_18139 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8911_8911 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8911_18139 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_21854_21855) (v_1@@8 T@FrameType) (q@@6 T@Field_21854_21855) (w@@8 T@FrameType) (r@@6 T@Field_21854_21855) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8911_8911 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8911_8911 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8911_8911 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8911_8911 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8911_8911 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@16 () T@PolymorphicMapType_18100)
(declare-fun a_2 () T@Ref)
(declare-fun b_24 () T@Ref)
(declare-fun Heap@14 () T@PolymorphicMapType_18079)
(declare-fun Mask@21 () T@PolymorphicMapType_18100)
(declare-fun z@0 () T@Ref)
(declare-fun Mask@19 () T@PolymorphicMapType_18100)
(declare-fun Mask@20 () T@PolymorphicMapType_18100)
(declare-fun Mask@18 () T@PolymorphicMapType_18100)
(declare-fun Mask@17 () T@PolymorphicMapType_18100)
(declare-fun Heap@12 () T@PolymorphicMapType_18079)
(declare-fun Heap@13 () T@PolymorphicMapType_18079)
(declare-fun newVersion@2 () T@FrameType)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun FrameFragment_8879 (T@Ref) T@FrameType)
(declare-fun FrameFragment_8912 (T@FrameType) T@FrameType)
(declare-fun AssertMask@1 () T@PolymorphicMapType_18100)
(declare-fun c () Bool)
(declare-fun AssertMask@0 () T@PolymorphicMapType_18100)
(declare-fun Heap@10 () T@PolymorphicMapType_18079)
(declare-fun newPMask@0 () T@PolymorphicMapType_18628)
(declare-fun Heap@11 () T@PolymorphicMapType_18079)
(declare-fun Heap@9 () T@PolymorphicMapType_18079)
(declare-fun Heap@8 () T@PolymorphicMapType_18079)
(declare-fun Heap@5 () T@PolymorphicMapType_18079)
(declare-fun Heap@6 () T@PolymorphicMapType_18079)
(declare-fun Heap@7 () T@PolymorphicMapType_18079)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@15 () T@PolymorphicMapType_18100)
(declare-fun Mask@14 () T@PolymorphicMapType_18100)
(declare-fun Mask@13 () T@PolymorphicMapType_18100)
(declare-fun Mask@12 () T@PolymorphicMapType_18100)
(declare-fun Mask@11 () T@PolymorphicMapType_18100)
(declare-fun Heap@3 () T@PolymorphicMapType_18079)
(declare-fun Heap@4 () T@PolymorphicMapType_18079)
(declare-fun Mask@9 () T@PolymorphicMapType_18100)
(declare-fun Mask@10 () T@PolymorphicMapType_18100)
(declare-fun Mask@8 () T@PolymorphicMapType_18100)
(declare-fun Mask@7 () T@PolymorphicMapType_18100)
(declare-fun Heap@1 () T@PolymorphicMapType_18079)
(declare-fun Heap@2 () T@PolymorphicMapType_18079)
(declare-fun newVersion@1 () T@FrameType)
(declare-fun Mask@6 () T@PolymorphicMapType_18100)
(declare-fun Mask@4 () T@PolymorphicMapType_18100)
(declare-fun Mask@5 () T@PolymorphicMapType_18100)
(declare-fun Mask@3 () T@PolymorphicMapType_18100)
(declare-fun Mask@2 () T@PolymorphicMapType_18100)
(declare-fun Heap@@36 () T@PolymorphicMapType_18079)
(declare-fun Heap@0 () T@PolymorphicMapType_18079)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@1 () T@PolymorphicMapType_18100)
(declare-fun this@@9 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_18100)
(declare-fun z () T@Ref)
(set-info :boogie-vc-id goo)
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
 (=> (= (ControlFlow 0 0) 84) (let ((anon61_Then_correct  (=> (= (ControlFlow 0 29) (- 0 28)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@16) null (inv a_2)))))))
(let ((anon64_Then_correct  (=> (= (ControlFlow 0 18) (- 0 17)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@16) null (inv b_24)))))))
(let ((anon45_correct  (=> (and (state Heap@14 Mask@21) (state Heap@14 Mask@21)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_8876_1189 Mask@21 a_2 value_1)) (=> (HasDirectPerm_8876_1189 Mask@21 a_2 value_1) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@14) a_2 value_1) 0)) (=> (= (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@14) a_2 value_1) 0) (=> (state Heap@14 Mask@21) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_8876_1189 Mask@21 b_24 value_1)) (=> (HasDirectPerm_8876_1189 Mask@21 b_24 value_1) (=> (= (ControlFlow 0 2) (- 0 1)) (= (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@14) b_24 value_1) 1))))))))))))
(let ((anon67_Else_correct  (=> (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@14) z@0 next) null) (=> (and (= Mask@21 Mask@19) (= (ControlFlow 0 7) 2)) anon45_correct))))
(let ((anon67_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@14) z@0 next) null)) (= Mask@20 (PolymorphicMapType_18100 (store (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@19) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@14) z@0 next)) (+ (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@19) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@14) z@0 next))) FullPerm)) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@19) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@19) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@19) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@19) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@19) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@19) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@19) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@19) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@19)))) (=> (and (and (InsidePredicate_8911_8911 (inv z@0) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@14) null (inv z@0)) (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@14) z@0 next)) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@14) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@14) z@0 next)))) (state Heap@14 Mask@20)) (and (= Mask@21 Mask@20) (= (ControlFlow 0 6) 2))) anon45_correct))))
(let ((anon43_correct  (=> (and (not (= z@0 null)) (= Mask@18 (PolymorphicMapType_18100 (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@17) (store (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@17) z@0 value_1 (+ (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@17) z@0 value_1) FullPerm)) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@17) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@17) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@17) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@17) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@17) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@17) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@17) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@17)))) (=> (and (and (state Heap@14 Mask@18) (not (= z@0 null))) (and (= Mask@19 (PolymorphicMapType_18100 (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@18) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@18) (store (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@18) z@0 next (+ (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@18) z@0 next) FullPerm)) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@18) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@18) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@18) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@18) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@18) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@18) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@18))) (state Heap@14 Mask@19))) (and (=> (= (ControlFlow 0 8) 6) anon67_Then_correct) (=> (= (ControlFlow 0 8) 7) anon67_Else_correct))))))
(let ((anon66_Else_correct  (=> (HasDirectPerm_8911_8912 Mask@17 null (inv z@0)) (=> (and (= Heap@14 Heap@12) (= (ControlFlow 0 10) 8)) anon43_correct))))
(let ((anon66_Then_correct  (=> (and (and (not (HasDirectPerm_8911_8912 Mask@17 null (inv z@0))) (= Heap@13 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@12) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@12) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@12) (store (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@12) null (inv z@0) newVersion@2) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@12) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@12) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@12) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@12) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@12) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@12)))) (and (= Heap@14 Heap@13) (= (ControlFlow 0 9) 8))) anon43_correct)))
(let ((anon41_correct  (=> (= Mask@17 (PolymorphicMapType_18100 (store (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@16) null (inv z@0) (- (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@16) null (inv z@0)) FullPerm)) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@16))) (and (=> (= (ControlFlow 0 11) 9) anon66_Then_correct) (=> (= (ControlFlow 0 11) 10) anon66_Else_correct)))))
(let ((anon65_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 14) 11)) anon41_correct)))
(let ((anon65_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (<= FullPerm (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@16) null (inv z@0)))) (=> (<= FullPerm (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@16) null (inv z@0))) (=> (= (ControlFlow 0 12) 11) anon41_correct))))))
(let ((anon39_correct  (=> (state Heap@12 Mask@16) (=> (and (|inv#trigger_8911| Heap@12 (inv z@0)) (= (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@12) null (inv z@0)) (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@12) z@0 value_1)) (CombineFrames (FrameFragment_8879 (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@12) z@0 next)) (FrameFragment_8912 (ite (not (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@12) z@0 next) null)) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@12) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@12) z@0 next))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 15) 12) anon65_Then_correct) (=> (= (ControlFlow 0 15) 14) anon65_Else_correct))))))
(let ((anon64_Else_correct  (and (=> (= (ControlFlow 0 19) (- 0 20)) (= (get Heap@12 b_24) 1)) (=> (= (get Heap@12 b_24) 1) (=> (= (ControlFlow 0 19) 15) anon39_correct)))))
(let ((anon36_correct  (=> (= AssertMask@1 (PolymorphicMapType_18100 (store (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@16) null (inv b_24) (- (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@16) null (inv b_24)) FullPerm)) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@16))) (and (=> (= (ControlFlow 0 21) 18) anon64_Then_correct) (=> (= (ControlFlow 0 21) 19) anon64_Else_correct)))))
(let ((anon63_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 24) 21)) anon36_correct)))
(let ((anon63_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (<= FullPerm (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@16) null (inv b_24)))) (=> (<= FullPerm (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@16) null (inv b_24))) (=> (= (ControlFlow 0 22) 21) anon36_correct))))))
(let ((anon62_Then_correct  (=> (not c) (and (=> (= (ControlFlow 0 25) 22) anon63_Then_correct) (=> (= (ControlFlow 0 25) 24) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (and c (= (ControlFlow 0 16) 15)) anon39_correct)))
(let ((anon33_correct  (=> (state Heap@12 Mask@16) (and (=> (= (ControlFlow 0 26) 25) anon62_Then_correct) (=> (= (ControlFlow 0 26) 16) anon62_Else_correct)))))
(let ((anon61_Else_correct  (and (=> (= (ControlFlow 0 30) (- 0 31)) (= (get Heap@12 a_2) 0)) (=> (= (get Heap@12 a_2) 0) (=> (= (ControlFlow 0 30) 26) anon33_correct)))))
(let ((anon30_correct  (=> (= AssertMask@0 (PolymorphicMapType_18100 (store (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@16) null (inv a_2) (- (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@16) null (inv a_2)) FullPerm)) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@16) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@16))) (and (=> (= (ControlFlow 0 32) 29) anon61_Then_correct) (=> (= (ControlFlow 0 32) 30) anon61_Else_correct)))))
(let ((anon60_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 35) 32)) anon30_correct)))
(let ((anon60_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 33) (- 0 34)) (<= FullPerm (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@16) null (inv a_2)))) (=> (<= FullPerm (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@16) null (inv a_2))) (=> (= (ControlFlow 0 33) 32) anon30_correct))))))
(let ((anon59_Then_correct  (=> c (and (=> (= (ControlFlow 0 36) 33) anon60_Then_correct) (=> (= (ControlFlow 0 36) 35) anon60_Else_correct)))))
(let ((anon59_Else_correct  (=> (and (not c) (= (ControlFlow 0 27) 26)) anon33_correct)))
(let ((anon27_correct  (=> (and (state Heap@12 Mask@16) (state Heap@12 Mask@16)) (and (=> (= (ControlFlow 0 37) 36) anon59_Then_correct) (=> (= (ControlFlow 0 37) 27) anon59_Else_correct)))))
(let ((anon58_Else_correct  (=> (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@10) z@0 next) null) (=> (and (= Heap@12 Heap@10) (= (ControlFlow 0 39) 37)) anon27_correct))))
(let ((anon58_Then_correct  (=> (not (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@10) z@0 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4 T@Ref) (f_54 T@Field_21466_1189) ) (!  (=> (or (select (|PolymorphicMapType_18628_8876_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| z@0))) o_4 f_54) (select (|PolymorphicMapType_18628_8876_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@10) z@0 next)))) o_4 f_54)) (select (|PolymorphicMapType_18628_8876_1189#PolymorphicMapType_18628| newPMask@0) o_4 f_54))
 :qid |stdinbpl.1249:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_18628_8876_1189#PolymorphicMapType_18628| newPMask@0) o_4 f_54))
)) (forall ((o_4@@0 T@Ref) (f_54@@0 T@Field_18152_18153) ) (!  (=> (or (select (|PolymorphicMapType_18628_8878_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| z@0))) o_4@@0 f_54@@0) (select (|PolymorphicMapType_18628_8878_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@10) z@0 next)))) o_4@@0 f_54@@0)) (select (|PolymorphicMapType_18628_8878_8879#PolymorphicMapType_18628| newPMask@0) o_4@@0 f_54@@0))
 :qid |stdinbpl.1249:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_18628_8878_8879#PolymorphicMapType_18628| newPMask@0) o_4@@0 f_54@@0))
))) (forall ((o_4@@1 T@Ref) (f_54@@1 T@Field_18139_53) ) (!  (=> (or (select (|PolymorphicMapType_18628_8876_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| z@0))) o_4@@1 f_54@@1) (select (|PolymorphicMapType_18628_8876_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@10) z@0 next)))) o_4@@1 f_54@@1)) (select (|PolymorphicMapType_18628_8876_53#PolymorphicMapType_18628| newPMask@0) o_4@@1 f_54@@1))
 :qid |stdinbpl.1249:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_18628_8876_53#PolymorphicMapType_18628| newPMask@0) o_4@@1 f_54@@1))
))) (forall ((o_4@@2 T@Ref) (f_54@@2 T@Field_8876_8912) ) (!  (=> (or (select (|PolymorphicMapType_18628_8876_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| z@0))) o_4@@2 f_54@@2) (select (|PolymorphicMapType_18628_8876_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@10) z@0 next)))) o_4@@2 f_54@@2)) (select (|PolymorphicMapType_18628_8876_21855#PolymorphicMapType_18628| newPMask@0) o_4@@2 f_54@@2))
 :qid |stdinbpl.1249:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_18628_8876_21855#PolymorphicMapType_18628| newPMask@0) o_4@@2 f_54@@2))
))) (forall ((o_4@@3 T@Ref) (f_54@@3 T@Field_8876_23981) ) (!  (=> (or (select (|PolymorphicMapType_18628_8876_70711#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| z@0))) o_4@@3 f_54@@3) (select (|PolymorphicMapType_18628_8876_70711#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@10) z@0 next)))) o_4@@3 f_54@@3)) (select (|PolymorphicMapType_18628_8876_70711#PolymorphicMapType_18628| newPMask@0) o_4@@3 f_54@@3))
 :qid |stdinbpl.1249:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_18628_8876_70711#PolymorphicMapType_18628| newPMask@0) o_4@@3 f_54@@3))
))) (forall ((o_4@@4 T@Ref) (f_54@@4 T@Field_8911_1189) ) (!  (=> (or (select (|PolymorphicMapType_18628_21854_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| z@0))) o_4@@4 f_54@@4) (select (|PolymorphicMapType_18628_21854_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@10) z@0 next)))) o_4@@4 f_54@@4)) (select (|PolymorphicMapType_18628_21854_1189#PolymorphicMapType_18628| newPMask@0) o_4@@4 f_54@@4))
 :qid |stdinbpl.1249:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_18628_21854_1189#PolymorphicMapType_18628| newPMask@0) o_4@@4 f_54@@4))
))) (forall ((o_4@@5 T@Ref) (f_54@@5 T@Field_8911_8879) ) (!  (=> (or (select (|PolymorphicMapType_18628_21854_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| z@0))) o_4@@5 f_54@@5) (select (|PolymorphicMapType_18628_21854_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@10) z@0 next)))) o_4@@5 f_54@@5)) (select (|PolymorphicMapType_18628_21854_8879#PolymorphicMapType_18628| newPMask@0) o_4@@5 f_54@@5))
 :qid |stdinbpl.1249:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_18628_21854_8879#PolymorphicMapType_18628| newPMask@0) o_4@@5 f_54@@5))
))) (forall ((o_4@@6 T@Ref) (f_54@@6 T@Field_8911_53) ) (!  (=> (or (select (|PolymorphicMapType_18628_21854_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| z@0))) o_4@@6 f_54@@6) (select (|PolymorphicMapType_18628_21854_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@10) z@0 next)))) o_4@@6 f_54@@6)) (select (|PolymorphicMapType_18628_21854_53#PolymorphicMapType_18628| newPMask@0) o_4@@6 f_54@@6))
 :qid |stdinbpl.1249:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_18628_21854_53#PolymorphicMapType_18628| newPMask@0) o_4@@6 f_54@@6))
))) (forall ((o_4@@7 T@Ref) (f_54@@7 T@Field_21854_21855) ) (!  (=> (or (select (|PolymorphicMapType_18628_21854_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| z@0))) o_4@@7 f_54@@7) (select (|PolymorphicMapType_18628_21854_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@10) z@0 next)))) o_4@@7 f_54@@7)) (select (|PolymorphicMapType_18628_21854_21855#PolymorphicMapType_18628| newPMask@0) o_4@@7 f_54@@7))
 :qid |stdinbpl.1249:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_18628_21854_21855#PolymorphicMapType_18628| newPMask@0) o_4@@7 f_54@@7))
))) (forall ((o_4@@8 T@Ref) (f_54@@8 T@Field_23976_23981) ) (!  (=> (or (select (|PolymorphicMapType_18628_21854_71759#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| z@0))) o_4@@8 f_54@@8) (select (|PolymorphicMapType_18628_21854_71759#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@10) z@0 next)))) o_4@@8 f_54@@8)) (select (|PolymorphicMapType_18628_21854_71759#PolymorphicMapType_18628| newPMask@0) o_4@@8 f_54@@8))
 :qid |stdinbpl.1249:29|
 :skolemid |42|
 :pattern ( (select (|PolymorphicMapType_18628_21854_71759#PolymorphicMapType_18628| newPMask@0) o_4@@8 f_54@@8))
))) (= Heap@11 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@10) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@10) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@10) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@10) (store (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@10) null (|inv#sm| z@0) newPMask@0) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@10) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@10) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@10) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@10) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@10)))) (and (= Heap@12 Heap@11) (= (ControlFlow 0 38) 37))) anon27_correct))))
(let ((anon25_correct  (=> (and (= Heap@9 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@8) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@8) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@8) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@8) (store (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@8) null (|inv#sm| z@0) (PolymorphicMapType_18628 (store (|PolymorphicMapType_18628_8876_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@8) null (|inv#sm| z@0))) z@0 value_1 true) (|PolymorphicMapType_18628_8878_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@8) null (|inv#sm| z@0))) (|PolymorphicMapType_18628_8876_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@8) null (|inv#sm| z@0))) (|PolymorphicMapType_18628_8876_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@8) null (|inv#sm| z@0))) (|PolymorphicMapType_18628_8876_70711#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@8) null (|inv#sm| z@0))) (|PolymorphicMapType_18628_21854_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@8) null (|inv#sm| z@0))) (|PolymorphicMapType_18628_21854_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@8) null (|inv#sm| z@0))) (|PolymorphicMapType_18628_21854_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@8) null (|inv#sm| z@0))) (|PolymorphicMapType_18628_21854_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@8) null (|inv#sm| z@0))) (|PolymorphicMapType_18628_21854_71759#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@8) null (|inv#sm| z@0))))) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@8) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@8) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@8) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@8) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@8))) (= Heap@10 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@9) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@9) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@9) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@9) (store (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@9) null (|inv#sm| z@0) (PolymorphicMapType_18628 (|PolymorphicMapType_18628_8876_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@9) null (|inv#sm| z@0))) (store (|PolymorphicMapType_18628_8878_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@9) null (|inv#sm| z@0))) z@0 next true) (|PolymorphicMapType_18628_8876_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@9) null (|inv#sm| z@0))) (|PolymorphicMapType_18628_8876_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@9) null (|inv#sm| z@0))) (|PolymorphicMapType_18628_8876_70711#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@9) null (|inv#sm| z@0))) (|PolymorphicMapType_18628_21854_1189#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@9) null (|inv#sm| z@0))) (|PolymorphicMapType_18628_21854_8879#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@9) null (|inv#sm| z@0))) (|PolymorphicMapType_18628_21854_53#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@9) null (|inv#sm| z@0))) (|PolymorphicMapType_18628_21854_21855#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@9) null (|inv#sm| z@0))) (|PolymorphicMapType_18628_21854_71759#PolymorphicMapType_18628| (select (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@9) null (|inv#sm| z@0))))) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@9) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@9) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@9) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@9) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@9)))) (and (=> (= (ControlFlow 0 40) 38) anon58_Then_correct) (=> (= (ControlFlow 0 40) 39) anon58_Else_correct)))))
(let ((anon57_Else_correct  (=> (HasDirectPerm_8911_8912 Mask@16 null (inv z@0)) (=> (and (= Heap@8 Heap@5) (= (ControlFlow 0 42) 40)) anon25_correct))))
(let ((anon57_Then_correct  (=> (not (HasDirectPerm_8911_8912 Mask@16 null (inv z@0))) (=> (and (and (= Heap@6 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@5) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@5) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@5) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@5) (store (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@5) null (|inv#sm| z@0) ZeroPMask) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@5) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@5) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@5) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@5) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@5))) (= Heap@7 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@6) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@6) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@6) (store (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@6) null (inv z@0) freshVersion@0) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@6) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@6) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@6) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@6) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@6) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@6)))) (and (= Heap@8 Heap@7) (= (ControlFlow 0 41) 40))) anon25_correct))))
(let ((anon23_correct  (=> (= Mask@16 (PolymorphicMapType_18100 (store (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@15) null (inv z@0) (+ (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@15) null (inv z@0)) FullPerm)) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@15) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@15) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@15) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@15) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@15) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@15) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@15) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@15) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@15))) (=> (and (and (state Heap@5 Mask@16) (state Heap@5 Mask@16)) (and (|inv#trigger_8911| Heap@5 (inv z@0)) (= (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@5) null (inv z@0)) (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@5) z@0 value_1)) (CombineFrames (FrameFragment_8879 (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@5) z@0 next)) (FrameFragment_8912 (ite (not (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@5) z@0 next) null)) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@5) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@5) z@0 next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 43) 41) anon57_Then_correct) (=> (= (ControlFlow 0 43) 42) anon57_Else_correct))))))
(let ((anon22_correct  (=> (and (and (= Mask@14 (PolymorphicMapType_18100 (store (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@13) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@5) z@0 next)) (- (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@13) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@5) z@0 next))) FullPerm)) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@13) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@13) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@13) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@13) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@13) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@13) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@13) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@13) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@13))) (InsidePredicate_8911_8911 (inv z@0) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@5) null (inv z@0)) (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@5) z@0 next)) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@5) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@5) z@0 next))))) (and (= Mask@15 Mask@14) (= (ControlFlow 0 45) 43))) anon23_correct)))
(let ((anon56_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 48) 45)) anon22_correct)))
(let ((anon56_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 46) (- 0 47)) (<= FullPerm (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@13) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@5) z@0 next))))) (=> (<= FullPerm (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@13) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@5) z@0 next)))) (=> (= (ControlFlow 0 46) 45) anon22_correct))))))
(let ((anon55_Then_correct  (=> (not (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@5) z@0 next) null)) (and (=> (= (ControlFlow 0 49) 46) anon56_Then_correct) (=> (= (ControlFlow 0 49) 48) anon56_Else_correct)))))
(let ((anon55_Else_correct  (=> (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@5) z@0 next) null) (=> (and (= Mask@15 Mask@13) (= (ControlFlow 0 44) 43)) anon23_correct))))
(let ((anon19_correct  (=> (= Mask@13 (PolymorphicMapType_18100 (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@12) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@12) (store (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@12) z@0 next (- (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@12) z@0 next) FullPerm)) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@12) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@12) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@12) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@12) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@12) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@12) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@12))) (and (=> (= (ControlFlow 0 50) 49) anon55_Then_correct) (=> (= (ControlFlow 0 50) 44) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 53) 50)) anon19_correct)))
(let ((anon54_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 51) (- 0 52)) (<= FullPerm (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@12) z@0 next))) (=> (<= FullPerm (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@12) z@0 next)) (=> (= (ControlFlow 0 51) 50) anon19_correct))))))
(let ((anon17_correct  (=> (= Mask@12 (PolymorphicMapType_18100 (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@11) (store (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@11) z@0 value_1 (- (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@11) z@0 value_1) FullPerm)) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@11) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@11) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@11) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@11) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@11) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@11) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@11) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@11))) (and (=> (= (ControlFlow 0 54) 51) anon54_Then_correct) (=> (= (ControlFlow 0 54) 53) anon54_Else_correct)))))
(let ((anon53_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 57) 54)) anon17_correct)))
(let ((anon53_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 55) (- 0 56)) (<= FullPerm (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@11) z@0 value_1))) (=> (<= FullPerm (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@11) z@0 value_1)) (=> (= (ControlFlow 0 55) 54) anon17_correct))))))
(let ((anon15_correct  (=> (state Heap@5 Mask@11) (and (=> (= (ControlFlow 0 58) 55) anon53_Then_correct) (=> (= (ControlFlow 0 58) 57) anon53_Else_correct)))))
(let ((anon52_Else_correct  (=> (and (and (not c) (state Heap@5 Mask@11)) (and (= z@0 b_24) (= (ControlFlow 0 60) 58))) anon15_correct)))
(let ((anon52_Then_correct  (=> (and (and c (state Heap@5 Mask@11)) (and (= z@0 a_2) (= (ControlFlow 0 59) 58))) anon15_correct)))
(let ((anon12_correct  (=> (and (state Heap@3 Mask@11) (state Heap@3 Mask@11)) (and (=> (= (ControlFlow 0 61) (- 0 63)) (= FullPerm (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@11) a_2 value_1))) (=> (= FullPerm (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@11) a_2 value_1)) (=> (and (= Heap@4 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@3) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@3) (store (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@3) a_2 value_1 0) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@3) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@3) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@3) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@3) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@3) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@3) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@3))) (state Heap@4 Mask@11)) (and (=> (= (ControlFlow 0 61) (- 0 62)) (= FullPerm (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@11) b_24 value_1))) (=> (= FullPerm (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@11) b_24 value_1)) (=> (and (= Heap@5 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@4) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@4) (store (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@4) b_24 value_1 1) (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@4) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@4) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@4) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@4) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@4) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@4) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@4))) (state Heap@5 Mask@11)) (and (=> (= (ControlFlow 0 61) 59) anon52_Then_correct) (=> (= (ControlFlow 0 61) 60) anon52_Else_correct)))))))))))
(let ((anon51_Else_correct  (=> (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@3) b_24 next) null) (=> (and (= Mask@11 Mask@9) (= (ControlFlow 0 65) 61)) anon12_correct))))
(let ((anon51_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@3) b_24 next) null)) (= Mask@10 (PolymorphicMapType_18100 (store (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@9) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@3) b_24 next)) (+ (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@9) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@3) b_24 next))) FullPerm)) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@9) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@9) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@9) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@9) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@9) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@9) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@9) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@9) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@9)))) (=> (and (and (InsidePredicate_8911_8911 (inv b_24) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@3) null (inv b_24)) (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@3) b_24 next)) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@3) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@3) b_24 next)))) (state Heap@3 Mask@10)) (and (= Mask@11 Mask@10) (= (ControlFlow 0 64) 61))) anon12_correct))))
(let ((anon10_correct  (=> (and (not (= b_24 null)) (= Mask@8 (PolymorphicMapType_18100 (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@7) (store (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@7) b_24 value_1 (+ (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@7) b_24 value_1) FullPerm)) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@7) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@7) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@7) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@7) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@7) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@7) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@7) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@7)))) (=> (and (and (state Heap@3 Mask@8) (not (= b_24 null))) (and (= Mask@9 (PolymorphicMapType_18100 (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@8) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@8) (store (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@8) b_24 next (+ (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@8) b_24 next) FullPerm)) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@8) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@8) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@8) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@8) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@8) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@8) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@8))) (state Heap@3 Mask@9))) (and (=> (= (ControlFlow 0 66) 64) anon51_Then_correct) (=> (= (ControlFlow 0 66) 65) anon51_Else_correct))))))
(let ((anon50_Else_correct  (=> (HasDirectPerm_8911_8912 Mask@7 null (inv b_24)) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 68) 66)) anon10_correct))))
(let ((anon50_Then_correct  (=> (and (and (not (HasDirectPerm_8911_8912 Mask@7 null (inv b_24))) (= Heap@2 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@1) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@1) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@1) (store (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@1) null (inv b_24) newVersion@1) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@1) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@1) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@1) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@1) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@1) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 67) 66))) anon10_correct)))
(let ((anon8_correct  (=> (= Mask@7 (PolymorphicMapType_18100 (store (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@6) null (inv b_24) (- (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@6) null (inv b_24)) FullPerm)) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@6) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@6) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@6) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@6) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@6) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@6) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@6) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@6) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@6))) (and (=> (= (ControlFlow 0 69) 67) anon50_Then_correct) (=> (= (ControlFlow 0 69) 68) anon50_Else_correct)))))
(let ((anon49_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 72) 69)) anon8_correct)))
(let ((anon49_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 70) (- 0 71)) (<= FullPerm (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@6) null (inv b_24)))) (=> (<= FullPerm (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@6) null (inv b_24))) (=> (= (ControlFlow 0 70) 69) anon8_correct))))))
(let ((anon6_correct  (=> (and (and (state Heap@1 Mask@6) (state Heap@1 Mask@6)) (and (|inv#trigger_8911| Heap@1 (inv b_24)) (= (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@1) null (inv b_24)) (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@1) b_24 value_1)) (CombineFrames (FrameFragment_8879 (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@1) b_24 next)) (FrameFragment_8912 (ite (not (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@1) b_24 next) null)) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@1) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@1) b_24 next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 73) 70) anon49_Then_correct) (=> (= (ControlFlow 0 73) 72) anon49_Else_correct)))))
(let ((anon48_Else_correct  (=> (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@1) a_2 next) null) (=> (and (= Mask@6 Mask@4) (= (ControlFlow 0 75) 73)) anon6_correct))))
(let ((anon48_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@1) a_2 next) null)) (= Mask@5 (PolymorphicMapType_18100 (store (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@4) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@1) a_2 next)) (+ (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@4) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@1) a_2 next))) FullPerm)) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@4) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@4) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@4) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@4) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@4) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@4) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@4) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@4) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@4)))) (=> (and (and (InsidePredicate_8911_8911 (inv a_2) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@1) null (inv a_2)) (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@1) a_2 next)) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@1) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@1) a_2 next)))) (state Heap@1 Mask@5)) (and (= Mask@6 Mask@5) (= (ControlFlow 0 74) 73))) anon6_correct))))
(let ((anon4_correct  (=> (and (not (= a_2 null)) (= Mask@3 (PolymorphicMapType_18100 (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@2) (store (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@2) a_2 value_1 (+ (select (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@2) a_2 value_1) FullPerm)) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@2) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@2) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@2) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@2) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@2) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@2) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@2) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@2)))) (=> (and (and (state Heap@1 Mask@3) (not (= a_2 null))) (and (= Mask@4 (PolymorphicMapType_18100 (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@3) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@3) (store (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@3) a_2 next (+ (select (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@3) a_2 next) FullPerm)) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@3) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@3) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@3) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@3) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@3) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@3) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@3))) (state Heap@1 Mask@4))) (and (=> (= (ControlFlow 0 76) 74) anon48_Then_correct) (=> (= (ControlFlow 0 76) 75) anon48_Else_correct))))))
(let ((anon47_Else_correct  (=> (HasDirectPerm_8911_8912 Mask@2 null (inv a_2)) (=> (and (= Heap@1 Heap@@36) (= (ControlFlow 0 78) 76)) anon4_correct))))
(let ((anon47_Then_correct  (=> (and (and (not (HasDirectPerm_8911_8912 Mask@2 null (inv a_2))) (= Heap@0 (PolymorphicMapType_18079 (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@36) (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@36) (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@36) (store (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@36) null (inv a_2) newVersion@0) (|PolymorphicMapType_18079_8915_24068#PolymorphicMapType_18079| Heap@@36) (|PolymorphicMapType_18079_8876_8912#PolymorphicMapType_18079| Heap@@36) (|PolymorphicMapType_18079_8876_67910#PolymorphicMapType_18079| Heap@@36) (|PolymorphicMapType_18079_8911_1189#PolymorphicMapType_18079| Heap@@36) (|PolymorphicMapType_18079_8911_8879#PolymorphicMapType_18079| Heap@@36) (|PolymorphicMapType_18079_8911_53#PolymorphicMapType_18079| Heap@@36)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 77) 76))) anon4_correct)))
(let ((anon2_correct  (=> (= Mask@2 (PolymorphicMapType_18100 (store (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@1) null (inv a_2) (- (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@1) null (inv a_2)) FullPerm)) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@1) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@1) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@1) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@1) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@1) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@1) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@1) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@1) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@1))) (and (=> (= (ControlFlow 0 79) 77) anon47_Then_correct) (=> (= (ControlFlow 0 79) 78) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 82) 79)) anon2_correct)))
(let ((anon46_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 80) (- 0 81)) (<= FullPerm (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@1) null (inv a_2)))) (=> (<= FullPerm (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@1) null (inv a_2))) (=> (= (ControlFlow 0 80) 79) anon2_correct))))))
(let ((anon0_correct  (=> (and (and (and (and (state Heap@@36 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@36) this@@9 $allocated))) (and (and (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@36) a_2 $allocated) (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@36) b_24 $allocated)) (and (not (= a_2 null)) (not (= b_24 null))))) (and (and (and (= Mask@0 (PolymorphicMapType_18100 (store (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| ZeroMask) null (inv a_2) (+ (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| ZeroMask) null (inv a_2)) FullPerm)) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| ZeroMask) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| ZeroMask) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| ZeroMask) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| ZeroMask) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| ZeroMask) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| ZeroMask) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| ZeroMask) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| ZeroMask) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| ZeroMask))) (state Heap@@36 Mask@0)) (and (= Mask@1 (PolymorphicMapType_18100 (store (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@0) null (inv b_24) (+ (select (|PolymorphicMapType_18100_8911_8912#PolymorphicMapType_18100| Mask@0) null (inv b_24)) FullPerm)) (|PolymorphicMapType_18100_8876_1189#PolymorphicMapType_18100| Mask@0) (|PolymorphicMapType_18100_8878_8879#PolymorphicMapType_18100| Mask@0) (|PolymorphicMapType_18100_8911_1189#PolymorphicMapType_18100| Mask@0) (|PolymorphicMapType_18100_8911_8879#PolymorphicMapType_18100| Mask@0) (|PolymorphicMapType_18100_8911_53#PolymorphicMapType_18100| Mask@0) (|PolymorphicMapType_18100_8911_77150#PolymorphicMapType_18100| Mask@0) (|PolymorphicMapType_18100_8876_8912#PolymorphicMapType_18100| Mask@0) (|PolymorphicMapType_18100_8876_53#PolymorphicMapType_18100| Mask@0) (|PolymorphicMapType_18100_8876_77549#PolymorphicMapType_18100| Mask@0))) (state Heap@@36 Mask@1))) (and (and (state Heap@@36 Mask@1) (select (|PolymorphicMapType_18079_8748_53#PolymorphicMapType_18079| Heap@@36) z $allocated)) (and (|inv#trigger_8911| Heap@@36 (inv a_2)) (= (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@36) null (inv a_2)) (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_18079_8876_1189#PolymorphicMapType_18079| Heap@@36) a_2 value_1)) (CombineFrames (FrameFragment_8879 (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@36) a_2 next)) (FrameFragment_8912 (ite (not (= (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@36) a_2 next) null)) (select (|PolymorphicMapType_18079_8911_8912#PolymorphicMapType_18079| Heap@@36) null (inv (select (|PolymorphicMapType_18079_8751_8752#PolymorphicMapType_18079| Heap@@36) a_2 next))) EmptyFrame))))))))) (and (=> (= (ControlFlow 0 83) 80) anon46_Then_correct) (=> (= (ControlFlow 0 83) 82) anon46_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 84) 83) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
