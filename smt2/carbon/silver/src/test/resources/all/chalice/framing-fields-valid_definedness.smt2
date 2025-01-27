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
(declare-sort T@Field_7862_53 0)
(declare-sort T@Field_7875_7876 0)
(declare-sort T@Field_11285_11286 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_11188_1186 0)
(declare-sort T@Field_11298_11303 0)
(declare-sort T@Field_3945_11286 0)
(declare-sort T@Field_3945_11303 0)
(declare-sort T@Field_11285_3946 0)
(declare-sort T@Field_11285_1186 0)
(declare-sort T@Field_11285_53 0)
(declare-datatypes ((T@PolymorphicMapType_7823 0)) (((PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| (Array T@Ref T@Field_11188_1186 Real)) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| (Array T@Ref T@Field_7875_7876 Real)) (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| (Array T@Ref T@Field_11285_11286 Real)) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| (Array T@Ref T@Field_3945_11286 Real)) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| (Array T@Ref T@Field_7862_53 Real)) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| (Array T@Ref T@Field_3945_11303 Real)) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| (Array T@Ref T@Field_11285_1186 Real)) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| (Array T@Ref T@Field_11285_3946 Real)) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| (Array T@Ref T@Field_11285_53 Real)) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| (Array T@Ref T@Field_11298_11303 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8351 0)) (((PolymorphicMapType_8351 (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (Array T@Ref T@Field_11188_1186 Bool)) (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (Array T@Ref T@Field_7875_7876 Bool)) (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (Array T@Ref T@Field_7862_53 Bool)) (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (Array T@Ref T@Field_3945_11286 Bool)) (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (Array T@Ref T@Field_3945_11303 Bool)) (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (Array T@Ref T@Field_11285_1186 Bool)) (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (Array T@Ref T@Field_11285_3946 Bool)) (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (Array T@Ref T@Field_11285_53 Bool)) (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (Array T@Ref T@Field_11285_11286 Bool)) (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (Array T@Ref T@Field_11298_11303 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7802 0)) (((PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| (Array T@Ref T@Field_7862_53 Bool)) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| (Array T@Ref T@Field_7875_7876 T@Ref)) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| (Array T@Ref T@Field_11285_11286 T@FrameType)) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| (Array T@Ref T@Field_11188_1186 Int)) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| (Array T@Ref T@Field_11298_11303 T@PolymorphicMapType_8351)) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| (Array T@Ref T@Field_3945_11286 T@FrameType)) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| (Array T@Ref T@Field_3945_11303 T@PolymorphicMapType_8351)) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| (Array T@Ref T@Field_11285_3946 T@Ref)) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| (Array T@Ref T@Field_11285_1186 Int)) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| (Array T@Ref T@Field_11285_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_7862_53)
(declare-fun value_1 () T@Field_11188_1186)
(declare-fun next () T@Field_7875_7876)
(declare-fun succHeap (T@PolymorphicMapType_7802 T@PolymorphicMapType_7802) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_7802 T@PolymorphicMapType_7802) Bool)
(declare-fun state (T@PolymorphicMapType_7802 T@PolymorphicMapType_7823) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_7823) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8351)
(declare-fun valid (T@Ref) T@Field_11285_11286)
(declare-fun IsPredicateField_3949_3950 (T@Field_11285_11286) Bool)
(declare-fun |valid#trigger_3949| (T@PolymorphicMapType_7802 T@Field_11285_11286) Bool)
(declare-fun |valid#everUsed_3949| (T@Field_11285_11286) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_7802 T@PolymorphicMapType_7802 T@PolymorphicMapType_7823) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3949 (T@Field_11285_11286) T@Field_11298_11303)
(declare-fun HasDirectPerm_11285_11286 (T@PolymorphicMapType_7823 T@Ref T@Field_11285_11286) Bool)
(declare-fun IsPredicateField_3945_29365 (T@Field_3945_11286) Bool)
(declare-fun PredicateMaskField_3945 (T@Field_3945_11286) T@Field_3945_11303)
(declare-fun HasDirectPerm_3945_11286 (T@PolymorphicMapType_7823 T@Ref T@Field_3945_11286) Bool)
(declare-fun IsWandField_11285_33035 (T@Field_11285_11286) Bool)
(declare-fun WandMaskField_11285 (T@Field_11285_11286) T@Field_11298_11303)
(declare-fun IsWandField_3945_32678 (T@Field_3945_11286) Bool)
(declare-fun WandMaskField_3945 (T@Field_3945_11286) T@Field_3945_11303)
(declare-fun |valid#sm| (T@Ref) T@Field_11298_11303)
(declare-fun dummyHeap () T@PolymorphicMapType_7802)
(declare-fun ZeroMask () T@PolymorphicMapType_7823)
(declare-fun InsidePredicate_7862_7862 (T@Field_3945_11286 T@FrameType T@Field_3945_11286 T@FrameType) Bool)
(declare-fun InsidePredicate_3949_3949 (T@Field_11285_11286 T@FrameType T@Field_11285_11286 T@FrameType) Bool)
(declare-fun IsPredicateField_3943_1186 (T@Field_11188_1186) Bool)
(declare-fun IsWandField_3943_1186 (T@Field_11188_1186) Bool)
(declare-fun IsPredicateField_3945_3946 (T@Field_7875_7876) Bool)
(declare-fun IsWandField_3945_3946 (T@Field_7875_7876) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3949_39938 (T@Field_11298_11303) Bool)
(declare-fun IsWandField_3949_39954 (T@Field_11298_11303) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3949_53 (T@Field_11285_53) Bool)
(declare-fun IsWandField_3949_53 (T@Field_11285_53) Bool)
(declare-fun IsPredicateField_3949_3946 (T@Field_11285_3946) Bool)
(declare-fun IsWandField_3949_3946 (T@Field_11285_3946) Bool)
(declare-fun IsPredicateField_3949_1186 (T@Field_11285_1186) Bool)
(declare-fun IsWandField_3949_1186 (T@Field_11285_1186) Bool)
(declare-fun IsPredicateField_3943_39107 (T@Field_3945_11303) Bool)
(declare-fun IsWandField_3943_39123 (T@Field_3945_11303) Bool)
(declare-fun IsPredicateField_3943_53 (T@Field_7862_53) Bool)
(declare-fun IsWandField_3943_53 (T@Field_7862_53) Bool)
(declare-fun HasDirectPerm_11285_29120 (T@PolymorphicMapType_7823 T@Ref T@Field_11298_11303) Bool)
(declare-fun HasDirectPerm_11285_53 (T@PolymorphicMapType_7823 T@Ref T@Field_11285_53) Bool)
(declare-fun HasDirectPerm_11285_1186 (T@PolymorphicMapType_7823 T@Ref T@Field_11285_1186) Bool)
(declare-fun HasDirectPerm_11285_3946 (T@PolymorphicMapType_7823 T@Ref T@Field_11285_3946) Bool)
(declare-fun HasDirectPerm_3945_27959 (T@PolymorphicMapType_7823 T@Ref T@Field_3945_11303) Bool)
(declare-fun HasDirectPerm_3945_53 (T@PolymorphicMapType_7823 T@Ref T@Field_7862_53) Bool)
(declare-fun HasDirectPerm_3943_1186 (T@PolymorphicMapType_7823 T@Ref T@Field_11188_1186) Bool)
(declare-fun HasDirectPerm_3945_3946 (T@PolymorphicMapType_7823 T@Ref T@Field_7875_7876) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_7823 T@PolymorphicMapType_7823 T@PolymorphicMapType_7823) Bool)
(declare-fun getPredWandId_3949_3950 (T@Field_11285_11286) Int)
(declare-fun InsidePredicate_7862_3949 (T@Field_3945_11286 T@FrameType T@Field_11285_11286 T@FrameType) Bool)
(declare-fun InsidePredicate_3949_7862 (T@Field_11285_11286 T@FrameType T@Field_3945_11286 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_7802) (Heap1 T@PolymorphicMapType_7802) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_7802) (Mask T@PolymorphicMapType_7823) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_7802) (Heap1@@0 T@PolymorphicMapType_7802) (Heap2 T@PolymorphicMapType_7802) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11298_11303) ) (!  (not (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11285_11286) ) (!  (not (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11285_53) ) (!  (not (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11285_3946) ) (!  (not (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11285_1186) ) (!  (not (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3945_11303) ) (!  (not (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3945_11286) ) (!  (not (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_7862_53) ) (!  (not (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_7875_7876) ) (!  (not (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_11188_1186) ) (!  (not (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_3949_3950 (valid this))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (valid this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_7802) (this@@0 T@Ref) ) (! (|valid#everUsed_3949| (valid this@@0))
 :qid |stdinbpl.217:15|
 :skolemid |27|
 :pattern ( (|valid#trigger_3949| Heap@@0 (valid this@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_7802) (ExhaleHeap T@PolymorphicMapType_7802) (Mask@@0 T@PolymorphicMapType_7823) (pm_f_4 T@Field_11285_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11285_11286 Mask@@0 null pm_f_4) (IsPredicateField_3949_3950 pm_f_4)) (= (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@1) null (PredicateMaskField_3949 pm_f_4)) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap) null (PredicateMaskField_3949 pm_f_4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_3949_3950 pm_f_4) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap) null (PredicateMaskField_3949 pm_f_4)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7802) (ExhaleHeap@@0 T@PolymorphicMapType_7802) (Mask@@1 T@PolymorphicMapType_7823) (pm_f_4@@0 T@Field_3945_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3945_11286 Mask@@1 null pm_f_4@@0) (IsPredicateField_3945_29365 pm_f_4@@0)) (= (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@2) null (PredicateMaskField_3945 pm_f_4@@0)) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@0) null (PredicateMaskField_3945 pm_f_4@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3945_29365 pm_f_4@@0) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@0) null (PredicateMaskField_3945 pm_f_4@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7802) (ExhaleHeap@@1 T@PolymorphicMapType_7802) (Mask@@2 T@PolymorphicMapType_7823) (pm_f_4@@1 T@Field_11285_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11285_11286 Mask@@2 null pm_f_4@@1) (IsWandField_11285_33035 pm_f_4@@1)) (= (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@3) null (WandMaskField_11285 pm_f_4@@1)) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@1) null (WandMaskField_11285 pm_f_4@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_11285_33035 pm_f_4@@1) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@1) null (WandMaskField_11285 pm_f_4@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7802) (ExhaleHeap@@2 T@PolymorphicMapType_7802) (Mask@@3 T@PolymorphicMapType_7823) (pm_f_4@@2 T@Field_3945_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3945_11286 Mask@@3 null pm_f_4@@2) (IsWandField_3945_32678 pm_f_4@@2)) (= (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@4) null (WandMaskField_3945 pm_f_4@@2)) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@2) null (WandMaskField_3945 pm_f_4@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_3945_32678 pm_f_4@@2) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@2) null (WandMaskField_3945 pm_f_4@@2)))
)))
(assert (forall ((this@@1 T@Ref) (this2 T@Ref) ) (!  (=> (= (valid this@@1) (valid this2)) (= this@@1 this2))
 :qid |stdinbpl.208:15|
 :skolemid |25|
 :pattern ( (valid this@@1) (valid this2))
)))
(assert (forall ((this@@2 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|valid#sm| this@@2) (|valid#sm| this2@@0)) (= this@@2 this2@@0))
 :qid |stdinbpl.212:15|
 :skolemid |26|
 :pattern ( (|valid#sm| this@@2) (|valid#sm| this2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_7802) (ExhaleHeap@@3 T@PolymorphicMapType_7802) (Mask@@4 T@PolymorphicMapType_7823) (pm_f_4@@3 T@Field_11285_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_11285_11286 Mask@@4 null pm_f_4@@3) (IsPredicateField_3949_3950 pm_f_4@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_4 T@Ref) (f_20 T@Field_11188_1186) ) (!  (=> (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_4@@3))) o2_4 f_20) (= (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@5) o2_4 f_20) (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4 f_20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4 f_20))
)) (forall ((o2_4@@0 T@Ref) (f_20@@0 T@Field_7875_7876) ) (!  (=> (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_4@@3))) o2_4@@0 f_20@@0) (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@5) o2_4@@0 f_20@@0) (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@0 f_20@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@0 f_20@@0))
))) (forall ((o2_4@@1 T@Ref) (f_20@@1 T@Field_7862_53) ) (!  (=> (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_4@@3))) o2_4@@1 f_20@@1) (= (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@5) o2_4@@1 f_20@@1) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@1 f_20@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@1 f_20@@1))
))) (forall ((o2_4@@2 T@Ref) (f_20@@2 T@Field_3945_11286) ) (!  (=> (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_4@@3))) o2_4@@2 f_20@@2) (= (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@5) o2_4@@2 f_20@@2) (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@2 f_20@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@2 f_20@@2))
))) (forall ((o2_4@@3 T@Ref) (f_20@@3 T@Field_3945_11303) ) (!  (=> (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_4@@3))) o2_4@@3 f_20@@3) (= (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@5) o2_4@@3 f_20@@3) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@3 f_20@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@3 f_20@@3))
))) (forall ((o2_4@@4 T@Ref) (f_20@@4 T@Field_11285_1186) ) (!  (=> (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_4@@3))) o2_4@@4 f_20@@4) (= (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@5) o2_4@@4 f_20@@4) (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@4 f_20@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@4 f_20@@4))
))) (forall ((o2_4@@5 T@Ref) (f_20@@5 T@Field_11285_3946) ) (!  (=> (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_4@@3))) o2_4@@5 f_20@@5) (= (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@5) o2_4@@5 f_20@@5) (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@5 f_20@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@5 f_20@@5))
))) (forall ((o2_4@@6 T@Ref) (f_20@@6 T@Field_11285_53) ) (!  (=> (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_4@@3))) o2_4@@6 f_20@@6) (= (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@5) o2_4@@6 f_20@@6) (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@6 f_20@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@6 f_20@@6))
))) (forall ((o2_4@@7 T@Ref) (f_20@@7 T@Field_11285_11286) ) (!  (=> (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_4@@3))) o2_4@@7 f_20@@7) (= (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@5) o2_4@@7 f_20@@7) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@7 f_20@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@7 f_20@@7))
))) (forall ((o2_4@@8 T@Ref) (f_20@@8 T@Field_11298_11303) ) (!  (=> (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_4@@3))) o2_4@@8 f_20@@8) (= (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) o2_4@@8 f_20@@8) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@8 f_20@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@3) o2_4@@8 f_20@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3949_3950 pm_f_4@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7802) (ExhaleHeap@@4 T@PolymorphicMapType_7802) (Mask@@5 T@PolymorphicMapType_7823) (pm_f_4@@4 T@Field_3945_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3945_11286 Mask@@5 null pm_f_4@@4) (IsPredicateField_3945_29365 pm_f_4@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_4@@9 T@Ref) (f_20@@9 T@Field_11188_1186) ) (!  (=> (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_4@@4))) o2_4@@9 f_20@@9) (= (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@6) o2_4@@9 f_20@@9) (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@9 f_20@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@9 f_20@@9))
)) (forall ((o2_4@@10 T@Ref) (f_20@@10 T@Field_7875_7876) ) (!  (=> (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_4@@4))) o2_4@@10 f_20@@10) (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@6) o2_4@@10 f_20@@10) (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@10 f_20@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@10 f_20@@10))
))) (forall ((o2_4@@11 T@Ref) (f_20@@11 T@Field_7862_53) ) (!  (=> (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_4@@4))) o2_4@@11 f_20@@11) (= (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@6) o2_4@@11 f_20@@11) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@11 f_20@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@11 f_20@@11))
))) (forall ((o2_4@@12 T@Ref) (f_20@@12 T@Field_3945_11286) ) (!  (=> (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_4@@4))) o2_4@@12 f_20@@12) (= (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@6) o2_4@@12 f_20@@12) (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@12 f_20@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@12 f_20@@12))
))) (forall ((o2_4@@13 T@Ref) (f_20@@13 T@Field_3945_11303) ) (!  (=> (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_4@@4))) o2_4@@13 f_20@@13) (= (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) o2_4@@13 f_20@@13) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@13 f_20@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@13 f_20@@13))
))) (forall ((o2_4@@14 T@Ref) (f_20@@14 T@Field_11285_1186) ) (!  (=> (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_4@@4))) o2_4@@14 f_20@@14) (= (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@6) o2_4@@14 f_20@@14) (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@14 f_20@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@14 f_20@@14))
))) (forall ((o2_4@@15 T@Ref) (f_20@@15 T@Field_11285_3946) ) (!  (=> (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_4@@4))) o2_4@@15 f_20@@15) (= (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@6) o2_4@@15 f_20@@15) (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@15 f_20@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@15 f_20@@15))
))) (forall ((o2_4@@16 T@Ref) (f_20@@16 T@Field_11285_53) ) (!  (=> (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_4@@4))) o2_4@@16 f_20@@16) (= (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@6) o2_4@@16 f_20@@16) (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@16 f_20@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@16 f_20@@16))
))) (forall ((o2_4@@17 T@Ref) (f_20@@17 T@Field_11285_11286) ) (!  (=> (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_4@@4))) o2_4@@17 f_20@@17) (= (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@6) o2_4@@17 f_20@@17) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@17 f_20@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@17 f_20@@17))
))) (forall ((o2_4@@18 T@Ref) (f_20@@18 T@Field_11298_11303) ) (!  (=> (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_4@@4))) o2_4@@18 f_20@@18) (= (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@6) o2_4@@18 f_20@@18) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@18 f_20@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@4) o2_4@@18 f_20@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3945_29365 pm_f_4@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7802) (ExhaleHeap@@5 T@PolymorphicMapType_7802) (Mask@@6 T@PolymorphicMapType_7823) (pm_f_4@@5 T@Field_11285_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_11285_11286 Mask@@6 null pm_f_4@@5) (IsWandField_11285_33035 pm_f_4@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_4@@19 T@Ref) (f_20@@19 T@Field_11188_1186) ) (!  (=> (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_4@@5))) o2_4@@19 f_20@@19) (= (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@7) o2_4@@19 f_20@@19) (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@19 f_20@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@19 f_20@@19))
)) (forall ((o2_4@@20 T@Ref) (f_20@@20 T@Field_7875_7876) ) (!  (=> (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_4@@5))) o2_4@@20 f_20@@20) (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@7) o2_4@@20 f_20@@20) (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@20 f_20@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@20 f_20@@20))
))) (forall ((o2_4@@21 T@Ref) (f_20@@21 T@Field_7862_53) ) (!  (=> (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_4@@5))) o2_4@@21 f_20@@21) (= (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@7) o2_4@@21 f_20@@21) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@21 f_20@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@21 f_20@@21))
))) (forall ((o2_4@@22 T@Ref) (f_20@@22 T@Field_3945_11286) ) (!  (=> (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_4@@5))) o2_4@@22 f_20@@22) (= (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@7) o2_4@@22 f_20@@22) (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@22 f_20@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@22 f_20@@22))
))) (forall ((o2_4@@23 T@Ref) (f_20@@23 T@Field_3945_11303) ) (!  (=> (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_4@@5))) o2_4@@23 f_20@@23) (= (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@7) o2_4@@23 f_20@@23) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@23 f_20@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@23 f_20@@23))
))) (forall ((o2_4@@24 T@Ref) (f_20@@24 T@Field_11285_1186) ) (!  (=> (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_4@@5))) o2_4@@24 f_20@@24) (= (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@7) o2_4@@24 f_20@@24) (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@24 f_20@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@24 f_20@@24))
))) (forall ((o2_4@@25 T@Ref) (f_20@@25 T@Field_11285_3946) ) (!  (=> (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_4@@5))) o2_4@@25 f_20@@25) (= (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@7) o2_4@@25 f_20@@25) (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@25 f_20@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@25 f_20@@25))
))) (forall ((o2_4@@26 T@Ref) (f_20@@26 T@Field_11285_53) ) (!  (=> (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_4@@5))) o2_4@@26 f_20@@26) (= (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@7) o2_4@@26 f_20@@26) (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@26 f_20@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@26 f_20@@26))
))) (forall ((o2_4@@27 T@Ref) (f_20@@27 T@Field_11285_11286) ) (!  (=> (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_4@@5))) o2_4@@27 f_20@@27) (= (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@7) o2_4@@27 f_20@@27) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@27 f_20@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@27 f_20@@27))
))) (forall ((o2_4@@28 T@Ref) (f_20@@28 T@Field_11298_11303) ) (!  (=> (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_4@@5))) o2_4@@28 f_20@@28) (= (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) o2_4@@28 f_20@@28) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@28 f_20@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@5) o2_4@@28 f_20@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_11285_33035 pm_f_4@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7802) (ExhaleHeap@@6 T@PolymorphicMapType_7802) (Mask@@7 T@PolymorphicMapType_7823) (pm_f_4@@6 T@Field_3945_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3945_11286 Mask@@7 null pm_f_4@@6) (IsWandField_3945_32678 pm_f_4@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_4@@29 T@Ref) (f_20@@29 T@Field_11188_1186) ) (!  (=> (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_4@@6))) o2_4@@29 f_20@@29) (= (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@8) o2_4@@29 f_20@@29) (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@29 f_20@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@29 f_20@@29))
)) (forall ((o2_4@@30 T@Ref) (f_20@@30 T@Field_7875_7876) ) (!  (=> (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_4@@6))) o2_4@@30 f_20@@30) (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@8) o2_4@@30 f_20@@30) (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@30 f_20@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@30 f_20@@30))
))) (forall ((o2_4@@31 T@Ref) (f_20@@31 T@Field_7862_53) ) (!  (=> (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_4@@6))) o2_4@@31 f_20@@31) (= (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@8) o2_4@@31 f_20@@31) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@31 f_20@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@31 f_20@@31))
))) (forall ((o2_4@@32 T@Ref) (f_20@@32 T@Field_3945_11286) ) (!  (=> (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_4@@6))) o2_4@@32 f_20@@32) (= (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@8) o2_4@@32 f_20@@32) (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@32 f_20@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@32 f_20@@32))
))) (forall ((o2_4@@33 T@Ref) (f_20@@33 T@Field_3945_11303) ) (!  (=> (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_4@@6))) o2_4@@33 f_20@@33) (= (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) o2_4@@33 f_20@@33) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@33 f_20@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@33 f_20@@33))
))) (forall ((o2_4@@34 T@Ref) (f_20@@34 T@Field_11285_1186) ) (!  (=> (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_4@@6))) o2_4@@34 f_20@@34) (= (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@8) o2_4@@34 f_20@@34) (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@34 f_20@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@34 f_20@@34))
))) (forall ((o2_4@@35 T@Ref) (f_20@@35 T@Field_11285_3946) ) (!  (=> (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_4@@6))) o2_4@@35 f_20@@35) (= (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@8) o2_4@@35 f_20@@35) (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@35 f_20@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@35 f_20@@35))
))) (forall ((o2_4@@36 T@Ref) (f_20@@36 T@Field_11285_53) ) (!  (=> (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_4@@6))) o2_4@@36 f_20@@36) (= (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@8) o2_4@@36 f_20@@36) (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@36 f_20@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@36 f_20@@36))
))) (forall ((o2_4@@37 T@Ref) (f_20@@37 T@Field_11285_11286) ) (!  (=> (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_4@@6))) o2_4@@37 f_20@@37) (= (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@8) o2_4@@37 f_20@@37) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@37 f_20@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@37 f_20@@37))
))) (forall ((o2_4@@38 T@Ref) (f_20@@38 T@Field_11298_11303) ) (!  (=> (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_4@@6))) o2_4@@38 f_20@@38) (= (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@8) o2_4@@38 f_20@@38) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@38 f_20@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@6) o2_4@@38 f_20@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_3945_32678 pm_f_4@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7802) (ExhaleHeap@@7 T@PolymorphicMapType_7802) (Mask@@8 T@PolymorphicMapType_7823) (o_13 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@9) o_13 $allocated) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@7) o_13 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@7) o_13 $allocated))
)))
(assert (forall ((p T@Field_3945_11286) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7862_7862 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7862_7862 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_11285_11286) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3949_3949 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3949_3949 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3943_1186 value_1)))
(assert  (not (IsWandField_3943_1186 value_1)))
(assert  (not (IsPredicateField_3945_3946 next)))
(assert  (not (IsWandField_3945_3946 next)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_7802) (ExhaleHeap@@8 T@PolymorphicMapType_7802) (Mask@@9 T@PolymorphicMapType_7823) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_7823) (o_2@@9 T@Ref) (f_4@@9 T@Field_11298_11303) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3949_39938 f_4@@9))) (not (IsWandField_3949_39954 f_4@@9))) (<= (select (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_7823) (o_2@@10 T@Ref) (f_4@@10 T@Field_11285_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3949_53 f_4@@10))) (not (IsWandField_3949_53 f_4@@10))) (<= (select (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_7823) (o_2@@11 T@Ref) (f_4@@11 T@Field_11285_11286) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3949_3950 f_4@@11))) (not (IsWandField_11285_33035 f_4@@11))) (<= (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_7823) (o_2@@12 T@Ref) (f_4@@12 T@Field_11285_3946) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3949_3946 f_4@@12))) (not (IsWandField_3949_3946 f_4@@12))) (<= (select (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_7823) (o_2@@13 T@Ref) (f_4@@13 T@Field_11285_1186) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3949_1186 f_4@@13))) (not (IsWandField_3949_1186 f_4@@13))) (<= (select (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_7823) (o_2@@14 T@Ref) (f_4@@14 T@Field_3945_11303) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3943_39107 f_4@@14))) (not (IsWandField_3943_39123 f_4@@14))) (<= (select (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_7823) (o_2@@15 T@Ref) (f_4@@15 T@Field_7862_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3943_53 f_4@@15))) (not (IsWandField_3943_53 f_4@@15))) (<= (select (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_7823) (o_2@@16 T@Ref) (f_4@@16 T@Field_3945_11286) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3945_29365 f_4@@16))) (not (IsWandField_3945_32678 f_4@@16))) (<= (select (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_7823) (o_2@@17 T@Ref) (f_4@@17 T@Field_7875_7876) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3945_3946 f_4@@17))) (not (IsWandField_3945_3946 f_4@@17))) (<= (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_7823) (o_2@@18 T@Ref) (f_4@@18 T@Field_11188_1186) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3943_1186 f_4@@18))) (not (IsWandField_3943_1186 f_4@@18))) (<= (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_7823) (o_2@@19 T@Ref) (f_4@@19 T@Field_11298_11303) ) (! (= (HasDirectPerm_11285_29120 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11285_29120 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_7823) (o_2@@20 T@Ref) (f_4@@20 T@Field_11285_11286) ) (! (= (HasDirectPerm_11285_11286 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11285_11286 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_7823) (o_2@@21 T@Ref) (f_4@@21 T@Field_11285_53) ) (! (= (HasDirectPerm_11285_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11285_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_7823) (o_2@@22 T@Ref) (f_4@@22 T@Field_11285_1186) ) (! (= (HasDirectPerm_11285_1186 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11285_1186 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_7823) (o_2@@23 T@Ref) (f_4@@23 T@Field_11285_3946) ) (! (= (HasDirectPerm_11285_3946 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11285_3946 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_7823) (o_2@@24 T@Ref) (f_4@@24 T@Field_3945_11303) ) (! (= (HasDirectPerm_3945_27959 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3945_27959 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_7823) (o_2@@25 T@Ref) (f_4@@25 T@Field_3945_11286) ) (! (= (HasDirectPerm_3945_11286 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3945_11286 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_7823) (o_2@@26 T@Ref) (f_4@@26 T@Field_7862_53) ) (! (= (HasDirectPerm_3945_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3945_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_7823) (o_2@@27 T@Ref) (f_4@@27 T@Field_11188_1186) ) (! (= (HasDirectPerm_3943_1186 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3943_1186 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_7823) (o_2@@28 T@Ref) (f_4@@28 T@Field_7875_7876) ) (! (= (HasDirectPerm_3945_3946 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3945_3946 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_7802) (ExhaleHeap@@9 T@PolymorphicMapType_7802) (Mask@@30 T@PolymorphicMapType_7823) (o_13@@0 T@Ref) (f_20@@39 T@Field_11298_11303) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_11285_29120 Mask@@30 o_13@@0 f_20@@39) (= (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@11) o_13@@0 f_20@@39) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@9) o_13@@0 f_20@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@9) o_13@@0 f_20@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7802) (ExhaleHeap@@10 T@PolymorphicMapType_7802) (Mask@@31 T@PolymorphicMapType_7823) (o_13@@1 T@Ref) (f_20@@40 T@Field_11285_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_11285_11286 Mask@@31 o_13@@1 f_20@@40) (= (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@12) o_13@@1 f_20@@40) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@10) o_13@@1 f_20@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@10) o_13@@1 f_20@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7802) (ExhaleHeap@@11 T@PolymorphicMapType_7802) (Mask@@32 T@PolymorphicMapType_7823) (o_13@@2 T@Ref) (f_20@@41 T@Field_11285_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_11285_53 Mask@@32 o_13@@2 f_20@@41) (= (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@13) o_13@@2 f_20@@41) (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@11) o_13@@2 f_20@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@11) o_13@@2 f_20@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7802) (ExhaleHeap@@12 T@PolymorphicMapType_7802) (Mask@@33 T@PolymorphicMapType_7823) (o_13@@3 T@Ref) (f_20@@42 T@Field_11285_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_11285_1186 Mask@@33 o_13@@3 f_20@@42) (= (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@14) o_13@@3 f_20@@42) (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@12) o_13@@3 f_20@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@12) o_13@@3 f_20@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7802) (ExhaleHeap@@13 T@PolymorphicMapType_7802) (Mask@@34 T@PolymorphicMapType_7823) (o_13@@4 T@Ref) (f_20@@43 T@Field_11285_3946) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_11285_3946 Mask@@34 o_13@@4 f_20@@43) (= (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@15) o_13@@4 f_20@@43) (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@13) o_13@@4 f_20@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@13) o_13@@4 f_20@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7802) (ExhaleHeap@@14 T@PolymorphicMapType_7802) (Mask@@35 T@PolymorphicMapType_7823) (o_13@@5 T@Ref) (f_20@@44 T@Field_3945_11303) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_3945_27959 Mask@@35 o_13@@5 f_20@@44) (= (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@16) o_13@@5 f_20@@44) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@14) o_13@@5 f_20@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@14) o_13@@5 f_20@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7802) (ExhaleHeap@@15 T@PolymorphicMapType_7802) (Mask@@36 T@PolymorphicMapType_7823) (o_13@@6 T@Ref) (f_20@@45 T@Field_3945_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_3945_11286 Mask@@36 o_13@@6 f_20@@45) (= (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@17) o_13@@6 f_20@@45) (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@15) o_13@@6 f_20@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@15) o_13@@6 f_20@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7802) (ExhaleHeap@@16 T@PolymorphicMapType_7802) (Mask@@37 T@PolymorphicMapType_7823) (o_13@@7 T@Ref) (f_20@@46 T@Field_7862_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_3945_53 Mask@@37 o_13@@7 f_20@@46) (= (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@18) o_13@@7 f_20@@46) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@16) o_13@@7 f_20@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@16) o_13@@7 f_20@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7802) (ExhaleHeap@@17 T@PolymorphicMapType_7802) (Mask@@38 T@PolymorphicMapType_7823) (o_13@@8 T@Ref) (f_20@@47 T@Field_11188_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_3943_1186 Mask@@38 o_13@@8 f_20@@47) (= (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@19) o_13@@8 f_20@@47) (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@17) o_13@@8 f_20@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@17) o_13@@8 f_20@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7802) (ExhaleHeap@@18 T@PolymorphicMapType_7802) (Mask@@39 T@PolymorphicMapType_7823) (o_13@@9 T@Ref) (f_20@@48 T@Field_7875_7876) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_3945_3946 Mask@@39 o_13@@9 f_20@@48) (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@20) o_13@@9 f_20@@48) (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@18) o_13@@9 f_20@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@18) o_13@@9 f_20@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_11298_11303) ) (! (= (select (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_11285_53) ) (! (= (select (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_11285_11286) ) (! (= (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_11285_3946) ) (! (= (select (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_11285_1186) ) (! (= (select (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_3945_11303) ) (! (= (select (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_7862_53) ) (! (= (select (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_3945_11286) ) (! (= (select (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_7875_7876) ) (! (= (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_11188_1186) ) (! (= (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_7823) (SummandMask1 T@PolymorphicMapType_7823) (SummandMask2 T@PolymorphicMapType_7823) (o_2@@39 T@Ref) (f_4@@39 T@Field_11298_11303) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_7823) (SummandMask1@@0 T@PolymorphicMapType_7823) (SummandMask2@@0 T@PolymorphicMapType_7823) (o_2@@40 T@Ref) (f_4@@40 T@Field_11285_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_7823) (SummandMask1@@1 T@PolymorphicMapType_7823) (SummandMask2@@1 T@PolymorphicMapType_7823) (o_2@@41 T@Ref) (f_4@@41 T@Field_11285_11286) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_7823) (SummandMask1@@2 T@PolymorphicMapType_7823) (SummandMask2@@2 T@PolymorphicMapType_7823) (o_2@@42 T@Ref) (f_4@@42 T@Field_11285_3946) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_7823) (SummandMask1@@3 T@PolymorphicMapType_7823) (SummandMask2@@3 T@PolymorphicMapType_7823) (o_2@@43 T@Ref) (f_4@@43 T@Field_11285_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_7823) (SummandMask1@@4 T@PolymorphicMapType_7823) (SummandMask2@@4 T@PolymorphicMapType_7823) (o_2@@44 T@Ref) (f_4@@44 T@Field_3945_11303) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_7823) (SummandMask1@@5 T@PolymorphicMapType_7823) (SummandMask2@@5 T@PolymorphicMapType_7823) (o_2@@45 T@Ref) (f_4@@45 T@Field_7862_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_7823) (SummandMask1@@6 T@PolymorphicMapType_7823) (SummandMask2@@6 T@PolymorphicMapType_7823) (o_2@@46 T@Ref) (f_4@@46 T@Field_3945_11286) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_7823) (SummandMask1@@7 T@PolymorphicMapType_7823) (SummandMask2@@7 T@PolymorphicMapType_7823) (o_2@@47 T@Ref) (f_4@@47 T@Field_7875_7876) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_7823) (SummandMask1@@8 T@PolymorphicMapType_7823) (SummandMask2@@8 T@PolymorphicMapType_7823) (o_2@@48 T@Ref) (f_4@@48 T@Field_11188_1186) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((this@@3 T@Ref) ) (! (= (getPredWandId_3949_3950 (valid this@@3)) 0)
 :qid |stdinbpl.202:15|
 :skolemid |24|
 :pattern ( (valid this@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_7802) (o_12 T@Ref) (f_21 T@Field_11298_11303) (v T@PolymorphicMapType_8351) ) (! (succHeap Heap@@21 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@21) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@21) o_12 f_21 v) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@21) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@21) o_12 f_21 v) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7802) (o_12@@0 T@Ref) (f_21@@0 T@Field_11285_1186) (v@@0 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@22) (store (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@22) o_12@@0 f_21@@0 v@@0) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@22) (store (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@22) o_12@@0 f_21@@0 v@@0) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7802) (o_12@@1 T@Ref) (f_21@@1 T@Field_11285_11286) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@23) (store (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@23) o_12@@1 f_21@@1 v@@1) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@23) (store (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@23) o_12@@1 f_21@@1 v@@1) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7802) (o_12@@2 T@Ref) (f_21@@2 T@Field_11285_3946) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@24) (store (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@24) o_12@@2 f_21@@2 v@@2) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@24) (store (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@24) o_12@@2 f_21@@2 v@@2) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7802) (o_12@@3 T@Ref) (f_21@@3 T@Field_11285_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@25) (store (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@25) o_12@@3 f_21@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@25) (store (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@25) o_12@@3 f_21@@3 v@@3)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7802) (o_12@@4 T@Ref) (f_21@@4 T@Field_3945_11303) (v@@4 T@PolymorphicMapType_8351) ) (! (succHeap Heap@@26 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@26) (store (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@26) o_12@@4 f_21@@4 v@@4) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@26) (store (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@26) o_12@@4 f_21@@4 v@@4) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7802) (o_12@@5 T@Ref) (f_21@@5 T@Field_11188_1186) (v@@5 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@27) (store (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@27) o_12@@5 f_21@@5 v@@5) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@27) (store (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@27) o_12@@5 f_21@@5 v@@5) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7802) (o_12@@6 T@Ref) (f_21@@6 T@Field_3945_11286) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@28) (store (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@28) o_12@@6 f_21@@6 v@@6) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@28) (store (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@28) o_12@@6 f_21@@6 v@@6) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7802) (o_12@@7 T@Ref) (f_21@@7 T@Field_7875_7876) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@29) (store (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@29) o_12@@7 f_21@@7 v@@7) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@29) (store (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@29) o_12@@7 f_21@@7 v@@7) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7802) (o_12@@8 T@Ref) (f_21@@8 T@Field_7862_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_7802 (store (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@30) o_12@@8 f_21@@8 v@@8) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (store (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@30) o_12@@8 f_21@@8 v@@8) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@30)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (PredicateMaskField_3949 (valid this@@4)) (|valid#sm| this@@4))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_3949 (valid this@@4)))
)))
(assert (forall ((o_12@@9 T@Ref) (f_19 T@Field_7875_7876) (Heap@@31 T@PolymorphicMapType_7802) ) (!  (=> (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@31) o_12@@9 $allocated) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@31) (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@31) o_12@@9 f_19) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@31) o_12@@9 f_19))
)))
(assert (forall ((p@@2 T@Field_3945_11286) (v_1@@1 T@FrameType) (q T@Field_3945_11286) (w@@1 T@FrameType) (r T@Field_3945_11286) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7862_7862 p@@2 v_1@@1 q w@@1) (InsidePredicate_7862_7862 q w@@1 r u)) (InsidePredicate_7862_7862 p@@2 v_1@@1 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7862_7862 p@@2 v_1@@1 q w@@1) (InsidePredicate_7862_7862 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_3945_11286) (v_1@@2 T@FrameType) (q@@0 T@Field_3945_11286) (w@@2 T@FrameType) (r@@0 T@Field_11285_11286) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_7862_7862 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7862_3949 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_7862_3949 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7862_7862 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7862_3949 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_3945_11286) (v_1@@3 T@FrameType) (q@@1 T@Field_11285_11286) (w@@3 T@FrameType) (r@@1 T@Field_3945_11286) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_7862_3949 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3949_7862 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_7862_7862 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7862_3949 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3949_7862 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_3945_11286) (v_1@@4 T@FrameType) (q@@2 T@Field_11285_11286) (w@@4 T@FrameType) (r@@2 T@Field_11285_11286) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_7862_3949 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3949_3949 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_7862_3949 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7862_3949 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3949_3949 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_11285_11286) (v_1@@5 T@FrameType) (q@@3 T@Field_3945_11286) (w@@5 T@FrameType) (r@@3 T@Field_3945_11286) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_3949_7862 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7862_7862 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_3949_7862 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3949_7862 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7862_7862 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_11285_11286) (v_1@@6 T@FrameType) (q@@4 T@Field_3945_11286) (w@@6 T@FrameType) (r@@4 T@Field_11285_11286) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_3949_7862 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7862_3949 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_3949_3949 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3949_7862 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7862_3949 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_11285_11286) (v_1@@7 T@FrameType) (q@@5 T@Field_11285_11286) (w@@7 T@FrameType) (r@@5 T@Field_3945_11286) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_3949_3949 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3949_7862 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_3949_7862 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3949_3949 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3949_7862 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_11285_11286) (v_1@@8 T@FrameType) (q@@6 T@Field_11285_11286) (w@@8 T@FrameType) (r@@6 T@Field_11285_11286) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_3949_3949 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3949_3949 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_3949_3949 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3949_3949 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3949_3949 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@32 () T@PolymorphicMapType_7802)
(declare-fun this@@5 () T@Ref)
(declare-fun Mask@3 () T@PolymorphicMapType_7823)
(declare-fun Mask@1 () T@PolymorphicMapType_7823)
(declare-fun Mask@2 () T@PolymorphicMapType_7823)
(declare-fun Mask@0 () T@PolymorphicMapType_7823)
(set-info :boogie-vc-id |valid#definedness|)
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
(let ((anon3_Else_correct  (=> (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@32) this@@5 next) null) (=> (and (= Mask@3 Mask@1) (= (ControlFlow 0 4) 1)) anon2_correct))))
(let ((anon3_Then_correct  (=> (not (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@32) this@@5 next) null)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_3945_3946 Mask@1 this@@5 next)) (=> (HasDirectPerm_3945_3946 Mask@1 this@@5 next) (=> (and (and (= Mask@2 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| Mask@1) (store (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@1) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@32) this@@5 next)) (+ (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@1) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@32) this@@5 next))) FullPerm)) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| Mask@1))) (state Heap@@32 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 2) 1))) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@32) this@@5 $allocated)) (and (not (= this@@5 null)) (= Mask@0 (PolymorphicMapType_7823 (store (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| ZeroMask) this@@5 value_1 (+ (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| ZeroMask) this@@5 value_1) FullPerm)) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| ZeroMask) (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| ZeroMask) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| ZeroMask) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| ZeroMask) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| ZeroMask) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| ZeroMask) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| ZeroMask) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| ZeroMask) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| ZeroMask))))) (and (and (state Heap@@32 Mask@0) (not (= this@@5 null))) (and (= Mask@1 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| Mask@0) (store (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| Mask@0) this@@5 next (+ (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| Mask@0) this@@5 next) FullPerm)) (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@0) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| Mask@0) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| Mask@0) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| Mask@0) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| Mask@0) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| Mask@0) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| Mask@0) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| Mask@0))) (state Heap@@32 Mask@1)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_3945_3946 Mask@1 this@@5 next)) (=> (HasDirectPerm_3945_3946 Mask@1 this@@5 next) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
