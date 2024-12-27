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
(declare-sort T@Field_4523_53 0)
(declare-sort T@Field_4536_4537 0)
(declare-sort T@Field_8053_8054 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_7908_1213 0)
(declare-sort T@Field_8004_645 0)
(declare-sort T@Field_8066_8071 0)
(declare-sort T@Field_2359_2353 0)
(declare-sort T@Field_2359_645 0)
(declare-sort T@Field_2359_53 0)
(declare-sort T@Field_2359_1213 0)
(declare-sort T@Field_2352_2360 0)
(declare-sort T@Field_2352_8071 0)
(declare-datatypes ((T@PolymorphicMapType_4484 0)) (((PolymorphicMapType_4484 (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| (Array T@Ref T@Field_7908_1213 Real)) (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| (Array T@Ref T@Field_8053_8054 Real)) (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| (Array T@Ref T@Field_4523_53 Real)) (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| (Array T@Ref T@Field_4536_4537 Real)) (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| (Array T@Ref T@Field_8004_645 Real)) (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| (Array T@Ref T@Field_2352_2360 Real)) (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| (Array T@Ref T@Field_2352_8071 Real)) (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| (Array T@Ref T@Field_2359_1213 Real)) (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| (Array T@Ref T@Field_2359_53 Real)) (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| (Array T@Ref T@Field_2359_2353 Real)) (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| (Array T@Ref T@Field_2359_645 Real)) (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| (Array T@Ref T@Field_8066_8071 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5012 0)) (((PolymorphicMapType_5012 (|PolymorphicMapType_5012_2350_1213#PolymorphicMapType_5012| (Array T@Ref T@Field_7908_1213 Bool)) (|PolymorphicMapType_5012_2350_53#PolymorphicMapType_5012| (Array T@Ref T@Field_4523_53 Bool)) (|PolymorphicMapType_5012_2350_4537#PolymorphicMapType_5012| (Array T@Ref T@Field_4536_4537 Bool)) (|PolymorphicMapType_5012_2350_645#PolymorphicMapType_5012| (Array T@Ref T@Field_8004_645 Bool)) (|PolymorphicMapType_5012_2350_8054#PolymorphicMapType_5012| (Array T@Ref T@Field_2352_2360 Bool)) (|PolymorphicMapType_5012_2350_17694#PolymorphicMapType_5012| (Array T@Ref T@Field_2352_8071 Bool)) (|PolymorphicMapType_5012_8053_1213#PolymorphicMapType_5012| (Array T@Ref T@Field_2359_1213 Bool)) (|PolymorphicMapType_5012_8053_53#PolymorphicMapType_5012| (Array T@Ref T@Field_2359_53 Bool)) (|PolymorphicMapType_5012_8053_4537#PolymorphicMapType_5012| (Array T@Ref T@Field_2359_2353 Bool)) (|PolymorphicMapType_5012_8053_645#PolymorphicMapType_5012| (Array T@Ref T@Field_2359_645 Bool)) (|PolymorphicMapType_5012_8053_8054#PolymorphicMapType_5012| (Array T@Ref T@Field_8053_8054 Bool)) (|PolymorphicMapType_5012_8053_18940#PolymorphicMapType_5012| (Array T@Ref T@Field_8066_8071 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_4463 0)) (((PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| (Array T@Ref T@Field_4523_53 Bool)) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| (Array T@Ref T@Field_4536_4537 T@Ref)) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| (Array T@Ref T@Field_8053_8054 T@FrameType)) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| (Array T@Ref T@Field_7908_1213 Int)) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| (Array T@Ref T@Field_8004_645 Real)) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| (Array T@Ref T@Field_8066_8071 T@PolymorphicMapType_5012)) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| (Array T@Ref T@Field_2359_2353 T@Ref)) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| (Array T@Ref T@Field_2359_645 Real)) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| (Array T@Ref T@Field_2359_53 Bool)) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| (Array T@Ref T@Field_2359_1213 Int)) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| (Array T@Ref T@Field_2352_2360 T@FrameType)) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| (Array T@Ref T@Field_2352_8071 T@PolymorphicMapType_5012)) ) ) ))
(declare-fun $allocated () T@Field_4523_53)
(declare-fun globalK$ () Real)
(declare-fun joinable$ () T@Field_4523_53)
(declare-fun f_7 () T@Field_7908_1213)
(declare-fun parX () T@Field_4536_4537)
(declare-fun parK () T@Field_8004_645)
(declare-fun succHeap (T@PolymorphicMapType_4463 T@PolymorphicMapType_4463) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_4463 T@PolymorphicMapType_4463) Bool)
(declare-fun state (T@PolymorphicMapType_4463 T@PolymorphicMapType_4484) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_4484) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_5012)
(declare-fun P (T@Ref) T@Field_8053_8054)
(declare-fun IsPredicateField_2359_2360 (T@Field_8053_8054) Bool)
(declare-fun |P#trigger_2359| (T@PolymorphicMapType_4463 T@Field_8053_8054) Bool)
(declare-fun |P#everUsed_2359| (T@Field_8053_8054) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_4463 T@PolymorphicMapType_4463 T@PolymorphicMapType_4484) Bool)
(declare-fun IsPredicateField_2352_16349 (T@Field_2352_2360) Bool)
(declare-fun HasDirectPerm_2352_2360 (T@PolymorphicMapType_4484 T@Ref T@Field_2352_2360) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2352 (T@Field_2352_2360) T@Field_2352_8071)
(declare-fun HasDirectPerm_2359_2360 (T@PolymorphicMapType_4484 T@Ref T@Field_8053_8054) Bool)
(declare-fun PredicateMaskField_2359 (T@Field_8053_8054) T@Field_8066_8071)
(declare-fun IsWandField_2352_20105 (T@Field_2352_2360) Bool)
(declare-fun WandMaskField_2352 (T@Field_2352_2360) T@Field_2352_8071)
(declare-fun IsWandField_2359_19748 (T@Field_8053_8054) Bool)
(declare-fun WandMaskField_2359 (T@Field_8053_8054) T@Field_8066_8071)
(declare-fun |P#sm| (T@Ref) T@Field_8066_8071)
(declare-fun dummyHeap () T@PolymorphicMapType_4463)
(declare-fun ZeroMask () T@PolymorphicMapType_4484)
(declare-fun InsidePredicate_8053_8053 (T@Field_8053_8054 T@FrameType T@Field_8053_8054 T@FrameType) Bool)
(declare-fun InsidePredicate_4523_4523 (T@Field_2352_2360 T@FrameType T@Field_2352_2360 T@FrameType) Bool)
(declare-fun IsPredicateField_2348_1198 (T@Field_4523_53) Bool)
(declare-fun IsWandField_2348_1198 (T@Field_4523_53) Bool)
(declare-fun IsPredicateField_2350_1213 (T@Field_7908_1213) Bool)
(declare-fun IsWandField_2350_1213 (T@Field_7908_1213) Bool)
(declare-fun IsPredicateField_2352_2353 (T@Field_4536_4537) Bool)
(declare-fun IsWandField_2352_2353 (T@Field_4536_4537) Bool)
(declare-fun IsPredicateField_2355_645 (T@Field_8004_645) Bool)
(declare-fun IsWandField_2355_645 (T@Field_8004_645) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2359_28174 (T@Field_8066_8071) Bool)
(declare-fun IsWandField_2359_28190 (T@Field_8066_8071) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2359_645 (T@Field_2359_645) Bool)
(declare-fun IsWandField_2359_645 (T@Field_2359_645) Bool)
(declare-fun IsPredicateField_2359_2353 (T@Field_2359_2353) Bool)
(declare-fun IsWandField_2359_2353 (T@Field_2359_2353) Bool)
(declare-fun IsPredicateField_2359_1198 (T@Field_2359_53) Bool)
(declare-fun IsWandField_2359_1198 (T@Field_2359_53) Bool)
(declare-fun IsPredicateField_2359_1213 (T@Field_2359_1213) Bool)
(declare-fun IsWandField_2359_1213 (T@Field_2359_1213) Bool)
(declare-fun IsPredicateField_2350_27175 (T@Field_2352_8071) Bool)
(declare-fun IsWandField_2350_27191 (T@Field_2352_8071) Bool)
(declare-fun HasDirectPerm_2352_15736 (T@PolymorphicMapType_4484 T@Ref T@Field_2352_8071) Bool)
(declare-fun HasDirectPerm_2352_1213 (T@PolymorphicMapType_4484 T@Ref T@Field_7908_1213) Bool)
(declare-fun HasDirectPerm_2352_53 (T@PolymorphicMapType_4484 T@Ref T@Field_4523_53) Bool)
(declare-fun HasDirectPerm_2355_645 (T@PolymorphicMapType_4484 T@Ref T@Field_8004_645) Bool)
(declare-fun HasDirectPerm_2352_2353 (T@PolymorphicMapType_4484 T@Ref T@Field_4536_4537) Bool)
(declare-fun HasDirectPerm_2359_14475 (T@PolymorphicMapType_4484 T@Ref T@Field_8066_8071) Bool)
(declare-fun HasDirectPerm_2359_1213 (T@PolymorphicMapType_4484 T@Ref T@Field_2359_1213) Bool)
(declare-fun HasDirectPerm_2359_53 (T@PolymorphicMapType_4484 T@Ref T@Field_2359_53) Bool)
(declare-fun HasDirectPerm_2359_645 (T@PolymorphicMapType_4484 T@Ref T@Field_2359_645) Bool)
(declare-fun HasDirectPerm_2359_2353 (T@PolymorphicMapType_4484 T@Ref T@Field_2359_2353) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_4484 T@PolymorphicMapType_4484 T@PolymorphicMapType_4484) Bool)
(declare-fun getPredWandId_2359_2360 (T@Field_8053_8054) Int)
(declare-fun InsidePredicate_8053_4523 (T@Field_8053_8054 T@FrameType T@Field_2352_2360 T@FrameType) Bool)
(declare-fun InsidePredicate_4523_8053 (T@Field_2352_2360 T@FrameType T@Field_8053_8054 T@FrameType) Bool)
(assert (distinct $allocated joinable$)
)
(assert (forall ((Heap0 T@PolymorphicMapType_4463) (Heap1 T@PolymorphicMapType_4463) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_4463) (Mask T@PolymorphicMapType_4484) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_4463) (Heap1@@0 T@PolymorphicMapType_4463) (Heap2 T@PolymorphicMapType_4463) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8066_8071) ) (!  (not (select (|PolymorphicMapType_5012_8053_18940#PolymorphicMapType_5012| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5012_8053_18940#PolymorphicMapType_5012| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8053_8054) ) (!  (not (select (|PolymorphicMapType_5012_8053_8054#PolymorphicMapType_5012| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5012_8053_8054#PolymorphicMapType_5012| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_2359_645) ) (!  (not (select (|PolymorphicMapType_5012_8053_645#PolymorphicMapType_5012| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5012_8053_645#PolymorphicMapType_5012| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_2359_2353) ) (!  (not (select (|PolymorphicMapType_5012_8053_4537#PolymorphicMapType_5012| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5012_8053_4537#PolymorphicMapType_5012| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_2359_53) ) (!  (not (select (|PolymorphicMapType_5012_8053_53#PolymorphicMapType_5012| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5012_8053_53#PolymorphicMapType_5012| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_2359_1213) ) (!  (not (select (|PolymorphicMapType_5012_8053_1213#PolymorphicMapType_5012| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5012_8053_1213#PolymorphicMapType_5012| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_2352_8071) ) (!  (not (select (|PolymorphicMapType_5012_2350_17694#PolymorphicMapType_5012| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5012_2350_17694#PolymorphicMapType_5012| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_2352_2360) ) (!  (not (select (|PolymorphicMapType_5012_2350_8054#PolymorphicMapType_5012| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5012_2350_8054#PolymorphicMapType_5012| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_8004_645) ) (!  (not (select (|PolymorphicMapType_5012_2350_645#PolymorphicMapType_5012| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5012_2350_645#PolymorphicMapType_5012| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_4536_4537) ) (!  (not (select (|PolymorphicMapType_5012_2350_4537#PolymorphicMapType_5012| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5012_2350_4537#PolymorphicMapType_5012| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_4523_53) ) (!  (not (select (|PolymorphicMapType_5012_2350_53#PolymorphicMapType_5012| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5012_2350_53#PolymorphicMapType_5012| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_7908_1213) ) (!  (not (select (|PolymorphicMapType_5012_2350_1213#PolymorphicMapType_5012| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_5012_2350_1213#PolymorphicMapType_5012| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((this T@Ref) ) (! (IsPredicateField_2359_2360 (P this))
 :qid |stdinbpl.217:15|
 :skolemid |23|
 :pattern ( (P this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_4463) (this@@0 T@Ref) ) (! (|P#everUsed_2359| (P this@@0))
 :qid |stdinbpl.236:15|
 :skolemid |27|
 :pattern ( (|P#trigger_2359| Heap@@0 (P this@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_4463) (ExhaleHeap T@PolymorphicMapType_4463) (Mask@@0 T@PolymorphicMapType_4484) (pm_f T@Field_2352_2360) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2352_2360 Mask@@0 null pm_f) (IsPredicateField_2352_16349 pm_f)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_7908_1213) ) (!  (=> (select (|PolymorphicMapType_5012_2350_1213#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@1) null (PredicateMaskField_2352 pm_f))) o2 f_2) (= (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@1) o2 f_2) (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| ExhaleHeap) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| ExhaleHeap) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_4523_53) ) (!  (=> (select (|PolymorphicMapType_5012_2350_53#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@1) null (PredicateMaskField_2352 pm_f))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@1) o2@@0 f_2@@0) (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| ExhaleHeap) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| ExhaleHeap) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_4536_4537) ) (!  (=> (select (|PolymorphicMapType_5012_2350_4537#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@1) null (PredicateMaskField_2352 pm_f))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@1) o2@@1 f_2@@1) (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| ExhaleHeap) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| ExhaleHeap) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_8004_645) ) (!  (=> (select (|PolymorphicMapType_5012_2350_645#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@1) null (PredicateMaskField_2352 pm_f))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@1) o2@@2 f_2@@2) (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| ExhaleHeap) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| ExhaleHeap) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_2352_2360) ) (!  (=> (select (|PolymorphicMapType_5012_2350_8054#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@1) null (PredicateMaskField_2352 pm_f))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@1) o2@@3 f_2@@3) (select (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| ExhaleHeap) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| ExhaleHeap) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_2352_8071) ) (!  (=> (select (|PolymorphicMapType_5012_2350_17694#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@1) null (PredicateMaskField_2352 pm_f))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@1) o2@@4 f_2@@4) (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| ExhaleHeap) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| ExhaleHeap) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_2359_1213) ) (!  (=> (select (|PolymorphicMapType_5012_8053_1213#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@1) null (PredicateMaskField_2352 pm_f))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@1) o2@@5 f_2@@5) (select (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| ExhaleHeap) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| ExhaleHeap) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_2359_53) ) (!  (=> (select (|PolymorphicMapType_5012_8053_53#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@1) null (PredicateMaskField_2352 pm_f))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@1) o2@@6 f_2@@6) (select (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| ExhaleHeap) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| ExhaleHeap) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_2359_2353) ) (!  (=> (select (|PolymorphicMapType_5012_8053_4537#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@1) null (PredicateMaskField_2352 pm_f))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@1) o2@@7 f_2@@7) (select (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| ExhaleHeap) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| ExhaleHeap) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_2359_645) ) (!  (=> (select (|PolymorphicMapType_5012_8053_645#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@1) null (PredicateMaskField_2352 pm_f))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@1) o2@@8 f_2@@8) (select (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| ExhaleHeap) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| ExhaleHeap) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_8053_8054) ) (!  (=> (select (|PolymorphicMapType_5012_8053_8054#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@1) null (PredicateMaskField_2352 pm_f))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@1) o2@@9 f_2@@9) (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| ExhaleHeap) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| ExhaleHeap) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_8066_8071) ) (!  (=> (select (|PolymorphicMapType_5012_8053_18940#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@1) null (PredicateMaskField_2352 pm_f))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@1) o2@@10 f_2@@10) (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| ExhaleHeap) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| ExhaleHeap) o2@@10 f_2@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_2352_16349 pm_f))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_4463) (ExhaleHeap@@0 T@PolymorphicMapType_4463) (Mask@@1 T@PolymorphicMapType_4484) (pm_f@@0 T@Field_8053_8054) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2359_2360 Mask@@1 null pm_f@@0) (IsPredicateField_2359_2360 pm_f@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_7908_1213) ) (!  (=> (select (|PolymorphicMapType_5012_2350_1213#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@2) null (PredicateMaskField_2359 pm_f@@0))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@2) o2@@11 f_2@@11) (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@11 f_2@@11))
)) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_4523_53) ) (!  (=> (select (|PolymorphicMapType_5012_2350_53#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@2) null (PredicateMaskField_2359 pm_f@@0))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@2) o2@@12 f_2@@12) (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_4536_4537) ) (!  (=> (select (|PolymorphicMapType_5012_2350_4537#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@2) null (PredicateMaskField_2359 pm_f@@0))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@2) o2@@13 f_2@@13) (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_8004_645) ) (!  (=> (select (|PolymorphicMapType_5012_2350_645#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@2) null (PredicateMaskField_2359 pm_f@@0))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@2) o2@@14 f_2@@14) (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_2352_2360) ) (!  (=> (select (|PolymorphicMapType_5012_2350_8054#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@2) null (PredicateMaskField_2359 pm_f@@0))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@2) o2@@15 f_2@@15) (select (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_2352_8071) ) (!  (=> (select (|PolymorphicMapType_5012_2350_17694#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@2) null (PredicateMaskField_2359 pm_f@@0))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@2) o2@@16 f_2@@16) (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_2359_1213) ) (!  (=> (select (|PolymorphicMapType_5012_8053_1213#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@2) null (PredicateMaskField_2359 pm_f@@0))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@2) o2@@17 f_2@@17) (select (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_2359_53) ) (!  (=> (select (|PolymorphicMapType_5012_8053_53#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@2) null (PredicateMaskField_2359 pm_f@@0))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@2) o2@@18 f_2@@18) (select (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@18 f_2@@18))
))) (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_2359_2353) ) (!  (=> (select (|PolymorphicMapType_5012_8053_4537#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@2) null (PredicateMaskField_2359 pm_f@@0))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@2) o2@@19 f_2@@19) (select (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@19 f_2@@19)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@19 f_2@@19))
))) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_2359_645) ) (!  (=> (select (|PolymorphicMapType_5012_8053_645#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@2) null (PredicateMaskField_2359 pm_f@@0))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@2) o2@@20 f_2@@20) (select (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@20 f_2@@20)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_8053_8054) ) (!  (=> (select (|PolymorphicMapType_5012_8053_8054#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@2) null (PredicateMaskField_2359 pm_f@@0))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@2) o2@@21 f_2@@21) (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@21 f_2@@21)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_8066_8071) ) (!  (=> (select (|PolymorphicMapType_5012_8053_18940#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@2) null (PredicateMaskField_2359 pm_f@@0))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@2) o2@@22 f_2@@22) (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@22 f_2@@22)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| ExhaleHeap@@0) o2@@22 f_2@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2359_2360 pm_f@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_4463) (ExhaleHeap@@1 T@PolymorphicMapType_4463) (Mask@@2 T@PolymorphicMapType_4484) (pm_f@@1 T@Field_2352_2360) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_2352_2360 Mask@@2 null pm_f@@1) (IsWandField_2352_20105 pm_f@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_7908_1213) ) (!  (=> (select (|PolymorphicMapType_5012_2350_1213#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@3) null (WandMaskField_2352 pm_f@@1))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@3) o2@@23 f_2@@23) (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@23 f_2@@23))
)) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_4523_53) ) (!  (=> (select (|PolymorphicMapType_5012_2350_53#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@3) null (WandMaskField_2352 pm_f@@1))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@3) o2@@24 f_2@@24) (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_4536_4537) ) (!  (=> (select (|PolymorphicMapType_5012_2350_4537#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@3) null (WandMaskField_2352 pm_f@@1))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@3) o2@@25 f_2@@25) (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_8004_645) ) (!  (=> (select (|PolymorphicMapType_5012_2350_645#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@3) null (WandMaskField_2352 pm_f@@1))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@3) o2@@26 f_2@@26) (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_2352_2360) ) (!  (=> (select (|PolymorphicMapType_5012_2350_8054#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@3) null (WandMaskField_2352 pm_f@@1))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@3) o2@@27 f_2@@27) (select (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_2352_8071) ) (!  (=> (select (|PolymorphicMapType_5012_2350_17694#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@3) null (WandMaskField_2352 pm_f@@1))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@3) o2@@28 f_2@@28) (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_2359_1213) ) (!  (=> (select (|PolymorphicMapType_5012_8053_1213#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@3) null (WandMaskField_2352 pm_f@@1))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@3) o2@@29 f_2@@29) (select (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_2359_53) ) (!  (=> (select (|PolymorphicMapType_5012_8053_53#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@3) null (WandMaskField_2352 pm_f@@1))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@3) o2@@30 f_2@@30) (select (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_2359_2353) ) (!  (=> (select (|PolymorphicMapType_5012_8053_4537#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@3) null (WandMaskField_2352 pm_f@@1))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@3) o2@@31 f_2@@31) (select (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@31 f_2@@31)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_2359_645) ) (!  (=> (select (|PolymorphicMapType_5012_8053_645#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@3) null (WandMaskField_2352 pm_f@@1))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@3) o2@@32 f_2@@32) (select (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@32 f_2@@32)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_8053_8054) ) (!  (=> (select (|PolymorphicMapType_5012_8053_8054#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@3) null (WandMaskField_2352 pm_f@@1))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@3) o2@@33 f_2@@33) (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@33 f_2@@33)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_8066_8071) ) (!  (=> (select (|PolymorphicMapType_5012_8053_18940#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@3) null (WandMaskField_2352 pm_f@@1))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@3) o2@@34 f_2@@34) (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@34 f_2@@34)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| ExhaleHeap@@1) o2@@34 f_2@@34))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_2352_20105 pm_f@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_4463) (ExhaleHeap@@2 T@PolymorphicMapType_4463) (Mask@@3 T@PolymorphicMapType_4484) (pm_f@@2 T@Field_8053_8054) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2359_2360 Mask@@3 null pm_f@@2) (IsWandField_2359_19748 pm_f@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_7908_1213) ) (!  (=> (select (|PolymorphicMapType_5012_2350_1213#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@4) null (WandMaskField_2359 pm_f@@2))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@4) o2@@35 f_2@@35) (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@35 f_2@@35))
)) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_4523_53) ) (!  (=> (select (|PolymorphicMapType_5012_2350_53#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@4) null (WandMaskField_2359 pm_f@@2))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@4) o2@@36 f_2@@36) (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_4536_4537) ) (!  (=> (select (|PolymorphicMapType_5012_2350_4537#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@4) null (WandMaskField_2359 pm_f@@2))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@4) o2@@37 f_2@@37) (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_8004_645) ) (!  (=> (select (|PolymorphicMapType_5012_2350_645#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@4) null (WandMaskField_2359 pm_f@@2))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@4) o2@@38 f_2@@38) (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@38 f_2@@38))
))) (forall ((o2@@39 T@Ref) (f_2@@39 T@Field_2352_2360) ) (!  (=> (select (|PolymorphicMapType_5012_2350_8054#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@4) null (WandMaskField_2359 pm_f@@2))) o2@@39 f_2@@39) (= (select (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@4) o2@@39 f_2@@39) (select (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@39 f_2@@39)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@39 f_2@@39))
))) (forall ((o2@@40 T@Ref) (f_2@@40 T@Field_2352_8071) ) (!  (=> (select (|PolymorphicMapType_5012_2350_17694#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@4) null (WandMaskField_2359 pm_f@@2))) o2@@40 f_2@@40) (= (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@4) o2@@40 f_2@@40) (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@40 f_2@@40)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@40 f_2@@40))
))) (forall ((o2@@41 T@Ref) (f_2@@41 T@Field_2359_1213) ) (!  (=> (select (|PolymorphicMapType_5012_8053_1213#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@4) null (WandMaskField_2359 pm_f@@2))) o2@@41 f_2@@41) (= (select (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@4) o2@@41 f_2@@41) (select (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@41 f_2@@41)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@41 f_2@@41))
))) (forall ((o2@@42 T@Ref) (f_2@@42 T@Field_2359_53) ) (!  (=> (select (|PolymorphicMapType_5012_8053_53#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@4) null (WandMaskField_2359 pm_f@@2))) o2@@42 f_2@@42) (= (select (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@4) o2@@42 f_2@@42) (select (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@42 f_2@@42)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@42 f_2@@42))
))) (forall ((o2@@43 T@Ref) (f_2@@43 T@Field_2359_2353) ) (!  (=> (select (|PolymorphicMapType_5012_8053_4537#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@4) null (WandMaskField_2359 pm_f@@2))) o2@@43 f_2@@43) (= (select (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@4) o2@@43 f_2@@43) (select (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@43 f_2@@43)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@43 f_2@@43))
))) (forall ((o2@@44 T@Ref) (f_2@@44 T@Field_2359_645) ) (!  (=> (select (|PolymorphicMapType_5012_8053_645#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@4) null (WandMaskField_2359 pm_f@@2))) o2@@44 f_2@@44) (= (select (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@4) o2@@44 f_2@@44) (select (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@44 f_2@@44)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@44 f_2@@44))
))) (forall ((o2@@45 T@Ref) (f_2@@45 T@Field_8053_8054) ) (!  (=> (select (|PolymorphicMapType_5012_8053_8054#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@4) null (WandMaskField_2359 pm_f@@2))) o2@@45 f_2@@45) (= (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@4) o2@@45 f_2@@45) (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@45 f_2@@45)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@45 f_2@@45))
))) (forall ((o2@@46 T@Ref) (f_2@@46 T@Field_8066_8071) ) (!  (=> (select (|PolymorphicMapType_5012_8053_18940#PolymorphicMapType_5012| (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@4) null (WandMaskField_2359 pm_f@@2))) o2@@46 f_2@@46) (= (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@4) o2@@46 f_2@@46) (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@46 f_2@@46)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| ExhaleHeap@@2) o2@@46 f_2@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_2359_19748 pm_f@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_4463) (ExhaleHeap@@3 T@PolymorphicMapType_4463) (Mask@@4 T@PolymorphicMapType_4484) (pm_f@@3 T@Field_2352_2360) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_2352_2360 Mask@@4 null pm_f@@3) (IsPredicateField_2352_16349 pm_f@@3)) (= (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@5) null (PredicateMaskField_2352 pm_f@@3)) (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| ExhaleHeap@@3) null (PredicateMaskField_2352 pm_f@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_2352_16349 pm_f@@3) (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| ExhaleHeap@@3) null (PredicateMaskField_2352 pm_f@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_4463) (ExhaleHeap@@4 T@PolymorphicMapType_4463) (Mask@@5 T@PolymorphicMapType_4484) (pm_f@@4 T@Field_8053_8054) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_2359_2360 Mask@@5 null pm_f@@4) (IsPredicateField_2359_2360 pm_f@@4)) (= (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@6) null (PredicateMaskField_2359 pm_f@@4)) (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| ExhaleHeap@@4) null (PredicateMaskField_2359 pm_f@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_2359_2360 pm_f@@4) (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| ExhaleHeap@@4) null (PredicateMaskField_2359 pm_f@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_4463) (ExhaleHeap@@5 T@PolymorphicMapType_4463) (Mask@@6 T@PolymorphicMapType_4484) (pm_f@@5 T@Field_2352_2360) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_2352_2360 Mask@@6 null pm_f@@5) (IsWandField_2352_20105 pm_f@@5)) (= (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@7) null (WandMaskField_2352 pm_f@@5)) (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| ExhaleHeap@@5) null (WandMaskField_2352 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_2352_20105 pm_f@@5) (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| ExhaleHeap@@5) null (WandMaskField_2352 pm_f@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_4463) (ExhaleHeap@@6 T@PolymorphicMapType_4463) (Mask@@7 T@PolymorphicMapType_4484) (pm_f@@6 T@Field_8053_8054) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_2359_2360 Mask@@7 null pm_f@@6) (IsWandField_2359_19748 pm_f@@6)) (= (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@8) null (WandMaskField_2359 pm_f@@6)) (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| ExhaleHeap@@6) null (WandMaskField_2359 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_2359_19748 pm_f@@6) (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| ExhaleHeap@@6) null (WandMaskField_2359 pm_f@@6)))
)))
(assert (forall ((this@@1 T@Ref) (this2 T@Ref) ) (!  (=> (= (P this@@1) (P this2)) (= this@@1 this2))
 :qid |stdinbpl.227:15|
 :skolemid |25|
 :pattern ( (P this@@1) (P this2))
)))
(assert (forall ((this@@2 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|P#sm| this@@2) (|P#sm| this2@@0)) (= this@@2 this2@@0))
 :qid |stdinbpl.231:15|
 :skolemid |26|
 :pattern ( (|P#sm| this@@2) (|P#sm| this2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_4463) (ExhaleHeap@@7 T@PolymorphicMapType_4463) (Mask@@8 T@PolymorphicMapType_4484) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@9) o_1 $allocated) (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_8053_8054) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8053_8053 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8053_8053 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_2352_2360) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_4523_4523 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_4523_4523 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_2348_1198 joinable$)))
(assert  (not (IsWandField_2348_1198 joinable$)))
(assert  (not (IsPredicateField_2350_1213 f_7)))
(assert  (not (IsWandField_2350_1213 f_7)))
(assert  (not (IsPredicateField_2352_2353 parX)))
(assert  (not (IsWandField_2352_2353 parX)))
(assert  (not (IsPredicateField_2355_645 parK)))
(assert  (not (IsWandField_2355_645 parK)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_4463) (ExhaleHeap@@8 T@PolymorphicMapType_4463) (Mask@@9 T@PolymorphicMapType_4484) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_4484) (o_2@@11 T@Ref) (f_4@@11 T@Field_8066_8071) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| Mask@@10) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_2359_28174 f_4@@11))) (not (IsWandField_2359_28190 f_4@@11))) (<= (select (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| Mask@@10) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| Mask@@10) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_4484) (o_2@@12 T@Ref) (f_4@@12 T@Field_2359_645) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| Mask@@11) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_2359_645 f_4@@12))) (not (IsWandField_2359_645 f_4@@12))) (<= (select (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| Mask@@11) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| Mask@@11) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_4484) (o_2@@13 T@Ref) (f_4@@13 T@Field_2359_2353) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| Mask@@12) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_2359_2353 f_4@@13))) (not (IsWandField_2359_2353 f_4@@13))) (<= (select (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| Mask@@12) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| Mask@@12) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_4484) (o_2@@14 T@Ref) (f_4@@14 T@Field_2359_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| Mask@@13) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_2359_1198 f_4@@14))) (not (IsWandField_2359_1198 f_4@@14))) (<= (select (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| Mask@@13) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| Mask@@13) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_4484) (o_2@@15 T@Ref) (f_4@@15 T@Field_8053_8054) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@@14) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2359_2360 f_4@@15))) (not (IsWandField_2359_19748 f_4@@15))) (<= (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@@14) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@@14) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_4484) (o_2@@16 T@Ref) (f_4@@16 T@Field_2359_1213) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| Mask@@15) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2359_1213 f_4@@16))) (not (IsWandField_2359_1213 f_4@@16))) (<= (select (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| Mask@@15) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| Mask@@15) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_4484) (o_2@@17 T@Ref) (f_4@@17 T@Field_2352_8071) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| Mask@@16) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2350_27175 f_4@@17))) (not (IsWandField_2350_27191 f_4@@17))) (<= (select (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| Mask@@16) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| Mask@@16) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_4484) (o_2@@18 T@Ref) (f_4@@18 T@Field_8004_645) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@@17) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2355_645 f_4@@18))) (not (IsWandField_2355_645 f_4@@18))) (<= (select (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@@17) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@@17) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_4484) (o_2@@19 T@Ref) (f_4@@19 T@Field_4536_4537) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@@18) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2352_2353 f_4@@19))) (not (IsWandField_2352_2353 f_4@@19))) (<= (select (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@@18) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@@18) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_4484) (o_2@@20 T@Ref) (f_4@@20 T@Field_4523_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@@19) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_2348_1198 f_4@@20))) (not (IsWandField_2348_1198 f_4@@20))) (<= (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@@19) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@@19) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_4484) (o_2@@21 T@Ref) (f_4@@21 T@Field_2352_2360) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| Mask@@20) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_2352_16349 f_4@@21))) (not (IsWandField_2352_20105 f_4@@21))) (<= (select (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| Mask@@20) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| Mask@@20) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_4484) (o_2@@22 T@Ref) (f_4@@22 T@Field_7908_1213) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@@21) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_2350_1213 f_4@@22))) (not (IsWandField_2350_1213 f_4@@22))) (<= (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@@21) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@@21) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_4484) (o_2@@23 T@Ref) (f_4@@23 T@Field_2352_8071) ) (! (= (HasDirectPerm_2352_15736 Mask@@22 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| Mask@@22) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2352_15736 Mask@@22 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_4484) (o_2@@24 T@Ref) (f_4@@24 T@Field_7908_1213) ) (! (= (HasDirectPerm_2352_1213 Mask@@23 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@@23) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2352_1213 Mask@@23 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_4484) (o_2@@25 T@Ref) (f_4@@25 T@Field_4523_53) ) (! (= (HasDirectPerm_2352_53 Mask@@24 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@@24) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2352_53 Mask@@24 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_4484) (o_2@@26 T@Ref) (f_4@@26 T@Field_8004_645) ) (! (= (HasDirectPerm_2355_645 Mask@@25 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@@25) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2355_645 Mask@@25 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_4484) (o_2@@27 T@Ref) (f_4@@27 T@Field_4536_4537) ) (! (= (HasDirectPerm_2352_2353 Mask@@26 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@@26) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2352_2353 Mask@@26 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_4484) (o_2@@28 T@Ref) (f_4@@28 T@Field_2352_2360) ) (! (= (HasDirectPerm_2352_2360 Mask@@27 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| Mask@@27) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2352_2360 Mask@@27 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_4484) (o_2@@29 T@Ref) (f_4@@29 T@Field_8066_8071) ) (! (= (HasDirectPerm_2359_14475 Mask@@28 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| Mask@@28) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2359_14475 Mask@@28 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_4484) (o_2@@30 T@Ref) (f_4@@30 T@Field_2359_1213) ) (! (= (HasDirectPerm_2359_1213 Mask@@29 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| Mask@@29) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2359_1213 Mask@@29 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_4484) (o_2@@31 T@Ref) (f_4@@31 T@Field_2359_53) ) (! (= (HasDirectPerm_2359_53 Mask@@30 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| Mask@@30) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2359_53 Mask@@30 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_4484) (o_2@@32 T@Ref) (f_4@@32 T@Field_2359_645) ) (! (= (HasDirectPerm_2359_645 Mask@@31 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| Mask@@31) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2359_645 Mask@@31 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_4484) (o_2@@33 T@Ref) (f_4@@33 T@Field_2359_2353) ) (! (= (HasDirectPerm_2359_2353 Mask@@32 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| Mask@@32) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2359_2353 Mask@@32 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_4484) (o_2@@34 T@Ref) (f_4@@34 T@Field_8053_8054) ) (! (= (HasDirectPerm_2359_2360 Mask@@33 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@@33) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2359_2360 Mask@@33 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_4463) (ExhaleHeap@@9 T@PolymorphicMapType_4463) (Mask@@34 T@PolymorphicMapType_4484) (o_1@@0 T@Ref) (f_2@@47 T@Field_2352_8071) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@34) (=> (HasDirectPerm_2352_15736 Mask@@34 o_1@@0 f_2@@47) (= (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@11) o_1@@0 f_2@@47) (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| ExhaleHeap@@9) o_1@@0 f_2@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@34) (select (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| ExhaleHeap@@9) o_1@@0 f_2@@47))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_4463) (ExhaleHeap@@10 T@PolymorphicMapType_4463) (Mask@@35 T@PolymorphicMapType_4484) (o_1@@1 T@Ref) (f_2@@48 T@Field_7908_1213) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@35) (=> (HasDirectPerm_2352_1213 Mask@@35 o_1@@1 f_2@@48) (= (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@12) o_1@@1 f_2@@48) (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| ExhaleHeap@@10) o_1@@1 f_2@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@35) (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| ExhaleHeap@@10) o_1@@1 f_2@@48))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_4463) (ExhaleHeap@@11 T@PolymorphicMapType_4463) (Mask@@36 T@PolymorphicMapType_4484) (o_1@@2 T@Ref) (f_2@@49 T@Field_4523_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@36) (=> (HasDirectPerm_2352_53 Mask@@36 o_1@@2 f_2@@49) (= (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@13) o_1@@2 f_2@@49) (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| ExhaleHeap@@11) o_1@@2 f_2@@49))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@36) (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| ExhaleHeap@@11) o_1@@2 f_2@@49))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_4463) (ExhaleHeap@@12 T@PolymorphicMapType_4463) (Mask@@37 T@PolymorphicMapType_4484) (o_1@@3 T@Ref) (f_2@@50 T@Field_8004_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@37) (=> (HasDirectPerm_2355_645 Mask@@37 o_1@@3 f_2@@50) (= (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@14) o_1@@3 f_2@@50) (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| ExhaleHeap@@12) o_1@@3 f_2@@50))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@37) (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| ExhaleHeap@@12) o_1@@3 f_2@@50))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_4463) (ExhaleHeap@@13 T@PolymorphicMapType_4463) (Mask@@38 T@PolymorphicMapType_4484) (o_1@@4 T@Ref) (f_2@@51 T@Field_4536_4537) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@38) (=> (HasDirectPerm_2352_2353 Mask@@38 o_1@@4 f_2@@51) (= (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@15) o_1@@4 f_2@@51) (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| ExhaleHeap@@13) o_1@@4 f_2@@51))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@38) (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| ExhaleHeap@@13) o_1@@4 f_2@@51))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_4463) (ExhaleHeap@@14 T@PolymorphicMapType_4463) (Mask@@39 T@PolymorphicMapType_4484) (o_1@@5 T@Ref) (f_2@@52 T@Field_2352_2360) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@39) (=> (HasDirectPerm_2352_2360 Mask@@39 o_1@@5 f_2@@52) (= (select (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@16) o_1@@5 f_2@@52) (select (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| ExhaleHeap@@14) o_1@@5 f_2@@52))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@39) (select (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| ExhaleHeap@@14) o_1@@5 f_2@@52))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_4463) (ExhaleHeap@@15 T@PolymorphicMapType_4463) (Mask@@40 T@PolymorphicMapType_4484) (o_1@@6 T@Ref) (f_2@@53 T@Field_8066_8071) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@40) (=> (HasDirectPerm_2359_14475 Mask@@40 o_1@@6 f_2@@53) (= (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@17) o_1@@6 f_2@@53) (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| ExhaleHeap@@15) o_1@@6 f_2@@53))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@40) (select (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| ExhaleHeap@@15) o_1@@6 f_2@@53))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_4463) (ExhaleHeap@@16 T@PolymorphicMapType_4463) (Mask@@41 T@PolymorphicMapType_4484) (o_1@@7 T@Ref) (f_2@@54 T@Field_2359_1213) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@41) (=> (HasDirectPerm_2359_1213 Mask@@41 o_1@@7 f_2@@54) (= (select (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@18) o_1@@7 f_2@@54) (select (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| ExhaleHeap@@16) o_1@@7 f_2@@54))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@41) (select (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| ExhaleHeap@@16) o_1@@7 f_2@@54))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_4463) (ExhaleHeap@@17 T@PolymorphicMapType_4463) (Mask@@42 T@PolymorphicMapType_4484) (o_1@@8 T@Ref) (f_2@@55 T@Field_2359_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@42) (=> (HasDirectPerm_2359_53 Mask@@42 o_1@@8 f_2@@55) (= (select (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@19) o_1@@8 f_2@@55) (select (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| ExhaleHeap@@17) o_1@@8 f_2@@55))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@42) (select (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| ExhaleHeap@@17) o_1@@8 f_2@@55))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_4463) (ExhaleHeap@@18 T@PolymorphicMapType_4463) (Mask@@43 T@PolymorphicMapType_4484) (o_1@@9 T@Ref) (f_2@@56 T@Field_2359_645) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@43) (=> (HasDirectPerm_2359_645 Mask@@43 o_1@@9 f_2@@56) (= (select (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@20) o_1@@9 f_2@@56) (select (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| ExhaleHeap@@18) o_1@@9 f_2@@56))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@43) (select (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| ExhaleHeap@@18) o_1@@9 f_2@@56))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_4463) (ExhaleHeap@@19 T@PolymorphicMapType_4463) (Mask@@44 T@PolymorphicMapType_4484) (o_1@@10 T@Ref) (f_2@@57 T@Field_2359_2353) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@44) (=> (HasDirectPerm_2359_2353 Mask@@44 o_1@@10 f_2@@57) (= (select (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@21) o_1@@10 f_2@@57) (select (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| ExhaleHeap@@19) o_1@@10 f_2@@57))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@44) (select (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| ExhaleHeap@@19) o_1@@10 f_2@@57))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_4463) (ExhaleHeap@@20 T@PolymorphicMapType_4463) (Mask@@45 T@PolymorphicMapType_4484) (o_1@@11 T@Ref) (f_2@@58 T@Field_8053_8054) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@45) (=> (HasDirectPerm_2359_2360 Mask@@45 o_1@@11 f_2@@58) (= (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@22) o_1@@11 f_2@@58) (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| ExhaleHeap@@20) o_1@@11 f_2@@58))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@45) (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| ExhaleHeap@@20) o_1@@11 f_2@@58))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_8066_8071) ) (! (= (select (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_2359_645) ) (! (= (select (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_2359_2353) ) (! (= (select (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_2359_53) ) (! (= (select (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_8053_8054) ) (! (= (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_2359_1213) ) (! (= (select (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_2352_8071) ) (! (= (select (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_8004_645) ) (! (= (select (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_4536_4537) ) (! (= (select (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_4523_53) ) (! (= (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_2352_2360) ) (! (= (select (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_7908_1213) ) (! (= (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_4484) (SummandMask1 T@PolymorphicMapType_4484) (SummandMask2 T@PolymorphicMapType_4484) (o_2@@47 T@Ref) (f_4@@47 T@Field_8066_8071) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_4484) (SummandMask1@@0 T@PolymorphicMapType_4484) (SummandMask2@@0 T@PolymorphicMapType_4484) (o_2@@48 T@Ref) (f_4@@48 T@Field_2359_645) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_4484) (SummandMask1@@1 T@PolymorphicMapType_4484) (SummandMask2@@1 T@PolymorphicMapType_4484) (o_2@@49 T@Ref) (f_4@@49 T@Field_2359_2353) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_4484) (SummandMask1@@2 T@PolymorphicMapType_4484) (SummandMask2@@2 T@PolymorphicMapType_4484) (o_2@@50 T@Ref) (f_4@@50 T@Field_2359_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_4484) (SummandMask1@@3 T@PolymorphicMapType_4484) (SummandMask2@@3 T@PolymorphicMapType_4484) (o_2@@51 T@Ref) (f_4@@51 T@Field_8053_8054) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_4484) (SummandMask1@@4 T@PolymorphicMapType_4484) (SummandMask2@@4 T@PolymorphicMapType_4484) (o_2@@52 T@Ref) (f_4@@52 T@Field_2359_1213) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_4484) (SummandMask1@@5 T@PolymorphicMapType_4484) (SummandMask2@@5 T@PolymorphicMapType_4484) (o_2@@53 T@Ref) (f_4@@53 T@Field_2352_8071) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_4484) (SummandMask1@@6 T@PolymorphicMapType_4484) (SummandMask2@@6 T@PolymorphicMapType_4484) (o_2@@54 T@Ref) (f_4@@54 T@Field_8004_645) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_4484) (SummandMask1@@7 T@PolymorphicMapType_4484) (SummandMask2@@7 T@PolymorphicMapType_4484) (o_2@@55 T@Ref) (f_4@@55 T@Field_4536_4537) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_4484) (SummandMask1@@8 T@PolymorphicMapType_4484) (SummandMask2@@8 T@PolymorphicMapType_4484) (o_2@@56 T@Ref) (f_4@@56 T@Field_4523_53) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_4484) (SummandMask1@@9 T@PolymorphicMapType_4484) (SummandMask2@@9 T@PolymorphicMapType_4484) (o_2@@57 T@Ref) (f_4@@57 T@Field_2352_2360) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_4484) (SummandMask1@@10 T@PolymorphicMapType_4484) (SummandMask2@@10 T@PolymorphicMapType_4484) (o_2@@58 T@Ref) (f_4@@58 T@Field_7908_1213) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((this@@3 T@Ref) ) (! (= (getPredWandId_2359_2360 (P this@@3)) 0)
 :qid |stdinbpl.221:15|
 :skolemid |24|
 :pattern ( (P this@@3))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_4463) (o T@Ref) (f_3 T@Field_8066_8071) (v T@PolymorphicMapType_5012) ) (! (succHeap Heap@@23 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@23) (store (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@23) o f_3 v) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@23) (store (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@23) o f_3 v) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@23) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_4463) (o@@0 T@Ref) (f_3@@0 T@Field_2359_645) (v@@0 Real) ) (! (succHeap Heap@@24 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@24) (store (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@24) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@24) (store (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@24) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@24) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_4463) (o@@1 T@Ref) (f_3@@1 T@Field_2359_1213) (v@@1 Int) ) (! (succHeap Heap@@25 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@25) (store (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@25) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@25) (store (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@25) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@25) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_4463) (o@@2 T@Ref) (f_3@@2 T@Field_8053_8054) (v@@2 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@26) (store (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@26) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@26) (store (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@26) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@26) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_4463) (o@@3 T@Ref) (f_3@@3 T@Field_2359_2353) (v@@3 T@Ref) ) (! (succHeap Heap@@27 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@27) (store (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@27) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@27) (store (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@27) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@27) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_4463) (o@@4 T@Ref) (f_3@@4 T@Field_2359_53) (v@@4 Bool) ) (! (succHeap Heap@@28 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@28) (store (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@28) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@28) (store (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@28) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@28) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_4463) (o@@5 T@Ref) (f_3@@5 T@Field_2352_8071) (v@@5 T@PolymorphicMapType_5012) ) (! (succHeap Heap@@29 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@29) (store (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@29) o@@5 f_3@@5 v@@5)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@29) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@29) (store (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@29) o@@5 f_3@@5 v@@5)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_4463) (o@@6 T@Ref) (f_3@@6 T@Field_8004_645) (v@@6 Real) ) (! (succHeap Heap@@30 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@30) (store (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@30) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@30) (store (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@30) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@30) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_4463) (o@@7 T@Ref) (f_3@@7 T@Field_7908_1213) (v@@7 Int) ) (! (succHeap Heap@@31 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@31) (store (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@31) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@31) (store (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@31) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@31) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_4463) (o@@8 T@Ref) (f_3@@8 T@Field_2352_2360) (v@@8 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@32) (store (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@32) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@32) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@32) (store (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@32) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_4463) (o@@9 T@Ref) (f_3@@9 T@Field_4536_4537) (v@@9 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@33) (store (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@33) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@33) (store (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@33) o@@9 f_3@@9 v@@9) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@33) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_4463) (o@@10 T@Ref) (f_3@@10 T@Field_4523_53) (v@@10 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_4463 (store (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@34) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_4463 (store (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@34) o@@10 f_3@@10 v@@10) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@34) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@34)))
)))
(assert (forall ((this@@4 T@Ref) ) (! (= (PredicateMaskField_2359 (P this@@4)) (|P#sm| this@@4))
 :qid |stdinbpl.213:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_2359 (P this@@4)))
)))
(assert (< globalK$ FullPerm))
(assert (< NoPerm globalK$))
(assert (forall ((o@@11 T@Ref) (f T@Field_4536_4537) (Heap@@35 T@PolymorphicMapType_4463) ) (!  (=> (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@35) o@@11 $allocated) (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@35) (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@35) o@@11 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@35) o@@11 f))
)))
(assert (forall ((p@@2 T@Field_8053_8054) (v_1@@1 T@FrameType) (q T@Field_8053_8054) (w@@1 T@FrameType) (r T@Field_8053_8054) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8053_8053 p@@2 v_1@@1 q w@@1) (InsidePredicate_8053_8053 q w@@1 r u)) (InsidePredicate_8053_8053 p@@2 v_1@@1 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8053_8053 p@@2 v_1@@1 q w@@1) (InsidePredicate_8053_8053 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_8053_8054) (v_1@@2 T@FrameType) (q@@0 T@Field_8053_8054) (w@@2 T@FrameType) (r@@0 T@Field_2352_2360) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_8053_8053 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8053_4523 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_8053_4523 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8053_8053 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_8053_4523 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_8053_8054) (v_1@@3 T@FrameType) (q@@1 T@Field_2352_2360) (w@@3 T@FrameType) (r@@1 T@Field_8053_8054) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_8053_4523 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4523_8053 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_8053_8053 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8053_4523 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_4523_8053 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_8053_8054) (v_1@@4 T@FrameType) (q@@2 T@Field_2352_2360) (w@@4 T@FrameType) (r@@2 T@Field_2352_2360) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_8053_4523 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4523_4523 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_8053_4523 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8053_4523 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_4523_4523 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_2352_2360) (v_1@@5 T@FrameType) (q@@3 T@Field_8053_8054) (w@@5 T@FrameType) (r@@3 T@Field_8053_8054) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_4523_8053 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8053_8053 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_4523_8053 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4523_8053 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_8053_8053 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_2352_2360) (v_1@@6 T@FrameType) (q@@4 T@Field_8053_8054) (w@@6 T@FrameType) (r@@4 T@Field_2352_2360) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_4523_8053 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8053_4523 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_4523_4523 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4523_8053 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_8053_4523 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_2352_2360) (v_1@@7 T@FrameType) (q@@5 T@Field_2352_2360) (w@@7 T@FrameType) (r@@5 T@Field_8053_8054) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_4523_4523 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4523_8053 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_4523_8053 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4523_4523 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_4523_8053 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_2352_2360) (v_1@@8 T@FrameType) (q@@6 T@Field_2352_2360) (w@@8 T@FrameType) (r@@6 T@Field_2352_2360) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_4523_4523 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4523_4523 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_4523_4523 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_4523_4523 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_4523_4523 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@9 () T@PolymorphicMapType_4484)
(declare-fun this@@5 () T@Ref)
(declare-fun Heap@9 () T@PolymorphicMapType_4463)
(declare-fun Heap@6 () T@PolymorphicMapType_4463)
(declare-fun Heap@7 () T@PolymorphicMapType_4463)
(declare-fun Heap@8 () T@PolymorphicMapType_4463)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@8 () T@PolymorphicMapType_4484)
(declare-fun Mask@7 () T@PolymorphicMapType_4484)
(declare-fun perm@2 () Real)
(declare-fun k () Real)
(declare-fun FrameFragment_1213 (Int) T@FrameType)
(declare-fun perm@0 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_4484)
(declare-fun Mask@1 () T@PolymorphicMapType_4484)
(declare-fun Heap@1 () T@PolymorphicMapType_4463)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Heap@2 () T@PolymorphicMapType_4463)
(declare-fun Mask@3 () T@PolymorphicMapType_4484)
(declare-fun Mask@4 () T@PolymorphicMapType_4484)
(declare-fun Mask@5 () T@PolymorphicMapType_4484)
(declare-fun Mask@6 () T@PolymorphicMapType_4484)
(declare-fun Heap@3 () T@PolymorphicMapType_4463)
(declare-fun Heap@4 () T@PolymorphicMapType_4463)
(declare-fun Heap@5 () T@PolymorphicMapType_4463)
(declare-fun perm@1 () Real)
(declare-fun Heap@@36 () T@PolymorphicMapType_4463)
(declare-fun Heap@0 () T@PolymorphicMapType_4463)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_4484)
(declare-fun tk1 () T@Ref)
(set-info :boogie-vc-id TestunfoldVRd$)
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
 (=> (= (ControlFlow 0 0) 29) (let ((anon8_correct true))
(let ((anon12_Else_correct  (=> (HasDirectPerm_2359_2360 Mask@9 null (P this@@5)) (=> (and (= Heap@9 Heap@6) (= (ControlFlow 0 3) 1)) anon8_correct))))
(let ((anon12_Then_correct  (=> (not (HasDirectPerm_2359_2360 Mask@9 null (P this@@5))) (=> (and (and (= Heap@7 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@6) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@6) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@6) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@6) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@6) (store (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@6) null (|P#sm| this@@5) ZeroPMask) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@6) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@6) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@6) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@6) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@6) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@6))) (= Heap@8 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@7) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@7) (store (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@7) null (P this@@5) freshVersion@0) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@7) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@7) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@7) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@7) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@7) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@7) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@7) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@7) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@7)))) (and (= Heap@9 Heap@8) (= (ControlFlow 0 2) 1))) anon8_correct))))
(let ((anon6_correct  (=> (= Mask@8 (PolymorphicMapType_4484 (store (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@7) this@@5 f_7 (- (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@7) this@@5 f_7) perm@2)) (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@7) (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@7) (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@7) (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@7) (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| Mask@7) (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| Mask@7) (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| Mask@7) (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| Mask@7) (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| Mask@7) (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| Mask@7) (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| Mask@7))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (>= k NoPerm)) (=> (>= k NoPerm) (=> (= Mask@9 (PolymorphicMapType_4484 (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@8) (store (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@8) null (P this@@5) (+ (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@8) null (P this@@5)) k)) (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@8) (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@8) (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@8) (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| Mask@8) (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| Mask@8) (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| Mask@8) (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| Mask@8) (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| Mask@8) (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| Mask@8) (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| Mask@8))) (=> (and (and (state Heap@6 Mask@9) (state Heap@6 Mask@9)) (and (|P#trigger_2359| Heap@6 (P this@@5)) (= (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@6) null (P this@@5)) (FrameFragment_1213 (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@6) this@@5 f_7))))) (and (=> (= (ControlFlow 0 4) 2) anon12_Then_correct) (=> (= (ControlFlow 0 4) 3) anon12_Else_correct)))))))))
(let ((anon11_Else_correct  (=> (and (= perm@2 NoPerm) (= (ControlFlow 0 8) 4)) anon6_correct)))
(let ((anon11_Then_correct  (=> (not (= perm@2 NoPerm)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= perm@2 (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@7) this@@5 f_7))) (=> (<= perm@2 (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@7) this@@5 f_7)) (=> (= (ControlFlow 0 6) 4) anon6_correct))))))
(let ((anon4_correct  (=> (= perm@0 (* FullPerm k)) (and (=> (= (ControlFlow 0 9) (- 0 19)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= this@@5 null))) (=> (and (and (= Mask@2 (PolymorphicMapType_4484 (store (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@1) this@@5 f_7 (+ (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@1) this@@5 f_7) perm@0)) (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@1) (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@1) (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@1) (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@1) (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| Mask@1) (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| Mask@1) (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| Mask@1) (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| Mask@1) (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| Mask@1) (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| Mask@1) (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| Mask@1))) (state Heap@1 Mask@2)) (and (state Heap@1 Mask@2) (state Heap@1 Mask@2))) (=> (and (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@1) freshObj@0 $allocated))) (and (= Heap@2 (PolymorphicMapType_4463 (store (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@1) freshObj@0 $allocated true) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@1) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@1) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@1) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@1) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@1) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@1) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@1) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@1) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@1) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@1) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@1))) (= Mask@3 (PolymorphicMapType_4484 (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@2) (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@2) (store (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@2) freshObj@0 joinable$ (+ (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@2) freshObj@0 joinable$) FullPerm)) (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@2) (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@2) (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| Mask@2) (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| Mask@2) (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| Mask@2) (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| Mask@2) (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| Mask@2) (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| Mask@2) (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| Mask@2))))) (and (and (= Mask@4 (PolymorphicMapType_4484 (store (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@3) freshObj@0 f_7 (+ (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@3) freshObj@0 f_7) FullPerm)) (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@3) (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@3) (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@3) (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@3) (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| Mask@3) (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| Mask@3) (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| Mask@3) (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| Mask@3) (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| Mask@3) (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| Mask@3) (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| Mask@3))) (= Mask@5 (PolymorphicMapType_4484 (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@4) (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@4) (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@4) (store (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@4) freshObj@0 parX (+ (select (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@4) freshObj@0 parX) FullPerm)) (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@4) (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| Mask@4) (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| Mask@4) (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| Mask@4) (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| Mask@4) (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| Mask@4) (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| Mask@4) (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| Mask@4)))) (and (= Mask@6 (PolymorphicMapType_4484 (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@5) (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@5) (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@5) (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@5) (store (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@5) freshObj@0 parK (+ (select (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@5) freshObj@0 parK) FullPerm)) (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| Mask@5) (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| Mask@5) (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| Mask@5) (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| Mask@5) (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| Mask@5) (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| Mask@5) (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| Mask@5))) (state Heap@2 Mask@6)))) (and (=> (= (ControlFlow 0 9) (- 0 18)) (= FullPerm (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@6) freshObj@0 joinable$))) (=> (= FullPerm (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@6) freshObj@0 joinable$)) (=> (and (= Heap@3 (PolymorphicMapType_4463 (store (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@2) freshObj@0 joinable$ true) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@2) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@2) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@2) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@2) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@2) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@2) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@2) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@2) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@2) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@2) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@2))) (state Heap@3 Mask@6)) (and (=> (= (ControlFlow 0 9) (- 0 17)) (= FullPerm (select (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@6) freshObj@0 parX))) (=> (= FullPerm (select (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@6) freshObj@0 parX)) (=> (and (= Heap@4 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@3) (store (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@3) freshObj@0 parX this@@5) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@3) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@3) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@3) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@3) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@3) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@3) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@3) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@3) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@3) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@3))) (state Heap@4 Mask@6)) (and (=> (= (ControlFlow 0 9) (- 0 16)) (= FullPerm (select (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@6) freshObj@0 parK))) (=> (= FullPerm (select (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@6) freshObj@0 parK)) (=> (and (= Heap@5 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@4) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@4) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@4) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@4) (store (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@4) freshObj@0 parK k) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@4) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@4) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@4) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@4) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@4) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@4) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@4))) (state Heap@5 Mask@6)) (and (=> (= (ControlFlow 0 9) (- 0 15)) (HasDirectPerm_2352_2353 Mask@6 freshObj@0 parX)) (=> (HasDirectPerm_2352_2353 Mask@6 freshObj@0 parX) (and (=> (= (ControlFlow 0 9) (- 0 14)) (HasDirectPerm_2355_645 Mask@6 freshObj@0 parK)) (=> (HasDirectPerm_2355_645 Mask@6 freshObj@0 parK) (=> (= perm@1 (select (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@5) freshObj@0 parK)) (and (=> (= (ControlFlow 0 9) (- 0 13)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (=> (> perm@1 NoPerm) (not (= (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@5) freshObj@0 parX) null))) (=> (and (and (= Mask@7 (PolymorphicMapType_4484 (store (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@6) (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@5) freshObj@0 parX) f_7 (+ (select (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@6) (select (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@5) freshObj@0 parX) f_7) perm@1)) (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@6) (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@6) (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@6) (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@6) (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| Mask@6) (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| Mask@6) (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| Mask@6) (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| Mask@6) (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| Mask@6) (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| Mask@6) (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| Mask@6))) (state Heap@5 Mask@7)) (and (state Heap@5 Mask@7) (state Heap@5 Mask@7))) (and (=> (= (ControlFlow 0 9) (- 0 12)) (= FullPerm (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@7) freshObj@0 joinable$))) (=> (= FullPerm (select (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@7) freshObj@0 joinable$)) (=> (and (= Heap@6 (PolymorphicMapType_4463 (store (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@5) freshObj@0 joinable$ false) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@5) (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@5) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@5) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@5) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@5) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@5) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@5) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@5) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@5) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@5) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@5))) (state Heap@6 Mask@7)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (> k NoPerm)) (=> (> k NoPerm) (=> (= perm@2 (* FullPerm k)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (and (=> (= (ControlFlow 0 9) 6) anon11_Then_correct) (=> (= (ControlFlow 0 9) 8) anon11_Else_correct))))))))))))))))))))))))))))))))))))
(let ((anon10_Else_correct  (=> (HasDirectPerm_2359_2360 Mask@1 null (P this@@5)) (=> (and (= Heap@1 Heap@@36) (= (ControlFlow 0 21) 9)) anon4_correct))))
(let ((anon10_Then_correct  (=> (and (and (not (HasDirectPerm_2359_2360 Mask@1 null (P this@@5))) (= Heap@0 (PolymorphicMapType_4463 (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@36) (|PolymorphicMapType_4463_2222_2223#PolymorphicMapType_4463| Heap@@36) (store (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@36) null (P this@@5) newVersion@0) (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@36) (|PolymorphicMapType_4463_2355_645#PolymorphicMapType_4463| Heap@@36) (|PolymorphicMapType_4463_2363_12811#PolymorphicMapType_4463| Heap@@36) (|PolymorphicMapType_4463_2359_2353#PolymorphicMapType_4463| Heap@@36) (|PolymorphicMapType_4463_2359_645#PolymorphicMapType_4463| Heap@@36) (|PolymorphicMapType_4463_2359_53#PolymorphicMapType_4463| Heap@@36) (|PolymorphicMapType_4463_2359_1213#PolymorphicMapType_4463| Heap@@36) (|PolymorphicMapType_4463_2352_2360#PolymorphicMapType_4463| Heap@@36) (|PolymorphicMapType_4463_2352_15778#PolymorphicMapType_4463| Heap@@36)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 20) 9))) anon4_correct)))
(let ((anon2_correct  (=> (= Mask@1 (PolymorphicMapType_4484 (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| Mask@0) (store (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@0) null (P this@@5) (- (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@0) null (P this@@5)) k)) (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| Mask@0) (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| Mask@0) (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| Mask@0) (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| Mask@0) (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| Mask@0) (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| Mask@0) (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| Mask@0) (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| Mask@0) (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| Mask@0) (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| Mask@0))) (and (=> (= (ControlFlow 0 22) 20) anon10_Then_correct) (=> (= (ControlFlow 0 22) 21) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (= k NoPerm) (= (ControlFlow 0 25) 22)) anon2_correct)))
(let ((anon9_Then_correct  (=> (not (= k NoPerm)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (<= k (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@0) null (P this@@5)))) (=> (<= k (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| Mask@0) null (P this@@5))) (=> (= (ControlFlow 0 23) 22) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@36 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@36) this@@5 $allocated)) (and (not (= this@@5 null)) (state Heap@@36 ZeroMask))) (=> (and (and (and (< NoPerm k) (state Heap@@36 ZeroMask)) (and (< k FullPerm) (state Heap@@36 ZeroMask))) (and (and (= Mask@0 (PolymorphicMapType_4484 (|PolymorphicMapType_4484_2350_1213#PolymorphicMapType_4484| ZeroMask) (store (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| ZeroMask) null (P this@@5) (+ (select (|PolymorphicMapType_4484_2359_2360#PolymorphicMapType_4484| ZeroMask) null (P this@@5)) FullPerm)) (|PolymorphicMapType_4484_2348_1198#PolymorphicMapType_4484| ZeroMask) (|PolymorphicMapType_4484_2352_2353#PolymorphicMapType_4484| ZeroMask) (|PolymorphicMapType_4484_2355_645#PolymorphicMapType_4484| ZeroMask) (|PolymorphicMapType_4484_2350_2360#PolymorphicMapType_4484| ZeroMask) (|PolymorphicMapType_4484_2350_24965#PolymorphicMapType_4484| ZeroMask) (|PolymorphicMapType_4484_2359_1213#PolymorphicMapType_4484| ZeroMask) (|PolymorphicMapType_4484_2359_1198#PolymorphicMapType_4484| ZeroMask) (|PolymorphicMapType_4484_2359_2353#PolymorphicMapType_4484| ZeroMask) (|PolymorphicMapType_4484_2359_645#PolymorphicMapType_4484| ZeroMask) (|PolymorphicMapType_4484_2359_25456#PolymorphicMapType_4484| ZeroMask))) (state Heap@@36 Mask@0)) (and (state Heap@@36 Mask@0) (select (|PolymorphicMapType_4463_2219_53#PolymorphicMapType_4463| Heap@@36) tk1 $allocated)))) (and (=> (= (ControlFlow 0 26) (- 0 28)) (> k NoPerm)) (=> (> k NoPerm) (=> (and (|P#trigger_2359| Heap@@36 (P this@@5)) (= (select (|PolymorphicMapType_4463_2359_2360#PolymorphicMapType_4463| Heap@@36) null (P this@@5)) (FrameFragment_1213 (select (|PolymorphicMapType_4463_2350_1213#PolymorphicMapType_4463| Heap@@36) this@@5 f_7)))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (>= k NoPerm)) (=> (>= k NoPerm) (and (=> (= (ControlFlow 0 26) 23) anon9_Then_correct) (=> (= (ControlFlow 0 26) 25) anon9_Else_correct))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 29) 26) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid