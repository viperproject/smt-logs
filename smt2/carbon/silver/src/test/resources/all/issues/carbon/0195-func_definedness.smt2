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
(declare-sort T@Field_4112_53 0)
(declare-sort T@Field_4125_4126 0)
(declare-sort T@Field_7439_1189 0)
(declare-sort T@Field_7802_7803 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_9207_9212 0)
(declare-sort T@Field_2174_7803 0)
(declare-sort T@Field_2174_9212 0)
(declare-sort T@Field_7802_1189 0)
(declare-sort T@Field_7802_53 0)
(declare-sort T@Field_7802_4126 0)
(declare-datatypes ((T@PolymorphicMapType_4073 0)) (((PolymorphicMapType_4073 (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| (Array T@Ref T@Field_7802_7803 Real)) (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| (Array T@Ref T@Field_7439_1189 Real)) (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| (Array T@Ref T@Field_7802_1189 Real)) (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| (Array T@Ref T@Field_7802_53 Real)) (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| (Array T@Ref T@Field_7802_4126 Real)) (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| (Array T@Ref T@Field_9207_9212 Real)) (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| (Array T@Ref T@Field_2174_7803 Real)) (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| (Array T@Ref T@Field_4112_53 Real)) (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| (Array T@Ref T@Field_4125_4126 Real)) (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| (Array T@Ref T@Field_2174_9212 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4601 0)) (((PolymorphicMapType_4601 (|PolymorphicMapType_4601_2174_1189#PolymorphicMapType_4601| (Array T@Ref T@Field_7439_1189 Bool)) (|PolymorphicMapType_4601_2174_53#PolymorphicMapType_4601| (Array T@Ref T@Field_4112_53 Bool)) (|PolymorphicMapType_4601_2174_4126#PolymorphicMapType_4601| (Array T@Ref T@Field_4125_4126 Bool)) (|PolymorphicMapType_4601_2174_7803#PolymorphicMapType_4601| (Array T@Ref T@Field_2174_7803 Bool)) (|PolymorphicMapType_4601_2174_15108#PolymorphicMapType_4601| (Array T@Ref T@Field_2174_9212 Bool)) (|PolymorphicMapType_4601_7802_1189#PolymorphicMapType_4601| (Array T@Ref T@Field_7802_1189 Bool)) (|PolymorphicMapType_4601_7802_53#PolymorphicMapType_4601| (Array T@Ref T@Field_7802_53 Bool)) (|PolymorphicMapType_4601_7802_4126#PolymorphicMapType_4601| (Array T@Ref T@Field_7802_4126 Bool)) (|PolymorphicMapType_4601_7802_7803#PolymorphicMapType_4601| (Array T@Ref T@Field_7802_7803 Bool)) (|PolymorphicMapType_4601_7802_16156#PolymorphicMapType_4601| (Array T@Ref T@Field_9207_9212 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4052 0)) (((PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| (Array T@Ref T@Field_4112_53 Bool)) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| (Array T@Ref T@Field_4125_4126 T@Ref)) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| (Array T@Ref T@Field_7439_1189 Int)) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| (Array T@Ref T@Field_7802_7803 T@FrameType)) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| (Array T@Ref T@Field_9207_9212 T@PolymorphicMapType_4601)) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| (Array T@Ref T@Field_2174_7803 T@FrameType)) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| (Array T@Ref T@Field_2174_9212 T@PolymorphicMapType_4601)) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| (Array T@Ref T@Field_7802_1189 Int)) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| (Array T@Ref T@Field_7802_53 Bool)) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| (Array T@Ref T@Field_7802_4126 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_4112_53)
(declare-fun v_36 () T@Field_7439_1189)
(declare-fun succHeap (T@PolymorphicMapType_4052 T@PolymorphicMapType_4052) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4052 T@PolymorphicMapType_4052) Bool)
(declare-fun state (T@PolymorphicMapType_4052 T@PolymorphicMapType_4073) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4073) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_4601)
(declare-fun vperm (T@Ref) T@Field_7802_7803)
(declare-fun IsPredicateField_2206_2207 (T@Field_7802_7803) Bool)
(declare-fun |func'| (T@PolymorphicMapType_4052 T@Ref) Bool)
(declare-fun dummyFunction_1440 (Bool) Bool)
(declare-fun |func#triggerStateless| (T@Ref) Bool)
(declare-fun |vperm#trigger_2206| (T@PolymorphicMapType_4052 T@Field_7802_7803) Bool)
(declare-fun |vperm#everUsed_2206| (T@Field_7802_7803) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |func#trigger| (T@FrameType T@Ref) Bool)
(declare-fun null () T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4052 T@PolymorphicMapType_4052 T@PolymorphicMapType_4073) Bool)
(declare-fun PredicateMaskField_2206 (T@Field_7802_7803) T@Field_9207_9212)
(declare-fun HasDirectPerm_7802_7803 (T@PolymorphicMapType_4073 T@Ref T@Field_7802_7803) Bool)
(declare-fun IsPredicateField_2174_13636 (T@Field_2174_7803) Bool)
(declare-fun PredicateMaskField_2174 (T@Field_2174_7803) T@Field_2174_9212)
(declare-fun HasDirectPerm_2174_7803 (T@PolymorphicMapType_4073 T@Ref T@Field_2174_7803) Bool)
(declare-fun IsWandField_7802_17321 (T@Field_7802_7803) Bool)
(declare-fun WandMaskField_7802 (T@Field_7802_7803) T@Field_9207_9212)
(declare-fun IsWandField_2174_16964 (T@Field_2174_7803) Bool)
(declare-fun WandMaskField_2174 (T@Field_2174_7803) T@Field_2174_9212)
(declare-fun |vperm#sm| (T@Ref) T@Field_9207_9212)
(declare-fun dummyHeap () T@PolymorphicMapType_4052)
(declare-fun ZeroMask () T@PolymorphicMapType_4073)
(declare-fun InsidePredicate_7802_7802 (T@Field_7802_7803 T@FrameType T@Field_7802_7803 T@FrameType) Bool)
(declare-fun InsidePredicate_4112_4112 (T@Field_2174_7803 T@FrameType T@Field_2174_7803 T@FrameType) Bool)
(declare-fun IsPredicateField_2174_1189 (T@Field_7439_1189) Bool)
(declare-fun IsWandField_2174_1189 (T@Field_7439_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2174_24253 (T@Field_2174_9212) Bool)
(declare-fun IsWandField_2174_24269 (T@Field_2174_9212) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2174_4126 (T@Field_4125_4126) Bool)
(declare-fun IsWandField_2174_4126 (T@Field_4125_4126) Bool)
(declare-fun IsPredicateField_2174_53 (T@Field_4112_53) Bool)
(declare-fun IsWandField_2174_53 (T@Field_4112_53) Bool)
(declare-fun IsPredicateField_2206_23436 (T@Field_9207_9212) Bool)
(declare-fun IsWandField_2206_23452 (T@Field_9207_9212) Bool)
(declare-fun IsPredicateField_2206_4126 (T@Field_7802_4126) Bool)
(declare-fun IsWandField_2206_4126 (T@Field_7802_4126) Bool)
(declare-fun IsPredicateField_2206_53 (T@Field_7802_53) Bool)
(declare-fun IsWandField_2206_53 (T@Field_7802_53) Bool)
(declare-fun IsPredicateField_2206_1189 (T@Field_7802_1189) Bool)
(declare-fun IsWandField_2206_1189 (T@Field_7802_1189) Bool)
(declare-fun HasDirectPerm_7802_13391 (T@PolymorphicMapType_4073 T@Ref T@Field_9207_9212) Bool)
(declare-fun HasDirectPerm_7802_4126 (T@PolymorphicMapType_4073 T@Ref T@Field_7802_4126) Bool)
(declare-fun HasDirectPerm_7802_53 (T@PolymorphicMapType_4073 T@Ref T@Field_7802_53) Bool)
(declare-fun HasDirectPerm_7802_1189 (T@PolymorphicMapType_4073 T@Ref T@Field_7802_1189) Bool)
(declare-fun HasDirectPerm_2174_12230 (T@PolymorphicMapType_4073 T@Ref T@Field_2174_9212) Bool)
(declare-fun HasDirectPerm_2174_4126 (T@PolymorphicMapType_4073 T@Ref T@Field_4125_4126) Bool)
(declare-fun HasDirectPerm_2174_53 (T@PolymorphicMapType_4073 T@Ref T@Field_4112_53) Bool)
(declare-fun HasDirectPerm_2174_1189 (T@PolymorphicMapType_4073 T@Ref T@Field_7439_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun func (T@PolymorphicMapType_4052 T@Ref) Bool)
(declare-fun sumMask (T@PolymorphicMapType_4073 T@PolymorphicMapType_4073 T@PolymorphicMapType_4073) Bool)
(declare-fun |func#frame| (T@FrameType T@Ref) Bool)
(declare-fun getPredWandId_2206_2207 (T@Field_7802_7803) Int)
(declare-fun InsidePredicate_7802_4112 (T@Field_7802_7803 T@FrameType T@Field_2174_7803 T@FrameType) Bool)
(declare-fun InsidePredicate_4112_7802 (T@Field_2174_7803 T@FrameType T@Field_7802_7803 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_4052) (Heap1 T@PolymorphicMapType_4052) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4052) (Mask T@PolymorphicMapType_4073) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4052) (Heap1@@0 T@PolymorphicMapType_4052) (Heap2 T@PolymorphicMapType_4052) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9207_9212) ) (!  (not (select (|PolymorphicMapType_4601_7802_16156#PolymorphicMapType_4601| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4601_7802_16156#PolymorphicMapType_4601| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7802_7803) ) (!  (not (select (|PolymorphicMapType_4601_7802_7803#PolymorphicMapType_4601| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4601_7802_7803#PolymorphicMapType_4601| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_7802_4126) ) (!  (not (select (|PolymorphicMapType_4601_7802_4126#PolymorphicMapType_4601| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4601_7802_4126#PolymorphicMapType_4601| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_7802_53) ) (!  (not (select (|PolymorphicMapType_4601_7802_53#PolymorphicMapType_4601| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4601_7802_53#PolymorphicMapType_4601| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_7802_1189) ) (!  (not (select (|PolymorphicMapType_4601_7802_1189#PolymorphicMapType_4601| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4601_7802_1189#PolymorphicMapType_4601| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_2174_9212) ) (!  (not (select (|PolymorphicMapType_4601_2174_15108#PolymorphicMapType_4601| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4601_2174_15108#PolymorphicMapType_4601| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_2174_7803) ) (!  (not (select (|PolymorphicMapType_4601_2174_7803#PolymorphicMapType_4601| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4601_2174_7803#PolymorphicMapType_4601| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_4125_4126) ) (!  (not (select (|PolymorphicMapType_4601_2174_4126#PolymorphicMapType_4601| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4601_2174_4126#PolymorphicMapType_4601| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_4112_53) ) (!  (not (select (|PolymorphicMapType_4601_2174_53#PolymorphicMapType_4601| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4601_2174_53#PolymorphicMapType_4601| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_7439_1189) ) (!  (not (select (|PolymorphicMapType_4601_2174_1189#PolymorphicMapType_4601| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_4601_2174_1189#PolymorphicMapType_4601| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((r_1 T@Ref) ) (! (IsPredicateField_2206_2207 (vperm r_1))
 :qid |stdinbpl.318:15|
 :skolemid |28|
 :pattern ( (vperm r_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4052) (r_1@@0 T@Ref) ) (! (dummyFunction_1440 (|func#triggerStateless| r_1@@0))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|func'| Heap@@0 r_1@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4052) (r_1@@1 T@Ref) ) (! (|vperm#everUsed_2206| (vperm r_1@@1))
 :qid |stdinbpl.337:15|
 :skolemid |32|
 :pattern ( (|vperm#trigger_2206| Heap@@1 (vperm r_1@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4052) (Mask@@0 T@PolymorphicMapType_4073) (r_1@@2 T@Ref) ) (!  (=> (and (state Heap@@2 Mask@@0) (or (< AssumeFunctionsAbove 0) (|func#trigger| (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@2) null (vperm r_1@@2)) r_1@@2))) (|func'| Heap@@2 r_1@@2))
 :qid |stdinbpl.217:15|
 :skolemid |26|
 :pattern ( (state Heap@@2 Mask@@0) (|func'| Heap@@2 r_1@@2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4052) (ExhaleHeap T@PolymorphicMapType_4052) (Mask@@1 T@PolymorphicMapType_4073) (pm_f T@Field_7802_7803) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_7802_7803 Mask@@1 null pm_f) (IsPredicateField_2206_2207 pm_f)) (= (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@3) null (PredicateMaskField_2206 pm_f)) (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| ExhaleHeap) null (PredicateMaskField_2206 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (IsPredicateField_2206_2207 pm_f) (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| ExhaleHeap) null (PredicateMaskField_2206 pm_f)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4052) (ExhaleHeap@@0 T@PolymorphicMapType_4052) (Mask@@2 T@PolymorphicMapType_4073) (pm_f@@0 T@Field_2174_7803) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_2174_7803 Mask@@2 null pm_f@@0) (IsPredicateField_2174_13636 pm_f@@0)) (= (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@4) null (PredicateMaskField_2174 pm_f@@0)) (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| ExhaleHeap@@0) null (PredicateMaskField_2174 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (IsPredicateField_2174_13636 pm_f@@0) (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| ExhaleHeap@@0) null (PredicateMaskField_2174 pm_f@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4052) (ExhaleHeap@@1 T@PolymorphicMapType_4052) (Mask@@3 T@PolymorphicMapType_4073) (pm_f@@1 T@Field_7802_7803) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_7802_7803 Mask@@3 null pm_f@@1) (IsWandField_7802_17321 pm_f@@1)) (= (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@5) null (WandMaskField_7802 pm_f@@1)) (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| ExhaleHeap@@1) null (WandMaskField_7802 pm_f@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (IsWandField_7802_17321 pm_f@@1) (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| ExhaleHeap@@1) null (WandMaskField_7802 pm_f@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4052) (ExhaleHeap@@2 T@PolymorphicMapType_4052) (Mask@@4 T@PolymorphicMapType_4073) (pm_f@@2 T@Field_2174_7803) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_2174_7803 Mask@@4 null pm_f@@2) (IsWandField_2174_16964 pm_f@@2)) (= (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@6) null (WandMaskField_2174 pm_f@@2)) (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| ExhaleHeap@@2) null (WandMaskField_2174 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (IsWandField_2174_16964 pm_f@@2) (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| ExhaleHeap@@2) null (WandMaskField_2174 pm_f@@2)))
)))
(assert (forall ((r_1@@3 T@Ref) (r2 T@Ref) ) (!  (=> (= (vperm r_1@@3) (vperm r2)) (= r_1@@3 r2))
 :qid |stdinbpl.328:15|
 :skolemid |30|
 :pattern ( (vperm r_1@@3) (vperm r2))
)))
(assert (forall ((r_1@@4 T@Ref) (r2@@0 T@Ref) ) (!  (=> (= (|vperm#sm| r_1@@4) (|vperm#sm| r2@@0)) (= r_1@@4 r2@@0))
 :qid |stdinbpl.332:15|
 :skolemid |31|
 :pattern ( (|vperm#sm| r_1@@4) (|vperm#sm| r2@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4052) (ExhaleHeap@@3 T@PolymorphicMapType_4052) (Mask@@5 T@PolymorphicMapType_4073) (pm_f@@3 T@Field_7802_7803) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_7802_7803 Mask@@5 null pm_f@@3) (IsPredicateField_2206_2207 pm_f@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_7439_1189) ) (!  (=> (select (|PolymorphicMapType_4601_2174_1189#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@7) null (PredicateMaskField_2206 pm_f@@3))) o2 f_2) (= (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@7) o2 f_2) (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_4112_53) ) (!  (=> (select (|PolymorphicMapType_4601_2174_53#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@7) null (PredicateMaskField_2206 pm_f@@3))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@7) o2@@0 f_2@@0) (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_4125_4126) ) (!  (=> (select (|PolymorphicMapType_4601_2174_4126#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@7) null (PredicateMaskField_2206 pm_f@@3))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@7) o2@@1 f_2@@1) (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_2174_7803) ) (!  (=> (select (|PolymorphicMapType_4601_2174_7803#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@7) null (PredicateMaskField_2206 pm_f@@3))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@7) o2@@2 f_2@@2) (select (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_2174_9212) ) (!  (=> (select (|PolymorphicMapType_4601_2174_15108#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@7) null (PredicateMaskField_2206 pm_f@@3))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@7) o2@@3 f_2@@3) (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_7802_1189) ) (!  (=> (select (|PolymorphicMapType_4601_7802_1189#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@7) null (PredicateMaskField_2206 pm_f@@3))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@7) o2@@4 f_2@@4) (select (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_7802_53) ) (!  (=> (select (|PolymorphicMapType_4601_7802_53#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@7) null (PredicateMaskField_2206 pm_f@@3))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@7) o2@@5 f_2@@5) (select (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_7802_4126) ) (!  (=> (select (|PolymorphicMapType_4601_7802_4126#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@7) null (PredicateMaskField_2206 pm_f@@3))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@7) o2@@6 f_2@@6) (select (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_7802_7803) ) (!  (=> (select (|PolymorphicMapType_4601_7802_7803#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@7) null (PredicateMaskField_2206 pm_f@@3))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@7) o2@@7 f_2@@7) (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_9207_9212) ) (!  (=> (select (|PolymorphicMapType_4601_7802_16156#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@7) null (PredicateMaskField_2206 pm_f@@3))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@7) o2@@8 f_2@@8) (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| ExhaleHeap@@3) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (IsPredicateField_2206_2207 pm_f@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4052) (ExhaleHeap@@4 T@PolymorphicMapType_4052) (Mask@@6 T@PolymorphicMapType_4073) (pm_f@@4 T@Field_2174_7803) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_2174_7803 Mask@@6 null pm_f@@4) (IsPredicateField_2174_13636 pm_f@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_7439_1189) ) (!  (=> (select (|PolymorphicMapType_4601_2174_1189#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@8) null (PredicateMaskField_2174 pm_f@@4))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@8) o2@@9 f_2@@9) (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@9 f_2@@9))
)) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_4112_53) ) (!  (=> (select (|PolymorphicMapType_4601_2174_53#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@8) null (PredicateMaskField_2174 pm_f@@4))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@8) o2@@10 f_2@@10) (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_4125_4126) ) (!  (=> (select (|PolymorphicMapType_4601_2174_4126#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@8) null (PredicateMaskField_2174 pm_f@@4))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@8) o2@@11 f_2@@11) (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_2174_7803) ) (!  (=> (select (|PolymorphicMapType_4601_2174_7803#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@8) null (PredicateMaskField_2174 pm_f@@4))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@8) o2@@12 f_2@@12) (select (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_2174_9212) ) (!  (=> (select (|PolymorphicMapType_4601_2174_15108#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@8) null (PredicateMaskField_2174 pm_f@@4))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@8) o2@@13 f_2@@13) (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_7802_1189) ) (!  (=> (select (|PolymorphicMapType_4601_7802_1189#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@8) null (PredicateMaskField_2174 pm_f@@4))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@8) o2@@14 f_2@@14) (select (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_7802_53) ) (!  (=> (select (|PolymorphicMapType_4601_7802_53#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@8) null (PredicateMaskField_2174 pm_f@@4))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@8) o2@@15 f_2@@15) (select (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_7802_4126) ) (!  (=> (select (|PolymorphicMapType_4601_7802_4126#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@8) null (PredicateMaskField_2174 pm_f@@4))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@8) o2@@16 f_2@@16) (select (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_7802_7803) ) (!  (=> (select (|PolymorphicMapType_4601_7802_7803#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@8) null (PredicateMaskField_2174 pm_f@@4))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@8) o2@@17 f_2@@17) (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_9207_9212) ) (!  (=> (select (|PolymorphicMapType_4601_7802_16156#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@8) null (PredicateMaskField_2174 pm_f@@4))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@8) o2@@18 f_2@@18) (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| ExhaleHeap@@4) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (IsPredicateField_2174_13636 pm_f@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4052) (ExhaleHeap@@5 T@PolymorphicMapType_4052) (Mask@@7 T@PolymorphicMapType_4073) (pm_f@@5 T@Field_7802_7803) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_7802_7803 Mask@@7 null pm_f@@5) (IsWandField_7802_17321 pm_f@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_7439_1189) ) (!  (=> (select (|PolymorphicMapType_4601_2174_1189#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@9) null (WandMaskField_7802 pm_f@@5))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@9) o2@@19 f_2@@19) (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_4112_53) ) (!  (=> (select (|PolymorphicMapType_4601_2174_53#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@9) null (WandMaskField_7802 pm_f@@5))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@9) o2@@20 f_2@@20) (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_4125_4126) ) (!  (=> (select (|PolymorphicMapType_4601_2174_4126#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@9) null (WandMaskField_7802 pm_f@@5))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@9) o2@@21 f_2@@21) (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_2174_7803) ) (!  (=> (select (|PolymorphicMapType_4601_2174_7803#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@9) null (WandMaskField_7802 pm_f@@5))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@9) o2@@22 f_2@@22) (select (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_2174_9212) ) (!  (=> (select (|PolymorphicMapType_4601_2174_15108#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@9) null (WandMaskField_7802 pm_f@@5))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@9) o2@@23 f_2@@23) (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_7802_1189) ) (!  (=> (select (|PolymorphicMapType_4601_7802_1189#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@9) null (WandMaskField_7802 pm_f@@5))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@9) o2@@24 f_2@@24) (select (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_7802_53) ) (!  (=> (select (|PolymorphicMapType_4601_7802_53#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@9) null (WandMaskField_7802 pm_f@@5))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@9) o2@@25 f_2@@25) (select (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_7802_4126) ) (!  (=> (select (|PolymorphicMapType_4601_7802_4126#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@9) null (WandMaskField_7802 pm_f@@5))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@9) o2@@26 f_2@@26) (select (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_7802_7803) ) (!  (=> (select (|PolymorphicMapType_4601_7802_7803#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@9) null (WandMaskField_7802 pm_f@@5))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@9) o2@@27 f_2@@27) (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_9207_9212) ) (!  (=> (select (|PolymorphicMapType_4601_7802_16156#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@9) null (WandMaskField_7802 pm_f@@5))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@9) o2@@28 f_2@@28) (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| ExhaleHeap@@5) o2@@28 f_2@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (IsWandField_7802_17321 pm_f@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4052) (ExhaleHeap@@6 T@PolymorphicMapType_4052) (Mask@@8 T@PolymorphicMapType_4073) (pm_f@@6 T@Field_2174_7803) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_2174_7803 Mask@@8 null pm_f@@6) (IsWandField_2174_16964 pm_f@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_7439_1189) ) (!  (=> (select (|PolymorphicMapType_4601_2174_1189#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@10) null (WandMaskField_2174 pm_f@@6))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@10) o2@@29 f_2@@29) (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@29 f_2@@29))
)) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_4112_53) ) (!  (=> (select (|PolymorphicMapType_4601_2174_53#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@10) null (WandMaskField_2174 pm_f@@6))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@10) o2@@30 f_2@@30) (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_4125_4126) ) (!  (=> (select (|PolymorphicMapType_4601_2174_4126#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@10) null (WandMaskField_2174 pm_f@@6))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@10) o2@@31 f_2@@31) (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@31 f_2@@31)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_2174_7803) ) (!  (=> (select (|PolymorphicMapType_4601_2174_7803#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@10) null (WandMaskField_2174 pm_f@@6))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@10) o2@@32 f_2@@32) (select (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@32 f_2@@32)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_2174_9212) ) (!  (=> (select (|PolymorphicMapType_4601_2174_15108#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@10) null (WandMaskField_2174 pm_f@@6))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@10) o2@@33 f_2@@33) (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@33 f_2@@33)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_7802_1189) ) (!  (=> (select (|PolymorphicMapType_4601_7802_1189#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@10) null (WandMaskField_2174 pm_f@@6))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@10) o2@@34 f_2@@34) (select (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@34 f_2@@34)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_7802_53) ) (!  (=> (select (|PolymorphicMapType_4601_7802_53#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@10) null (WandMaskField_2174 pm_f@@6))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@10) o2@@35 f_2@@35) (select (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_7802_4126) ) (!  (=> (select (|PolymorphicMapType_4601_7802_4126#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@10) null (WandMaskField_2174 pm_f@@6))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@10) o2@@36 f_2@@36) (select (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_7802_7803) ) (!  (=> (select (|PolymorphicMapType_4601_7802_7803#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@10) null (WandMaskField_2174 pm_f@@6))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@10) o2@@37 f_2@@37) (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_9207_9212) ) (!  (=> (select (|PolymorphicMapType_4601_7802_16156#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@10) null (WandMaskField_2174 pm_f@@6))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@10) o2@@38 f_2@@38) (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| ExhaleHeap@@6) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (IsWandField_2174_16964 pm_f@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4052) (ExhaleHeap@@7 T@PolymorphicMapType_4052) (Mask@@9 T@PolymorphicMapType_4073) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@11) o_1 $allocated) (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_7802_7803) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_7802_7802 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_7802_7802 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_2174_7803) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4112_4112 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4112_4112 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_2174_1189 v_36)))
(assert  (not (IsWandField_2174_1189 v_36)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4052) (ExhaleHeap@@8 T@PolymorphicMapType_4052) (Mask@@10 T@PolymorphicMapType_4073) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4073) (o_2@@9 T@Ref) (f_4@@9 T@Field_2174_9212) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_2174_24253 f_4@@9))) (not (IsWandField_2174_24269 f_4@@9))) (<= (select (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4073) (o_2@@10 T@Ref) (f_4@@10 T@Field_4125_4126) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_2174_4126 f_4@@10))) (not (IsWandField_2174_4126 f_4@@10))) (<= (select (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4073) (o_2@@11 T@Ref) (f_4@@11 T@Field_4112_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_2174_53 f_4@@11))) (not (IsWandField_2174_53 f_4@@11))) (<= (select (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4073) (o_2@@12 T@Ref) (f_4@@12 T@Field_7439_1189) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2174_1189 f_4@@12))) (not (IsWandField_2174_1189 f_4@@12))) (<= (select (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4073) (o_2@@13 T@Ref) (f_4@@13 T@Field_2174_7803) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2174_13636 f_4@@13))) (not (IsWandField_2174_16964 f_4@@13))) (<= (select (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4073) (o_2@@14 T@Ref) (f_4@@14 T@Field_9207_9212) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2206_23436 f_4@@14))) (not (IsWandField_2206_23452 f_4@@14))) (<= (select (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4073) (o_2@@15 T@Ref) (f_4@@15 T@Field_7802_4126) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2206_4126 f_4@@15))) (not (IsWandField_2206_4126 f_4@@15))) (<= (select (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4073) (o_2@@16 T@Ref) (f_4@@16 T@Field_7802_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2206_53 f_4@@16))) (not (IsWandField_2206_53 f_4@@16))) (<= (select (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4073) (o_2@@17 T@Ref) (f_4@@17 T@Field_7802_1189) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_2206_1189 f_4@@17))) (not (IsWandField_2206_1189 f_4@@17))) (<= (select (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4073) (o_2@@18 T@Ref) (f_4@@18 T@Field_7802_7803) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_2206_2207 f_4@@18))) (not (IsWandField_7802_17321 f_4@@18))) (<= (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4073) (o_2@@19 T@Ref) (f_4@@19 T@Field_9207_9212) ) (! (= (HasDirectPerm_7802_13391 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7802_13391 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4073) (o_2@@20 T@Ref) (f_4@@20 T@Field_7802_7803) ) (! (= (HasDirectPerm_7802_7803 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7802_7803 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4073) (o_2@@21 T@Ref) (f_4@@21 T@Field_7802_4126) ) (! (= (HasDirectPerm_7802_4126 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7802_4126 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4073) (o_2@@22 T@Ref) (f_4@@22 T@Field_7802_53) ) (! (= (HasDirectPerm_7802_53 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7802_53 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4073) (o_2@@23 T@Ref) (f_4@@23 T@Field_7802_1189) ) (! (= (HasDirectPerm_7802_1189 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7802_1189 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_4073) (o_2@@24 T@Ref) (f_4@@24 T@Field_2174_9212) ) (! (= (HasDirectPerm_2174_12230 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2174_12230 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_4073) (o_2@@25 T@Ref) (f_4@@25 T@Field_2174_7803) ) (! (= (HasDirectPerm_2174_7803 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2174_7803 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_4073) (o_2@@26 T@Ref) (f_4@@26 T@Field_4125_4126) ) (! (= (HasDirectPerm_2174_4126 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2174_4126 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_4073) (o_2@@27 T@Ref) (f_4@@27 T@Field_4112_53) ) (! (= (HasDirectPerm_2174_53 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2174_53 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_4073) (o_2@@28 T@Ref) (f_4@@28 T@Field_7439_1189) ) (! (= (HasDirectPerm_2174_1189 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2174_1189 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4052) (ExhaleHeap@@9 T@PolymorphicMapType_4052) (Mask@@31 T@PolymorphicMapType_4073) (o_1@@0 T@Ref) (f_2@@39 T@Field_9207_9212) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_7802_13391 Mask@@31 o_1@@0 f_2@@39) (= (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@13) o_1@@0 f_2@@39) (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| ExhaleHeap@@9) o_1@@0 f_2@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| ExhaleHeap@@9) o_1@@0 f_2@@39))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4052) (ExhaleHeap@@10 T@PolymorphicMapType_4052) (Mask@@32 T@PolymorphicMapType_4073) (o_1@@1 T@Ref) (f_2@@40 T@Field_7802_7803) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_7802_7803 Mask@@32 o_1@@1 f_2@@40) (= (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@14) o_1@@1 f_2@@40) (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| ExhaleHeap@@10) o_1@@1 f_2@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| ExhaleHeap@@10) o_1@@1 f_2@@40))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4052) (ExhaleHeap@@11 T@PolymorphicMapType_4052) (Mask@@33 T@PolymorphicMapType_4073) (o_1@@2 T@Ref) (f_2@@41 T@Field_7802_4126) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_7802_4126 Mask@@33 o_1@@2 f_2@@41) (= (select (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@15) o_1@@2 f_2@@41) (select (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| ExhaleHeap@@11) o_1@@2 f_2@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| ExhaleHeap@@11) o_1@@2 f_2@@41))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4052) (ExhaleHeap@@12 T@PolymorphicMapType_4052) (Mask@@34 T@PolymorphicMapType_4073) (o_1@@3 T@Ref) (f_2@@42 T@Field_7802_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_7802_53 Mask@@34 o_1@@3 f_2@@42) (= (select (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@16) o_1@@3 f_2@@42) (select (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| ExhaleHeap@@12) o_1@@3 f_2@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| ExhaleHeap@@12) o_1@@3 f_2@@42))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4052) (ExhaleHeap@@13 T@PolymorphicMapType_4052) (Mask@@35 T@PolymorphicMapType_4073) (o_1@@4 T@Ref) (f_2@@43 T@Field_7802_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_7802_1189 Mask@@35 o_1@@4 f_2@@43) (= (select (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@17) o_1@@4 f_2@@43) (select (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| ExhaleHeap@@13) o_1@@4 f_2@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| ExhaleHeap@@13) o_1@@4 f_2@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4052) (ExhaleHeap@@14 T@PolymorphicMapType_4052) (Mask@@36 T@PolymorphicMapType_4073) (o_1@@5 T@Ref) (f_2@@44 T@Field_2174_9212) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_2174_12230 Mask@@36 o_1@@5 f_2@@44) (= (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@18) o_1@@5 f_2@@44) (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| ExhaleHeap@@14) o_1@@5 f_2@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| ExhaleHeap@@14) o_1@@5 f_2@@44))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4052) (ExhaleHeap@@15 T@PolymorphicMapType_4052) (Mask@@37 T@PolymorphicMapType_4073) (o_1@@6 T@Ref) (f_2@@45 T@Field_2174_7803) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_2174_7803 Mask@@37 o_1@@6 f_2@@45) (= (select (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@19) o_1@@6 f_2@@45) (select (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| ExhaleHeap@@15) o_1@@6 f_2@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| ExhaleHeap@@15) o_1@@6 f_2@@45))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4052) (ExhaleHeap@@16 T@PolymorphicMapType_4052) (Mask@@38 T@PolymorphicMapType_4073) (o_1@@7 T@Ref) (f_2@@46 T@Field_4125_4126) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_2174_4126 Mask@@38 o_1@@7 f_2@@46) (= (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@20) o_1@@7 f_2@@46) (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| ExhaleHeap@@16) o_1@@7 f_2@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| ExhaleHeap@@16) o_1@@7 f_2@@46))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4052) (ExhaleHeap@@17 T@PolymorphicMapType_4052) (Mask@@39 T@PolymorphicMapType_4073) (o_1@@8 T@Ref) (f_2@@47 T@Field_4112_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_2174_53 Mask@@39 o_1@@8 f_2@@47) (= (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@21) o_1@@8 f_2@@47) (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| ExhaleHeap@@17) o_1@@8 f_2@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| ExhaleHeap@@17) o_1@@8 f_2@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4052) (ExhaleHeap@@18 T@PolymorphicMapType_4052) (Mask@@40 T@PolymorphicMapType_4073) (o_1@@9 T@Ref) (f_2@@48 T@Field_7439_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_2174_1189 Mask@@40 o_1@@9 f_2@@48) (= (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@22) o_1@@9 f_2@@48) (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| ExhaleHeap@@18) o_1@@9 f_2@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| ExhaleHeap@@18) o_1@@9 f_2@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_2174_9212) ) (! (= (select (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_4125_4126) ) (! (= (select (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_4112_53) ) (! (= (select (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_7439_1189) ) (! (= (select (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_2174_7803) ) (! (= (select (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_9207_9212) ) (! (= (select (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_7802_4126) ) (! (= (select (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_7802_53) ) (! (= (select (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_7802_1189) ) (! (= (select (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_7802_7803) ) (! (= (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4052) (Mask@@41 T@PolymorphicMapType_4073) (r_1@@5 T@Ref) ) (!  (=> (and (state Heap@@23 Mask@@41) (< AssumeFunctionsAbove 0)) (= (func Heap@@23 r_1@@5) (= (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@23) r_1@@5 v_36) (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@23) r_1@@5 v_36))))
 :qid |stdinbpl.204:15|
 :skolemid |24|
 :pattern ( (state Heap@@23 Mask@@41) (func Heap@@23 r_1@@5))
 :pattern ( (state Heap@@23 Mask@@41) (|func#triggerStateless| r_1@@5) (|vperm#trigger_2206| Heap@@23 (vperm r_1@@5)))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4073) (SummandMask1 T@PolymorphicMapType_4073) (SummandMask2 T@PolymorphicMapType_4073) (o_2@@39 T@Ref) (f_4@@39 T@Field_2174_9212) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4073) (SummandMask1@@0 T@PolymorphicMapType_4073) (SummandMask2@@0 T@PolymorphicMapType_4073) (o_2@@40 T@Ref) (f_4@@40 T@Field_4125_4126) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4073) (SummandMask1@@1 T@PolymorphicMapType_4073) (SummandMask2@@1 T@PolymorphicMapType_4073) (o_2@@41 T@Ref) (f_4@@41 T@Field_4112_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4073) (SummandMask1@@2 T@PolymorphicMapType_4073) (SummandMask2@@2 T@PolymorphicMapType_4073) (o_2@@42 T@Ref) (f_4@@42 T@Field_7439_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4073) (SummandMask1@@3 T@PolymorphicMapType_4073) (SummandMask2@@3 T@PolymorphicMapType_4073) (o_2@@43 T@Ref) (f_4@@43 T@Field_2174_7803) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4073) (SummandMask1@@4 T@PolymorphicMapType_4073) (SummandMask2@@4 T@PolymorphicMapType_4073) (o_2@@44 T@Ref) (f_4@@44 T@Field_9207_9212) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4073) (SummandMask1@@5 T@PolymorphicMapType_4073) (SummandMask2@@5 T@PolymorphicMapType_4073) (o_2@@45 T@Ref) (f_4@@45 T@Field_7802_4126) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4073) (SummandMask1@@6 T@PolymorphicMapType_4073) (SummandMask2@@6 T@PolymorphicMapType_4073) (o_2@@46 T@Ref) (f_4@@46 T@Field_7802_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_4073) (SummandMask1@@7 T@PolymorphicMapType_4073) (SummandMask2@@7 T@PolymorphicMapType_4073) (o_2@@47 T@Ref) (f_4@@47 T@Field_7802_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_4073) (SummandMask1@@8 T@PolymorphicMapType_4073) (SummandMask2@@8 T@PolymorphicMapType_4073) (o_2@@48 T@Ref) (f_4@@48 T@Field_7802_7803) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4052) (Mask@@42 T@PolymorphicMapType_4073) (r_1@@6 T@Ref) ) (!  (=> (state Heap@@24 Mask@@42) (= (|func'| Heap@@24 r_1@@6) (|func#frame| (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@24) null (vperm r_1@@6)) r_1@@6)))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (state Heap@@24 Mask@@42) (|func'| Heap@@24 r_1@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4052) (r_1@@7 T@Ref) ) (!  (and (= (func Heap@@25 r_1@@7) (|func'| Heap@@25 r_1@@7)) (dummyFunction_1440 (|func#triggerStateless| r_1@@7)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (func Heap@@25 r_1@@7))
)))
(assert (forall ((r_1@@8 T@Ref) ) (! (= (getPredWandId_2206_2207 (vperm r_1@@8)) 0)
 :qid |stdinbpl.322:15|
 :skolemid |29|
 :pattern ( (vperm r_1@@8))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4052) (o T@Ref) (f_3 T@Field_9207_9212) (v T@PolymorphicMapType_4601) ) (! (succHeap Heap@@26 (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@26) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@26) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@26) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@26) (store (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@26) o f_3 v) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@26) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@26) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@26) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@26) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@26) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@26) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@26) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@26) (store (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@26) o f_3 v) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@26) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@26) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@26) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@26) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4052) (o@@0 T@Ref) (f_3@@0 T@Field_7802_7803) (v@@0 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@27) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@27) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@27) (store (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@27) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@27) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@27) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@27) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@27) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@27) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@27) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@27) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@27) (store (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@27) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@27) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@27) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@27) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@27) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@27) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4052) (o@@1 T@Ref) (f_3@@1 T@Field_7802_1189) (v@@1 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@28) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@28) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@28) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@28) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@28) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@28) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@28) (store (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@28) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@28) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@28) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@28) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@28) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@28) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@28) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@28) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@28) (store (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@28) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@28) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4052) (o@@2 T@Ref) (f_3@@2 T@Field_7802_4126) (v@@2 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@29) (store (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@29) o@@2 f_3@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@29) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@29) (store (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@29) o@@2 f_3@@2 v@@2)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4052) (o@@3 T@Ref) (f_3@@3 T@Field_7802_53) (v@@3 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@30) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@30) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@30) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@30) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@30) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@30) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@30) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@30) (store (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@30) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@30) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@30) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@30) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@30) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@30) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@30) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@30) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@30) (store (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@30) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_4052) (o@@4 T@Ref) (f_3@@4 T@Field_2174_9212) (v@@4 T@PolymorphicMapType_4601) ) (! (succHeap Heap@@31 (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@31) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@31) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@31) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@31) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@31) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@31) (store (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@31) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@31) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@31) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@31) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@31) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@31) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@31) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@31) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@31) (store (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@31) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@31) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@31) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_4052) (o@@5 T@Ref) (f_3@@5 T@Field_2174_7803) (v@@5 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@32) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@32) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@32) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@32) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@32) (store (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@32) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@32) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@32) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@32) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@32) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@32) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@32) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@32) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@32) (store (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@32) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@32) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@32) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@32) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_4052) (o@@6 T@Ref) (f_3@@6 T@Field_7439_1189) (v@@6 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@33) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@33) (store (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@33) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@33) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@33) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@33) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@33) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@33) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@33) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@33) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@33) (store (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@33) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@33) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@33) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@33) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@33) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@33) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@33) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_4052) (o@@7 T@Ref) (f_3@@7 T@Field_4125_4126) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@34) (store (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@34) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@34) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@34) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@34) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@34) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@34) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@34) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@34) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@34) (store (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@34) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@34) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@34) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@34) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@34) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@34) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@34) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@34) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_4052) (o@@8 T@Ref) (f_3@@8 T@Field_4112_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_4052 (store (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@35) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4052 (store (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@35) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@35) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@35)))
)))
(assert (forall ((r_1@@9 T@Ref) ) (! (= (PredicateMaskField_2206 (vperm r_1@@9)) (|vperm#sm| r_1@@9))
 :qid |stdinbpl.314:15|
 :skolemid |27|
 :pattern ( (PredicateMaskField_2206 (vperm r_1@@9)))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_4125_4126) (Heap@@36 T@PolymorphicMapType_4052) ) (!  (=> (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@36) o@@9 $allocated) (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@36) (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@36) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@36) o@@9 f))
)))
(assert (forall ((p@@2 T@Field_7802_7803) (v_1@@1 T@FrameType) (q T@Field_7802_7803) (w@@1 T@FrameType) (r T@Field_7802_7803) (u T@FrameType) ) (!  (=> (and (InsidePredicate_7802_7802 p@@2 v_1@@1 q w@@1) (InsidePredicate_7802_7802 q w@@1 r u)) (InsidePredicate_7802_7802 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7802_7802 p@@2 v_1@@1 q w@@1) (InsidePredicate_7802_7802 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_7802_7803) (v_1@@2 T@FrameType) (q@@0 T@Field_7802_7803) (w@@2 T@FrameType) (r@@0 T@Field_2174_7803) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_7802_7802 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7802_4112 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_7802_4112 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7802_7802 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_7802_4112 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_7802_7803) (v_1@@3 T@FrameType) (q@@1 T@Field_2174_7803) (w@@3 T@FrameType) (r@@1 T@Field_7802_7803) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_7802_4112 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4112_7802 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_7802_7802 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7802_4112 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4112_7802 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_7802_7803) (v_1@@4 T@FrameType) (q@@2 T@Field_2174_7803) (w@@4 T@FrameType) (r@@2 T@Field_2174_7803) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_7802_4112 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4112_4112 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_7802_4112 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_7802_4112 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4112_4112 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_2174_7803) (v_1@@5 T@FrameType) (q@@3 T@Field_7802_7803) (w@@5 T@FrameType) (r@@3 T@Field_7802_7803) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4112_7802 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7802_7802 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4112_7802 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4112_7802 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_7802_7802 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_2174_7803) (v_1@@6 T@FrameType) (q@@4 T@Field_7802_7803) (w@@6 T@FrameType) (r@@4 T@Field_2174_7803) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4112_7802 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7802_4112 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4112_4112 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4112_7802 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_7802_4112 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_2174_7803) (v_1@@7 T@FrameType) (q@@5 T@Field_2174_7803) (w@@7 T@FrameType) (r@@5 T@Field_7802_7803) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4112_4112 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4112_7802 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4112_7802 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4112_4112 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4112_7802 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_2174_7803) (v_1@@8 T@FrameType) (q@@6 T@Field_2174_7803) (w@@8 T@FrameType) (r@@6 T@Field_2174_7803) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4112_4112 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4112_4112 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4112_4112 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4112_4112 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4112_4112 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@37 () T@PolymorphicMapType_4052)
(declare-fun r_1@@10 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_4073)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_4073)
(declare-fun Heap@0 () T@PolymorphicMapType_4052)
(declare-fun v1_1@0 () Int)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_4073)
(declare-fun Heap@1 () T@PolymorphicMapType_4052)
(declare-fun Result@0 () Bool)
(set-info :boogie-vc-id |func#definedness|)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (state Heap@@37 ZeroMask) (=> (and (and (and (not AssumePermUpperBound) (select (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@37) r_1@@10 $allocated)) (and (= AssumeFunctionsAbove 0) (= Mask@0 (PolymorphicMapType_4073 (store (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| ZeroMask) null (vperm r_1@@10) (+ (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| ZeroMask) null (vperm r_1@@10)) FullPerm)) (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| ZeroMask) (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| ZeroMask) (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| ZeroMask) (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| ZeroMask) (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| ZeroMask) (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| ZeroMask) (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| ZeroMask) (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| ZeroMask) (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| ZeroMask))))) (and (and (state Heap@@37 Mask@0) (state Heap@@37 Mask@0)) (and (|vperm#trigger_2206| Heap@@37 (vperm r_1@@10)) (= (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@37) null (vperm r_1@@10)) (FrameFragment_1189 (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@37) r_1@@10 v_36)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| Mask@0) null (vperm r_1@@10))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| Mask@0) null (vperm r_1@@10)))) (=> (and (and (not (= r_1@@10 null)) (= UnfoldingMask@0 (PolymorphicMapType_4073 (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| Mask@0) (store (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| Mask@0) r_1@@10 v_36 (+ (select (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| Mask@0) r_1@@10 v_36) FullPerm)) (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| Mask@0) (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| Mask@0) (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| Mask@0) (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| Mask@0) (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| Mask@0) (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| Mask@0) (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| Mask@0) (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| Mask@0)))) (and (state Heap@@37 UnfoldingMask@0) (state Heap@@37 UnfoldingMask@0))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_2174_1189 UnfoldingMask@0 r_1@@10 v_36)) (=> (HasDirectPerm_2174_1189 UnfoldingMask@0 r_1@@10 v_36) (=> (= Heap@0 (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@@37) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@@37) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@@37) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@@37) (store (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@37) null (|vperm#sm| r_1@@10) (PolymorphicMapType_4601 (store (|PolymorphicMapType_4601_2174_1189#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@37) null (|vperm#sm| r_1@@10))) r_1@@10 v_36 true) (|PolymorphicMapType_4601_2174_53#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@37) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_2174_4126#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@37) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_2174_7803#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@37) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_2174_15108#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@37) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_7802_1189#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@37) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_7802_53#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@37) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_7802_4126#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@37) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_7802_7803#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@37) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_7802_16156#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@@37) null (|vperm#sm| r_1@@10))))) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@@37) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@@37) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@@37) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@@37) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@@37))) (=> (and (and (state Heap@0 Mask@0) (= v1_1@0 (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@0) r_1@@10 v_36))) (and (|vperm#trigger_2206| Heap@0 (vperm r_1@@10)) (= (select (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@0) null (vperm r_1@@10)) (FrameFragment_1189 (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@0) r_1@@10 v_36))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| Mask@0) null (vperm r_1@@10))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| Mask@0) null (vperm r_1@@10)))) (=> (and (and (not (= r_1@@10 null)) (= UnfoldingMask@1 (PolymorphicMapType_4073 (|PolymorphicMapType_4073_2206_2207#PolymorphicMapType_4073| Mask@0) (store (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| Mask@0) r_1@@10 v_36 (+ (select (|PolymorphicMapType_4073_2174_1189#PolymorphicMapType_4073| Mask@0) r_1@@10 v_36) FullPerm)) (|PolymorphicMapType_4073_2206_1189#PolymorphicMapType_4073| Mask@0) (|PolymorphicMapType_4073_2206_53#PolymorphicMapType_4073| Mask@0) (|PolymorphicMapType_4073_2206_4126#PolymorphicMapType_4073| Mask@0) (|PolymorphicMapType_4073_2206_21547#PolymorphicMapType_4073| Mask@0) (|PolymorphicMapType_4073_2174_2207#PolymorphicMapType_4073| Mask@0) (|PolymorphicMapType_4073_2174_53#PolymorphicMapType_4073| Mask@0) (|PolymorphicMapType_4073_2174_4126#PolymorphicMapType_4073| Mask@0) (|PolymorphicMapType_4073_2174_21961#PolymorphicMapType_4073| Mask@0)))) (and (state Heap@0 UnfoldingMask@1) (state Heap@0 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_2174_1189 UnfoldingMask@1 r_1@@10 v_36)) (=> (HasDirectPerm_2174_1189 UnfoldingMask@1 r_1@@10 v_36) (=> (and (and (= Heap@1 (PolymorphicMapType_4052 (|PolymorphicMapType_4052_2046_53#PolymorphicMapType_4052| Heap@0) (|PolymorphicMapType_4052_2049_2050#PolymorphicMapType_4052| Heap@0) (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@0) (|PolymorphicMapType_4052_2206_2207#PolymorphicMapType_4052| Heap@0) (store (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@0) null (|vperm#sm| r_1@@10) (PolymorphicMapType_4601 (store (|PolymorphicMapType_4601_2174_1189#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@0) null (|vperm#sm| r_1@@10))) r_1@@10 v_36 true) (|PolymorphicMapType_4601_2174_53#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@0) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_2174_4126#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@0) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_2174_7803#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@0) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_2174_15108#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@0) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_7802_1189#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@0) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_7802_53#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@0) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_7802_4126#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@0) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_7802_7803#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@0) null (|vperm#sm| r_1@@10))) (|PolymorphicMapType_4601_7802_16156#PolymorphicMapType_4601| (select (|PolymorphicMapType_4052_2210_9299#PolymorphicMapType_4052| Heap@0) null (|vperm#sm| r_1@@10))))) (|PolymorphicMapType_4052_2174_7803#PolymorphicMapType_4052| Heap@0) (|PolymorphicMapType_4052_2174_12272#PolymorphicMapType_4052| Heap@0) (|PolymorphicMapType_4052_7802_1189#PolymorphicMapType_4052| Heap@0) (|PolymorphicMapType_4052_7802_53#PolymorphicMapType_4052| Heap@0) (|PolymorphicMapType_4052_7802_4126#PolymorphicMapType_4052| Heap@0))) (state Heap@1 Mask@0)) (and (= Result@0 (= (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@1) r_1@@10 v_36) (select (|PolymorphicMapType_4052_2174_1189#PolymorphicMapType_4052| Heap@1) r_1@@10 v_36))) (= (ControlFlow 0 2) (- 0 1)))) Result@0)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
