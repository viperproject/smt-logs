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
(declare-sort T@Field_6569_53 0)
(declare-sort T@Field_6582_6583 0)
(declare-sort T@Field_9942_9943 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_9895_1186 0)
(declare-sort T@Field_9955_9960 0)
(declare-sort T@Field_3298_9943 0)
(declare-sort T@Field_3298_9960 0)
(declare-sort T@Field_9942_1186 0)
(declare-sort T@Field_9942_53 0)
(declare-sort T@Field_9942_6583 0)
(declare-datatypes ((T@PolymorphicMapType_6530 0)) (((PolymorphicMapType_6530 (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| (Array T@Ref T@Field_9895_1186 Real)) (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| (Array T@Ref T@Field_9942_9943 Real)) (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| (Array T@Ref T@Field_3298_9943 Real)) (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| (Array T@Ref T@Field_6569_53 Real)) (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| (Array T@Ref T@Field_6582_6583 Real)) (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| (Array T@Ref T@Field_3298_9960 Real)) (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| (Array T@Ref T@Field_9942_1186 Real)) (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| (Array T@Ref T@Field_9942_53 Real)) (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| (Array T@Ref T@Field_9942_6583 Real)) (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| (Array T@Ref T@Field_9955_9960 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7058 0)) (((PolymorphicMapType_7058 (|PolymorphicMapType_7058_3298_1186#PolymorphicMapType_7058| (Array T@Ref T@Field_9895_1186 Bool)) (|PolymorphicMapType_7058_3298_53#PolymorphicMapType_7058| (Array T@Ref T@Field_6569_53 Bool)) (|PolymorphicMapType_7058_3298_6583#PolymorphicMapType_7058| (Array T@Ref T@Field_6582_6583 Bool)) (|PolymorphicMapType_7058_3298_9943#PolymorphicMapType_7058| (Array T@Ref T@Field_3298_9943 Bool)) (|PolymorphicMapType_7058_3298_24266#PolymorphicMapType_7058| (Array T@Ref T@Field_3298_9960 Bool)) (|PolymorphicMapType_7058_9942_1186#PolymorphicMapType_7058| (Array T@Ref T@Field_9942_1186 Bool)) (|PolymorphicMapType_7058_9942_53#PolymorphicMapType_7058| (Array T@Ref T@Field_9942_53 Bool)) (|PolymorphicMapType_7058_9942_6583#PolymorphicMapType_7058| (Array T@Ref T@Field_9942_6583 Bool)) (|PolymorphicMapType_7058_9942_9943#PolymorphicMapType_7058| (Array T@Ref T@Field_9942_9943 Bool)) (|PolymorphicMapType_7058_9942_25314#PolymorphicMapType_7058| (Array T@Ref T@Field_9955_9960 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6509 0)) (((PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| (Array T@Ref T@Field_6569_53 Bool)) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| (Array T@Ref T@Field_6582_6583 T@Ref)) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| (Array T@Ref T@Field_9942_9943 T@FrameType)) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| (Array T@Ref T@Field_9895_1186 Int)) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| (Array T@Ref T@Field_9955_9960 T@PolymorphicMapType_7058)) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| (Array T@Ref T@Field_3298_9943 T@FrameType)) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| (Array T@Ref T@Field_3298_9960 T@PolymorphicMapType_7058)) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| (Array T@Ref T@Field_9942_1186 Int)) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| (Array T@Ref T@Field_9942_53 Bool)) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| (Array T@Ref T@Field_9942_6583 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_6569_53)
(declare-fun x_42 () T@Field_9895_1186)
(declare-fun succHeap (T@PolymorphicMapType_6509 T@PolymorphicMapType_6509) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6509 T@PolymorphicMapType_6509) Bool)
(declare-fun state (T@PolymorphicMapType_6509 T@PolymorphicMapType_6530) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6530) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7058)
(declare-fun p_2 (T@Ref) T@Field_9942_9943)
(declare-fun IsPredicateField_3301_3302 (T@Field_9942_9943) Bool)
(declare-fun |p#trigger_3301| (T@PolymorphicMapType_6509 T@Field_9942_9943) Bool)
(declare-fun |p#everUsed_3301| (T@Field_9942_9943) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6509 T@PolymorphicMapType_6509 T@PolymorphicMapType_6530) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3301 (T@Field_9942_9943) T@Field_9955_9960)
(declare-fun HasDirectPerm_9942_9943 (T@PolymorphicMapType_6530 T@Ref T@Field_9942_9943) Bool)
(declare-fun IsPredicateField_3298_22794 (T@Field_3298_9943) Bool)
(declare-fun PredicateMaskField_3298 (T@Field_3298_9943) T@Field_3298_9960)
(declare-fun HasDirectPerm_3298_9943 (T@PolymorphicMapType_6530 T@Ref T@Field_3298_9943) Bool)
(declare-fun IsWandField_9942_26479 (T@Field_9942_9943) Bool)
(declare-fun WandMaskField_9942 (T@Field_9942_9943) T@Field_9955_9960)
(declare-fun IsWandField_3298_26122 (T@Field_3298_9943) Bool)
(declare-fun WandMaskField_3298 (T@Field_3298_9943) T@Field_3298_9960)
(declare-fun |p#sm| (T@Ref) T@Field_9955_9960)
(declare-fun dummyHeap () T@PolymorphicMapType_6509)
(declare-fun ZeroMask () T@PolymorphicMapType_6530)
(declare-fun InsidePredicate_9942_9942 (T@Field_9942_9943 T@FrameType T@Field_9942_9943 T@FrameType) Bool)
(declare-fun InsidePredicate_6569_6569 (T@Field_3298_9943 T@FrameType T@Field_3298_9943 T@FrameType) Bool)
(declare-fun IsPredicateField_3298_1186 (T@Field_9895_1186) Bool)
(declare-fun IsWandField_3298_1186 (T@Field_9895_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3301_33411 (T@Field_9955_9960) Bool)
(declare-fun IsWandField_3301_33427 (T@Field_9955_9960) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3301_6583 (T@Field_9942_6583) Bool)
(declare-fun IsWandField_3301_6583 (T@Field_9942_6583) Bool)
(declare-fun IsPredicateField_3301_53 (T@Field_9942_53) Bool)
(declare-fun IsWandField_3301_53 (T@Field_9942_53) Bool)
(declare-fun IsPredicateField_3301_1186 (T@Field_9942_1186) Bool)
(declare-fun IsWandField_3301_1186 (T@Field_9942_1186) Bool)
(declare-fun IsPredicateField_3298_32580 (T@Field_3298_9960) Bool)
(declare-fun IsWandField_3298_32596 (T@Field_3298_9960) Bool)
(declare-fun IsPredicateField_3298_6583 (T@Field_6582_6583) Bool)
(declare-fun IsWandField_3298_6583 (T@Field_6582_6583) Bool)
(declare-fun IsPredicateField_3298_53 (T@Field_6569_53) Bool)
(declare-fun IsWandField_3298_53 (T@Field_6569_53) Bool)
(declare-fun HasDirectPerm_9942_22549 (T@PolymorphicMapType_6530 T@Ref T@Field_9955_9960) Bool)
(declare-fun HasDirectPerm_9942_6583 (T@PolymorphicMapType_6530 T@Ref T@Field_9942_6583) Bool)
(declare-fun HasDirectPerm_9942_53 (T@PolymorphicMapType_6530 T@Ref T@Field_9942_53) Bool)
(declare-fun HasDirectPerm_9942_1186 (T@PolymorphicMapType_6530 T@Ref T@Field_9942_1186) Bool)
(declare-fun HasDirectPerm_3298_21388 (T@PolymorphicMapType_6530 T@Ref T@Field_3298_9960) Bool)
(declare-fun HasDirectPerm_3298_6583 (T@PolymorphicMapType_6530 T@Ref T@Field_6582_6583) Bool)
(declare-fun HasDirectPerm_3298_53 (T@PolymorphicMapType_6530 T@Ref T@Field_6569_53) Bool)
(declare-fun HasDirectPerm_3298_1186 (T@PolymorphicMapType_6530 T@Ref T@Field_9895_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6530 T@PolymorphicMapType_6530 T@PolymorphicMapType_6530) Bool)
(declare-fun getPredWandId_3301_3302 (T@Field_9942_9943) Int)
(declare-fun InsidePredicate_9942_6569 (T@Field_9942_9943 T@FrameType T@Field_3298_9943 T@FrameType) Bool)
(declare-fun InsidePredicate_6569_9942 (T@Field_3298_9943 T@FrameType T@Field_9942_9943 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6509) (Heap1 T@PolymorphicMapType_6509) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6509) (Mask T@PolymorphicMapType_6530) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6509) (Heap1@@0 T@PolymorphicMapType_6509) (Heap2 T@PolymorphicMapType_6509) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9955_9960) ) (!  (not (select (|PolymorphicMapType_7058_9942_25314#PolymorphicMapType_7058| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7058_9942_25314#PolymorphicMapType_7058| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9942_9943) ) (!  (not (select (|PolymorphicMapType_7058_9942_9943#PolymorphicMapType_7058| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7058_9942_9943#PolymorphicMapType_7058| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9942_6583) ) (!  (not (select (|PolymorphicMapType_7058_9942_6583#PolymorphicMapType_7058| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7058_9942_6583#PolymorphicMapType_7058| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9942_53) ) (!  (not (select (|PolymorphicMapType_7058_9942_53#PolymorphicMapType_7058| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7058_9942_53#PolymorphicMapType_7058| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9942_1186) ) (!  (not (select (|PolymorphicMapType_7058_9942_1186#PolymorphicMapType_7058| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7058_9942_1186#PolymorphicMapType_7058| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3298_9960) ) (!  (not (select (|PolymorphicMapType_7058_3298_24266#PolymorphicMapType_7058| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7058_3298_24266#PolymorphicMapType_7058| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3298_9943) ) (!  (not (select (|PolymorphicMapType_7058_3298_9943#PolymorphicMapType_7058| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7058_3298_9943#PolymorphicMapType_7058| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_6582_6583) ) (!  (not (select (|PolymorphicMapType_7058_3298_6583#PolymorphicMapType_7058| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7058_3298_6583#PolymorphicMapType_7058| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_6569_53) ) (!  (not (select (|PolymorphicMapType_7058_3298_53#PolymorphicMapType_7058| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7058_3298_53#PolymorphicMapType_7058| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9895_1186) ) (!  (not (select (|PolymorphicMapType_7058_3298_1186#PolymorphicMapType_7058| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7058_3298_1186#PolymorphicMapType_7058| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_3301_3302 (p_2 this))
 :qid |stdinbpl.195:15|
 :skolemid |23|
 :pattern ( (p_2 this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6509) (this@@0 T@Ref) ) (! (|p#everUsed_3301| (p_2 this@@0))
 :qid |stdinbpl.214:15|
 :skolemid |27|
 :pattern ( (|p#trigger_3301| Heap@@0 (p_2 this@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6509) (ExhaleHeap T@PolymorphicMapType_6509) (Mask@@0 T@PolymorphicMapType_6530) (pm_f T@Field_9942_9943) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9942_9943 Mask@@0 null pm_f) (IsPredicateField_3301_3302 pm_f)) (= (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@1) null (PredicateMaskField_3301 pm_f)) (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap) null (PredicateMaskField_3301 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_3301_3302 pm_f) (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap) null (PredicateMaskField_3301 pm_f)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6509) (ExhaleHeap@@0 T@PolymorphicMapType_6509) (Mask@@1 T@PolymorphicMapType_6530) (pm_f@@0 T@Field_3298_9943) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3298_9943 Mask@@1 null pm_f@@0) (IsPredicateField_3298_22794 pm_f@@0)) (= (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@2) null (PredicateMaskField_3298 pm_f@@0)) (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| ExhaleHeap@@0) null (PredicateMaskField_3298 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3298_22794 pm_f@@0) (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| ExhaleHeap@@0) null (PredicateMaskField_3298 pm_f@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6509) (ExhaleHeap@@1 T@PolymorphicMapType_6509) (Mask@@2 T@PolymorphicMapType_6530) (pm_f@@1 T@Field_9942_9943) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9942_9943 Mask@@2 null pm_f@@1) (IsWandField_9942_26479 pm_f@@1)) (= (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@3) null (WandMaskField_9942 pm_f@@1)) (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@@1) null (WandMaskField_9942 pm_f@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_9942_26479 pm_f@@1) (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@@1) null (WandMaskField_9942 pm_f@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6509) (ExhaleHeap@@2 T@PolymorphicMapType_6509) (Mask@@3 T@PolymorphicMapType_6530) (pm_f@@2 T@Field_3298_9943) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3298_9943 Mask@@3 null pm_f@@2) (IsWandField_3298_26122 pm_f@@2)) (= (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@4) null (WandMaskField_3298 pm_f@@2)) (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| ExhaleHeap@@2) null (WandMaskField_3298 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_3298_26122 pm_f@@2) (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| ExhaleHeap@@2) null (WandMaskField_3298 pm_f@@2)))
)))
(assert (forall ((this@@1 T@Ref) (this2 T@Ref) ) (!  (=> (= (p_2 this@@1) (p_2 this2)) (= this@@1 this2))
 :qid |stdinbpl.205:15|
 :skolemid |25|
 :pattern ( (p_2 this@@1) (p_2 this2))
)))
(assert (forall ((this@@2 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|p#sm| this@@2) (|p#sm| this2@@0)) (= this@@2 this2@@0))
 :qid |stdinbpl.209:15|
 :skolemid |26|
 :pattern ( (|p#sm| this@@2) (|p#sm| this2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6509) (ExhaleHeap@@3 T@PolymorphicMapType_6509) (Mask@@4 T@PolymorphicMapType_6530) (pm_f@@3 T@Field_9942_9943) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9942_9943 Mask@@4 null pm_f@@3) (IsPredicateField_3301_3302 pm_f@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_9895_1186) ) (!  (=> (select (|PolymorphicMapType_7058_3298_1186#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@5) null (PredicateMaskField_3301 pm_f@@3))) o2 f_2) (= (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@5) o2 f_2) (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6569_53) ) (!  (=> (select (|PolymorphicMapType_7058_3298_53#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@5) null (PredicateMaskField_3301 pm_f@@3))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@5) o2@@0 f_2@@0) (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6582_6583) ) (!  (=> (select (|PolymorphicMapType_7058_3298_6583#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@5) null (PredicateMaskField_3301 pm_f@@3))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@5) o2@@1 f_2@@1) (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3298_9943) ) (!  (=> (select (|PolymorphicMapType_7058_3298_9943#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@5) null (PredicateMaskField_3301 pm_f@@3))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@5) o2@@2 f_2@@2) (select (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3298_9960) ) (!  (=> (select (|PolymorphicMapType_7058_3298_24266#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@5) null (PredicateMaskField_3301 pm_f@@3))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@5) o2@@3 f_2@@3) (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_9942_1186) ) (!  (=> (select (|PolymorphicMapType_7058_9942_1186#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@5) null (PredicateMaskField_3301 pm_f@@3))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@5) o2@@4 f_2@@4) (select (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_9942_53) ) (!  (=> (select (|PolymorphicMapType_7058_9942_53#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@5) null (PredicateMaskField_3301 pm_f@@3))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@5) o2@@5 f_2@@5) (select (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9942_6583) ) (!  (=> (select (|PolymorphicMapType_7058_9942_6583#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@5) null (PredicateMaskField_3301 pm_f@@3))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@5) o2@@6 f_2@@6) (select (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_9942_9943) ) (!  (=> (select (|PolymorphicMapType_7058_9942_9943#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@5) null (PredicateMaskField_3301 pm_f@@3))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@5) o2@@7 f_2@@7) (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_9955_9960) ) (!  (=> (select (|PolymorphicMapType_7058_9942_25314#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@5) null (PredicateMaskField_3301 pm_f@@3))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@5) o2@@8 f_2@@8) (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@@3) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3301_3302 pm_f@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6509) (ExhaleHeap@@4 T@PolymorphicMapType_6509) (Mask@@5 T@PolymorphicMapType_6530) (pm_f@@4 T@Field_3298_9943) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3298_9943 Mask@@5 null pm_f@@4) (IsPredicateField_3298_22794 pm_f@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_9895_1186) ) (!  (=> (select (|PolymorphicMapType_7058_3298_1186#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@6) null (PredicateMaskField_3298 pm_f@@4))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@6) o2@@9 f_2@@9) (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@9 f_2@@9))
)) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_6569_53) ) (!  (=> (select (|PolymorphicMapType_7058_3298_53#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@6) null (PredicateMaskField_3298 pm_f@@4))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@6) o2@@10 f_2@@10) (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_6582_6583) ) (!  (=> (select (|PolymorphicMapType_7058_3298_6583#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@6) null (PredicateMaskField_3298 pm_f@@4))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@6) o2@@11 f_2@@11) (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_3298_9943) ) (!  (=> (select (|PolymorphicMapType_7058_3298_9943#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@6) null (PredicateMaskField_3298 pm_f@@4))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@6) o2@@12 f_2@@12) (select (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_3298_9960) ) (!  (=> (select (|PolymorphicMapType_7058_3298_24266#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@6) null (PredicateMaskField_3298 pm_f@@4))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@6) o2@@13 f_2@@13) (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_9942_1186) ) (!  (=> (select (|PolymorphicMapType_7058_9942_1186#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@6) null (PredicateMaskField_3298 pm_f@@4))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@6) o2@@14 f_2@@14) (select (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_9942_53) ) (!  (=> (select (|PolymorphicMapType_7058_9942_53#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@6) null (PredicateMaskField_3298 pm_f@@4))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@6) o2@@15 f_2@@15) (select (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_9942_6583) ) (!  (=> (select (|PolymorphicMapType_7058_9942_6583#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@6) null (PredicateMaskField_3298 pm_f@@4))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@6) o2@@16 f_2@@16) (select (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_9942_9943) ) (!  (=> (select (|PolymorphicMapType_7058_9942_9943#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@6) null (PredicateMaskField_3298 pm_f@@4))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@6) o2@@17 f_2@@17) (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_9955_9960) ) (!  (=> (select (|PolymorphicMapType_7058_9942_25314#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@6) null (PredicateMaskField_3298 pm_f@@4))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@6) o2@@18 f_2@@18) (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@@4) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3298_22794 pm_f@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6509) (ExhaleHeap@@5 T@PolymorphicMapType_6509) (Mask@@6 T@PolymorphicMapType_6530) (pm_f@@5 T@Field_9942_9943) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_9942_9943 Mask@@6 null pm_f@@5) (IsWandField_9942_26479 pm_f@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_9895_1186) ) (!  (=> (select (|PolymorphicMapType_7058_3298_1186#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@7) null (WandMaskField_9942 pm_f@@5))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@7) o2@@19 f_2@@19) (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_6569_53) ) (!  (=> (select (|PolymorphicMapType_7058_3298_53#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@7) null (WandMaskField_9942 pm_f@@5))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@7) o2@@20 f_2@@20) (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_6582_6583) ) (!  (=> (select (|PolymorphicMapType_7058_3298_6583#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@7) null (WandMaskField_9942 pm_f@@5))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@7) o2@@21 f_2@@21) (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_3298_9943) ) (!  (=> (select (|PolymorphicMapType_7058_3298_9943#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@7) null (WandMaskField_9942 pm_f@@5))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@7) o2@@22 f_2@@22) (select (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_3298_9960) ) (!  (=> (select (|PolymorphicMapType_7058_3298_24266#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@7) null (WandMaskField_9942 pm_f@@5))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@7) o2@@23 f_2@@23) (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_9942_1186) ) (!  (=> (select (|PolymorphicMapType_7058_9942_1186#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@7) null (WandMaskField_9942 pm_f@@5))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@7) o2@@24 f_2@@24) (select (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_9942_53) ) (!  (=> (select (|PolymorphicMapType_7058_9942_53#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@7) null (WandMaskField_9942 pm_f@@5))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@7) o2@@25 f_2@@25) (select (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_9942_6583) ) (!  (=> (select (|PolymorphicMapType_7058_9942_6583#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@7) null (WandMaskField_9942 pm_f@@5))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@7) o2@@26 f_2@@26) (select (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_9942_9943) ) (!  (=> (select (|PolymorphicMapType_7058_9942_9943#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@7) null (WandMaskField_9942 pm_f@@5))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@7) o2@@27 f_2@@27) (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_9955_9960) ) (!  (=> (select (|PolymorphicMapType_7058_9942_25314#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@7) null (WandMaskField_9942 pm_f@@5))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@7) o2@@28 f_2@@28) (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@@5) o2@@28 f_2@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_9942_26479 pm_f@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6509) (ExhaleHeap@@6 T@PolymorphicMapType_6509) (Mask@@7 T@PolymorphicMapType_6530) (pm_f@@6 T@Field_3298_9943) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3298_9943 Mask@@7 null pm_f@@6) (IsWandField_3298_26122 pm_f@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_9895_1186) ) (!  (=> (select (|PolymorphicMapType_7058_3298_1186#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@8) null (WandMaskField_3298 pm_f@@6))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@8) o2@@29 f_2@@29) (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@29 f_2@@29))
)) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_6569_53) ) (!  (=> (select (|PolymorphicMapType_7058_3298_53#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@8) null (WandMaskField_3298 pm_f@@6))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@8) o2@@30 f_2@@30) (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_6582_6583) ) (!  (=> (select (|PolymorphicMapType_7058_3298_6583#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@8) null (WandMaskField_3298 pm_f@@6))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@8) o2@@31 f_2@@31) (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@31 f_2@@31)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_3298_9943) ) (!  (=> (select (|PolymorphicMapType_7058_3298_9943#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@8) null (WandMaskField_3298 pm_f@@6))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@8) o2@@32 f_2@@32) (select (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@32 f_2@@32)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_3298_9960) ) (!  (=> (select (|PolymorphicMapType_7058_3298_24266#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@8) null (WandMaskField_3298 pm_f@@6))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@8) o2@@33 f_2@@33) (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@33 f_2@@33)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_9942_1186) ) (!  (=> (select (|PolymorphicMapType_7058_9942_1186#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@8) null (WandMaskField_3298 pm_f@@6))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@8) o2@@34 f_2@@34) (select (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@34 f_2@@34)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_9942_53) ) (!  (=> (select (|PolymorphicMapType_7058_9942_53#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@8) null (WandMaskField_3298 pm_f@@6))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@8) o2@@35 f_2@@35) (select (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_9942_6583) ) (!  (=> (select (|PolymorphicMapType_7058_9942_6583#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@8) null (WandMaskField_3298 pm_f@@6))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@8) o2@@36 f_2@@36) (select (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_9942_9943) ) (!  (=> (select (|PolymorphicMapType_7058_9942_9943#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@8) null (WandMaskField_3298 pm_f@@6))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@8) o2@@37 f_2@@37) (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_9955_9960) ) (!  (=> (select (|PolymorphicMapType_7058_9942_25314#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@8) null (WandMaskField_3298 pm_f@@6))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@8) o2@@38 f_2@@38) (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@@6) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_3298_26122 pm_f@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6509) (ExhaleHeap@@7 T@PolymorphicMapType_6509) (Mask@@8 T@PolymorphicMapType_6530) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@9) o_1 $allocated) (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_9942_9943) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9942_9942 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9942_9942 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_3298_9943) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_6569_6569 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6569_6569 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3298_1186 x_42)))
(assert  (not (IsWandField_3298_1186 x_42)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6509) (ExhaleHeap@@8 T@PolymorphicMapType_6509) (Mask@@9 T@PolymorphicMapType_6530) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6530) (o_2@@9 T@Ref) (f_4@@9 T@Field_9955_9960) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3301_33411 f_4@@9))) (not (IsWandField_3301_33427 f_4@@9))) (<= (select (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6530) (o_2@@10 T@Ref) (f_4@@10 T@Field_9942_6583) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3301_6583 f_4@@10))) (not (IsWandField_3301_6583 f_4@@10))) (<= (select (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6530) (o_2@@11 T@Ref) (f_4@@11 T@Field_9942_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3301_53 f_4@@11))) (not (IsWandField_3301_53 f_4@@11))) (<= (select (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6530) (o_2@@12 T@Ref) (f_4@@12 T@Field_9942_9943) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3301_3302 f_4@@12))) (not (IsWandField_9942_26479 f_4@@12))) (<= (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6530) (o_2@@13 T@Ref) (f_4@@13 T@Field_9942_1186) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3301_1186 f_4@@13))) (not (IsWandField_3301_1186 f_4@@13))) (<= (select (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6530) (o_2@@14 T@Ref) (f_4@@14 T@Field_3298_9960) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3298_32580 f_4@@14))) (not (IsWandField_3298_32596 f_4@@14))) (<= (select (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6530) (o_2@@15 T@Ref) (f_4@@15 T@Field_6582_6583) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3298_6583 f_4@@15))) (not (IsWandField_3298_6583 f_4@@15))) (<= (select (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6530) (o_2@@16 T@Ref) (f_4@@16 T@Field_6569_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3298_53 f_4@@16))) (not (IsWandField_3298_53 f_4@@16))) (<= (select (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6530) (o_2@@17 T@Ref) (f_4@@17 T@Field_3298_9943) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3298_22794 f_4@@17))) (not (IsWandField_3298_26122 f_4@@17))) (<= (select (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6530) (o_2@@18 T@Ref) (f_4@@18 T@Field_9895_1186) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3298_1186 f_4@@18))) (not (IsWandField_3298_1186 f_4@@18))) (<= (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6530) (o_2@@19 T@Ref) (f_4@@19 T@Field_9955_9960) ) (! (= (HasDirectPerm_9942_22549 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9942_22549 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6530) (o_2@@20 T@Ref) (f_4@@20 T@Field_9942_9943) ) (! (= (HasDirectPerm_9942_9943 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9942_9943 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6530) (o_2@@21 T@Ref) (f_4@@21 T@Field_9942_6583) ) (! (= (HasDirectPerm_9942_6583 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9942_6583 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6530) (o_2@@22 T@Ref) (f_4@@22 T@Field_9942_53) ) (! (= (HasDirectPerm_9942_53 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9942_53 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6530) (o_2@@23 T@Ref) (f_4@@23 T@Field_9942_1186) ) (! (= (HasDirectPerm_9942_1186 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9942_1186 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6530) (o_2@@24 T@Ref) (f_4@@24 T@Field_3298_9960) ) (! (= (HasDirectPerm_3298_21388 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3298_21388 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6530) (o_2@@25 T@Ref) (f_4@@25 T@Field_3298_9943) ) (! (= (HasDirectPerm_3298_9943 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3298_9943 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6530) (o_2@@26 T@Ref) (f_4@@26 T@Field_6582_6583) ) (! (= (HasDirectPerm_3298_6583 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3298_6583 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_6530) (o_2@@27 T@Ref) (f_4@@27 T@Field_6569_53) ) (! (= (HasDirectPerm_3298_53 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3298_53 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_6530) (o_2@@28 T@Ref) (f_4@@28 T@Field_9895_1186) ) (! (= (HasDirectPerm_3298_1186 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3298_1186 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6509) (ExhaleHeap@@9 T@PolymorphicMapType_6509) (Mask@@30 T@PolymorphicMapType_6530) (o_1@@0 T@Ref) (f_2@@39 T@Field_9955_9960) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_9942_22549 Mask@@30 o_1@@0 f_2@@39) (= (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@11) o_1@@0 f_2@@39) (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@@9) o_1@@0 f_2@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@@9) o_1@@0 f_2@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6509) (ExhaleHeap@@10 T@PolymorphicMapType_6509) (Mask@@31 T@PolymorphicMapType_6530) (o_1@@1 T@Ref) (f_2@@40 T@Field_9942_9943) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_9942_9943 Mask@@31 o_1@@1 f_2@@40) (= (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@12) o_1@@1 f_2@@40) (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| ExhaleHeap@@10) o_1@@1 f_2@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| ExhaleHeap@@10) o_1@@1 f_2@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6509) (ExhaleHeap@@11 T@PolymorphicMapType_6509) (Mask@@32 T@PolymorphicMapType_6530) (o_1@@2 T@Ref) (f_2@@41 T@Field_9942_6583) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_9942_6583 Mask@@32 o_1@@2 f_2@@41) (= (select (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@13) o_1@@2 f_2@@41) (select (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| ExhaleHeap@@11) o_1@@2 f_2@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| ExhaleHeap@@11) o_1@@2 f_2@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6509) (ExhaleHeap@@12 T@PolymorphicMapType_6509) (Mask@@33 T@PolymorphicMapType_6530) (o_1@@3 T@Ref) (f_2@@42 T@Field_9942_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_9942_53 Mask@@33 o_1@@3 f_2@@42) (= (select (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@14) o_1@@3 f_2@@42) (select (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| ExhaleHeap@@12) o_1@@3 f_2@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| ExhaleHeap@@12) o_1@@3 f_2@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6509) (ExhaleHeap@@13 T@PolymorphicMapType_6509) (Mask@@34 T@PolymorphicMapType_6530) (o_1@@4 T@Ref) (f_2@@43 T@Field_9942_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_9942_1186 Mask@@34 o_1@@4 f_2@@43) (= (select (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@15) o_1@@4 f_2@@43) (select (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| ExhaleHeap@@13) o_1@@4 f_2@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| ExhaleHeap@@13) o_1@@4 f_2@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6509) (ExhaleHeap@@14 T@PolymorphicMapType_6509) (Mask@@35 T@PolymorphicMapType_6530) (o_1@@5 T@Ref) (f_2@@44 T@Field_3298_9960) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_3298_21388 Mask@@35 o_1@@5 f_2@@44) (= (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@16) o_1@@5 f_2@@44) (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| ExhaleHeap@@14) o_1@@5 f_2@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| ExhaleHeap@@14) o_1@@5 f_2@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6509) (ExhaleHeap@@15 T@PolymorphicMapType_6509) (Mask@@36 T@PolymorphicMapType_6530) (o_1@@6 T@Ref) (f_2@@45 T@Field_3298_9943) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_3298_9943 Mask@@36 o_1@@6 f_2@@45) (= (select (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@17) o_1@@6 f_2@@45) (select (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| ExhaleHeap@@15) o_1@@6 f_2@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| ExhaleHeap@@15) o_1@@6 f_2@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6509) (ExhaleHeap@@16 T@PolymorphicMapType_6509) (Mask@@37 T@PolymorphicMapType_6530) (o_1@@7 T@Ref) (f_2@@46 T@Field_6582_6583) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_3298_6583 Mask@@37 o_1@@7 f_2@@46) (= (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@18) o_1@@7 f_2@@46) (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| ExhaleHeap@@16) o_1@@7 f_2@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| ExhaleHeap@@16) o_1@@7 f_2@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6509) (ExhaleHeap@@17 T@PolymorphicMapType_6509) (Mask@@38 T@PolymorphicMapType_6530) (o_1@@8 T@Ref) (f_2@@47 T@Field_6569_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_3298_53 Mask@@38 o_1@@8 f_2@@47) (= (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@19) o_1@@8 f_2@@47) (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| ExhaleHeap@@17) o_1@@8 f_2@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| ExhaleHeap@@17) o_1@@8 f_2@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6509) (ExhaleHeap@@18 T@PolymorphicMapType_6509) (Mask@@39 T@PolymorphicMapType_6530) (o_1@@9 T@Ref) (f_2@@48 T@Field_9895_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_3298_1186 Mask@@39 o_1@@9 f_2@@48) (= (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@20) o_1@@9 f_2@@48) (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| ExhaleHeap@@18) o_1@@9 f_2@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| ExhaleHeap@@18) o_1@@9 f_2@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_9955_9960) ) (! (= (select (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_9942_6583) ) (! (= (select (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_9942_53) ) (! (= (select (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_9942_9943) ) (! (= (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_9942_1186) ) (! (= (select (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_3298_9960) ) (! (= (select (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_6582_6583) ) (! (= (select (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_6569_53) ) (! (= (select (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_3298_9943) ) (! (= (select (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_9895_1186) ) (! (= (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6530) (SummandMask1 T@PolymorphicMapType_6530) (SummandMask2 T@PolymorphicMapType_6530) (o_2@@39 T@Ref) (f_4@@39 T@Field_9955_9960) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6530) (SummandMask1@@0 T@PolymorphicMapType_6530) (SummandMask2@@0 T@PolymorphicMapType_6530) (o_2@@40 T@Ref) (f_4@@40 T@Field_9942_6583) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6530) (SummandMask1@@1 T@PolymorphicMapType_6530) (SummandMask2@@1 T@PolymorphicMapType_6530) (o_2@@41 T@Ref) (f_4@@41 T@Field_9942_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6530) (SummandMask1@@2 T@PolymorphicMapType_6530) (SummandMask2@@2 T@PolymorphicMapType_6530) (o_2@@42 T@Ref) (f_4@@42 T@Field_9942_9943) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6530) (SummandMask1@@3 T@PolymorphicMapType_6530) (SummandMask2@@3 T@PolymorphicMapType_6530) (o_2@@43 T@Ref) (f_4@@43 T@Field_9942_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6530) (SummandMask1@@4 T@PolymorphicMapType_6530) (SummandMask2@@4 T@PolymorphicMapType_6530) (o_2@@44 T@Ref) (f_4@@44 T@Field_3298_9960) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6530) (SummandMask1@@5 T@PolymorphicMapType_6530) (SummandMask2@@5 T@PolymorphicMapType_6530) (o_2@@45 T@Ref) (f_4@@45 T@Field_6582_6583) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6530) (SummandMask1@@6 T@PolymorphicMapType_6530) (SummandMask2@@6 T@PolymorphicMapType_6530) (o_2@@46 T@Ref) (f_4@@46 T@Field_6569_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_6530) (SummandMask1@@7 T@PolymorphicMapType_6530) (SummandMask2@@7 T@PolymorphicMapType_6530) (o_2@@47 T@Ref) (f_4@@47 T@Field_3298_9943) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_6530) (SummandMask1@@8 T@PolymorphicMapType_6530) (SummandMask2@@8 T@PolymorphicMapType_6530) (o_2@@48 T@Ref) (f_4@@48 T@Field_9895_1186) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((this@@3 T@Ref) ) (! (= (getPredWandId_3301_3302 (p_2 this@@3)) 0)
 :qid |stdinbpl.199:15|
 :skolemid |24|
 :pattern ( (p_2 this@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6509) (o T@Ref) (f_3 T@Field_9955_9960) (v T@PolymorphicMapType_7058) ) (! (succHeap Heap@@21 (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@21) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@21) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@21) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@21) (store (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@21) o f_3 v) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@21) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@21) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@21) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@21) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@21) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@21) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@21) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@21) (store (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@21) o f_3 v) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@21) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@21) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@21) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@21) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6509) (o@@0 T@Ref) (f_3@@0 T@Field_9942_1186) (v@@0 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@22) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@22) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@22) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@22) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@22) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@22) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@22) (store (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@22) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@22) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@22) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@22) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@22) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@22) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@22) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@22) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@22) (store (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@22) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@22) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6509) (o@@1 T@Ref) (f_3@@1 T@Field_9942_9943) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@23) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@23) (store (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@23) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@23) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@23) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@23) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@23) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@23) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@23) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@23) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@23) (store (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@23) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@23) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@23) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@23) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@23) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@23) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@23) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6509) (o@@2 T@Ref) (f_3@@2 T@Field_9942_6583) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@24) (store (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@24) o@@2 f_3@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@24) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@24) (store (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@24) o@@2 f_3@@2 v@@2)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6509) (o@@3 T@Ref) (f_3@@3 T@Field_9942_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@25) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@25) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@25) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@25) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@25) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@25) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@25) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@25) (store (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@25) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@25) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@25) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@25) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@25) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@25) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@25) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@25) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@25) (store (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@25) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6509) (o@@4 T@Ref) (f_3@@4 T@Field_3298_9960) (v@@4 T@PolymorphicMapType_7058) ) (! (succHeap Heap@@26 (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@26) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@26) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@26) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@26) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@26) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@26) (store (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@26) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@26) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@26) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@26) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@26) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@26) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@26) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@26) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@26) (store (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@26) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@26) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@26) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6509) (o@@5 T@Ref) (f_3@@5 T@Field_9895_1186) (v@@5 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@27) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@27) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@27) (store (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@27) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@27) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@27) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@27) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@27) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@27) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@27) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@27) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@27) (store (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@27) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@27) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@27) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@27) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@27) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@27) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6509) (o@@6 T@Ref) (f_3@@6 T@Field_3298_9943) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@28) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@28) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@28) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@28) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@28) (store (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@28) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@28) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@28) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@28) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@28) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@28) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@28) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@28) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@28) (store (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@28) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@28) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@28) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@28) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6509) (o@@7 T@Ref) (f_3@@7 T@Field_6582_6583) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@29) (store (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@29) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@29) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@29) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@29) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@29) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@29) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@29) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@29) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@29) (store (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@29) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@29) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@29) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@29) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@29) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@29) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@29) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@29) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6509) (o@@8 T@Ref) (f_3@@8 T@Field_6569_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_6509 (store (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@30) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6509 (store (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@30) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@30) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@30)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (PredicateMaskField_3301 (p_2 this@@4)) (|p#sm| this@@4))
 :qid |stdinbpl.191:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_3301 (p_2 this@@4)))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_6582_6583) (Heap@@31 T@PolymorphicMapType_6509) ) (!  (=> (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@31) o@@9 $allocated) (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@31) (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@31) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@31) o@@9 f))
)))
(assert (forall ((p@@2 T@Field_9942_9943) (v_1@@1 T@FrameType) (q T@Field_9942_9943) (w@@1 T@FrameType) (r T@Field_9942_9943) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9942_9942 p@@2 v_1@@1 q w@@1) (InsidePredicate_9942_9942 q w@@1 r u)) (InsidePredicate_9942_9942 p@@2 v_1@@1 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9942_9942 p@@2 v_1@@1 q w@@1) (InsidePredicate_9942_9942 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_9942_9943) (v_1@@2 T@FrameType) (q@@0 T@Field_9942_9943) (w@@2 T@FrameType) (r@@0 T@Field_3298_9943) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_9942_9942 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_9942_6569 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_9942_6569 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9942_9942 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_9942_6569 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_9942_9943) (v_1@@3 T@FrameType) (q@@1 T@Field_3298_9943) (w@@3 T@FrameType) (r@@1 T@Field_9942_9943) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_9942_6569 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6569_9942 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_9942_9942 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9942_6569 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6569_9942 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_9942_9943) (v_1@@4 T@FrameType) (q@@2 T@Field_3298_9943) (w@@4 T@FrameType) (r@@2 T@Field_3298_9943) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_9942_6569 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6569_6569 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_9942_6569 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9942_6569 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6569_6569 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_3298_9943) (v_1@@5 T@FrameType) (q@@3 T@Field_9942_9943) (w@@5 T@FrameType) (r@@3 T@Field_9942_9943) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_6569_9942 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_9942_9942 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_6569_9942 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6569_9942 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_9942_9942 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_3298_9943) (v_1@@6 T@FrameType) (q@@4 T@Field_9942_9943) (w@@6 T@FrameType) (r@@4 T@Field_3298_9943) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_6569_9942 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_9942_6569 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_6569_6569 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6569_9942 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_9942_6569 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_3298_9943) (v_1@@7 T@FrameType) (q@@5 T@Field_3298_9943) (w@@7 T@FrameType) (r@@5 T@Field_9942_9943) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_6569_6569 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6569_9942 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_6569_9942 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6569_6569 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6569_9942 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_3298_9943) (v_1@@8 T@FrameType) (q@@6 T@Field_3298_9943) (w@@8 T@FrameType) (r@@6 T@Field_3298_9943) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_6569_6569 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6569_6569 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_6569_6569 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6569_6569 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6569_6569 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_6530)
(declare-fun Mask@2 () T@PolymorphicMapType_6530)
(declare-fun this@@5 () T@Ref)
(declare-fun perm@3 () Real)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_6530)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_6509)
(declare-fun Heap@1 () T@PolymorphicMapType_6509)
(declare-fun d@0 () Int)
(declare-fun c@0 () Int)
(declare-fun Mask@1 () T@PolymorphicMapType_6530)
(declare-fun perm@2 () Real)
(declare-fun Heap@0 () T@PolymorphicMapType_6509)
(declare-fun FrameFragment_1186 (Int) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_6530)
(declare-fun perm@1 () Real)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_6530)
(declare-fun Heap@@32 () T@PolymorphicMapType_6509)
(declare-fun Mask@0 () T@PolymorphicMapType_6530)
(declare-fun perm@0 () Real)
(set-info :boogie-vc-id test01)
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
 (=> (= (ControlFlow 0 0) 21) (let ((anon6_correct  (=> (and (= UnfoldingMask@2 (PolymorphicMapType_6530 (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| Mask@2) (store (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| Mask@2) null (p_2 this@@5) (- (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| Mask@2) null (p_2 this@@5)) FullPerm)) (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| Mask@2) (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| Mask@2) (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| Mask@2) (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| Mask@2) (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| Mask@2) (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| Mask@2) (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| Mask@2) (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| Mask@2))) (= perm@3 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (and (and (=> (> perm@3 NoPerm) (not (= this@@5 null))) (= UnfoldingMask@3 (PolymorphicMapType_6530 (store (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| UnfoldingMask@2) this@@5 x_42 (+ (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| UnfoldingMask@2) this@@5 x_42) perm@3)) (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| UnfoldingMask@2) (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| UnfoldingMask@2) (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| UnfoldingMask@2) (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| UnfoldingMask@2) (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| UnfoldingMask@2) (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| UnfoldingMask@2) (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| UnfoldingMask@2) (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| UnfoldingMask@2) (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| UnfoldingMask@2)))) (and (state ExhaleHeap@0 UnfoldingMask@3) (state ExhaleHeap@0 UnfoldingMask@3))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_3298_1186 UnfoldingMask@3 this@@5 x_42)) (=> (HasDirectPerm_3298_1186 UnfoldingMask@3 this@@5 x_42) (=> (= Heap@1 (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| ExhaleHeap@0) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| ExhaleHeap@0) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| ExhaleHeap@0) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| ExhaleHeap@0) (store (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@0) null (|p#sm| this@@5) (PolymorphicMapType_7058 (store (|PolymorphicMapType_7058_3298_1186#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@0) null (|p#sm| this@@5))) this@@5 x_42 true) (|PolymorphicMapType_7058_3298_53#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@0) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_3298_6583#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@0) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_3298_9943#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@0) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_3298_24266#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@0) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_9942_1186#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@0) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_9942_53#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@0) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_9942_6583#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@0) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_9942_9943#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@0) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_9942_25314#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| ExhaleHeap@0) null (|p#sm| this@@5))))) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| ExhaleHeap@0) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| ExhaleHeap@0) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| ExhaleHeap@0) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| ExhaleHeap@0) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| ExhaleHeap@0))) (=> (and (and (state Heap@1 Mask@2) (= d@0 (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@1) this@@5 x_42))) (and (state Heap@1 Mask@2) (= (ControlFlow 0 2) (- 0 1)))) (= c@0 d@0)))))))))))
(let ((anon9_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 7) 2)) anon6_correct)))
(let ((anon9_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= FullPerm (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| Mask@2) null (p_2 this@@5)))) (=> (<= FullPerm (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| Mask@2) null (p_2 this@@5))) (=> (= (ControlFlow 0 5) 2) anon6_correct))))))
(let ((anon4_correct  (=> (= Mask@2 (PolymorphicMapType_6530 (store (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| Mask@1) this@@5 x_42 (- (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| Mask@1) this@@5 x_42) perm@2)) (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| Mask@1) (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| Mask@1) (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| Mask@1) (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| Mask@1) (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| Mask@1) (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| Mask@1) (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| Mask@1) (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| Mask@1) (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| Mask@1))) (=> (and (and (IdenticalOnKnownLocations Heap@0 ExhaleHeap@0 Mask@2) (state ExhaleHeap@0 Mask@2)) (and (|p#trigger_3301| ExhaleHeap@0 (p_2 this@@5)) (= (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| ExhaleHeap@0) null (p_2 this@@5)) (FrameFragment_1186 (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| ExhaleHeap@0) this@@5 x_42))))) (and (=> (= (ControlFlow 0 8) 5) anon9_Then_correct) (=> (= (ControlFlow 0 8) 7) anon9_Else_correct))))))
(let ((anon8_Else_correct  (=> (and (= perm@2 NoPerm) (= (ControlFlow 0 11) 8)) anon4_correct)))
(let ((anon8_Then_correct  (=> (not (= perm@2 NoPerm)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (<= perm@2 (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| Mask@1) this@@5 x_42))) (=> (<= perm@2 (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| Mask@1) this@@5 x_42)) (=> (= (ControlFlow 0 9) 8) anon4_correct))))))
(let ((anon2_correct  (=> (and (= UnfoldingMask@0 (PolymorphicMapType_6530 (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| Mask@1) (store (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| Mask@1) null (p_2 this@@5) (- (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| Mask@1) null (p_2 this@@5)) FullPerm)) (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| Mask@1) (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| Mask@1) (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| Mask@1) (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| Mask@1) (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| Mask@1) (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| Mask@1) (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| Mask@1) (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| Mask@1))) (= perm@1 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 12) (- 0 15)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (and (and (=> (> perm@1 NoPerm) (not (= this@@5 null))) (= UnfoldingMask@1 (PolymorphicMapType_6530 (store (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| UnfoldingMask@0) this@@5 x_42 (+ (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| UnfoldingMask@0) this@@5 x_42) perm@1)) (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| UnfoldingMask@0) (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| UnfoldingMask@0) (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| UnfoldingMask@0) (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| UnfoldingMask@0) (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| UnfoldingMask@0) (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| UnfoldingMask@0) (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| UnfoldingMask@0) (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| UnfoldingMask@0) (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| UnfoldingMask@0)))) (and (state Heap@@32 UnfoldingMask@1) (state Heap@@32 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 12) (- 0 14)) (HasDirectPerm_3298_1186 UnfoldingMask@1 this@@5 x_42)) (=> (HasDirectPerm_3298_1186 UnfoldingMask@1 this@@5 x_42) (=> (= Heap@0 (PolymorphicMapType_6509 (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@32) (|PolymorphicMapType_6509_3173_3174#PolymorphicMapType_6509| Heap@@32) (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@32) (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@32) (store (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@32) null (|p#sm| this@@5) (PolymorphicMapType_7058 (store (|PolymorphicMapType_7058_3298_1186#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@32) null (|p#sm| this@@5))) this@@5 x_42 true) (|PolymorphicMapType_7058_3298_53#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@32) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_3298_6583#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@32) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_3298_9943#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@32) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_3298_24266#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@32) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_9942_1186#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@32) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_9942_53#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@32) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_9942_6583#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@32) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_9942_9943#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@32) null (|p#sm| this@@5))) (|PolymorphicMapType_7058_9942_25314#PolymorphicMapType_7058| (select (|PolymorphicMapType_6509_3305_12355#PolymorphicMapType_6509| Heap@@32) null (|p#sm| this@@5))))) (|PolymorphicMapType_6509_3298_9943#PolymorphicMapType_6509| Heap@@32) (|PolymorphicMapType_6509_3298_21430#PolymorphicMapType_6509| Heap@@32) (|PolymorphicMapType_6509_9942_1186#PolymorphicMapType_6509| Heap@@32) (|PolymorphicMapType_6509_9942_53#PolymorphicMapType_6509| Heap@@32) (|PolymorphicMapType_6509_9942_6583#PolymorphicMapType_6509| Heap@@32))) (=> (and (and (state Heap@0 Mask@1) (= c@0 (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@0) this@@5 x_42))) (and (state Heap@0 Mask@1) (= perm@2 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (and (=> (= (ControlFlow 0 12) 9) anon8_Then_correct) (=> (= (ControlFlow 0 12) 11) anon8_Else_correct))))))))))))))
(let ((anon7_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 18) 12)) anon2_correct)))
(let ((anon7_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (<= FullPerm (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| Mask@1) null (p_2 this@@5)))) (=> (<= FullPerm (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| Mask@1) null (p_2 this@@5))) (=> (= (ControlFlow 0 16) 12) anon2_correct))))))
(let ((anon0_correct  (=> (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_6509_3170_53#PolymorphicMapType_6509| Heap@@32) this@@5 $allocated) (= Mask@0 (PolymorphicMapType_6530 (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| ZeroMask) (store (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| ZeroMask) null (p_2 this@@5) (+ (select (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| ZeroMask) null (p_2 this@@5)) FullPerm)) (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| ZeroMask) (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| ZeroMask) (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| ZeroMask) (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| ZeroMask) (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| ZeroMask) (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| ZeroMask) (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| ZeroMask) (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| ZeroMask)))) (and (state Heap@@32 Mask@0) (= perm@0 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (=> (> perm@0 NoPerm) (not (= this@@5 null))) (= Mask@1 (PolymorphicMapType_6530 (store (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| Mask@0) this@@5 x_42 (+ (select (|PolymorphicMapType_6530_3298_1186#PolymorphicMapType_6530| Mask@0) this@@5 x_42) perm@0)) (|PolymorphicMapType_6530_3301_3302#PolymorphicMapType_6530| Mask@0) (|PolymorphicMapType_6530_3298_3302#PolymorphicMapType_6530| Mask@0) (|PolymorphicMapType_6530_3298_53#PolymorphicMapType_6530| Mask@0) (|PolymorphicMapType_6530_3298_6583#PolymorphicMapType_6530| Mask@0) (|PolymorphicMapType_6530_3298_30708#PolymorphicMapType_6530| Mask@0) (|PolymorphicMapType_6530_3301_1186#PolymorphicMapType_6530| Mask@0) (|PolymorphicMapType_6530_3301_53#PolymorphicMapType_6530| Mask@0) (|PolymorphicMapType_6530_3301_6583#PolymorphicMapType_6530| Mask@0) (|PolymorphicMapType_6530_3301_31119#PolymorphicMapType_6530| Mask@0)))) (=> (and (and (state Heap@@32 Mask@1) (state Heap@@32 Mask@1)) (and (|p#trigger_3301| Heap@@32 (p_2 this@@5)) (= (select (|PolymorphicMapType_6509_3301_3302#PolymorphicMapType_6509| Heap@@32) null (p_2 this@@5)) (FrameFragment_1186 (select (|PolymorphicMapType_6509_3298_1186#PolymorphicMapType_6509| Heap@@32) this@@5 x_42))))) (and (=> (= (ControlFlow 0 19) 16) anon7_Then_correct) (=> (= (ControlFlow 0 19) 18) anon7_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 21) 19) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
