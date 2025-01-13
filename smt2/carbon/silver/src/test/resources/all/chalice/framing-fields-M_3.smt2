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
(declare-fun value () T@Field_11188_1186)
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
(assert (forall ((Heap@@1 T@PolymorphicMapType_7802) (ExhaleHeap T@PolymorphicMapType_7802) (Mask@@0 T@PolymorphicMapType_7823) (pm_f_16 T@Field_11285_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11285_11286 Mask@@0 null pm_f_16) (IsPredicateField_3949_3950 pm_f_16)) (= (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@1) null (PredicateMaskField_3949 pm_f_16)) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap) null (PredicateMaskField_3949 pm_f_16)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_3949_3950 pm_f_16) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap) null (PredicateMaskField_3949 pm_f_16)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_7802) (ExhaleHeap@@0 T@PolymorphicMapType_7802) (Mask@@1 T@PolymorphicMapType_7823) (pm_f_16@@0 T@Field_3945_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3945_11286 Mask@@1 null pm_f_16@@0) (IsPredicateField_3945_29365 pm_f_16@@0)) (= (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@2) null (PredicateMaskField_3945 pm_f_16@@0)) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@0) null (PredicateMaskField_3945 pm_f_16@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3945_29365 pm_f_16@@0) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@0) null (PredicateMaskField_3945 pm_f_16@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_7802) (ExhaleHeap@@1 T@PolymorphicMapType_7802) (Mask@@2 T@PolymorphicMapType_7823) (pm_f_16@@1 T@Field_11285_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11285_11286 Mask@@2 null pm_f_16@@1) (IsWandField_11285_33035 pm_f_16@@1)) (= (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@3) null (WandMaskField_11285 pm_f_16@@1)) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@1) null (WandMaskField_11285 pm_f_16@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_11285_33035 pm_f_16@@1) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@1) null (WandMaskField_11285 pm_f_16@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_7802) (ExhaleHeap@@2 T@PolymorphicMapType_7802) (Mask@@3 T@PolymorphicMapType_7823) (pm_f_16@@2 T@Field_3945_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3945_11286 Mask@@3 null pm_f_16@@2) (IsWandField_3945_32678 pm_f_16@@2)) (= (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@4) null (WandMaskField_3945 pm_f_16@@2)) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@2) null (WandMaskField_3945 pm_f_16@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_3945_32678 pm_f_16@@2) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@2) null (WandMaskField_3945 pm_f_16@@2)))
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
(assert (forall ((Heap@@5 T@PolymorphicMapType_7802) (ExhaleHeap@@3 T@PolymorphicMapType_7802) (Mask@@4 T@PolymorphicMapType_7823) (pm_f_16@@3 T@Field_11285_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_11285_11286 Mask@@4 null pm_f_16@@3) (IsPredicateField_3949_3950 pm_f_16@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_16 T@Ref) (f_40 T@Field_11188_1186) ) (!  (=> (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_16@@3))) o2_16 f_40) (= (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@5) o2_16 f_40) (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16 f_40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16 f_40))
)) (forall ((o2_16@@0 T@Ref) (f_40@@0 T@Field_7875_7876) ) (!  (=> (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_16@@3))) o2_16@@0 f_40@@0) (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@5) o2_16@@0 f_40@@0) (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@0 f_40@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@0 f_40@@0))
))) (forall ((o2_16@@1 T@Ref) (f_40@@1 T@Field_7862_53) ) (!  (=> (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_16@@3))) o2_16@@1 f_40@@1) (= (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@5) o2_16@@1 f_40@@1) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@1 f_40@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@1 f_40@@1))
))) (forall ((o2_16@@2 T@Ref) (f_40@@2 T@Field_3945_11286) ) (!  (=> (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_16@@3))) o2_16@@2 f_40@@2) (= (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@5) o2_16@@2 f_40@@2) (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@2 f_40@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@2 f_40@@2))
))) (forall ((o2_16@@3 T@Ref) (f_40@@3 T@Field_3945_11303) ) (!  (=> (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_16@@3))) o2_16@@3 f_40@@3) (= (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@5) o2_16@@3 f_40@@3) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@3 f_40@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@3 f_40@@3))
))) (forall ((o2_16@@4 T@Ref) (f_40@@4 T@Field_11285_1186) ) (!  (=> (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_16@@3))) o2_16@@4 f_40@@4) (= (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@5) o2_16@@4 f_40@@4) (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@4 f_40@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@4 f_40@@4))
))) (forall ((o2_16@@5 T@Ref) (f_40@@5 T@Field_11285_3946) ) (!  (=> (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_16@@3))) o2_16@@5 f_40@@5) (= (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@5) o2_16@@5 f_40@@5) (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@5 f_40@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@5 f_40@@5))
))) (forall ((o2_16@@6 T@Ref) (f_40@@6 T@Field_11285_53) ) (!  (=> (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_16@@3))) o2_16@@6 f_40@@6) (= (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@5) o2_16@@6 f_40@@6) (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@6 f_40@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@6 f_40@@6))
))) (forall ((o2_16@@7 T@Ref) (f_40@@7 T@Field_11285_11286) ) (!  (=> (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_16@@3))) o2_16@@7 f_40@@7) (= (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@5) o2_16@@7 f_40@@7) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@7 f_40@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@7 f_40@@7))
))) (forall ((o2_16@@8 T@Ref) (f_40@@8 T@Field_11298_11303) ) (!  (=> (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) null (PredicateMaskField_3949 pm_f_16@@3))) o2_16@@8 f_40@@8) (= (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@5) o2_16@@8 f_40@@8) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@8 f_40@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@3) o2_16@@8 f_40@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3949_3950 pm_f_16@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_7802) (ExhaleHeap@@4 T@PolymorphicMapType_7802) (Mask@@5 T@PolymorphicMapType_7823) (pm_f_16@@4 T@Field_3945_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3945_11286 Mask@@5 null pm_f_16@@4) (IsPredicateField_3945_29365 pm_f_16@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_16@@9 T@Ref) (f_40@@9 T@Field_11188_1186) ) (!  (=> (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_16@@4))) o2_16@@9 f_40@@9) (= (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@6) o2_16@@9 f_40@@9) (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@9 f_40@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@9 f_40@@9))
)) (forall ((o2_16@@10 T@Ref) (f_40@@10 T@Field_7875_7876) ) (!  (=> (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_16@@4))) o2_16@@10 f_40@@10) (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@6) o2_16@@10 f_40@@10) (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@10 f_40@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@10 f_40@@10))
))) (forall ((o2_16@@11 T@Ref) (f_40@@11 T@Field_7862_53) ) (!  (=> (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_16@@4))) o2_16@@11 f_40@@11) (= (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@6) o2_16@@11 f_40@@11) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@11 f_40@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@11 f_40@@11))
))) (forall ((o2_16@@12 T@Ref) (f_40@@12 T@Field_3945_11286) ) (!  (=> (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_16@@4))) o2_16@@12 f_40@@12) (= (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@6) o2_16@@12 f_40@@12) (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@12 f_40@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@12 f_40@@12))
))) (forall ((o2_16@@13 T@Ref) (f_40@@13 T@Field_3945_11303) ) (!  (=> (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_16@@4))) o2_16@@13 f_40@@13) (= (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) o2_16@@13 f_40@@13) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@13 f_40@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@13 f_40@@13))
))) (forall ((o2_16@@14 T@Ref) (f_40@@14 T@Field_11285_1186) ) (!  (=> (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_16@@4))) o2_16@@14 f_40@@14) (= (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@6) o2_16@@14 f_40@@14) (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@14 f_40@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@14 f_40@@14))
))) (forall ((o2_16@@15 T@Ref) (f_40@@15 T@Field_11285_3946) ) (!  (=> (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_16@@4))) o2_16@@15 f_40@@15) (= (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@6) o2_16@@15 f_40@@15) (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@15 f_40@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@15 f_40@@15))
))) (forall ((o2_16@@16 T@Ref) (f_40@@16 T@Field_11285_53) ) (!  (=> (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_16@@4))) o2_16@@16 f_40@@16) (= (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@6) o2_16@@16 f_40@@16) (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@16 f_40@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@16 f_40@@16))
))) (forall ((o2_16@@17 T@Ref) (f_40@@17 T@Field_11285_11286) ) (!  (=> (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_16@@4))) o2_16@@17 f_40@@17) (= (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@6) o2_16@@17 f_40@@17) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@17 f_40@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@17 f_40@@17))
))) (forall ((o2_16@@18 T@Ref) (f_40@@18 T@Field_11298_11303) ) (!  (=> (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@6) null (PredicateMaskField_3945 pm_f_16@@4))) o2_16@@18 f_40@@18) (= (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@6) o2_16@@18 f_40@@18) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@18 f_40@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@4) o2_16@@18 f_40@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3945_29365 pm_f_16@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_7802) (ExhaleHeap@@5 T@PolymorphicMapType_7802) (Mask@@6 T@PolymorphicMapType_7823) (pm_f_16@@5 T@Field_11285_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_11285_11286 Mask@@6 null pm_f_16@@5) (IsWandField_11285_33035 pm_f_16@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_16@@19 T@Ref) (f_40@@19 T@Field_11188_1186) ) (!  (=> (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_16@@5))) o2_16@@19 f_40@@19) (= (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@7) o2_16@@19 f_40@@19) (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@19 f_40@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@19 f_40@@19))
)) (forall ((o2_16@@20 T@Ref) (f_40@@20 T@Field_7875_7876) ) (!  (=> (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_16@@5))) o2_16@@20 f_40@@20) (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@7) o2_16@@20 f_40@@20) (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@20 f_40@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@20 f_40@@20))
))) (forall ((o2_16@@21 T@Ref) (f_40@@21 T@Field_7862_53) ) (!  (=> (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_16@@5))) o2_16@@21 f_40@@21) (= (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@7) o2_16@@21 f_40@@21) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@21 f_40@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@21 f_40@@21))
))) (forall ((o2_16@@22 T@Ref) (f_40@@22 T@Field_3945_11286) ) (!  (=> (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_16@@5))) o2_16@@22 f_40@@22) (= (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@7) o2_16@@22 f_40@@22) (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@22 f_40@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@22 f_40@@22))
))) (forall ((o2_16@@23 T@Ref) (f_40@@23 T@Field_3945_11303) ) (!  (=> (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_16@@5))) o2_16@@23 f_40@@23) (= (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@7) o2_16@@23 f_40@@23) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@23 f_40@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@23 f_40@@23))
))) (forall ((o2_16@@24 T@Ref) (f_40@@24 T@Field_11285_1186) ) (!  (=> (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_16@@5))) o2_16@@24 f_40@@24) (= (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@7) o2_16@@24 f_40@@24) (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@24 f_40@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@24 f_40@@24))
))) (forall ((o2_16@@25 T@Ref) (f_40@@25 T@Field_11285_3946) ) (!  (=> (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_16@@5))) o2_16@@25 f_40@@25) (= (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@7) o2_16@@25 f_40@@25) (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@25 f_40@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@25 f_40@@25))
))) (forall ((o2_16@@26 T@Ref) (f_40@@26 T@Field_11285_53) ) (!  (=> (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_16@@5))) o2_16@@26 f_40@@26) (= (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@7) o2_16@@26 f_40@@26) (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@26 f_40@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@26 f_40@@26))
))) (forall ((o2_16@@27 T@Ref) (f_40@@27 T@Field_11285_11286) ) (!  (=> (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_16@@5))) o2_16@@27 f_40@@27) (= (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@7) o2_16@@27 f_40@@27) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@27 f_40@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@27 f_40@@27))
))) (forall ((o2_16@@28 T@Ref) (f_40@@28 T@Field_11298_11303) ) (!  (=> (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) null (WandMaskField_11285 pm_f_16@@5))) o2_16@@28 f_40@@28) (= (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@7) o2_16@@28 f_40@@28) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@28 f_40@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@5) o2_16@@28 f_40@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_11285_33035 pm_f_16@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_7802) (ExhaleHeap@@6 T@PolymorphicMapType_7802) (Mask@@7 T@PolymorphicMapType_7823) (pm_f_16@@6 T@Field_3945_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3945_11286 Mask@@7 null pm_f_16@@6) (IsWandField_3945_32678 pm_f_16@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_16@@29 T@Ref) (f_40@@29 T@Field_11188_1186) ) (!  (=> (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_16@@6))) o2_16@@29 f_40@@29) (= (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@8) o2_16@@29 f_40@@29) (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@29 f_40@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@29 f_40@@29))
)) (forall ((o2_16@@30 T@Ref) (f_40@@30 T@Field_7875_7876) ) (!  (=> (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_16@@6))) o2_16@@30 f_40@@30) (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@8) o2_16@@30 f_40@@30) (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@30 f_40@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@30 f_40@@30))
))) (forall ((o2_16@@31 T@Ref) (f_40@@31 T@Field_7862_53) ) (!  (=> (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_16@@6))) o2_16@@31 f_40@@31) (= (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@8) o2_16@@31 f_40@@31) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@31 f_40@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@31 f_40@@31))
))) (forall ((o2_16@@32 T@Ref) (f_40@@32 T@Field_3945_11286) ) (!  (=> (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_16@@6))) o2_16@@32 f_40@@32) (= (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@8) o2_16@@32 f_40@@32) (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@32 f_40@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@32 f_40@@32))
))) (forall ((o2_16@@33 T@Ref) (f_40@@33 T@Field_3945_11303) ) (!  (=> (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_16@@6))) o2_16@@33 f_40@@33) (= (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) o2_16@@33 f_40@@33) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@33 f_40@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@33 f_40@@33))
))) (forall ((o2_16@@34 T@Ref) (f_40@@34 T@Field_11285_1186) ) (!  (=> (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_16@@6))) o2_16@@34 f_40@@34) (= (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@8) o2_16@@34 f_40@@34) (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@34 f_40@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@34 f_40@@34))
))) (forall ((o2_16@@35 T@Ref) (f_40@@35 T@Field_11285_3946) ) (!  (=> (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_16@@6))) o2_16@@35 f_40@@35) (= (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@8) o2_16@@35 f_40@@35) (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@35 f_40@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@35 f_40@@35))
))) (forall ((o2_16@@36 T@Ref) (f_40@@36 T@Field_11285_53) ) (!  (=> (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_16@@6))) o2_16@@36 f_40@@36) (= (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@8) o2_16@@36 f_40@@36) (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@36 f_40@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@36 f_40@@36))
))) (forall ((o2_16@@37 T@Ref) (f_40@@37 T@Field_11285_11286) ) (!  (=> (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_16@@6))) o2_16@@37 f_40@@37) (= (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@8) o2_16@@37 f_40@@37) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@37 f_40@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@37 f_40@@37))
))) (forall ((o2_16@@38 T@Ref) (f_40@@38 T@Field_11298_11303) ) (!  (=> (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@8) null (WandMaskField_3945 pm_f_16@@6))) o2_16@@38 f_40@@38) (= (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@8) o2_16@@38 f_40@@38) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@38 f_40@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@6) o2_16@@38 f_40@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_3945_32678 pm_f_16@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_7802) (ExhaleHeap@@7 T@PolymorphicMapType_7802) (Mask@@8 T@PolymorphicMapType_7823) (o_34 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@9) o_34 $allocated) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@7) o_34 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@7) o_34 $allocated))
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
(assert  (not (IsPredicateField_3943_1186 value)))
(assert  (not (IsWandField_3943_1186 value)))
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
(assert (forall ((Heap@@11 T@PolymorphicMapType_7802) (ExhaleHeap@@9 T@PolymorphicMapType_7802) (Mask@@30 T@PolymorphicMapType_7823) (o_34@@0 T@Ref) (f_40@@39 T@Field_11298_11303) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_11285_29120 Mask@@30 o_34@@0 f_40@@39) (= (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@11) o_34@@0 f_40@@39) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@9) o_34@@0 f_40@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@@9) o_34@@0 f_40@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_7802) (ExhaleHeap@@10 T@PolymorphicMapType_7802) (Mask@@31 T@PolymorphicMapType_7823) (o_34@@1 T@Ref) (f_40@@40 T@Field_11285_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_11285_11286 Mask@@31 o_34@@1 f_40@@40) (= (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@12) o_34@@1 f_40@@40) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@10) o_34@@1 f_40@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@@10) o_34@@1 f_40@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_7802) (ExhaleHeap@@11 T@PolymorphicMapType_7802) (Mask@@32 T@PolymorphicMapType_7823) (o_34@@2 T@Ref) (f_40@@41 T@Field_11285_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_11285_53 Mask@@32 o_34@@2 f_40@@41) (= (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@13) o_34@@2 f_40@@41) (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@11) o_34@@2 f_40@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@@11) o_34@@2 f_40@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_7802) (ExhaleHeap@@12 T@PolymorphicMapType_7802) (Mask@@33 T@PolymorphicMapType_7823) (o_34@@3 T@Ref) (f_40@@42 T@Field_11285_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_11285_1186 Mask@@33 o_34@@3 f_40@@42) (= (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@14) o_34@@3 f_40@@42) (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@12) o_34@@3 f_40@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@@12) o_34@@3 f_40@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_7802) (ExhaleHeap@@13 T@PolymorphicMapType_7802) (Mask@@34 T@PolymorphicMapType_7823) (o_34@@4 T@Ref) (f_40@@43 T@Field_11285_3946) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_11285_3946 Mask@@34 o_34@@4 f_40@@43) (= (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@15) o_34@@4 f_40@@43) (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@13) o_34@@4 f_40@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@@13) o_34@@4 f_40@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_7802) (ExhaleHeap@@14 T@PolymorphicMapType_7802) (Mask@@35 T@PolymorphicMapType_7823) (o_34@@5 T@Ref) (f_40@@44 T@Field_3945_11303) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_3945_27959 Mask@@35 o_34@@5 f_40@@44) (= (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@16) o_34@@5 f_40@@44) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@14) o_34@@5 f_40@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@@14) o_34@@5 f_40@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_7802) (ExhaleHeap@@15 T@PolymorphicMapType_7802) (Mask@@36 T@PolymorphicMapType_7823) (o_34@@6 T@Ref) (f_40@@45 T@Field_3945_11286) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_3945_11286 Mask@@36 o_34@@6 f_40@@45) (= (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@17) o_34@@6 f_40@@45) (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@15) o_34@@6 f_40@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@@15) o_34@@6 f_40@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_7802) (ExhaleHeap@@16 T@PolymorphicMapType_7802) (Mask@@37 T@PolymorphicMapType_7823) (o_34@@7 T@Ref) (f_40@@46 T@Field_7862_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_3945_53 Mask@@37 o_34@@7 f_40@@46) (= (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@18) o_34@@7 f_40@@46) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@16) o_34@@7 f_40@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@@16) o_34@@7 f_40@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_7802) (ExhaleHeap@@17 T@PolymorphicMapType_7802) (Mask@@38 T@PolymorphicMapType_7823) (o_34@@8 T@Ref) (f_40@@47 T@Field_11188_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_3943_1186 Mask@@38 o_34@@8 f_40@@47) (= (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@19) o_34@@8 f_40@@47) (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@17) o_34@@8 f_40@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@@17) o_34@@8 f_40@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_7802) (ExhaleHeap@@18 T@PolymorphicMapType_7802) (Mask@@39 T@PolymorphicMapType_7823) (o_34@@9 T@Ref) (f_40@@48 T@Field_7875_7876) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_3945_3946 Mask@@39 o_34@@9 f_40@@48) (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@20) o_34@@9 f_40@@48) (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@18) o_34@@9 f_40@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@@18) o_34@@9 f_40@@48))
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
(assert (forall ((Heap@@21 T@PolymorphicMapType_7802) (o_3 T@Ref) (f_35 T@Field_11298_11303) (v T@PolymorphicMapType_8351) ) (! (succHeap Heap@@21 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@21) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@21) o_3 f_35 v) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@21) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@21) o_3 f_35 v) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@21) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_7802) (o_3@@0 T@Ref) (f_35@@0 T@Field_11285_1186) (v@@0 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@22) (store (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@22) o_3@@0 f_35@@0 v@@0) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@22) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@22) (store (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@22) o_3@@0 f_35@@0 v@@0) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_7802) (o_3@@1 T@Ref) (f_35@@1 T@Field_11285_11286) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@23) (store (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@23) o_3@@1 f_35@@1 v@@1) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@23) (store (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@23) o_3@@1 f_35@@1 v@@1) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@23) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_7802) (o_3@@2 T@Ref) (f_35@@2 T@Field_11285_3946) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@24) (store (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@24) o_3@@2 f_35@@2 v@@2) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@24) (store (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@24) o_3@@2 f_35@@2 v@@2) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@24) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_7802) (o_3@@3 T@Ref) (f_35@@3 T@Field_11285_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@25) (store (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@25) o_3@@3 f_35@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@25) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@25) (store (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@25) o_3@@3 f_35@@3 v@@3)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_7802) (o_3@@4 T@Ref) (f_35@@4 T@Field_3945_11303) (v@@4 T@PolymorphicMapType_8351) ) (! (succHeap Heap@@26 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@26) (store (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@26) o_3@@4 f_35@@4 v@@4) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@26) (store (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@26) o_3@@4 f_35@@4 v@@4) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@26) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_7802) (o_3@@5 T@Ref) (f_35@@5 T@Field_11188_1186) (v@@5 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@27) (store (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@27) o_3@@5 f_35@@5 v@@5) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@27) (store (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@27) o_3@@5 f_35@@5 v@@5) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@27) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_7802) (o_3@@6 T@Ref) (f_35@@6 T@Field_3945_11286) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@28) (store (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@28) o_3@@6 f_35@@6 v@@6) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@28) (store (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@28) o_3@@6 f_35@@6 v@@6) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@28) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_7802) (o_3@@7 T@Ref) (f_35@@7 T@Field_7875_7876) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@29) (store (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@29) o_3@@7 f_35@@7 v@@7) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@29) (store (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@29) o_3@@7 f_35@@7 v@@7) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@29) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_7802) (o_3@@8 T@Ref) (f_35@@8 T@Field_7862_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_7802 (store (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@30) o_3@@8 f_35@@8 v@@8) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_7802 (store (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@30) o_3@@8 f_35@@8 v@@8) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@30) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@30)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (PredicateMaskField_3949 (valid this@@4)) (|valid#sm| this@@4))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_3949 (valid this@@4)))
)))
(assert (forall ((o_3@@9 T@Ref) (f_8 T@Field_7875_7876) (Heap@@31 T@PolymorphicMapType_7802) ) (!  (=> (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@31) o_3@@9 $allocated) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@31) (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@31) o_3@@9 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@31) o_3@@9 f_8))
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
(declare-fun Heap@21 () T@PolymorphicMapType_7802)
(declare-fun y () T@Ref)
(declare-fun Heap@23 () T@PolymorphicMapType_7802)
(declare-fun newPMask@5 () T@PolymorphicMapType_8351)
(declare-fun Heap@22 () T@PolymorphicMapType_7802)
(declare-fun Heap@19 () T@PolymorphicMapType_7802)
(declare-fun Mask@3 () T@PolymorphicMapType_7823)
(declare-fun j_9@0 () Int)
(declare-fun Heap@20 () T@PolymorphicMapType_7802)
(declare-fun Heap@17 () T@PolymorphicMapType_7802)
(declare-fun newPMask@4 () T@PolymorphicMapType_8351)
(declare-fun Heap@18 () T@PolymorphicMapType_7802)
(declare-fun Heap@15 () T@PolymorphicMapType_7802)
(declare-fun UnfoldingMask@19 () T@PolymorphicMapType_7823)
(declare-fun Heap@16 () T@PolymorphicMapType_7802)
(declare-fun UnfoldingMask@17 () T@PolymorphicMapType_7823)
(declare-fun UnfoldingMask@18 () T@PolymorphicMapType_7823)
(declare-fun UnfoldingMask@15 () T@PolymorphicMapType_7823)
(declare-fun UnfoldingMask@16 () T@PolymorphicMapType_7823)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1186 (Int) T@FrameType)
(declare-fun FrameFragment_3946 (T@Ref) T@FrameType)
(declare-fun FrameFragment_3950 (T@FrameType) T@FrameType)
(declare-fun Heap@13 () T@PolymorphicMapType_7802)
(declare-fun x () T@Ref)
(declare-fun newPMask@3 () T@PolymorphicMapType_8351)
(declare-fun Heap@14 () T@PolymorphicMapType_7802)
(declare-fun Heap@11 () T@PolymorphicMapType_7802)
(declare-fun i@0 () Int)
(declare-fun Heap@12 () T@PolymorphicMapType_7802)
(declare-fun Heap@9 () T@PolymorphicMapType_7802)
(declare-fun newPMask@2 () T@PolymorphicMapType_8351)
(declare-fun Heap@10 () T@PolymorphicMapType_7802)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_7802)
(declare-fun UnfoldingMask@14 () T@PolymorphicMapType_7823)
(declare-fun Heap@8 () T@PolymorphicMapType_7802)
(declare-fun UnfoldingMask@12 () T@PolymorphicMapType_7823)
(declare-fun UnfoldingMask@13 () T@PolymorphicMapType_7823)
(declare-fun UnfoldingMask@10 () T@PolymorphicMapType_7823)
(declare-fun UnfoldingMask@11 () T@PolymorphicMapType_7823)
(declare-fun Mask@2 () T@PolymorphicMapType_7823)
(declare-fun Mask@1 () T@PolymorphicMapType_7823)
(declare-fun Heap@7 () T@PolymorphicMapType_7802)
(declare-fun Heap@5 () T@PolymorphicMapType_7802)
(declare-fun newPMask@1 () T@PolymorphicMapType_8351)
(declare-fun Heap@6 () T@PolymorphicMapType_7802)
(declare-fun Heap@3 () T@PolymorphicMapType_7802)
(declare-fun UnfoldingMask@9 () T@PolymorphicMapType_7823)
(declare-fun Heap@4 () T@PolymorphicMapType_7802)
(declare-fun UnfoldingMask@7 () T@PolymorphicMapType_7823)
(declare-fun UnfoldingMask@8 () T@PolymorphicMapType_7823)
(declare-fun UnfoldingMask@5 () T@PolymorphicMapType_7823)
(declare-fun UnfoldingMask@6 () T@PolymorphicMapType_7823)
(declare-fun Heap@1 () T@PolymorphicMapType_7802)
(declare-fun newPMask@0 () T@PolymorphicMapType_8351)
(declare-fun Heap@2 () T@PolymorphicMapType_7802)
(declare-fun Heap@@32 () T@PolymorphicMapType_7802)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_7823)
(declare-fun Heap@0 () T@PolymorphicMapType_7802)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_7823)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_7823)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_7823)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_7823)
(declare-fun this@@5 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_7823)
(set-info :boogie-vc-id M_3)
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
 (=> (= (ControlFlow 0 0) 58) (let ((anon30_correct true))
(let ((anon45_Else_correct  (=> (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@21) y next) null) (=> (and (= Heap@23 Heap@21) (= (ControlFlow 0 3) 1)) anon30_correct))))
(let ((anon45_Then_correct  (=> (not (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@21) y next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o T@Ref) (f_85 T@Field_11188_1186) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| y))) o f_85) (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@21) y next)))) o f_85)) (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| newPMask@5) o f_85))
 :qid |stdinbpl.620:31|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| newPMask@5) o f_85))
)) (forall ((o@@0 T@Ref) (f_85@@0 T@Field_7875_7876) ) (!  (=> (or (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| y))) o@@0 f_85@@0) (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@21) y next)))) o@@0 f_85@@0)) (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| newPMask@5) o@@0 f_85@@0))
 :qid |stdinbpl.620:31|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| newPMask@5) o@@0 f_85@@0))
))) (forall ((o@@1 T@Ref) (f_85@@1 T@Field_7862_53) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| y))) o@@1 f_85@@1) (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@21) y next)))) o@@1 f_85@@1)) (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| newPMask@5) o@@1 f_85@@1))
 :qid |stdinbpl.620:31|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| newPMask@5) o@@1 f_85@@1))
))) (forall ((o@@2 T@Ref) (f_85@@2 T@Field_3945_11286) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| y))) o@@2 f_85@@2) (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@21) y next)))) o@@2 f_85@@2)) (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| newPMask@5) o@@2 f_85@@2))
 :qid |stdinbpl.620:31|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| newPMask@5) o@@2 f_85@@2))
))) (forall ((o@@3 T@Ref) (f_85@@3 T@Field_3945_11303) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| y))) o@@3 f_85@@3) (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@21) y next)))) o@@3 f_85@@3)) (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| newPMask@5) o@@3 f_85@@3))
 :qid |stdinbpl.620:31|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| newPMask@5) o@@3 f_85@@3))
))) (forall ((o@@4 T@Ref) (f_85@@4 T@Field_11285_1186) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| y))) o@@4 f_85@@4) (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@21) y next)))) o@@4 f_85@@4)) (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| newPMask@5) o@@4 f_85@@4))
 :qid |stdinbpl.620:31|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| newPMask@5) o@@4 f_85@@4))
))) (forall ((o@@5 T@Ref) (f_85@@5 T@Field_11285_3946) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| y))) o@@5 f_85@@5) (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@21) y next)))) o@@5 f_85@@5)) (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| newPMask@5) o@@5 f_85@@5))
 :qid |stdinbpl.620:31|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| newPMask@5) o@@5 f_85@@5))
))) (forall ((o@@6 T@Ref) (f_85@@6 T@Field_11285_53) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| y))) o@@6 f_85@@6) (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@21) y next)))) o@@6 f_85@@6)) (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| newPMask@5) o@@6 f_85@@6))
 :qid |stdinbpl.620:31|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| newPMask@5) o@@6 f_85@@6))
))) (forall ((o@@7 T@Ref) (f_85@@7 T@Field_11285_11286) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| y))) o@@7 f_85@@7) (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@21) y next)))) o@@7 f_85@@7)) (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| newPMask@5) o@@7 f_85@@7))
 :qid |stdinbpl.620:31|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| newPMask@5) o@@7 f_85@@7))
))) (forall ((o@@8 T@Ref) (f_85@@8 T@Field_11298_11303) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| y))) o@@8 f_85@@8) (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@21) y next)))) o@@8 f_85@@8)) (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| newPMask@5) o@@8 f_85@@8))
 :qid |stdinbpl.620:31|
 :skolemid |33|
 :pattern ( (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| newPMask@5) o@@8 f_85@@8))
))) (= Heap@22 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@21) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@21) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@21) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@21) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@21) null (|valid#sm| y) newPMask@5) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@21) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@21) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@21) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@21) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@21)))) (and (= Heap@23 Heap@22) (= (ControlFlow 0 2) 1))) anon30_correct))))
(let ((anon28_correct  (=> (state Heap@19 Mask@3) (and (=> (= (ControlFlow 0 4) (- 0 5)) (= j_9@0 (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@19) y value))) (=> (= j_9@0 (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@19) y value)) (=> (and (= Heap@20 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@19) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@19) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@19) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@19) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@19) null (|valid#sm| y) (PolymorphicMapType_8351 (store (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@19) null (|valid#sm| y))) y value true) (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@19) null (|valid#sm| y))) (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@19) null (|valid#sm| y))) (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@19) null (|valid#sm| y))) (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@19) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@19) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@19) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@19) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@19) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@19) null (|valid#sm| y))))) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@19) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@19) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@19) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@19) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@19))) (= Heap@21 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@20) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@20) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@20) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@20) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@20) null (|valid#sm| y) (PolymorphicMapType_8351 (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@20) null (|valid#sm| y))) (store (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@20) null (|valid#sm| y))) y next true) (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@20) null (|valid#sm| y))) (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@20) null (|valid#sm| y))) (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@20) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@20) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@20) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@20) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@20) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@20) null (|valid#sm| y))))) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@20) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@20) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@20) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@20) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@20)))) (and (=> (= (ControlFlow 0 4) 2) anon45_Then_correct) (=> (= (ControlFlow 0 4) 3) anon45_Else_correct))))))))
(let ((anon44_Else_correct  (=> (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@17) y next) null) (=> (and (= Heap@19 Heap@17) (= (ControlFlow 0 7) 4)) anon28_correct))))
(let ((anon44_Then_correct  (=> (not (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@17) y next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_26 T@Ref) (f_29 T@Field_11188_1186) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| y))) o_26 f_29) (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@17) y next)))) o_26 f_29)) (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| newPMask@4) o_26 f_29))
 :qid |stdinbpl.605:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| newPMask@4) o_26 f_29))
)) (forall ((o_26@@0 T@Ref) (f_29@@0 T@Field_7875_7876) ) (!  (=> (or (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| y))) o_26@@0 f_29@@0) (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@17) y next)))) o_26@@0 f_29@@0)) (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| newPMask@4) o_26@@0 f_29@@0))
 :qid |stdinbpl.605:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| newPMask@4) o_26@@0 f_29@@0))
))) (forall ((o_26@@1 T@Ref) (f_29@@1 T@Field_7862_53) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| y))) o_26@@1 f_29@@1) (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@17) y next)))) o_26@@1 f_29@@1)) (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| newPMask@4) o_26@@1 f_29@@1))
 :qid |stdinbpl.605:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| newPMask@4) o_26@@1 f_29@@1))
))) (forall ((o_26@@2 T@Ref) (f_29@@2 T@Field_3945_11286) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| y))) o_26@@2 f_29@@2) (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@17) y next)))) o_26@@2 f_29@@2)) (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| newPMask@4) o_26@@2 f_29@@2))
 :qid |stdinbpl.605:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| newPMask@4) o_26@@2 f_29@@2))
))) (forall ((o_26@@3 T@Ref) (f_29@@3 T@Field_3945_11303) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| y))) o_26@@3 f_29@@3) (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@17) y next)))) o_26@@3 f_29@@3)) (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| newPMask@4) o_26@@3 f_29@@3))
 :qid |stdinbpl.605:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| newPMask@4) o_26@@3 f_29@@3))
))) (forall ((o_26@@4 T@Ref) (f_29@@4 T@Field_11285_1186) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| y))) o_26@@4 f_29@@4) (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@17) y next)))) o_26@@4 f_29@@4)) (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| newPMask@4) o_26@@4 f_29@@4))
 :qid |stdinbpl.605:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| newPMask@4) o_26@@4 f_29@@4))
))) (forall ((o_26@@5 T@Ref) (f_29@@5 T@Field_11285_3946) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| y))) o_26@@5 f_29@@5) (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@17) y next)))) o_26@@5 f_29@@5)) (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| newPMask@4) o_26@@5 f_29@@5))
 :qid |stdinbpl.605:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| newPMask@4) o_26@@5 f_29@@5))
))) (forall ((o_26@@6 T@Ref) (f_29@@6 T@Field_11285_53) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| y))) o_26@@6 f_29@@6) (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@17) y next)))) o_26@@6 f_29@@6)) (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| newPMask@4) o_26@@6 f_29@@6))
 :qid |stdinbpl.605:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| newPMask@4) o_26@@6 f_29@@6))
))) (forall ((o_26@@7 T@Ref) (f_29@@7 T@Field_11285_11286) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| y))) o_26@@7 f_29@@7) (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@17) y next)))) o_26@@7 f_29@@7)) (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| newPMask@4) o_26@@7 f_29@@7))
 :qid |stdinbpl.605:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| newPMask@4) o_26@@7 f_29@@7))
))) (forall ((o_26@@8 T@Ref) (f_29@@8 T@Field_11298_11303) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| y))) o_26@@8 f_29@@8) (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@17) y next)))) o_26@@8 f_29@@8)) (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| newPMask@4) o_26@@8 f_29@@8))
 :qid |stdinbpl.605:33|
 :skolemid |32|
 :pattern ( (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| newPMask@4) o_26@@8 f_29@@8))
))) (= Heap@18 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@17) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@17) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@17) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@17) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@17) null (|valid#sm| y) newPMask@4) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@17) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@17) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@17) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@17) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@17)))) (and (= Heap@19 Heap@18) (= (ControlFlow 0 6) 4))) anon28_correct))))
(let ((anon26_correct  (=> (state Heap@15 UnfoldingMask@19) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_3943_1186 UnfoldingMask@19 y value)) (=> (HasDirectPerm_3943_1186 UnfoldingMask@19 y value) (=> (and (= Heap@16 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@15) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@15) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@15) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@15) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@15) null (|valid#sm| y) (PolymorphicMapType_8351 (store (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@15) null (|valid#sm| y))) y value true) (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@15) null (|valid#sm| y))) (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@15) null (|valid#sm| y))) (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@15) null (|valid#sm| y))) (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@15) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@15) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@15) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@15) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@15) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@15) null (|valid#sm| y))))) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@15) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@15) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@15) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@15) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@15))) (= Heap@17 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@16) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@16) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@16) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@16) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@16) null (|valid#sm| y) (PolymorphicMapType_8351 (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@16) null (|valid#sm| y))) (store (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@16) null (|valid#sm| y))) y next true) (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@16) null (|valid#sm| y))) (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@16) null (|valid#sm| y))) (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@16) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@16) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@16) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@16) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@16) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@16) null (|valid#sm| y))))) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@16) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@16) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@16) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@16) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@16)))) (and (=> (= (ControlFlow 0 8) 6) anon44_Then_correct) (=> (= (ControlFlow 0 8) 7) anon44_Else_correct))))))))
(let ((anon43_Else_correct  (=> (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@15) y next) null) (=> (and (= UnfoldingMask@19 UnfoldingMask@17) (= (ControlFlow 0 11) 8)) anon26_correct))))
(let ((anon43_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@15) y next) null)) (= UnfoldingMask@18 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@17) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@17) (store (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@17) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@15) y next)) (+ (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@17) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@15) y next))) FullPerm)) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| UnfoldingMask@17) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| UnfoldingMask@17) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| UnfoldingMask@17) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| UnfoldingMask@17) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| UnfoldingMask@17) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| UnfoldingMask@17) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| UnfoldingMask@17)))) (=> (and (and (InsidePredicate_3949_3949 (valid y) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@15) null (valid y)) (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@15) y next)) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@15) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@15) y next)))) (state Heap@15 UnfoldingMask@18)) (and (= UnfoldingMask@19 UnfoldingMask@18) (= (ControlFlow 0 10) 8))) anon26_correct))))
(let ((anon24_correct  (=> (= UnfoldingMask@15 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| Mask@3) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| Mask@3) (store (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@3) null (valid y) (- (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@3) null (valid y)) FullPerm)) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| Mask@3) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| Mask@3) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| Mask@3) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| Mask@3) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| Mask@3) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| Mask@3) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| Mask@3))) (=> (and (not (= y null)) (= UnfoldingMask@16 (PolymorphicMapType_7823 (store (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@15) y value (+ (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@15) y value) FullPerm)) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@15) (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@15) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| UnfoldingMask@15) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| UnfoldingMask@15) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| UnfoldingMask@15) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| UnfoldingMask@15) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| UnfoldingMask@15) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| UnfoldingMask@15) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| UnfoldingMask@15)))) (=> (and (and (state Heap@15 UnfoldingMask@16) (not (= y null))) (and (= UnfoldingMask@17 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@16) (store (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@16) y next (+ (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@16) y next) FullPerm)) (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@16) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| UnfoldingMask@16) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| UnfoldingMask@16) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| UnfoldingMask@16) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| UnfoldingMask@16) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| UnfoldingMask@16) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| UnfoldingMask@16) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| UnfoldingMask@16))) (state Heap@15 UnfoldingMask@17))) (and (=> (= (ControlFlow 0 12) 10) anon43_Then_correct) (=> (= (ControlFlow 0 12) 11) anon43_Else_correct)))))))
(let ((anon42_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 15) 12)) anon24_correct)))
(let ((anon42_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (<= FullPerm (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@3) null (valid y)))) (=> (<= FullPerm (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@3) null (valid y))) (=> (= (ControlFlow 0 13) 12) anon24_correct))))))
(let ((anon22_correct  (=> (and (and (state Heap@15 Mask@3) (state Heap@15 Mask@3)) (and (|valid#trigger_3949| Heap@15 (valid y)) (= (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@15) null (valid y)) (CombineFrames (FrameFragment_1186 (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@15) y value)) (CombineFrames (FrameFragment_3946 (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@15) y next)) (FrameFragment_3950 (ite (not (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@15) y next) null)) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@15) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@15) y next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 16) 13) anon42_Then_correct) (=> (= (ControlFlow 0 16) 15) anon42_Else_correct)))))
(let ((anon41_Else_correct  (=> (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@13) x next) null) (=> (and (= Heap@15 Heap@13) (= (ControlFlow 0 18) 16)) anon22_correct))))
(let ((anon41_Then_correct  (=> (not (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@13) x next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_53 T@Ref) (f_56 T@Field_11188_1186) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| x))) o_53 f_56) (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@13) x next)))) o_53 f_56)) (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| newPMask@3) o_53 f_56))
 :qid |stdinbpl.554:31|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| newPMask@3) o_53 f_56))
)) (forall ((o_53@@0 T@Ref) (f_56@@0 T@Field_7875_7876) ) (!  (=> (or (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| x))) o_53@@0 f_56@@0) (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@13) x next)))) o_53@@0 f_56@@0)) (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| newPMask@3) o_53@@0 f_56@@0))
 :qid |stdinbpl.554:31|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| newPMask@3) o_53@@0 f_56@@0))
))) (forall ((o_53@@1 T@Ref) (f_56@@1 T@Field_7862_53) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| x))) o_53@@1 f_56@@1) (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@13) x next)))) o_53@@1 f_56@@1)) (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| newPMask@3) o_53@@1 f_56@@1))
 :qid |stdinbpl.554:31|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| newPMask@3) o_53@@1 f_56@@1))
))) (forall ((o_53@@2 T@Ref) (f_56@@2 T@Field_3945_11286) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| x))) o_53@@2 f_56@@2) (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@13) x next)))) o_53@@2 f_56@@2)) (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| newPMask@3) o_53@@2 f_56@@2))
 :qid |stdinbpl.554:31|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| newPMask@3) o_53@@2 f_56@@2))
))) (forall ((o_53@@3 T@Ref) (f_56@@3 T@Field_3945_11303) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| x))) o_53@@3 f_56@@3) (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@13) x next)))) o_53@@3 f_56@@3)) (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| newPMask@3) o_53@@3 f_56@@3))
 :qid |stdinbpl.554:31|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| newPMask@3) o_53@@3 f_56@@3))
))) (forall ((o_53@@4 T@Ref) (f_56@@4 T@Field_11285_1186) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| x))) o_53@@4 f_56@@4) (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@13) x next)))) o_53@@4 f_56@@4)) (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| newPMask@3) o_53@@4 f_56@@4))
 :qid |stdinbpl.554:31|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| newPMask@3) o_53@@4 f_56@@4))
))) (forall ((o_53@@5 T@Ref) (f_56@@5 T@Field_11285_3946) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| x))) o_53@@5 f_56@@5) (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@13) x next)))) o_53@@5 f_56@@5)) (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| newPMask@3) o_53@@5 f_56@@5))
 :qid |stdinbpl.554:31|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| newPMask@3) o_53@@5 f_56@@5))
))) (forall ((o_53@@6 T@Ref) (f_56@@6 T@Field_11285_53) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| x))) o_53@@6 f_56@@6) (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@13) x next)))) o_53@@6 f_56@@6)) (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| newPMask@3) o_53@@6 f_56@@6))
 :qid |stdinbpl.554:31|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| newPMask@3) o_53@@6 f_56@@6))
))) (forall ((o_53@@7 T@Ref) (f_56@@7 T@Field_11285_11286) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| x))) o_53@@7 f_56@@7) (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@13) x next)))) o_53@@7 f_56@@7)) (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| newPMask@3) o_53@@7 f_56@@7))
 :qid |stdinbpl.554:31|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| newPMask@3) o_53@@7 f_56@@7))
))) (forall ((o_53@@8 T@Ref) (f_56@@8 T@Field_11298_11303) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| x))) o_53@@8 f_56@@8) (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@13) x next)))) o_53@@8 f_56@@8)) (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| newPMask@3) o_53@@8 f_56@@8))
 :qid |stdinbpl.554:31|
 :skolemid |31|
 :pattern ( (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| newPMask@3) o_53@@8 f_56@@8))
))) (= Heap@14 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@13) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@13) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@13) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@13) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@13) null (|valid#sm| x) newPMask@3) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@13) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@13) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@13) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@13) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@13)))) (and (= Heap@15 Heap@14) (= (ControlFlow 0 17) 16))) anon22_correct))))
(let ((anon20_correct  (=> (state Heap@11 Mask@3) (and (=> (= (ControlFlow 0 19) (- 0 20)) (= i@0 (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@11) x value))) (=> (= i@0 (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@11) x value)) (=> (and (= Heap@12 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@11) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@11) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@11) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@11) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@11) null (|valid#sm| x) (PolymorphicMapType_8351 (store (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@11) null (|valid#sm| x))) x value true) (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@11) null (|valid#sm| x))) (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@11) null (|valid#sm| x))) (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@11) null (|valid#sm| x))) (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@11) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@11) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@11) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@11) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@11) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@11) null (|valid#sm| x))))) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@11) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@11) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@11) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@11) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@11))) (= Heap@13 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@12) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@12) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@12) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@12) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@12) null (|valid#sm| x) (PolymorphicMapType_8351 (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@12) null (|valid#sm| x))) (store (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@12) null (|valid#sm| x))) x next true) (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@12) null (|valid#sm| x))) (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@12) null (|valid#sm| x))) (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@12) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@12) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@12) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@12) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@12) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@12) null (|valid#sm| x))))) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@12) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@12) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@12) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@12) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@12)))) (and (=> (= (ControlFlow 0 19) 17) anon41_Then_correct) (=> (= (ControlFlow 0 19) 18) anon41_Else_correct))))))))
(let ((anon40_Else_correct  (=> (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@9) x next) null) (=> (and (= Heap@11 Heap@9) (= (ControlFlow 0 22) 19)) anon20_correct))))
(let ((anon40_Then_correct  (=> (not (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@9) x next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_52 T@Ref) (f_55 T@Field_11188_1186) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| x))) o_52 f_55) (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@9) x next)))) o_52 f_55)) (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| newPMask@2) o_52 f_55))
 :qid |stdinbpl.539:33|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| newPMask@2) o_52 f_55))
)) (forall ((o_52@@0 T@Ref) (f_55@@0 T@Field_7875_7876) ) (!  (=> (or (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| x))) o_52@@0 f_55@@0) (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@9) x next)))) o_52@@0 f_55@@0)) (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| newPMask@2) o_52@@0 f_55@@0))
 :qid |stdinbpl.539:33|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| newPMask@2) o_52@@0 f_55@@0))
))) (forall ((o_52@@1 T@Ref) (f_55@@1 T@Field_7862_53) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| x))) o_52@@1 f_55@@1) (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@9) x next)))) o_52@@1 f_55@@1)) (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| newPMask@2) o_52@@1 f_55@@1))
 :qid |stdinbpl.539:33|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| newPMask@2) o_52@@1 f_55@@1))
))) (forall ((o_52@@2 T@Ref) (f_55@@2 T@Field_3945_11286) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| x))) o_52@@2 f_55@@2) (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@9) x next)))) o_52@@2 f_55@@2)) (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| newPMask@2) o_52@@2 f_55@@2))
 :qid |stdinbpl.539:33|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| newPMask@2) o_52@@2 f_55@@2))
))) (forall ((o_52@@3 T@Ref) (f_55@@3 T@Field_3945_11303) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| x))) o_52@@3 f_55@@3) (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@9) x next)))) o_52@@3 f_55@@3)) (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| newPMask@2) o_52@@3 f_55@@3))
 :qid |stdinbpl.539:33|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| newPMask@2) o_52@@3 f_55@@3))
))) (forall ((o_52@@4 T@Ref) (f_55@@4 T@Field_11285_1186) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| x))) o_52@@4 f_55@@4) (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@9) x next)))) o_52@@4 f_55@@4)) (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| newPMask@2) o_52@@4 f_55@@4))
 :qid |stdinbpl.539:33|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| newPMask@2) o_52@@4 f_55@@4))
))) (forall ((o_52@@5 T@Ref) (f_55@@5 T@Field_11285_3946) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| x))) o_52@@5 f_55@@5) (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@9) x next)))) o_52@@5 f_55@@5)) (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| newPMask@2) o_52@@5 f_55@@5))
 :qid |stdinbpl.539:33|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| newPMask@2) o_52@@5 f_55@@5))
))) (forall ((o_52@@6 T@Ref) (f_55@@6 T@Field_11285_53) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| x))) o_52@@6 f_55@@6) (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@9) x next)))) o_52@@6 f_55@@6)) (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| newPMask@2) o_52@@6 f_55@@6))
 :qid |stdinbpl.539:33|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| newPMask@2) o_52@@6 f_55@@6))
))) (forall ((o_52@@7 T@Ref) (f_55@@7 T@Field_11285_11286) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| x))) o_52@@7 f_55@@7) (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@9) x next)))) o_52@@7 f_55@@7)) (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| newPMask@2) o_52@@7 f_55@@7))
 :qid |stdinbpl.539:33|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| newPMask@2) o_52@@7 f_55@@7))
))) (forall ((o_52@@8 T@Ref) (f_55@@8 T@Field_11298_11303) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| x))) o_52@@8 f_55@@8) (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@9) x next)))) o_52@@8 f_55@@8)) (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| newPMask@2) o_52@@8 f_55@@8))
 :qid |stdinbpl.539:33|
 :skolemid |30|
 :pattern ( (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| newPMask@2) o_52@@8 f_55@@8))
))) (= Heap@10 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@9) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@9) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@9) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@9) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@9) null (|valid#sm| x) newPMask@2) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@9) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@9) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@9) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@9) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@9)))) (and (= Heap@11 Heap@10) (= (ControlFlow 0 21) 19))) anon20_correct))))
(let ((anon18_correct  (=> (state ExhaleHeap@0 UnfoldingMask@14) (and (=> (= (ControlFlow 0 23) (- 0 24)) (HasDirectPerm_3943_1186 UnfoldingMask@14 x value)) (=> (HasDirectPerm_3943_1186 UnfoldingMask@14 x value) (=> (and (= Heap@8 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| ExhaleHeap@0) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@0) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@0) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@0) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@0) null (|valid#sm| x) (PolymorphicMapType_8351 (store (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@0) null (|valid#sm| x))) x value true) (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@0) null (|valid#sm| x))) (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@0) null (|valid#sm| x))) (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@0) null (|valid#sm| x))) (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@0) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@0) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@0) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@0) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@0) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| ExhaleHeap@0) null (|valid#sm| x))))) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| ExhaleHeap@0) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| ExhaleHeap@0) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| ExhaleHeap@0) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| ExhaleHeap@0) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| ExhaleHeap@0))) (= Heap@9 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@8) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@8) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@8) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@8) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@8) null (|valid#sm| x) (PolymorphicMapType_8351 (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@8) null (|valid#sm| x))) (store (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@8) null (|valid#sm| x))) x next true) (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@8) null (|valid#sm| x))) (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@8) null (|valid#sm| x))) (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@8) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@8) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@8) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@8) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@8) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@8) null (|valid#sm| x))))) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@8) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@8) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@8) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@8) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@8)))) (and (=> (= (ControlFlow 0 23) 21) anon40_Then_correct) (=> (= (ControlFlow 0 23) 22) anon40_Else_correct))))))))
(let ((anon39_Else_correct  (=> (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@0) x next) null) (=> (and (= UnfoldingMask@14 UnfoldingMask@12) (= (ControlFlow 0 26) 23)) anon18_correct))))
(let ((anon39_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@0) x next) null)) (= UnfoldingMask@13 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@12) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@12) (store (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@12) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@0) x next)) (+ (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@12) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@0) x next))) FullPerm)) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| UnfoldingMask@12) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| UnfoldingMask@12) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| UnfoldingMask@12) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| UnfoldingMask@12) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| UnfoldingMask@12) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| UnfoldingMask@12) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| UnfoldingMask@12)))) (=> (and (and (InsidePredicate_3949_3949 (valid x) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@0) null (valid x)) (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@0) x next)) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@0) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@0) x next)))) (state ExhaleHeap@0 UnfoldingMask@13)) (and (= UnfoldingMask@14 UnfoldingMask@13) (= (ControlFlow 0 25) 23))) anon18_correct))))
(let ((anon16_correct  (=> (= UnfoldingMask@10 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| Mask@3) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| Mask@3) (store (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@3) null (valid x) (- (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@3) null (valid x)) FullPerm)) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| Mask@3) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| Mask@3) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| Mask@3) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| Mask@3) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| Mask@3) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| Mask@3) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| Mask@3))) (=> (and (not (= x null)) (= UnfoldingMask@11 (PolymorphicMapType_7823 (store (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@10) x value (+ (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@10) x value) FullPerm)) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@10) (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@10) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| UnfoldingMask@10) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| UnfoldingMask@10) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| UnfoldingMask@10) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| UnfoldingMask@10) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| UnfoldingMask@10) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| UnfoldingMask@10) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| UnfoldingMask@10)))) (=> (and (and (state ExhaleHeap@0 UnfoldingMask@11) (not (= x null))) (and (= UnfoldingMask@12 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@11) (store (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@11) x next (+ (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@11) x next) FullPerm)) (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@11) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| UnfoldingMask@11) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| UnfoldingMask@11) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| UnfoldingMask@11) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| UnfoldingMask@11) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| UnfoldingMask@11) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| UnfoldingMask@11) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| UnfoldingMask@11))) (state ExhaleHeap@0 UnfoldingMask@12))) (and (=> (= (ControlFlow 0 27) 25) anon39_Then_correct) (=> (= (ControlFlow 0 27) 26) anon39_Else_correct)))))))
(let ((anon38_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 30) 27)) anon16_correct)))
(let ((anon38_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= FullPerm (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@3) null (valid x)))) (=> (<= FullPerm (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@3) null (valid x))) (=> (= (ControlFlow 0 28) 27) anon16_correct))))))
(let ((anon14_correct  (=> (and (and (and (= Mask@2 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| Mask@1) (store (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@1) null (valid y) (- (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@1) null (valid y)) FullPerm)) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| Mask@1))) (IdenticalOnKnownLocations Heap@7 ExhaleHeap@0 Mask@2)) (and (= Mask@3 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| Mask@2) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| Mask@2) (store (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@2) null (valid y) (+ (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@2) null (valid y)) FullPerm)) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| Mask@2) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| Mask@2) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| Mask@2) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| Mask@2) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| Mask@2) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| Mask@2) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| Mask@2))) (state ExhaleHeap@0 Mask@3))) (and (and (state ExhaleHeap@0 Mask@3) (state ExhaleHeap@0 Mask@3)) (and (|valid#trigger_3949| ExhaleHeap@0 (valid x)) (= (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@0) null (valid x)) (CombineFrames (FrameFragment_1186 (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| ExhaleHeap@0) x value)) (CombineFrames (FrameFragment_3946 (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@0) x next)) (FrameFragment_3950 (ite (not (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@0) x next) null)) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| ExhaleHeap@0) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| ExhaleHeap@0) x next))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 31) 28) anon38_Then_correct) (=> (= (ControlFlow 0 31) 30) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 34) 31)) anon14_correct)))
(let ((anon37_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (<= FullPerm (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@1) null (valid y)))) (=> (<= FullPerm (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@1) null (valid y))) (=> (= (ControlFlow 0 32) 31) anon14_correct))))))
(let ((anon12_correct  (=> (state Heap@7 Mask@1) (=> (and (= j_9@0 (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@7) y value)) (state Heap@7 Mask@1)) (and (=> (= (ControlFlow 0 35) 32) anon37_Then_correct) (=> (= (ControlFlow 0 35) 34) anon37_Else_correct))))))
(let ((anon36_Else_correct  (=> (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@5) y next) null) (=> (and (= Heap@7 Heap@5) (= (ControlFlow 0 37) 35)) anon12_correct))))
(let ((anon36_Then_correct  (=> (not (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@5) y next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_16 T@Ref) (f_21 T@Field_11188_1186) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| y))) o_16 f_21) (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@5) y next)))) o_16 f_21)) (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| newPMask@1) o_16 f_21))
 :qid |stdinbpl.462:33|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| newPMask@1) o_16 f_21))
)) (forall ((o_16@@0 T@Ref) (f_21@@0 T@Field_7875_7876) ) (!  (=> (or (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| y))) o_16@@0 f_21@@0) (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@5) y next)))) o_16@@0 f_21@@0)) (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| newPMask@1) o_16@@0 f_21@@0))
 :qid |stdinbpl.462:33|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| newPMask@1) o_16@@0 f_21@@0))
))) (forall ((o_16@@1 T@Ref) (f_21@@1 T@Field_7862_53) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| y))) o_16@@1 f_21@@1) (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@5) y next)))) o_16@@1 f_21@@1)) (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| newPMask@1) o_16@@1 f_21@@1))
 :qid |stdinbpl.462:33|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| newPMask@1) o_16@@1 f_21@@1))
))) (forall ((o_16@@2 T@Ref) (f_21@@2 T@Field_3945_11286) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| y))) o_16@@2 f_21@@2) (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@5) y next)))) o_16@@2 f_21@@2)) (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| newPMask@1) o_16@@2 f_21@@2))
 :qid |stdinbpl.462:33|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| newPMask@1) o_16@@2 f_21@@2))
))) (forall ((o_16@@3 T@Ref) (f_21@@3 T@Field_3945_11303) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| y))) o_16@@3 f_21@@3) (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@5) y next)))) o_16@@3 f_21@@3)) (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| newPMask@1) o_16@@3 f_21@@3))
 :qid |stdinbpl.462:33|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| newPMask@1) o_16@@3 f_21@@3))
))) (forall ((o_16@@4 T@Ref) (f_21@@4 T@Field_11285_1186) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| y))) o_16@@4 f_21@@4) (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@5) y next)))) o_16@@4 f_21@@4)) (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| newPMask@1) o_16@@4 f_21@@4))
 :qid |stdinbpl.462:33|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| newPMask@1) o_16@@4 f_21@@4))
))) (forall ((o_16@@5 T@Ref) (f_21@@5 T@Field_11285_3946) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| y))) o_16@@5 f_21@@5) (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@5) y next)))) o_16@@5 f_21@@5)) (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| newPMask@1) o_16@@5 f_21@@5))
 :qid |stdinbpl.462:33|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| newPMask@1) o_16@@5 f_21@@5))
))) (forall ((o_16@@6 T@Ref) (f_21@@6 T@Field_11285_53) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| y))) o_16@@6 f_21@@6) (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@5) y next)))) o_16@@6 f_21@@6)) (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| newPMask@1) o_16@@6 f_21@@6))
 :qid |stdinbpl.462:33|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| newPMask@1) o_16@@6 f_21@@6))
))) (forall ((o_16@@7 T@Ref) (f_21@@7 T@Field_11285_11286) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| y))) o_16@@7 f_21@@7) (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@5) y next)))) o_16@@7 f_21@@7)) (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| newPMask@1) o_16@@7 f_21@@7))
 :qid |stdinbpl.462:33|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| newPMask@1) o_16@@7 f_21@@7))
))) (forall ((o_16@@8 T@Ref) (f_21@@8 T@Field_11298_11303) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| y))) o_16@@8 f_21@@8) (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@5) y next)))) o_16@@8 f_21@@8)) (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| newPMask@1) o_16@@8 f_21@@8))
 :qid |stdinbpl.462:33|
 :skolemid |29|
 :pattern ( (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| newPMask@1) o_16@@8 f_21@@8))
))) (= Heap@6 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@5) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@5) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@5) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@5) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@5) null (|valid#sm| y) newPMask@1) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@5) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@5) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@5) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@5) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@5)))) (and (= Heap@7 Heap@6) (= (ControlFlow 0 36) 35))) anon12_correct))))
(let ((anon10_correct  (=> (state Heap@3 UnfoldingMask@9) (and (=> (= (ControlFlow 0 38) (- 0 39)) (HasDirectPerm_3943_1186 UnfoldingMask@9 y value)) (=> (HasDirectPerm_3943_1186 UnfoldingMask@9 y value) (=> (and (= Heap@4 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@3) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@3) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@3) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@3) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@3) null (|valid#sm| y) (PolymorphicMapType_8351 (store (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@3) null (|valid#sm| y))) y value true) (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@3) null (|valid#sm| y))) (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@3) null (|valid#sm| y))) (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@3) null (|valid#sm| y))) (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@3) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@3) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@3) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@3) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@3) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@3) null (|valid#sm| y))))) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@3) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@3) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@3) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@3) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@3))) (= Heap@5 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@4) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@4) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@4) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@4) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@4) null (|valid#sm| y) (PolymorphicMapType_8351 (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@4) null (|valid#sm| y))) (store (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@4) null (|valid#sm| y))) y next true) (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@4) null (|valid#sm| y))) (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@4) null (|valid#sm| y))) (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@4) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@4) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@4) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@4) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@4) null (|valid#sm| y))) (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@4) null (|valid#sm| y))))) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@4) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@4) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@4) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@4) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@4)))) (and (=> (= (ControlFlow 0 38) 36) anon36_Then_correct) (=> (= (ControlFlow 0 38) 37) anon36_Else_correct))))))))
(let ((anon35_Else_correct  (=> (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@3) y next) null) (=> (and (= UnfoldingMask@9 UnfoldingMask@7) (= (ControlFlow 0 41) 38)) anon10_correct))))
(let ((anon35_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@3) y next) null)) (= UnfoldingMask@8 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@7) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@7) (store (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@7) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@3) y next)) (+ (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@7) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@3) y next))) FullPerm)) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| UnfoldingMask@7) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| UnfoldingMask@7) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| UnfoldingMask@7) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| UnfoldingMask@7) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| UnfoldingMask@7) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| UnfoldingMask@7) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| UnfoldingMask@7)))) (=> (and (and (InsidePredicate_3949_3949 (valid y) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@3) null (valid y)) (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@3) y next)) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@3) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@3) y next)))) (state Heap@3 UnfoldingMask@8)) (and (= UnfoldingMask@9 UnfoldingMask@8) (= (ControlFlow 0 40) 38))) anon10_correct))))
(let ((anon8_correct  (=> (= UnfoldingMask@5 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| Mask@1) (store (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@1) null (valid y) (- (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@1) null (valid y)) FullPerm)) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| Mask@1))) (=> (and (not (= y null)) (= UnfoldingMask@6 (PolymorphicMapType_7823 (store (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@5) y value (+ (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@5) y value) FullPerm)) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@5) (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@5) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| UnfoldingMask@5) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| UnfoldingMask@5) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| UnfoldingMask@5) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| UnfoldingMask@5) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| UnfoldingMask@5) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| UnfoldingMask@5) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| UnfoldingMask@5)))) (=> (and (and (state Heap@3 UnfoldingMask@6) (not (= y null))) (and (= UnfoldingMask@7 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@6) (store (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@6) y next (+ (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@6) y next) FullPerm)) (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@6) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| UnfoldingMask@6) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| UnfoldingMask@6) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| UnfoldingMask@6) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| UnfoldingMask@6) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| UnfoldingMask@6) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| UnfoldingMask@6) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| UnfoldingMask@6))) (state Heap@3 UnfoldingMask@7))) (and (=> (= (ControlFlow 0 42) 40) anon35_Then_correct) (=> (= (ControlFlow 0 42) 41) anon35_Else_correct)))))))
(let ((anon34_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 45) 42)) anon8_correct)))
(let ((anon34_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (<= FullPerm (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@1) null (valid y)))) (=> (<= FullPerm (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@1) null (valid y))) (=> (= (ControlFlow 0 43) 42) anon8_correct))))))
(let ((anon6_correct  (=> (state Heap@3 Mask@1) (=> (and (and (= i@0 (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@3) x value)) (state Heap@3 Mask@1)) (and (|valid#trigger_3949| Heap@3 (valid y)) (= (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@3) null (valid y)) (CombineFrames (FrameFragment_1186 (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@3) y value)) (CombineFrames (FrameFragment_3946 (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@3) y next)) (FrameFragment_3950 (ite (not (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@3) y next) null)) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@3) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@3) y next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 46) 43) anon34_Then_correct) (=> (= (ControlFlow 0 46) 45) anon34_Else_correct))))))
(let ((anon33_Else_correct  (=> (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@1) x next) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 48) 46)) anon6_correct))))
(let ((anon33_Then_correct  (=> (not (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@1) x next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_11188_1186) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| x))) o_15 f_20) (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@1) x next)))) o_15 f_20)) (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| newPMask@0) o_15 f_20))
 :qid |stdinbpl.412:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_7875_7876) ) (!  (=> (or (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| x))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@1) x next)))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.412:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_7862_53) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| x))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@1) x next)))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.412:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_3945_11286) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| x))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@1) x next)))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.412:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_3945_11303) ) (!  (=> (or (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| x))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@1) x next)))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.412:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_11285_1186) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| x))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@1) x next)))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.412:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_11285_3946) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| x))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@1) x next)))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.412:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_11285_53) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| x))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@1) x next)))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.412:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_11285_11286) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| x))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@1) x next)))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.412:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_11298_11303) ) (!  (=> (or (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| x))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@1) x next)))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.412:33|
 :skolemid |28|
 :pattern ( (select (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| newPMask@0) o_15@@8 f_20@@8))
))) (= Heap@2 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@1) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@1) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@1) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@1) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@1) null (|valid#sm| x) newPMask@0) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@1) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@1) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@1) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@1) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 47) 46))) anon6_correct))))
(let ((anon4_correct  (=> (state Heap@@32 UnfoldingMask@4) (and (=> (= (ControlFlow 0 49) (- 0 50)) (HasDirectPerm_3943_1186 UnfoldingMask@4 x value)) (=> (HasDirectPerm_3943_1186 UnfoldingMask@4 x value) (=> (and (= Heap@0 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@32) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@32) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@32) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@32) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@32) null (|valid#sm| x) (PolymorphicMapType_8351 (store (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@32) null (|valid#sm| x))) x value true) (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@32) null (|valid#sm| x))) (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@32) null (|valid#sm| x))) (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@32) null (|valid#sm| x))) (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@32) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@32) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@32) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@32) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@32) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@@32) null (|valid#sm| x))))) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@@32) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@@32) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@@32) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@@32) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@@32))) (= Heap@1 (PolymorphicMapType_7802 (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@0) (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@0) (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@0) (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@0) (store (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@0) null (|valid#sm| x) (PolymorphicMapType_8351 (|PolymorphicMapType_8351_3943_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@0) null (|valid#sm| x))) (store (|PolymorphicMapType_8351_3945_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@0) null (|valid#sm| x))) x next true) (|PolymorphicMapType_8351_3943_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@0) null (|valid#sm| x))) (|PolymorphicMapType_8351_3943_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@0) null (|valid#sm| x))) (|PolymorphicMapType_8351_3943_30822#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@0) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_1186#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@0) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_3946#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@0) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_53#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@0) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_11286#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@0) null (|valid#sm| x))) (|PolymorphicMapType_8351_11285_31870#PolymorphicMapType_8351| (select (|PolymorphicMapType_7802_3953_16297#PolymorphicMapType_7802| Heap@0) null (|valid#sm| x))))) (|PolymorphicMapType_7802_3945_11286#PolymorphicMapType_7802| Heap@0) (|PolymorphicMapType_7802_3945_28001#PolymorphicMapType_7802| Heap@0) (|PolymorphicMapType_7802_11285_3946#PolymorphicMapType_7802| Heap@0) (|PolymorphicMapType_7802_11285_1186#PolymorphicMapType_7802| Heap@0) (|PolymorphicMapType_7802_11285_53#PolymorphicMapType_7802| Heap@0)))) (and (=> (= (ControlFlow 0 49) 47) anon33_Then_correct) (=> (= (ControlFlow 0 49) 48) anon33_Else_correct))))))))
(let ((anon32_Else_correct  (=> (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@32) x next) null) (=> (and (= UnfoldingMask@4 UnfoldingMask@2) (= (ControlFlow 0 52) 49)) anon4_correct))))
(let ((anon32_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@32) x next) null)) (= UnfoldingMask@3 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@2) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@2) (store (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@2) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@32) x next)) (+ (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@2) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@32) x next))) FullPerm)) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| UnfoldingMask@2) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| UnfoldingMask@2) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| UnfoldingMask@2) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| UnfoldingMask@2) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| UnfoldingMask@2) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| UnfoldingMask@2) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| UnfoldingMask@2)))) (=> (and (and (InsidePredicate_3949_3949 (valid x) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@32) null (valid x)) (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@32) x next)) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@32) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@32) x next)))) (state Heap@@32 UnfoldingMask@3)) (and (= UnfoldingMask@4 UnfoldingMask@3) (= (ControlFlow 0 51) 49))) anon4_correct))))
(let ((anon2_correct  (=> (= UnfoldingMask@0 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| Mask@1) (store (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@1) null (valid x) (- (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@1) null (valid x)) FullPerm)) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| Mask@1) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| Mask@1))) (=> (and (not (= x null)) (= UnfoldingMask@1 (PolymorphicMapType_7823 (store (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@0) x value (+ (select (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@0) x value) FullPerm)) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@0) (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@0) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| UnfoldingMask@0) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| UnfoldingMask@0) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| UnfoldingMask@0) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| UnfoldingMask@0) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| UnfoldingMask@0) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| UnfoldingMask@0) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| UnfoldingMask@0)))) (=> (and (and (state Heap@@32 UnfoldingMask@1) (not (= x null))) (and (= UnfoldingMask@2 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| UnfoldingMask@1) (store (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@1) x next (+ (select (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| UnfoldingMask@1) x next) FullPerm)) (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| UnfoldingMask@1) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| UnfoldingMask@1) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| UnfoldingMask@1) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| UnfoldingMask@1) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| UnfoldingMask@1) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| UnfoldingMask@1) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| UnfoldingMask@1) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| UnfoldingMask@1))) (state Heap@@32 UnfoldingMask@2))) (and (=> (= (ControlFlow 0 53) 51) anon32_Then_correct) (=> (= (ControlFlow 0 53) 52) anon32_Else_correct)))))))
(let ((anon31_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 56) 53)) anon2_correct)))
(let ((anon31_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 54) (- 0 55)) (<= FullPerm (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@1) null (valid x)))) (=> (<= FullPerm (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@1) null (valid x))) (=> (= (ControlFlow 0 54) 53) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@32) this@@5 $allocated)) (=> (and (and (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@32) x $allocated) (select (|PolymorphicMapType_7802_3815_53#PolymorphicMapType_7802| Heap@@32) y $allocated)) (and (not (= x null)) (not (= y null)))) (=> (and (and (and (not (= x y)) (= Mask@0 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| ZeroMask) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| ZeroMask) (store (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| ZeroMask) null (valid x) (+ (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| ZeroMask) null (valid x)) FullPerm)) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| ZeroMask) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| ZeroMask) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| ZeroMask) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| ZeroMask) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| ZeroMask) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| ZeroMask) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| ZeroMask)))) (and (state Heap@@32 Mask@0) (= Mask@1 (PolymorphicMapType_7823 (|PolymorphicMapType_7823_3943_1186#PolymorphicMapType_7823| Mask@0) (|PolymorphicMapType_7823_3945_3946#PolymorphicMapType_7823| Mask@0) (store (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@0) null (valid y) (+ (select (|PolymorphicMapType_7823_3949_3950#PolymorphicMapType_7823| Mask@0) null (valid y)) FullPerm)) (|PolymorphicMapType_7823_3943_3950#PolymorphicMapType_7823| Mask@0) (|PolymorphicMapType_7823_3943_53#PolymorphicMapType_7823| Mask@0) (|PolymorphicMapType_7823_3943_37249#PolymorphicMapType_7823| Mask@0) (|PolymorphicMapType_7823_3949_1186#PolymorphicMapType_7823| Mask@0) (|PolymorphicMapType_7823_3949_3946#PolymorphicMapType_7823| Mask@0) (|PolymorphicMapType_7823_3949_53#PolymorphicMapType_7823| Mask@0) (|PolymorphicMapType_7823_3949_37660#PolymorphicMapType_7823| Mask@0))))) (and (and (state Heap@@32 Mask@1) (state Heap@@32 Mask@1)) (and (|valid#trigger_3949| Heap@@32 (valid x)) (= (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@32) null (valid x)) (CombineFrames (FrameFragment_1186 (select (|PolymorphicMapType_7802_3943_1186#PolymorphicMapType_7802| Heap@@32) x value)) (CombineFrames (FrameFragment_3946 (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@32) x next)) (FrameFragment_3950 (ite (not (= (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@32) x next) null)) (select (|PolymorphicMapType_7802_3949_3950#PolymorphicMapType_7802| Heap@@32) null (valid (select (|PolymorphicMapType_7802_3818_3819#PolymorphicMapType_7802| Heap@@32) x next))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 57) 54) anon31_Then_correct) (=> (= (ControlFlow 0 57) 56) anon31_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 58) 57) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
