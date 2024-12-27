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
(declare-sort T@Field_5905_53 0)
(declare-sort T@Field_5918_5919 0)
(declare-sort T@Field_9621_9622 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12262_12267 0)
(declare-sort T@Field_3068_3106 0)
(declare-sort T@Field_3068_12267 0)
(declare-sort T@Field_3105_3069 0)
(declare-sort T@Field_3105_53 0)
(declare-datatypes ((T@PolymorphicMapType_5866 0)) (((PolymorphicMapType_5866 (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| (Array T@Ref T@Field_9621_9622 Real)) (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| (Array T@Ref T@Field_5918_5919 Real)) (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| (Array T@Ref T@Field_3105_3069 Real)) (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| (Array T@Ref T@Field_3105_53 Real)) (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| (Array T@Ref T@Field_12262_12267 Real)) (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| (Array T@Ref T@Field_3068_3106 Real)) (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| (Array T@Ref T@Field_5905_53 Real)) (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| (Array T@Ref T@Field_3068_12267 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6394 0)) (((PolymorphicMapType_6394 (|PolymorphicMapType_6394_3068_3069#PolymorphicMapType_6394| (Array T@Ref T@Field_5918_5919 Bool)) (|PolymorphicMapType_6394_3068_53#PolymorphicMapType_6394| (Array T@Ref T@Field_5905_53 Bool)) (|PolymorphicMapType_6394_3068_9622#PolymorphicMapType_6394| (Array T@Ref T@Field_3068_3106 Bool)) (|PolymorphicMapType_6394_3068_21224#PolymorphicMapType_6394| (Array T@Ref T@Field_3068_12267 Bool)) (|PolymorphicMapType_6394_9621_3069#PolymorphicMapType_6394| (Array T@Ref T@Field_3105_3069 Bool)) (|PolymorphicMapType_6394_9621_53#PolymorphicMapType_6394| (Array T@Ref T@Field_3105_53 Bool)) (|PolymorphicMapType_6394_9621_9622#PolymorphicMapType_6394| (Array T@Ref T@Field_9621_9622 Bool)) (|PolymorphicMapType_6394_9621_22074#PolymorphicMapType_6394| (Array T@Ref T@Field_12262_12267 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5845 0)) (((PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| (Array T@Ref T@Field_5905_53 Bool)) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| (Array T@Ref T@Field_5918_5919 T@Ref)) (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| (Array T@Ref T@Field_9621_9622 T@FrameType)) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| (Array T@Ref T@Field_12262_12267 T@PolymorphicMapType_6394)) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| (Array T@Ref T@Field_3068_3106 T@FrameType)) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| (Array T@Ref T@Field_3068_12267 T@PolymorphicMapType_6394)) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| (Array T@Ref T@Field_3105_3069 T@Ref)) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| (Array T@Ref T@Field_3105_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_5905_53)
(declare-fun next () T@Field_5918_5919)
(declare-fun succHeap (T@PolymorphicMapType_5845 T@PolymorphicMapType_5845) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5845 T@PolymorphicMapType_5845) Bool)
(declare-fun state (T@PolymorphicMapType_5845 T@PolymorphicMapType_5866) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5866) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5845 T@PolymorphicMapType_5845 T@PolymorphicMapType_5866) Bool)
(declare-fun IsPredicateField_3105_3106 (T@Field_9621_9622) Bool)
(declare-fun HasDirectPerm_3105_3106 (T@PolymorphicMapType_5866 T@Ref T@Field_9621_9622) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3105 (T@Field_9621_9622) T@Field_12262_12267)
(declare-fun IsPredicateField_3068_19953 (T@Field_3068_3106) Bool)
(declare-fun HasDirectPerm_3068_3106 (T@PolymorphicMapType_5866 T@Ref T@Field_3068_3106) Bool)
(declare-fun PredicateMaskField_3068 (T@Field_3068_3106) T@Field_3068_12267)
(declare-fun IsWandField_3105_23239 (T@Field_9621_9622) Bool)
(declare-fun WandMaskField_3105 (T@Field_9621_9622) T@Field_12262_12267)
(declare-fun IsWandField_3068_22882 (T@Field_3068_3106) Bool)
(declare-fun WandMaskField_3068 (T@Field_3068_3106) T@Field_3068_12267)
(declare-fun ZeroPMask () T@PolymorphicMapType_6394)
(declare-fun valid (T@Ref) T@Field_9621_9622)
(declare-fun |size'| (T@PolymorphicMapType_5845 T@Ref) Int)
(declare-fun dummyFunction_1464 (Int) Bool)
(declare-fun |size#triggerStateless| (T@Ref) Int)
(declare-fun |valid#trigger_3105| (T@PolymorphicMapType_5845 T@Field_9621_9622) Bool)
(declare-fun |valid#everUsed_3105| (T@Field_9621_9622) Bool)
(declare-fun size_2 (T@PolymorphicMapType_5845 T@Ref) Int)
(declare-fun |valid#sm| (T@Ref) T@Field_12262_12267)
(declare-fun dummyHeap () T@PolymorphicMapType_5845)
(declare-fun ZeroMask () T@PolymorphicMapType_5866)
(declare-fun InsidePredicate_5905_5905 (T@Field_3068_3106 T@FrameType T@Field_3068_3106 T@FrameType) Bool)
(declare-fun InsidePredicate_3105_3105 (T@Field_9621_9622 T@FrameType T@Field_9621_9622 T@FrameType) Bool)
(declare-fun IsPredicateField_3068_3069 (T@Field_5918_5919) Bool)
(declare-fun IsWandField_3068_3069 (T@Field_5918_5919) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3068_28950 (T@Field_3068_12267) Bool)
(declare-fun IsWandField_3068_28966 (T@Field_3068_12267) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3068_53 (T@Field_5905_53) Bool)
(declare-fun IsWandField_3068_53 (T@Field_5905_53) Bool)
(declare-fun IsPredicateField_3105_28301 (T@Field_12262_12267) Bool)
(declare-fun IsWandField_3105_28317 (T@Field_12262_12267) Bool)
(declare-fun IsPredicateField_3105_53 (T@Field_3105_53) Bool)
(declare-fun IsWandField_3105_53 (T@Field_3105_53) Bool)
(declare-fun IsPredicateField_3105_3069 (T@Field_3105_3069) Bool)
(declare-fun IsWandField_3105_3069 (T@Field_3105_3069) Bool)
(declare-fun HasDirectPerm_3105_19708 (T@PolymorphicMapType_5866 T@Ref T@Field_12262_12267) Bool)
(declare-fun HasDirectPerm_3105_53 (T@PolymorphicMapType_5866 T@Ref T@Field_3105_53) Bool)
(declare-fun HasDirectPerm_3105_3069 (T@PolymorphicMapType_5866 T@Ref T@Field_3105_3069) Bool)
(declare-fun HasDirectPerm_3068_18788 (T@PolymorphicMapType_5866 T@Ref T@Field_3068_12267) Bool)
(declare-fun HasDirectPerm_3068_53 (T@PolymorphicMapType_5866 T@Ref T@Field_5905_53) Bool)
(declare-fun HasDirectPerm_3068_3069 (T@PolymorphicMapType_5866 T@Ref T@Field_5918_5919) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5866 T@PolymorphicMapType_5866 T@PolymorphicMapType_5866) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |size#frame| (T@FrameType T@Ref) Int)
(declare-fun getPredWandId_3105_3106 (T@Field_9621_9622) Int)
(declare-fun |size#trigger| (T@FrameType T@Ref) Bool)
(declare-fun InsidePredicate_5905_3105 (T@Field_3068_3106 T@FrameType T@Field_9621_9622 T@FrameType) Bool)
(declare-fun InsidePredicate_3105_5905 (T@Field_9621_9622 T@FrameType T@Field_3068_3106 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5845) (Heap1 T@PolymorphicMapType_5845) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5845) (Mask T@PolymorphicMapType_5866) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5845) (ExhaleHeap T@PolymorphicMapType_5845) (Mask@@0 T@PolymorphicMapType_5866) (pm_f_5 T@Field_9621_9622) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3105_3106 Mask@@0 null pm_f_5) (IsPredicateField_3105_3106 pm_f_5)) (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_5918_5919) ) (!  (=> (select (|PolymorphicMapType_6394_3068_3069#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@0) null (PredicateMaskField_3105 pm_f_5))) o2_5 f_16) (= (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@0) o2_5 f_16) (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| ExhaleHeap) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| ExhaleHeap) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_5905_53) ) (!  (=> (select (|PolymorphicMapType_6394_3068_53#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@0) null (PredicateMaskField_3105 pm_f_5))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@0) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| ExhaleHeap) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| ExhaleHeap) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_3068_3106) ) (!  (=> (select (|PolymorphicMapType_6394_3068_9622#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@0) null (PredicateMaskField_3105 pm_f_5))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@0) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| ExhaleHeap) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| ExhaleHeap) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_3068_12267) ) (!  (=> (select (|PolymorphicMapType_6394_3068_21224#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@0) null (PredicateMaskField_3105 pm_f_5))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@0) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| ExhaleHeap) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| ExhaleHeap) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_3105_3069) ) (!  (=> (select (|PolymorphicMapType_6394_9621_3069#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@0) null (PredicateMaskField_3105 pm_f_5))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@0) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| ExhaleHeap) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| ExhaleHeap) o2_5@@3 f_16@@3))
))) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_3105_53) ) (!  (=> (select (|PolymorphicMapType_6394_9621_53#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@0) null (PredicateMaskField_3105 pm_f_5))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@0) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| ExhaleHeap) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| ExhaleHeap) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_9621_9622) ) (!  (=> (select (|PolymorphicMapType_6394_9621_9622#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@0) null (PredicateMaskField_3105 pm_f_5))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@0) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| ExhaleHeap) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| ExhaleHeap) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_12262_12267) ) (!  (=> (select (|PolymorphicMapType_6394_9621_22074#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@0) null (PredicateMaskField_3105 pm_f_5))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@0) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| ExhaleHeap) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| ExhaleHeap) o2_5@@6 f_16@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3105_3106 pm_f_5))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5845) (ExhaleHeap@@0 T@PolymorphicMapType_5845) (Mask@@1 T@PolymorphicMapType_5866) (pm_f_5@@0 T@Field_3068_3106) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3068_3106 Mask@@1 null pm_f_5@@0) (IsPredicateField_3068_19953 pm_f_5@@0)) (and (and (and (and (and (and (and (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_5918_5919) ) (!  (=> (select (|PolymorphicMapType_6394_3068_3069#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@1) null (PredicateMaskField_3068 pm_f_5@@0))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@1) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@7 f_16@@7))
)) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_5905_53) ) (!  (=> (select (|PolymorphicMapType_6394_3068_53#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@1) null (PredicateMaskField_3068 pm_f_5@@0))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@1) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@8 f_16@@8))
))) (forall ((o2_5@@9 T@Ref) (f_16@@9 T@Field_3068_3106) ) (!  (=> (select (|PolymorphicMapType_6394_3068_9622#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@1) null (PredicateMaskField_3068 pm_f_5@@0))) o2_5@@9 f_16@@9) (= (select (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@1) o2_5@@9 f_16@@9) (select (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@9 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@9 f_16@@9))
))) (forall ((o2_5@@10 T@Ref) (f_16@@10 T@Field_3068_12267) ) (!  (=> (select (|PolymorphicMapType_6394_3068_21224#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@1) null (PredicateMaskField_3068 pm_f_5@@0))) o2_5@@10 f_16@@10) (= (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@1) o2_5@@10 f_16@@10) (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@10 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@10 f_16@@10))
))) (forall ((o2_5@@11 T@Ref) (f_16@@11 T@Field_3105_3069) ) (!  (=> (select (|PolymorphicMapType_6394_9621_3069#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@1) null (PredicateMaskField_3068 pm_f_5@@0))) o2_5@@11 f_16@@11) (= (select (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@1) o2_5@@11 f_16@@11) (select (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@11 f_16@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@11 f_16@@11))
))) (forall ((o2_5@@12 T@Ref) (f_16@@12 T@Field_3105_53) ) (!  (=> (select (|PolymorphicMapType_6394_9621_53#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@1) null (PredicateMaskField_3068 pm_f_5@@0))) o2_5@@12 f_16@@12) (= (select (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@1) o2_5@@12 f_16@@12) (select (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@12 f_16@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@12 f_16@@12))
))) (forall ((o2_5@@13 T@Ref) (f_16@@13 T@Field_9621_9622) ) (!  (=> (select (|PolymorphicMapType_6394_9621_9622#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@1) null (PredicateMaskField_3068 pm_f_5@@0))) o2_5@@13 f_16@@13) (= (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@1) o2_5@@13 f_16@@13) (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@13 f_16@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@13 f_16@@13))
))) (forall ((o2_5@@14 T@Ref) (f_16@@14 T@Field_12262_12267) ) (!  (=> (select (|PolymorphicMapType_6394_9621_22074#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@1) null (PredicateMaskField_3068 pm_f_5@@0))) o2_5@@14 f_16@@14) (= (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@1) o2_5@@14 f_16@@14) (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@14 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| ExhaleHeap@@0) o2_5@@14 f_16@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3068_19953 pm_f_5@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5845) (ExhaleHeap@@1 T@PolymorphicMapType_5845) (Mask@@2 T@PolymorphicMapType_5866) (pm_f_5@@1 T@Field_9621_9622) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_3105_3106 Mask@@2 null pm_f_5@@1) (IsWandField_3105_23239 pm_f_5@@1)) (and (and (and (and (and (and (and (forall ((o2_5@@15 T@Ref) (f_16@@15 T@Field_5918_5919) ) (!  (=> (select (|PolymorphicMapType_6394_3068_3069#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@2) null (WandMaskField_3105 pm_f_5@@1))) o2_5@@15 f_16@@15) (= (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@2) o2_5@@15 f_16@@15) (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@15 f_16@@15)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@15 f_16@@15))
)) (forall ((o2_5@@16 T@Ref) (f_16@@16 T@Field_5905_53) ) (!  (=> (select (|PolymorphicMapType_6394_3068_53#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@2) null (WandMaskField_3105 pm_f_5@@1))) o2_5@@16 f_16@@16) (= (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@2) o2_5@@16 f_16@@16) (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@16 f_16@@16)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@16 f_16@@16))
))) (forall ((o2_5@@17 T@Ref) (f_16@@17 T@Field_3068_3106) ) (!  (=> (select (|PolymorphicMapType_6394_3068_9622#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@2) null (WandMaskField_3105 pm_f_5@@1))) o2_5@@17 f_16@@17) (= (select (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@2) o2_5@@17 f_16@@17) (select (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@17 f_16@@17)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@17 f_16@@17))
))) (forall ((o2_5@@18 T@Ref) (f_16@@18 T@Field_3068_12267) ) (!  (=> (select (|PolymorphicMapType_6394_3068_21224#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@2) null (WandMaskField_3105 pm_f_5@@1))) o2_5@@18 f_16@@18) (= (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@2) o2_5@@18 f_16@@18) (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@18 f_16@@18)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@18 f_16@@18))
))) (forall ((o2_5@@19 T@Ref) (f_16@@19 T@Field_3105_3069) ) (!  (=> (select (|PolymorphicMapType_6394_9621_3069#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@2) null (WandMaskField_3105 pm_f_5@@1))) o2_5@@19 f_16@@19) (= (select (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@2) o2_5@@19 f_16@@19) (select (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@19 f_16@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@19 f_16@@19))
))) (forall ((o2_5@@20 T@Ref) (f_16@@20 T@Field_3105_53) ) (!  (=> (select (|PolymorphicMapType_6394_9621_53#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@2) null (WandMaskField_3105 pm_f_5@@1))) o2_5@@20 f_16@@20) (= (select (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@2) o2_5@@20 f_16@@20) (select (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@20 f_16@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@20 f_16@@20))
))) (forall ((o2_5@@21 T@Ref) (f_16@@21 T@Field_9621_9622) ) (!  (=> (select (|PolymorphicMapType_6394_9621_9622#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@2) null (WandMaskField_3105 pm_f_5@@1))) o2_5@@21 f_16@@21) (= (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@2) o2_5@@21 f_16@@21) (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@21 f_16@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@21 f_16@@21))
))) (forall ((o2_5@@22 T@Ref) (f_16@@22 T@Field_12262_12267) ) (!  (=> (select (|PolymorphicMapType_6394_9621_22074#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@2) null (WandMaskField_3105 pm_f_5@@1))) o2_5@@22 f_16@@22) (= (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@2) o2_5@@22 f_16@@22) (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@22 f_16@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| ExhaleHeap@@1) o2_5@@22 f_16@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_3105_23239 pm_f_5@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5845) (ExhaleHeap@@2 T@PolymorphicMapType_5845) (Mask@@3 T@PolymorphicMapType_5866) (pm_f_5@@2 T@Field_3068_3106) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3068_3106 Mask@@3 null pm_f_5@@2) (IsWandField_3068_22882 pm_f_5@@2)) (and (and (and (and (and (and (and (forall ((o2_5@@23 T@Ref) (f_16@@23 T@Field_5918_5919) ) (!  (=> (select (|PolymorphicMapType_6394_3068_3069#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@3) null (WandMaskField_3068 pm_f_5@@2))) o2_5@@23 f_16@@23) (= (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@3) o2_5@@23 f_16@@23) (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@23 f_16@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@23 f_16@@23))
)) (forall ((o2_5@@24 T@Ref) (f_16@@24 T@Field_5905_53) ) (!  (=> (select (|PolymorphicMapType_6394_3068_53#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@3) null (WandMaskField_3068 pm_f_5@@2))) o2_5@@24 f_16@@24) (= (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@3) o2_5@@24 f_16@@24) (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@24 f_16@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@24 f_16@@24))
))) (forall ((o2_5@@25 T@Ref) (f_16@@25 T@Field_3068_3106) ) (!  (=> (select (|PolymorphicMapType_6394_3068_9622#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@3) null (WandMaskField_3068 pm_f_5@@2))) o2_5@@25 f_16@@25) (= (select (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@3) o2_5@@25 f_16@@25) (select (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@25 f_16@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@25 f_16@@25))
))) (forall ((o2_5@@26 T@Ref) (f_16@@26 T@Field_3068_12267) ) (!  (=> (select (|PolymorphicMapType_6394_3068_21224#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@3) null (WandMaskField_3068 pm_f_5@@2))) o2_5@@26 f_16@@26) (= (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@3) o2_5@@26 f_16@@26) (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@26 f_16@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@26 f_16@@26))
))) (forall ((o2_5@@27 T@Ref) (f_16@@27 T@Field_3105_3069) ) (!  (=> (select (|PolymorphicMapType_6394_9621_3069#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@3) null (WandMaskField_3068 pm_f_5@@2))) o2_5@@27 f_16@@27) (= (select (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@3) o2_5@@27 f_16@@27) (select (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@27 f_16@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@27 f_16@@27))
))) (forall ((o2_5@@28 T@Ref) (f_16@@28 T@Field_3105_53) ) (!  (=> (select (|PolymorphicMapType_6394_9621_53#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@3) null (WandMaskField_3068 pm_f_5@@2))) o2_5@@28 f_16@@28) (= (select (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@3) o2_5@@28 f_16@@28) (select (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@28 f_16@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@28 f_16@@28))
))) (forall ((o2_5@@29 T@Ref) (f_16@@29 T@Field_9621_9622) ) (!  (=> (select (|PolymorphicMapType_6394_9621_9622#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@3) null (WandMaskField_3068 pm_f_5@@2))) o2_5@@29 f_16@@29) (= (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@3) o2_5@@29 f_16@@29) (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@29 f_16@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@29 f_16@@29))
))) (forall ((o2_5@@30 T@Ref) (f_16@@30 T@Field_12262_12267) ) (!  (=> (select (|PolymorphicMapType_6394_9621_22074#PolymorphicMapType_6394| (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@3) null (WandMaskField_3068 pm_f_5@@2))) o2_5@@30 f_16@@30) (= (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@3) o2_5@@30 f_16@@30) (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@30 f_16@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| ExhaleHeap@@2) o2_5@@30 f_16@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3068_22882 pm_f_5@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5845) (Heap1@@0 T@PolymorphicMapType_5845) (Heap2 T@PolymorphicMapType_5845) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12262_12267) ) (!  (not (select (|PolymorphicMapType_6394_9621_22074#PolymorphicMapType_6394| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6394_9621_22074#PolymorphicMapType_6394| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9621_9622) ) (!  (not (select (|PolymorphicMapType_6394_9621_9622#PolymorphicMapType_6394| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6394_9621_9622#PolymorphicMapType_6394| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_3105_53) ) (!  (not (select (|PolymorphicMapType_6394_9621_53#PolymorphicMapType_6394| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6394_9621_53#PolymorphicMapType_6394| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_3105_3069) ) (!  (not (select (|PolymorphicMapType_6394_9621_3069#PolymorphicMapType_6394| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6394_9621_3069#PolymorphicMapType_6394| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_3068_12267) ) (!  (not (select (|PolymorphicMapType_6394_3068_21224#PolymorphicMapType_6394| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6394_3068_21224#PolymorphicMapType_6394| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3068_3106) ) (!  (not (select (|PolymorphicMapType_6394_3068_9622#PolymorphicMapType_6394| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6394_3068_9622#PolymorphicMapType_6394| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_5905_53) ) (!  (not (select (|PolymorphicMapType_6394_3068_53#PolymorphicMapType_6394| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6394_3068_53#PolymorphicMapType_6394| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_5918_5919) ) (!  (not (select (|PolymorphicMapType_6394_3068_3069#PolymorphicMapType_6394| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6394_3068_3069#PolymorphicMapType_6394| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((list_2 T@Ref) ) (! (IsPredicateField_3105_3106 (valid list_2))
 :qid |stdinbpl.340:15|
 :skolemid |29|
 :pattern ( (valid list_2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5845) (list_2@@0 T@Ref) ) (! (dummyFunction_1464 (|size#triggerStateless| list_2@@0))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (|size'| Heap@@4 list_2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5845) (list_2@@1 T@Ref) ) (! (|valid#everUsed_3105| (valid list_2@@1))
 :qid |stdinbpl.359:15|
 :skolemid |33|
 :pattern ( (|valid#trigger_3105| Heap@@5 (valid list_2@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5845) (list_2@@2 T@Ref) ) (!  (and (= (size_2 Heap@@6 list_2@@2) (|size'| Heap@@6 list_2@@2)) (dummyFunction_1464 (|size#triggerStateless| list_2@@2)))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (size_2 Heap@@6 list_2@@2))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5845) (ExhaleHeap@@3 T@PolymorphicMapType_5845) (Mask@@4 T@PolymorphicMapType_5866) (pm_f_5@@3 T@Field_9621_9622) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_3105_3106 Mask@@4 null pm_f_5@@3) (IsPredicateField_3105_3106 pm_f_5@@3)) (= (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@7) null (PredicateMaskField_3105 pm_f_5@@3)) (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| ExhaleHeap@@3) null (PredicateMaskField_3105 pm_f_5@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3105_3106 pm_f_5@@3) (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| ExhaleHeap@@3) null (PredicateMaskField_3105 pm_f_5@@3)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5845) (ExhaleHeap@@4 T@PolymorphicMapType_5845) (Mask@@5 T@PolymorphicMapType_5866) (pm_f_5@@4 T@Field_3068_3106) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3068_3106 Mask@@5 null pm_f_5@@4) (IsPredicateField_3068_19953 pm_f_5@@4)) (= (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@8) null (PredicateMaskField_3068 pm_f_5@@4)) (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| ExhaleHeap@@4) null (PredicateMaskField_3068 pm_f_5@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3068_19953 pm_f_5@@4) (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| ExhaleHeap@@4) null (PredicateMaskField_3068 pm_f_5@@4)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5845) (ExhaleHeap@@5 T@PolymorphicMapType_5845) (Mask@@6 T@PolymorphicMapType_5866) (pm_f_5@@5 T@Field_9621_9622) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_3105_3106 Mask@@6 null pm_f_5@@5) (IsWandField_3105_23239 pm_f_5@@5)) (= (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@9) null (WandMaskField_3105 pm_f_5@@5)) (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| ExhaleHeap@@5) null (WandMaskField_3105 pm_f_5@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@6) (IsWandField_3105_23239 pm_f_5@@5) (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| ExhaleHeap@@5) null (WandMaskField_3105 pm_f_5@@5)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5845) (ExhaleHeap@@6 T@PolymorphicMapType_5845) (Mask@@7 T@PolymorphicMapType_5866) (pm_f_5@@6 T@Field_3068_3106) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3068_3106 Mask@@7 null pm_f_5@@6) (IsWandField_3068_22882 pm_f_5@@6)) (= (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@10) null (WandMaskField_3068 pm_f_5@@6)) (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| ExhaleHeap@@6) null (WandMaskField_3068 pm_f_5@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@7) (IsWandField_3068_22882 pm_f_5@@6) (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| ExhaleHeap@@6) null (WandMaskField_3068 pm_f_5@@6)))
)))
(assert (forall ((list_2@@3 T@Ref) (list2_1 T@Ref) ) (!  (=> (= (valid list_2@@3) (valid list2_1)) (= list_2@@3 list2_1))
 :qid |stdinbpl.350:15|
 :skolemid |31|
 :pattern ( (valid list_2@@3) (valid list2_1))
)))
(assert (forall ((list_2@@4 T@Ref) (list2_1@@0 T@Ref) ) (!  (=> (= (|valid#sm| list_2@@4) (|valid#sm| list2_1@@0)) (= list_2@@4 list2_1@@0))
 :qid |stdinbpl.354:15|
 :skolemid |32|
 :pattern ( (|valid#sm| list_2@@4) (|valid#sm| list2_1@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5845) (ExhaleHeap@@7 T@PolymorphicMapType_5845) (Mask@@8 T@PolymorphicMapType_5866) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@11) o_12 $allocated) (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_3068_3106) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5905_5905 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5905_5905 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9621_9622) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3105_3105 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3105_3105 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3068_3069 next)))
(assert  (not (IsWandField_3068_3069 next)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5845) (ExhaleHeap@@8 T@PolymorphicMapType_5845) (Mask@@9 T@PolymorphicMapType_5866) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5866) (o_2@@7 T@Ref) (f_4@@7 T@Field_3068_12267) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3068_28950 f_4@@7))) (not (IsWandField_3068_28966 f_4@@7))) (<= (select (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5866) (o_2@@8 T@Ref) (f_4@@8 T@Field_5905_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3068_53 f_4@@8))) (not (IsWandField_3068_53 f_4@@8))) (<= (select (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5866) (o_2@@9 T@Ref) (f_4@@9 T@Field_5918_5919) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3068_3069 f_4@@9))) (not (IsWandField_3068_3069 f_4@@9))) (<= (select (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5866) (o_2@@10 T@Ref) (f_4@@10 T@Field_3068_3106) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3068_19953 f_4@@10))) (not (IsWandField_3068_22882 f_4@@10))) (<= (select (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5866) (o_2@@11 T@Ref) (f_4@@11 T@Field_12262_12267) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3105_28301 f_4@@11))) (not (IsWandField_3105_28317 f_4@@11))) (<= (select (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5866) (o_2@@12 T@Ref) (f_4@@12 T@Field_3105_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3105_53 f_4@@12))) (not (IsWandField_3105_53 f_4@@12))) (<= (select (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5866) (o_2@@13 T@Ref) (f_4@@13 T@Field_3105_3069) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3105_3069 f_4@@13))) (not (IsWandField_3105_3069 f_4@@13))) (<= (select (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5866) (o_2@@14 T@Ref) (f_4@@14 T@Field_9621_9622) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3105_3106 f_4@@14))) (not (IsWandField_3105_23239 f_4@@14))) (<= (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5866) (o_2@@15 T@Ref) (f_4@@15 T@Field_12262_12267) ) (! (= (HasDirectPerm_3105_19708 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3105_19708 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5866) (o_2@@16 T@Ref) (f_4@@16 T@Field_3105_53) ) (! (= (HasDirectPerm_3105_53 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3105_53 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_5866) (o_2@@17 T@Ref) (f_4@@17 T@Field_9621_9622) ) (! (= (HasDirectPerm_3105_3106 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3105_3106 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_5866) (o_2@@18 T@Ref) (f_4@@18 T@Field_3105_3069) ) (! (= (HasDirectPerm_3105_3069 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3105_3069 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_5866) (o_2@@19 T@Ref) (f_4@@19 T@Field_3068_12267) ) (! (= (HasDirectPerm_3068_18788 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3068_18788 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_5866) (o_2@@20 T@Ref) (f_4@@20 T@Field_5905_53) ) (! (= (HasDirectPerm_3068_53 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3068_53 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_5866) (o_2@@21 T@Ref) (f_4@@21 T@Field_3068_3106) ) (! (= (HasDirectPerm_3068_3106 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3068_3106 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_5866) (o_2@@22 T@Ref) (f_4@@22 T@Field_5918_5919) ) (! (= (HasDirectPerm_3068_3069 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3068_3069 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5845) (ExhaleHeap@@9 T@PolymorphicMapType_5845) (Mask@@26 T@PolymorphicMapType_5866) (o_12@@0 T@Ref) (f_16@@31 T@Field_12262_12267) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_3105_19708 Mask@@26 o_12@@0 f_16@@31) (= (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@13) o_12@@0 f_16@@31) (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| ExhaleHeap@@9) o_12@@0 f_16@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| ExhaleHeap@@9) o_12@@0 f_16@@31))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5845) (ExhaleHeap@@10 T@PolymorphicMapType_5845) (Mask@@27 T@PolymorphicMapType_5866) (o_12@@1 T@Ref) (f_16@@32 T@Field_3105_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_3105_53 Mask@@27 o_12@@1 f_16@@32) (= (select (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@14) o_12@@1 f_16@@32) (select (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| ExhaleHeap@@10) o_12@@1 f_16@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| ExhaleHeap@@10) o_12@@1 f_16@@32))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5845) (ExhaleHeap@@11 T@PolymorphicMapType_5845) (Mask@@28 T@PolymorphicMapType_5866) (o_12@@2 T@Ref) (f_16@@33 T@Field_9621_9622) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_3105_3106 Mask@@28 o_12@@2 f_16@@33) (= (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@15) o_12@@2 f_16@@33) (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| ExhaleHeap@@11) o_12@@2 f_16@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| ExhaleHeap@@11) o_12@@2 f_16@@33))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5845) (ExhaleHeap@@12 T@PolymorphicMapType_5845) (Mask@@29 T@PolymorphicMapType_5866) (o_12@@3 T@Ref) (f_16@@34 T@Field_3105_3069) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_3105_3069 Mask@@29 o_12@@3 f_16@@34) (= (select (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@16) o_12@@3 f_16@@34) (select (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| ExhaleHeap@@12) o_12@@3 f_16@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| ExhaleHeap@@12) o_12@@3 f_16@@34))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5845) (ExhaleHeap@@13 T@PolymorphicMapType_5845) (Mask@@30 T@PolymorphicMapType_5866) (o_12@@4 T@Ref) (f_16@@35 T@Field_3068_12267) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_3068_18788 Mask@@30 o_12@@4 f_16@@35) (= (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@17) o_12@@4 f_16@@35) (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| ExhaleHeap@@13) o_12@@4 f_16@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| ExhaleHeap@@13) o_12@@4 f_16@@35))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5845) (ExhaleHeap@@14 T@PolymorphicMapType_5845) (Mask@@31 T@PolymorphicMapType_5866) (o_12@@5 T@Ref) (f_16@@36 T@Field_5905_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_3068_53 Mask@@31 o_12@@5 f_16@@36) (= (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@18) o_12@@5 f_16@@36) (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| ExhaleHeap@@14) o_12@@5 f_16@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| ExhaleHeap@@14) o_12@@5 f_16@@36))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5845) (ExhaleHeap@@15 T@PolymorphicMapType_5845) (Mask@@32 T@PolymorphicMapType_5866) (o_12@@6 T@Ref) (f_16@@37 T@Field_3068_3106) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_3068_3106 Mask@@32 o_12@@6 f_16@@37) (= (select (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@19) o_12@@6 f_16@@37) (select (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| ExhaleHeap@@15) o_12@@6 f_16@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| ExhaleHeap@@15) o_12@@6 f_16@@37))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5845) (ExhaleHeap@@16 T@PolymorphicMapType_5845) (Mask@@33 T@PolymorphicMapType_5866) (o_12@@7 T@Ref) (f_16@@38 T@Field_5918_5919) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_3068_3069 Mask@@33 o_12@@7 f_16@@38) (= (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@20) o_12@@7 f_16@@38) (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| ExhaleHeap@@16) o_12@@7 f_16@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| ExhaleHeap@@16) o_12@@7 f_16@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_3068_12267) ) (! (= (select (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_5905_53) ) (! (= (select (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_5918_5919) ) (! (= (select (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_3068_3106) ) (! (= (select (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_12262_12267) ) (! (= (select (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_3105_53) ) (! (= (select (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_3105_3069) ) (! (= (select (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_9621_9622) ) (! (= (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5866) (SummandMask1 T@PolymorphicMapType_5866) (SummandMask2 T@PolymorphicMapType_5866) (o_2@@31 T@Ref) (f_4@@31 T@Field_3068_12267) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5866) (SummandMask1@@0 T@PolymorphicMapType_5866) (SummandMask2@@0 T@PolymorphicMapType_5866) (o_2@@32 T@Ref) (f_4@@32 T@Field_5905_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5866) (SummandMask1@@1 T@PolymorphicMapType_5866) (SummandMask2@@1 T@PolymorphicMapType_5866) (o_2@@33 T@Ref) (f_4@@33 T@Field_5918_5919) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5866) (SummandMask1@@2 T@PolymorphicMapType_5866) (SummandMask2@@2 T@PolymorphicMapType_5866) (o_2@@34 T@Ref) (f_4@@34 T@Field_3068_3106) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5866) (SummandMask1@@3 T@PolymorphicMapType_5866) (SummandMask2@@3 T@PolymorphicMapType_5866) (o_2@@35 T@Ref) (f_4@@35 T@Field_12262_12267) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_5866) (SummandMask1@@4 T@PolymorphicMapType_5866) (SummandMask2@@4 T@PolymorphicMapType_5866) (o_2@@36 T@Ref) (f_4@@36 T@Field_3105_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_5866) (SummandMask1@@5 T@PolymorphicMapType_5866) (SummandMask2@@5 T@PolymorphicMapType_5866) (o_2@@37 T@Ref) (f_4@@37 T@Field_3105_3069) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_5866) (SummandMask1@@6 T@PolymorphicMapType_5866) (SummandMask2@@6 T@PolymorphicMapType_5866) (o_2@@38 T@Ref) (f_4@@38 T@Field_9621_9622) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5845) (Mask@@34 T@PolymorphicMapType_5866) (list_2@@5 T@Ref) ) (!  (=> (and (state Heap@@21 Mask@@34) (< AssumeFunctionsAbove 0)) (= (size_2 Heap@@21 list_2@@5) (ite (= (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@21) list_2@@5 next) null) 1 (+ 1 (|size'| Heap@@21 (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@21) list_2@@5 next))))))
 :qid |stdinbpl.204:15|
 :skolemid |24|
 :pattern ( (state Heap@@21 Mask@@34) (size_2 Heap@@21 list_2@@5))
 :pattern ( (state Heap@@21 Mask@@34) (|size#triggerStateless| list_2@@5) (|valid#trigger_3105| Heap@@21 (valid list_2@@5)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5845) (Mask@@35 T@PolymorphicMapType_5866) (list_2@@6 T@Ref) ) (!  (=> (state Heap@@22 Mask@@35) (= (|size'| Heap@@22 list_2@@6) (|size#frame| (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@22) null (valid list_2@@6)) list_2@@6)))
 :qid |stdinbpl.211:15|
 :skolemid |25|
 :pattern ( (state Heap@@22 Mask@@35) (|size'| Heap@@22 list_2@@6))
 :pattern ( (state Heap@@22 Mask@@35) (|size#triggerStateless| list_2@@6) (|valid#trigger_3105| Heap@@22 (valid list_2@@6)))
)))
(assert (forall ((list_2@@7 T@Ref) ) (! (= (getPredWandId_3105_3106 (valid list_2@@7)) 0)
 :qid |stdinbpl.344:15|
 :skolemid |30|
 :pattern ( (valid list_2@@7))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5845) (Mask@@36 T@PolymorphicMapType_5866) (list_2@@8 T@Ref) ) (!  (=> (and (state Heap@@23 Mask@@36) (or (< AssumeFunctionsAbove 0) (|size#trigger| (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@23) null (valid list_2@@8)) list_2@@8))) (>= (|size'| Heap@@23 list_2@@8) 1))
 :qid |stdinbpl.217:15|
 :skolemid |26|
 :pattern ( (state Heap@@23 Mask@@36) (|size'| Heap@@23 list_2@@8))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5845) (o_11 T@Ref) (f_17 T@Field_12262_12267) (v T@PolymorphicMapType_6394) ) (! (succHeap Heap@@24 (PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@24) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@24) (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@24) (store (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@24) o_11 f_17 v) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@24) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@24) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@24) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@24) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@24) (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@24) (store (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@24) o_11 f_17 v) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@24) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@24) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@24) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5845) (o_11@@0 T@Ref) (f_17@@0 T@Field_9621_9622) (v@@0 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@25) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@25) (store (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@25) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@25) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@25) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@25) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@25) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@25) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@25) (store (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@25) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@25) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@25) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@25) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@25) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5845) (o_11@@1 T@Ref) (f_17@@1 T@Field_3105_3069) (v@@1 T@Ref) ) (! (succHeap Heap@@26 (PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@26) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@26) (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@26) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@26) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@26) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@26) (store (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@26) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@26) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@26) (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@26) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@26) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@26) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@26) (store (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@26) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5845) (o_11@@2 T@Ref) (f_17@@2 T@Field_3105_53) (v@@2 Bool) ) (! (succHeap Heap@@27 (PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@27) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@27) (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@27) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@27) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@27) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@27) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@27) (store (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@27) o_11@@2 f_17@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@27) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@27) (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@27) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@27) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@27) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@27) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@27) (store (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@27) o_11@@2 f_17@@2 v@@2)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5845) (o_11@@3 T@Ref) (f_17@@3 T@Field_3068_12267) (v@@3 T@PolymorphicMapType_6394) ) (! (succHeap Heap@@28 (PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@28) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@28) (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@28) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@28) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@28) (store (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@28) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@28) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@28) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@28) (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@28) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@28) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@28) (store (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@28) o_11@@3 f_17@@3 v@@3) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@28) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5845) (o_11@@4 T@Ref) (f_17@@4 T@Field_3068_3106) (v@@4 T@FrameType) ) (! (succHeap Heap@@29 (PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@29) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@29) (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@29) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@29) (store (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@29) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@29) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@29) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@29) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@29) (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@29) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@29) (store (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@29) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@29) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@29) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5845) (o_11@@5 T@Ref) (f_17@@5 T@Field_5918_5919) (v@@5 T@Ref) ) (! (succHeap Heap@@30 (PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@30) (store (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@30) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@30) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@30) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@30) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@30) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@30) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@30) (store (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@30) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@30) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@30) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@30) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@30) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@30) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5845) (o_11@@6 T@Ref) (f_17@@6 T@Field_5905_53) (v@@6 Bool) ) (! (succHeap Heap@@31 (PolymorphicMapType_5845 (store (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@31) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@31) (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@31) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@31) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@31) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@31) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@31) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5845 (store (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@31) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@31) (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@31) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@31) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@31) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@31) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@31) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@31)))
)))
(assert (forall ((list_2@@9 T@Ref) ) (! (= (PredicateMaskField_3105 (valid list_2@@9)) (|valid#sm| list_2@@9))
 :qid |stdinbpl.336:15|
 :skolemid |28|
 :pattern ( (PredicateMaskField_3105 (valid list_2@@9)))
)))
(assert (forall ((o_11@@7 T@Ref) (f_10 T@Field_5918_5919) (Heap@@32 T@PolymorphicMapType_5845) ) (!  (=> (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@32) o_11@@7 $allocated) (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@32) (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@32) o_11@@7 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@32) o_11@@7 f_10))
)))
(assert (forall ((p@@2 T@Field_3068_3106) (v_1@@1 T@FrameType) (q T@Field_3068_3106) (w@@1 T@FrameType) (r T@Field_3068_3106) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5905_5905 p@@2 v_1@@1 q w@@1) (InsidePredicate_5905_5905 q w@@1 r u)) (InsidePredicate_5905_5905 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5905_5905 p@@2 v_1@@1 q w@@1) (InsidePredicate_5905_5905 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_3068_3106) (v_1@@2 T@FrameType) (q@@0 T@Field_3068_3106) (w@@2 T@FrameType) (r@@0 T@Field_9621_9622) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_5905_5905 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_5905_3105 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_5905_3105 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5905_5905 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_5905_3105 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_3068_3106) (v_1@@3 T@FrameType) (q@@1 T@Field_9621_9622) (w@@3 T@FrameType) (r@@1 T@Field_3068_3106) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_5905_3105 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3105_5905 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_5905_5905 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5905_3105 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3105_5905 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_3068_3106) (v_1@@4 T@FrameType) (q@@2 T@Field_9621_9622) (w@@4 T@FrameType) (r@@2 T@Field_9621_9622) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_5905_3105 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3105_3105 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_5905_3105 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5905_3105 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3105_3105 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_9621_9622) (v_1@@5 T@FrameType) (q@@3 T@Field_3068_3106) (w@@5 T@FrameType) (r@@3 T@Field_3068_3106) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_3105_5905 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_5905_5905 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_3105_5905 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3105_5905 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_5905_5905 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_9621_9622) (v_1@@6 T@FrameType) (q@@4 T@Field_3068_3106) (w@@6 T@FrameType) (r@@4 T@Field_9621_9622) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_3105_5905 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_5905_3105 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_3105_3105 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3105_5905 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_5905_3105 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_9621_9622) (v_1@@7 T@FrameType) (q@@5 T@Field_9621_9622) (w@@7 T@FrameType) (r@@5 T@Field_3068_3106) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_3105_3105 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3105_5905 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_3105_5905 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3105_3105 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3105_5905 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_9621_9622) (v_1@@8 T@FrameType) (q@@6 T@Field_9621_9622) (w@@8 T@FrameType) (r@@6 T@Field_9621_9622) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_3105_3105 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3105_3105 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_3105_3105 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3105_3105 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3105_3105 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@1 () T@PolymorphicMapType_5845)
(declare-fun Mask@4 () T@PolymorphicMapType_5866)
(declare-fun list_2@@10 () T@Ref)
(declare-fun Mask@2 () T@PolymorphicMapType_5866)
(declare-fun wildcard@3 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_5866)
(declare-fun wildcard@2 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_5866)
(declare-fun Heap@@33 () T@PolymorphicMapType_5845)
(declare-fun Heap@0 () T@PolymorphicMapType_5845)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_5866)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3069 (T@Ref) T@FrameType)
(declare-fun FrameFragment_3106 (T@FrameType) T@FrameType)
(declare-fun wildcard@1 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id testSuccess2)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon4_correct  (=> (state Heap@1 Mask@4) (=> (and (state Heap@1 Mask@4) (= (ControlFlow 0 2) (- 0 1))) (not (= list_2@@10 null))))))
(let ((anon6_Else_correct  (=> (= (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@1) list_2@@10 next) null) (=> (and (= Mask@4 Mask@2) (= (ControlFlow 0 4) 2)) anon4_correct))))
(let ((anon6_Then_correct  (=> (not (= (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@1) list_2@@10 next) null)) (=> (and (> wildcard@3 NoPerm) (= Mask@3 (PolymorphicMapType_5866 (store (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| Mask@2) null (valid (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@1) list_2@@10 next)) (+ (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| Mask@2) null (valid (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@1) list_2@@10 next))) wildcard@3)) (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| Mask@2) (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| Mask@2) (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| Mask@2) (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| Mask@2) (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| Mask@2) (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| Mask@2) (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| Mask@2)))) (=> (and (and (InsidePredicate_3105_3105 (valid list_2@@10) (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@1) null (valid list_2@@10)) (valid (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@1) list_2@@10 next)) (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@1) null (valid (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@1) list_2@@10 next)))) (state Heap@1 Mask@3)) (and (= Mask@4 Mask@3) (= (ControlFlow 0 3) 2))) anon4_correct)))))
(let ((anon2_correct  (=> (and (and (> wildcard@2 NoPerm) (not (= list_2@@10 null))) (and (= Mask@2 (PolymorphicMapType_5866 (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| Mask@1) (store (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| Mask@1) list_2@@10 next (+ (select (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| Mask@1) list_2@@10 next) wildcard@2)) (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| Mask@1) (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| Mask@1) (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| Mask@1) (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| Mask@1) (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| Mask@1) (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| Mask@1))) (state Heap@1 Mask@2))) (and (=> (= (ControlFlow 0 5) 3) anon6_Then_correct) (=> (= (ControlFlow 0 5) 4) anon6_Else_correct)))))
(let ((anon5_Else_correct  (=> (HasDirectPerm_3105_3106 Mask@1 null (valid list_2@@10)) (=> (and (= Heap@1 Heap@@33) (= (ControlFlow 0 7) 5)) anon2_correct))))
(let ((anon5_Then_correct  (=> (and (and (not (HasDirectPerm_3105_3106 Mask@1 null (valid list_2@@10))) (= Heap@0 (PolymorphicMapType_5845 (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@33) (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@33) (store (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@33) null (valid list_2@@10) newVersion@0) (|PolymorphicMapType_5845_3109_12354#PolymorphicMapType_5845| Heap@@33) (|PolymorphicMapType_5845_3068_3106#PolymorphicMapType_5845| Heap@@33) (|PolymorphicMapType_5845_3068_18830#PolymorphicMapType_5845| Heap@@33) (|PolymorphicMapType_5845_3105_3069#PolymorphicMapType_5845| Heap@@33) (|PolymorphicMapType_5845_3105_53#PolymorphicMapType_5845| Heap@@33)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 6) 5))) anon2_correct)))
(let ((anon0_correct  (=> (and (state Heap@@33 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_5845_2940_53#PolymorphicMapType_5845| Heap@@33) list_2@@10 $allocated)) (and (> wildcard@0 NoPerm) (= Mask@0 (PolymorphicMapType_5866 (store (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| ZeroMask) null (valid list_2@@10) (+ (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| ZeroMask) null (valid list_2@@10)) wildcard@0)) (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| ZeroMask) (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| ZeroMask) (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| ZeroMask) (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| ZeroMask) (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| ZeroMask) (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| ZeroMask) (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| ZeroMask))))) (and (and (state Heap@@33 Mask@0) (state Heap@@33 Mask@0)) (and (|valid#trigger_3105| Heap@@33 (valid list_2@@10)) (= (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@33) null (valid list_2@@10)) (CombineFrames (FrameFragment_3069 (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@33) list_2@@10 next)) (FrameFragment_3106 (ite (not (= (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@33) list_2@@10 next) null)) (select (|PolymorphicMapType_5845_3105_3106#PolymorphicMapType_5845| Heap@@33) null (valid (select (|PolymorphicMapType_5845_2943_2944#PolymorphicMapType_5845| Heap@@33) list_2@@10 next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (> (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| Mask@0) null (valid list_2@@10)) NoPerm)) (=> (> (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| Mask@0) null (valid list_2@@10)) NoPerm) (=> (> wildcard@1 NoPerm) (=> (and (< wildcard@1 (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| Mask@0) null (valid list_2@@10))) (= Mask@1 (PolymorphicMapType_5866 (store (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| Mask@0) null (valid list_2@@10) (- (select (|PolymorphicMapType_5866_3105_3106#PolymorphicMapType_5866| Mask@0) null (valid list_2@@10)) wildcard@1)) (|PolymorphicMapType_5866_3068_3069#PolymorphicMapType_5866| Mask@0) (|PolymorphicMapType_5866_3105_3069#PolymorphicMapType_5866| Mask@0) (|PolymorphicMapType_5866_3105_53#PolymorphicMapType_5866| Mask@0) (|PolymorphicMapType_5866_3105_26795#PolymorphicMapType_5866| Mask@0) (|PolymorphicMapType_5866_3068_3106#PolymorphicMapType_5866| Mask@0) (|PolymorphicMapType_5866_3068_53#PolymorphicMapType_5866| Mask@0) (|PolymorphicMapType_5866_3068_27126#PolymorphicMapType_5866| Mask@0)))) (and (=> (= (ControlFlow 0 8) 6) anon5_Then_correct) (=> (= (ControlFlow 0 8) 7) anon5_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 10) 8)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
