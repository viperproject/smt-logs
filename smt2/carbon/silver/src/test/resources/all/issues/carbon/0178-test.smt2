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
(declare-sort T@Field_9986_53 0)
(declare-sort T@Field_9999_10000 0)
(declare-sort T@Field_16244_16245 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_16259_16264 0)
(declare-sort T@Field_6406_53 0)
(declare-sort T@Field_6406_10000 0)
(declare-sort T@Field_9986_6407 0)
(declare-sort T@Field_9986_16264 0)
(declare-datatypes ((T@PolymorphicMapType_9947 0)) (((PolymorphicMapType_9947 (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| (Array T@Ref T@Field_9999_10000 Real)) (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| (Array T@Ref T@Field_16244_16245 Real)) (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| (Array T@Ref T@Field_9986_6407 Real)) (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| (Array T@Ref T@Field_9986_53 Real)) (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| (Array T@Ref T@Field_9986_16264 Real)) (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| (Array T@Ref T@Field_6406_10000 Real)) (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| (Array T@Ref T@Field_6406_53 Real)) (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| (Array T@Ref T@Field_16259_16264 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10475 0)) (((PolymorphicMapType_10475 (|PolymorphicMapType_10475_6399_6400#PolymorphicMapType_10475| (Array T@Ref T@Field_9999_10000 Bool)) (|PolymorphicMapType_10475_6399_53#PolymorphicMapType_10475| (Array T@Ref T@Field_9986_53 Bool)) (|PolymorphicMapType_10475_6399_16245#PolymorphicMapType_10475| (Array T@Ref T@Field_9986_6407 Bool)) (|PolymorphicMapType_10475_6399_29795#PolymorphicMapType_10475| (Array T@Ref T@Field_9986_16264 Bool)) (|PolymorphicMapType_10475_16244_6400#PolymorphicMapType_10475| (Array T@Ref T@Field_6406_10000 Bool)) (|PolymorphicMapType_10475_16244_53#PolymorphicMapType_10475| (Array T@Ref T@Field_6406_53 Bool)) (|PolymorphicMapType_10475_16244_16245#PolymorphicMapType_10475| (Array T@Ref T@Field_16244_16245 Bool)) (|PolymorphicMapType_10475_16244_30645#PolymorphicMapType_10475| (Array T@Ref T@Field_16259_16264 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9926 0)) (((PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| (Array T@Ref T@Field_9986_53 Bool)) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| (Array T@Ref T@Field_9999_10000 T@Ref)) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| (Array T@Ref T@Field_16244_16245 T@FrameType)) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| (Array T@Ref T@Field_16259_16264 T@PolymorphicMapType_10475)) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| (Array T@Ref T@Field_6406_53 Bool)) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| (Array T@Ref T@Field_6406_10000 T@Ref)) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| (Array T@Ref T@Field_9986_6407 T@FrameType)) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| (Array T@Ref T@Field_9986_16264 T@PolymorphicMapType_10475)) ) ) ))
(declare-fun $allocated () T@Field_9986_53)
(declare-fun data () T@Field_9999_10000)
(declare-fun succHeap (T@PolymorphicMapType_9926 T@PolymorphicMapType_9926) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_9926 T@PolymorphicMapType_9926) Bool)
(declare-fun state (T@PolymorphicMapType_9926 T@PolymorphicMapType_9947) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_9947) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_9926 T@PolymorphicMapType_9926 T@PolymorphicMapType_9947) Bool)
(declare-fun IsPredicateField_9986_28849 (T@Field_9986_6407) Bool)
(declare-fun HasDirectPerm_9986_6407 (T@PolymorphicMapType_9947 T@Ref T@Field_9986_6407) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9986 (T@Field_9986_6407) T@Field_9986_16264)
(declare-fun IsPredicateField_6406_6407 (T@Field_16244_16245) Bool)
(declare-fun HasDirectPerm_6406_6407 (T@PolymorphicMapType_9947 T@Ref T@Field_16244_16245) Bool)
(declare-fun PredicateMaskField_6406 (T@Field_16244_16245) T@Field_16259_16264)
(declare-fun IsWandField_9986_31810 (T@Field_9986_6407) Bool)
(declare-fun WandMaskField_9986 (T@Field_9986_6407) T@Field_9986_16264)
(declare-fun IsWandField_6406_31453 (T@Field_16244_16245) Bool)
(declare-fun WandMaskField_6406 (T@Field_16244_16245) T@Field_16259_16264)
(declare-fun ZeroPMask () T@PolymorphicMapType_10475)
(declare-fun |Node__isolated#condqp2| (T@PolymorphicMapType_9926 T@Ref (Array T@Ref Bool)) Int)
(declare-fun |sk_Node__isolated#condqp2| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun Node__isolated (T@Ref (Array T@Ref Bool)) T@Field_16244_16245)
(declare-fun |Node__isolated#trigger_6406| (T@PolymorphicMapType_9926 T@Field_16244_16245) Bool)
(declare-fun |Node__isolated#everUsed_6406| (T@Field_16244_16245) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun |Node__isolated#sm| (T@Ref (Array T@Ref Bool)) T@Field_16259_16264)
(declare-fun dummyHeap () T@PolymorphicMapType_9926)
(declare-fun ZeroMask () T@PolymorphicMapType_9947)
(declare-fun InsidePredicate_16244_16244 (T@Field_16244_16245 T@FrameType T@Field_16244_16245 T@FrameType) Bool)
(declare-fun InsidePredicate_9986_9986 (T@Field_9986_6407 T@FrameType T@Field_9986_6407 T@FrameType) Bool)
(declare-fun IsPredicateField_6399_6400 (T@Field_9999_10000) Bool)
(declare-fun IsWandField_6399_6400 (T@Field_9999_10000) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6406_37521 (T@Field_16259_16264) Bool)
(declare-fun IsWandField_6406_37537 (T@Field_16259_16264) Bool)
(declare-fun IsPredicateField_6406_53 (T@Field_6406_53) Bool)
(declare-fun IsWandField_6406_53 (T@Field_6406_53) Bool)
(declare-fun IsPredicateField_6406_6400 (T@Field_6406_10000) Bool)
(declare-fun IsWandField_6406_6400 (T@Field_6406_10000) Bool)
(declare-fun IsPredicateField_6399_36858 (T@Field_9986_16264) Bool)
(declare-fun IsWandField_6399_36874 (T@Field_9986_16264) Bool)
(declare-fun IsPredicateField_6399_53 (T@Field_9986_53) Bool)
(declare-fun IsWandField_6399_53 (T@Field_9986_53) Bool)
(declare-fun HasDirectPerm_9986_28236 (T@PolymorphicMapType_9947 T@Ref T@Field_9986_16264) Bool)
(declare-fun HasDirectPerm_9986_10000 (T@PolymorphicMapType_9947 T@Ref T@Field_9999_10000) Bool)
(declare-fun HasDirectPerm_9986_53 (T@PolymorphicMapType_9947 T@Ref T@Field_9986_53) Bool)
(declare-fun HasDirectPerm_6406_27351 (T@PolymorphicMapType_9947 T@Ref T@Field_16259_16264) Bool)
(declare-fun HasDirectPerm_6406_10000 (T@PolymorphicMapType_9947 T@Ref T@Field_6406_10000) Bool)
(declare-fun HasDirectPerm_6406_53 (T@PolymorphicMapType_9947 T@Ref T@Field_6406_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_9947 T@PolymorphicMapType_9947 T@PolymorphicMapType_9947) Bool)
(declare-fun |Node__isolated#condqp1| (T@PolymorphicMapType_9926 T@Ref (Array T@Ref Bool)) Int)
(declare-fun |sk_Node__isolated#condqp1| (Int Int) T@Ref)
(declare-fun getPredWandId_6406_6407 (T@Field_16244_16245) Int)
(declare-fun InsidePredicate_16244_9986 (T@Field_16244_16245 T@FrameType T@Field_9986_6407 T@FrameType) Bool)
(declare-fun InsidePredicate_9986_16244 (T@Field_9986_6407 T@FrameType T@Field_16244_16245 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_9926) (Heap1 T@PolymorphicMapType_9926) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_9926) (Mask T@PolymorphicMapType_9947) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_9926) (ExhaleHeap T@PolymorphicMapType_9926) (Mask@@0 T@PolymorphicMapType_9947) (pm_f_13 T@Field_9986_6407) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9986_6407 Mask@@0 null pm_f_13) (IsPredicateField_9986_28849 pm_f_13)) (and (and (and (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_9999_10000) ) (!  (=> (select (|PolymorphicMapType_10475_6399_6400#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@0) null (PredicateMaskField_9986 pm_f_13))) o2_13 f_30) (= (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@0) o2_13 f_30) (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| ExhaleHeap) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| ExhaleHeap) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_9986_53) ) (!  (=> (select (|PolymorphicMapType_10475_6399_53#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@0) null (PredicateMaskField_9986 pm_f_13))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@0) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| ExhaleHeap) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| ExhaleHeap) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_9986_6407) ) (!  (=> (select (|PolymorphicMapType_10475_6399_16245#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@0) null (PredicateMaskField_9986 pm_f_13))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@0) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| ExhaleHeap) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| ExhaleHeap) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_9986_16264) ) (!  (=> (select (|PolymorphicMapType_10475_6399_29795#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@0) null (PredicateMaskField_9986 pm_f_13))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@0) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| ExhaleHeap) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| ExhaleHeap) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_6406_10000) ) (!  (=> (select (|PolymorphicMapType_10475_16244_6400#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@0) null (PredicateMaskField_9986 pm_f_13))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@0) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| ExhaleHeap) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| ExhaleHeap) o2_13@@3 f_30@@3))
))) (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_6406_53) ) (!  (=> (select (|PolymorphicMapType_10475_16244_53#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@0) null (PredicateMaskField_9986 pm_f_13))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@0) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| ExhaleHeap) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| ExhaleHeap) o2_13@@4 f_30@@4))
))) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_16244_16245) ) (!  (=> (select (|PolymorphicMapType_10475_16244_16245#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@0) null (PredicateMaskField_9986 pm_f_13))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@0) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| ExhaleHeap) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| ExhaleHeap) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_16259_16264) ) (!  (=> (select (|PolymorphicMapType_10475_16244_30645#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@0) null (PredicateMaskField_9986 pm_f_13))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@0) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| ExhaleHeap) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| ExhaleHeap) o2_13@@6 f_30@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_9986_28849 pm_f_13))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_9926) (ExhaleHeap@@0 T@PolymorphicMapType_9926) (Mask@@1 T@PolymorphicMapType_9947) (pm_f_13@@0 T@Field_16244_16245) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6406_6407 Mask@@1 null pm_f_13@@0) (IsPredicateField_6406_6407 pm_f_13@@0)) (and (and (and (and (and (and (and (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_9999_10000) ) (!  (=> (select (|PolymorphicMapType_10475_6399_6400#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@1) null (PredicateMaskField_6406 pm_f_13@@0))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@1) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@7 f_30@@7))
)) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_9986_53) ) (!  (=> (select (|PolymorphicMapType_10475_6399_53#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@1) null (PredicateMaskField_6406 pm_f_13@@0))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@1) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@8 f_30@@8))
))) (forall ((o2_13@@9 T@Ref) (f_30@@9 T@Field_9986_6407) ) (!  (=> (select (|PolymorphicMapType_10475_6399_16245#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@1) null (PredicateMaskField_6406 pm_f_13@@0))) o2_13@@9 f_30@@9) (= (select (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@1) o2_13@@9 f_30@@9) (select (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@9 f_30@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@9 f_30@@9))
))) (forall ((o2_13@@10 T@Ref) (f_30@@10 T@Field_9986_16264) ) (!  (=> (select (|PolymorphicMapType_10475_6399_29795#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@1) null (PredicateMaskField_6406 pm_f_13@@0))) o2_13@@10 f_30@@10) (= (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@1) o2_13@@10 f_30@@10) (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@10 f_30@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@10 f_30@@10))
))) (forall ((o2_13@@11 T@Ref) (f_30@@11 T@Field_6406_10000) ) (!  (=> (select (|PolymorphicMapType_10475_16244_6400#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@1) null (PredicateMaskField_6406 pm_f_13@@0))) o2_13@@11 f_30@@11) (= (select (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@1) o2_13@@11 f_30@@11) (select (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@11 f_30@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@11 f_30@@11))
))) (forall ((o2_13@@12 T@Ref) (f_30@@12 T@Field_6406_53) ) (!  (=> (select (|PolymorphicMapType_10475_16244_53#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@1) null (PredicateMaskField_6406 pm_f_13@@0))) o2_13@@12 f_30@@12) (= (select (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@1) o2_13@@12 f_30@@12) (select (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@12 f_30@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@12 f_30@@12))
))) (forall ((o2_13@@13 T@Ref) (f_30@@13 T@Field_16244_16245) ) (!  (=> (select (|PolymorphicMapType_10475_16244_16245#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@1) null (PredicateMaskField_6406 pm_f_13@@0))) o2_13@@13 f_30@@13) (= (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@1) o2_13@@13 f_30@@13) (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@13 f_30@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@13 f_30@@13))
))) (forall ((o2_13@@14 T@Ref) (f_30@@14 T@Field_16259_16264) ) (!  (=> (select (|PolymorphicMapType_10475_16244_30645#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@1) null (PredicateMaskField_6406 pm_f_13@@0))) o2_13@@14 f_30@@14) (= (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@1) o2_13@@14 f_30@@14) (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@14 f_30@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| ExhaleHeap@@0) o2_13@@14 f_30@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6406_6407 pm_f_13@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_9926) (ExhaleHeap@@1 T@PolymorphicMapType_9926) (Mask@@2 T@PolymorphicMapType_9947) (pm_f_13@@1 T@Field_9986_6407) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9986_6407 Mask@@2 null pm_f_13@@1) (IsWandField_9986_31810 pm_f_13@@1)) (and (and (and (and (and (and (and (forall ((o2_13@@15 T@Ref) (f_30@@15 T@Field_9999_10000) ) (!  (=> (select (|PolymorphicMapType_10475_6399_6400#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@2) null (WandMaskField_9986 pm_f_13@@1))) o2_13@@15 f_30@@15) (= (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@2) o2_13@@15 f_30@@15) (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@15 f_30@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@15 f_30@@15))
)) (forall ((o2_13@@16 T@Ref) (f_30@@16 T@Field_9986_53) ) (!  (=> (select (|PolymorphicMapType_10475_6399_53#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@2) null (WandMaskField_9986 pm_f_13@@1))) o2_13@@16 f_30@@16) (= (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@2) o2_13@@16 f_30@@16) (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@16 f_30@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@16 f_30@@16))
))) (forall ((o2_13@@17 T@Ref) (f_30@@17 T@Field_9986_6407) ) (!  (=> (select (|PolymorphicMapType_10475_6399_16245#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@2) null (WandMaskField_9986 pm_f_13@@1))) o2_13@@17 f_30@@17) (= (select (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@2) o2_13@@17 f_30@@17) (select (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@17 f_30@@17)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@17 f_30@@17))
))) (forall ((o2_13@@18 T@Ref) (f_30@@18 T@Field_9986_16264) ) (!  (=> (select (|PolymorphicMapType_10475_6399_29795#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@2) null (WandMaskField_9986 pm_f_13@@1))) o2_13@@18 f_30@@18) (= (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@2) o2_13@@18 f_30@@18) (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@18 f_30@@18)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@18 f_30@@18))
))) (forall ((o2_13@@19 T@Ref) (f_30@@19 T@Field_6406_10000) ) (!  (=> (select (|PolymorphicMapType_10475_16244_6400#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@2) null (WandMaskField_9986 pm_f_13@@1))) o2_13@@19 f_30@@19) (= (select (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@2) o2_13@@19 f_30@@19) (select (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@19 f_30@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@19 f_30@@19))
))) (forall ((o2_13@@20 T@Ref) (f_30@@20 T@Field_6406_53) ) (!  (=> (select (|PolymorphicMapType_10475_16244_53#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@2) null (WandMaskField_9986 pm_f_13@@1))) o2_13@@20 f_30@@20) (= (select (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@2) o2_13@@20 f_30@@20) (select (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@20 f_30@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@20 f_30@@20))
))) (forall ((o2_13@@21 T@Ref) (f_30@@21 T@Field_16244_16245) ) (!  (=> (select (|PolymorphicMapType_10475_16244_16245#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@2) null (WandMaskField_9986 pm_f_13@@1))) o2_13@@21 f_30@@21) (= (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@2) o2_13@@21 f_30@@21) (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@21 f_30@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@21 f_30@@21))
))) (forall ((o2_13@@22 T@Ref) (f_30@@22 T@Field_16259_16264) ) (!  (=> (select (|PolymorphicMapType_10475_16244_30645#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@2) null (WandMaskField_9986 pm_f_13@@1))) o2_13@@22 f_30@@22) (= (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@2) o2_13@@22 f_30@@22) (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@22 f_30@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| ExhaleHeap@@1) o2_13@@22 f_30@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_9986_31810 pm_f_13@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_9926) (ExhaleHeap@@2 T@PolymorphicMapType_9926) (Mask@@3 T@PolymorphicMapType_9947) (pm_f_13@@2 T@Field_16244_16245) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6406_6407 Mask@@3 null pm_f_13@@2) (IsWandField_6406_31453 pm_f_13@@2)) (and (and (and (and (and (and (and (forall ((o2_13@@23 T@Ref) (f_30@@23 T@Field_9999_10000) ) (!  (=> (select (|PolymorphicMapType_10475_6399_6400#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@3) null (WandMaskField_6406 pm_f_13@@2))) o2_13@@23 f_30@@23) (= (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@3) o2_13@@23 f_30@@23) (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@23 f_30@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@23 f_30@@23))
)) (forall ((o2_13@@24 T@Ref) (f_30@@24 T@Field_9986_53) ) (!  (=> (select (|PolymorphicMapType_10475_6399_53#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@3) null (WandMaskField_6406 pm_f_13@@2))) o2_13@@24 f_30@@24) (= (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@3) o2_13@@24 f_30@@24) (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@24 f_30@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@24 f_30@@24))
))) (forall ((o2_13@@25 T@Ref) (f_30@@25 T@Field_9986_6407) ) (!  (=> (select (|PolymorphicMapType_10475_6399_16245#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@3) null (WandMaskField_6406 pm_f_13@@2))) o2_13@@25 f_30@@25) (= (select (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@3) o2_13@@25 f_30@@25) (select (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@25 f_30@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@25 f_30@@25))
))) (forall ((o2_13@@26 T@Ref) (f_30@@26 T@Field_9986_16264) ) (!  (=> (select (|PolymorphicMapType_10475_6399_29795#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@3) null (WandMaskField_6406 pm_f_13@@2))) o2_13@@26 f_30@@26) (= (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@3) o2_13@@26 f_30@@26) (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@26 f_30@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@26 f_30@@26))
))) (forall ((o2_13@@27 T@Ref) (f_30@@27 T@Field_6406_10000) ) (!  (=> (select (|PolymorphicMapType_10475_16244_6400#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@3) null (WandMaskField_6406 pm_f_13@@2))) o2_13@@27 f_30@@27) (= (select (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@3) o2_13@@27 f_30@@27) (select (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@27 f_30@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@27 f_30@@27))
))) (forall ((o2_13@@28 T@Ref) (f_30@@28 T@Field_6406_53) ) (!  (=> (select (|PolymorphicMapType_10475_16244_53#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@3) null (WandMaskField_6406 pm_f_13@@2))) o2_13@@28 f_30@@28) (= (select (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@3) o2_13@@28 f_30@@28) (select (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@28 f_30@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@28 f_30@@28))
))) (forall ((o2_13@@29 T@Ref) (f_30@@29 T@Field_16244_16245) ) (!  (=> (select (|PolymorphicMapType_10475_16244_16245#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@3) null (WandMaskField_6406 pm_f_13@@2))) o2_13@@29 f_30@@29) (= (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@3) o2_13@@29 f_30@@29) (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@29 f_30@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@29 f_30@@29))
))) (forall ((o2_13@@30 T@Ref) (f_30@@30 T@Field_16259_16264) ) (!  (=> (select (|PolymorphicMapType_10475_16244_30645#PolymorphicMapType_10475| (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@3) null (WandMaskField_6406 pm_f_13@@2))) o2_13@@30 f_30@@30) (= (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@3) o2_13@@30 f_30@@30) (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@30 f_30@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| ExhaleHeap@@2) o2_13@@30 f_30@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_6406_31453 pm_f_13@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_9926) (Heap1@@0 T@PolymorphicMapType_9926) (Heap2 T@PolymorphicMapType_9926) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16259_16264) ) (!  (not (select (|PolymorphicMapType_10475_16244_30645#PolymorphicMapType_10475| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10475_16244_30645#PolymorphicMapType_10475| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16244_16245) ) (!  (not (select (|PolymorphicMapType_10475_16244_16245#PolymorphicMapType_10475| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10475_16244_16245#PolymorphicMapType_10475| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6406_53) ) (!  (not (select (|PolymorphicMapType_10475_16244_53#PolymorphicMapType_10475| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10475_16244_53#PolymorphicMapType_10475| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6406_10000) ) (!  (not (select (|PolymorphicMapType_10475_16244_6400#PolymorphicMapType_10475| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10475_16244_6400#PolymorphicMapType_10475| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9986_16264) ) (!  (not (select (|PolymorphicMapType_10475_6399_29795#PolymorphicMapType_10475| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10475_6399_29795#PolymorphicMapType_10475| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_9986_6407) ) (!  (not (select (|PolymorphicMapType_10475_6399_16245#PolymorphicMapType_10475| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10475_6399_16245#PolymorphicMapType_10475| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_9986_53) ) (!  (not (select (|PolymorphicMapType_10475_6399_53#PolymorphicMapType_10475| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10475_6399_53#PolymorphicMapType_10475| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_9999_10000) ) (!  (not (select (|PolymorphicMapType_10475_6399_6400#PolymorphicMapType_10475| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10475_6399_6400#PolymorphicMapType_10475| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_9926) (Heap1Heap T@PolymorphicMapType_9926) (ref T@Ref) (wset (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select wset (|sk_Node__isolated#condqp2| (|Node__isolated#condqp2| Heap2Heap ref wset) (|Node__isolated#condqp2| Heap1Heap ref wset))) (< NoPerm FullPerm))  (and (select wset (|sk_Node__isolated#condqp2| (|Node__isolated#condqp2| Heap2Heap ref wset) (|Node__isolated#condqp2| Heap1Heap ref wset))) (< NoPerm FullPerm))) (=> (and (select wset (|sk_Node__isolated#condqp2| (|Node__isolated#condqp2| Heap2Heap ref wset) (|Node__isolated#condqp2| Heap1Heap ref wset))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap2Heap) null (Node__isolated (|sk_Node__isolated#condqp2| (|Node__isolated#condqp2| Heap2Heap ref wset) (|Node__isolated#condqp2| Heap1Heap ref wset)) wset)) (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap1Heap) null (Node__isolated (|sk_Node__isolated#condqp2| (|Node__isolated#condqp2| Heap2Heap ref wset) (|Node__isolated#condqp2| Heap1Heap ref wset)) wset))))) (= (|Node__isolated#condqp2| Heap2Heap ref wset) (|Node__isolated#condqp2| Heap1Heap ref wset)))
 :qid |stdinbpl.457:15|
 :skolemid |89|
 :pattern ( (|Node__isolated#condqp2| Heap2Heap ref wset) (|Node__isolated#condqp2| Heap1Heap ref wset) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((ref@@0 T@Ref) (wset@@0 (Array T@Ref Bool)) ) (! (IsPredicateField_6406_6407 (Node__isolated ref@@0 wset@@0))
 :qid |stdinbpl.416:15|
 :skolemid |83|
 :pattern ( (Node__isolated ref@@0 wset@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_9926) (ref@@1 T@Ref) (wset@@1 (Array T@Ref Bool)) ) (! (|Node__isolated#everUsed_6406| (Node__isolated ref@@1 wset@@1))
 :qid |stdinbpl.435:15|
 :skolemid |87|
 :pattern ( (|Node__isolated#trigger_6406| Heap@@4 (Node__isolated ref@@1 wset@@1)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.303:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.306:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_9926) (ExhaleHeap@@3 T@PolymorphicMapType_9926) (Mask@@4 T@PolymorphicMapType_9947) (pm_f_13@@3 T@Field_9986_6407) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9986_6407 Mask@@4 null pm_f_13@@3) (IsPredicateField_9986_28849 pm_f_13@@3)) (= (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@5) null (PredicateMaskField_9986 pm_f_13@@3)) (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| ExhaleHeap@@3) null (PredicateMaskField_9986 pm_f_13@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_9986_28849 pm_f_13@@3) (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| ExhaleHeap@@3) null (PredicateMaskField_9986 pm_f_13@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_9926) (ExhaleHeap@@4 T@PolymorphicMapType_9926) (Mask@@5 T@PolymorphicMapType_9947) (pm_f_13@@4 T@Field_16244_16245) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_6406_6407 Mask@@5 null pm_f_13@@4) (IsPredicateField_6406_6407 pm_f_13@@4)) (= (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@6) null (PredicateMaskField_6406 pm_f_13@@4)) (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| ExhaleHeap@@4) null (PredicateMaskField_6406 pm_f_13@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_6406_6407 pm_f_13@@4) (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| ExhaleHeap@@4) null (PredicateMaskField_6406 pm_f_13@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_9926) (ExhaleHeap@@5 T@PolymorphicMapType_9926) (Mask@@6 T@PolymorphicMapType_9947) (pm_f_13@@5 T@Field_9986_6407) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_9986_6407 Mask@@6 null pm_f_13@@5) (IsWandField_9986_31810 pm_f_13@@5)) (= (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@7) null (WandMaskField_9986 pm_f_13@@5)) (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| ExhaleHeap@@5) null (WandMaskField_9986 pm_f_13@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_9986_31810 pm_f_13@@5) (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| ExhaleHeap@@5) null (WandMaskField_9986 pm_f_13@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_9926) (ExhaleHeap@@6 T@PolymorphicMapType_9926) (Mask@@7 T@PolymorphicMapType_9947) (pm_f_13@@6 T@Field_16244_16245) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_6406_6407 Mask@@7 null pm_f_13@@6) (IsWandField_6406_31453 pm_f_13@@6)) (= (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@8) null (WandMaskField_6406 pm_f_13@@6)) (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| ExhaleHeap@@6) null (WandMaskField_6406 pm_f_13@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_6406_31453 pm_f_13@@6) (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| ExhaleHeap@@6) null (WandMaskField_6406 pm_f_13@@6)))
)))
(assert (forall ((ref@@2 T@Ref) (wset@@2 (Array T@Ref Bool)) (ref2 T@Ref) (wset2 (Array T@Ref Bool)) ) (!  (=> (= (Node__isolated ref@@2 wset@@2) (Node__isolated ref2 wset2)) (and (= ref@@2 ref2) (= wset@@2 wset2)))
 :qid |stdinbpl.426:15|
 :skolemid |85|
 :pattern ( (Node__isolated ref@@2 wset@@2) (Node__isolated ref2 wset2))
)))
(assert (forall ((ref@@3 T@Ref) (wset@@3 (Array T@Ref Bool)) (ref2@@0 T@Ref) (wset2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|Node__isolated#sm| ref@@3 wset@@3) (|Node__isolated#sm| ref2@@0 wset2@@0)) (and (= ref@@3 ref2@@0) (= wset@@3 wset2@@0)))
 :qid |stdinbpl.430:15|
 :skolemid |86|
 :pattern ( (|Node__isolated#sm| ref@@3 wset@@3) (|Node__isolated#sm| ref2@@0 wset2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_9926) (ExhaleHeap@@7 T@PolymorphicMapType_9926) (Mask@@8 T@PolymorphicMapType_9947) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@9) o_22 $allocated) (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| ExhaleHeap@@7) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| ExhaleHeap@@7) o_22 $allocated))
)))
(assert (forall ((p T@Field_16244_16245) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16244_16244 p v_1 p w))
 :qid |stdinbpl.201:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16244_16244 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9986_6407) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_9986_9986 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.201:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9986_9986 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_6399_6400 data)))
(assert  (not (IsWandField_6399_6400 data)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_9926) (ExhaleHeap@@8 T@PolymorphicMapType_9926) (Mask@@9 T@PolymorphicMapType_9947) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_9947) (o_2@@7 T@Ref) (f_4@@7 T@Field_16259_16264) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6406_37521 f_4@@7))) (not (IsWandField_6406_37537 f_4@@7))) (<= (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_9947) (o_2@@8 T@Ref) (f_4@@8 T@Field_6406_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6406_53 f_4@@8))) (not (IsWandField_6406_53 f_4@@8))) (<= (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_9947) (o_2@@9 T@Ref) (f_4@@9 T@Field_16244_16245) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6406_6407 f_4@@9))) (not (IsWandField_6406_31453 f_4@@9))) (<= (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_9947) (o_2@@10 T@Ref) (f_4@@10 T@Field_6406_10000) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6406_6400 f_4@@10))) (not (IsWandField_6406_6400 f_4@@10))) (<= (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_9947) (o_2@@11 T@Ref) (f_4@@11 T@Field_9986_16264) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6399_36858 f_4@@11))) (not (IsWandField_6399_36874 f_4@@11))) (<= (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_9947) (o_2@@12 T@Ref) (f_4@@12 T@Field_9986_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6399_53 f_4@@12))) (not (IsWandField_6399_53 f_4@@12))) (<= (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_9947) (o_2@@13 T@Ref) (f_4@@13 T@Field_9986_6407) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9986_28849 f_4@@13))) (not (IsWandField_9986_31810 f_4@@13))) (<= (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_9947) (o_2@@14 T@Ref) (f_4@@14 T@Field_9999_10000) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6399_6400 f_4@@14))) (not (IsWandField_6399_6400 f_4@@14))) (<= (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_9947) (o_2@@15 T@Ref) (f_4@@15 T@Field_9986_16264) ) (! (= (HasDirectPerm_9986_28236 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9986_28236 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_9947) (o_2@@16 T@Ref) (f_4@@16 T@Field_9999_10000) ) (! (= (HasDirectPerm_9986_10000 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9986_10000 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_9947) (o_2@@17 T@Ref) (f_4@@17 T@Field_9986_53) ) (! (= (HasDirectPerm_9986_53 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9986_53 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_9947) (o_2@@18 T@Ref) (f_4@@18 T@Field_9986_6407) ) (! (= (HasDirectPerm_9986_6407 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9986_6407 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_9947) (o_2@@19 T@Ref) (f_4@@19 T@Field_16259_16264) ) (! (= (HasDirectPerm_6406_27351 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6406_27351 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_9947) (o_2@@20 T@Ref) (f_4@@20 T@Field_6406_10000) ) (! (= (HasDirectPerm_6406_10000 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6406_10000 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_9947) (o_2@@21 T@Ref) (f_4@@21 T@Field_6406_53) ) (! (= (HasDirectPerm_6406_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6406_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_9947) (o_2@@22 T@Ref) (f_4@@22 T@Field_16244_16245) ) (! (= (HasDirectPerm_6406_6407 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6406_6407 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.189:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_9926) (ExhaleHeap@@9 T@PolymorphicMapType_9926) (Mask@@26 T@PolymorphicMapType_9947) (o_22@@0 T@Ref) (f_30@@31 T@Field_9986_16264) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_9986_28236 Mask@@26 o_22@@0 f_30@@31) (= (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@11) o_22@@0 f_30@@31) (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| ExhaleHeap@@9) o_22@@0 f_30@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| ExhaleHeap@@9) o_22@@0 f_30@@31))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_9926) (ExhaleHeap@@10 T@PolymorphicMapType_9926) (Mask@@27 T@PolymorphicMapType_9947) (o_22@@1 T@Ref) (f_30@@32 T@Field_9999_10000) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_9986_10000 Mask@@27 o_22@@1 f_30@@32) (= (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@12) o_22@@1 f_30@@32) (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| ExhaleHeap@@10) o_22@@1 f_30@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| ExhaleHeap@@10) o_22@@1 f_30@@32))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_9926) (ExhaleHeap@@11 T@PolymorphicMapType_9926) (Mask@@28 T@PolymorphicMapType_9947) (o_22@@2 T@Ref) (f_30@@33 T@Field_9986_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_9986_53 Mask@@28 o_22@@2 f_30@@33) (= (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@13) o_22@@2 f_30@@33) (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| ExhaleHeap@@11) o_22@@2 f_30@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| ExhaleHeap@@11) o_22@@2 f_30@@33))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_9926) (ExhaleHeap@@12 T@PolymorphicMapType_9926) (Mask@@29 T@PolymorphicMapType_9947) (o_22@@3 T@Ref) (f_30@@34 T@Field_9986_6407) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_9986_6407 Mask@@29 o_22@@3 f_30@@34) (= (select (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@14) o_22@@3 f_30@@34) (select (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| ExhaleHeap@@12) o_22@@3 f_30@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| ExhaleHeap@@12) o_22@@3 f_30@@34))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_9926) (ExhaleHeap@@13 T@PolymorphicMapType_9926) (Mask@@30 T@PolymorphicMapType_9947) (o_22@@4 T@Ref) (f_30@@35 T@Field_16259_16264) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_6406_27351 Mask@@30 o_22@@4 f_30@@35) (= (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@15) o_22@@4 f_30@@35) (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| ExhaleHeap@@13) o_22@@4 f_30@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| ExhaleHeap@@13) o_22@@4 f_30@@35))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_9926) (ExhaleHeap@@14 T@PolymorphicMapType_9926) (Mask@@31 T@PolymorphicMapType_9947) (o_22@@5 T@Ref) (f_30@@36 T@Field_6406_10000) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_6406_10000 Mask@@31 o_22@@5 f_30@@36) (= (select (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@16) o_22@@5 f_30@@36) (select (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| ExhaleHeap@@14) o_22@@5 f_30@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| ExhaleHeap@@14) o_22@@5 f_30@@36))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_9926) (ExhaleHeap@@15 T@PolymorphicMapType_9926) (Mask@@32 T@PolymorphicMapType_9947) (o_22@@6 T@Ref) (f_30@@37 T@Field_6406_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_6406_53 Mask@@32 o_22@@6 f_30@@37) (= (select (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@17) o_22@@6 f_30@@37) (select (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| ExhaleHeap@@15) o_22@@6 f_30@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| ExhaleHeap@@15) o_22@@6 f_30@@37))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_9926) (ExhaleHeap@@16 T@PolymorphicMapType_9926) (Mask@@33 T@PolymorphicMapType_9947) (o_22@@7 T@Ref) (f_30@@38 T@Field_16244_16245) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_6406_6407 Mask@@33 o_22@@7 f_30@@38) (= (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@18) o_22@@7 f_30@@38) (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| ExhaleHeap@@16) o_22@@7 f_30@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| ExhaleHeap@@16) o_22@@7 f_30@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_16259_16264) ) (! (= (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_6406_53) ) (! (= (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_16244_16245) ) (! (= (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_6406_10000) ) (! (= (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_9986_16264) ) (! (= (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_9986_53) ) (! (= (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_9986_6407) ) (! (= (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_9999_10000) ) (! (= (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_9947) (SummandMask1 T@PolymorphicMapType_9947) (SummandMask2 T@PolymorphicMapType_9947) (o_2@@31 T@Ref) (f_4@@31 T@Field_16259_16264) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_9947) (SummandMask1@@0 T@PolymorphicMapType_9947) (SummandMask2@@0 T@PolymorphicMapType_9947) (o_2@@32 T@Ref) (f_4@@32 T@Field_6406_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_9947) (SummandMask1@@1 T@PolymorphicMapType_9947) (SummandMask2@@1 T@PolymorphicMapType_9947) (o_2@@33 T@Ref) (f_4@@33 T@Field_16244_16245) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_9947) (SummandMask1@@2 T@PolymorphicMapType_9947) (SummandMask2@@2 T@PolymorphicMapType_9947) (o_2@@34 T@Ref) (f_4@@34 T@Field_6406_10000) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_9947) (SummandMask1@@3 T@PolymorphicMapType_9947) (SummandMask2@@3 T@PolymorphicMapType_9947) (o_2@@35 T@Ref) (f_4@@35 T@Field_9986_16264) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_9947) (SummandMask1@@4 T@PolymorphicMapType_9947) (SummandMask2@@4 T@PolymorphicMapType_9947) (o_2@@36 T@Ref) (f_4@@36 T@Field_9986_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_9947) (SummandMask1@@5 T@PolymorphicMapType_9947) (SummandMask2@@5 T@PolymorphicMapType_9947) (o_2@@37 T@Ref) (f_4@@37 T@Field_9986_6407) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_9947) (SummandMask1@@6 T@PolymorphicMapType_9947) (SummandMask2@@6 T@PolymorphicMapType_9947) (o_2@@38 T@Ref) (f_4@@38 T@Field_9999_10000) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_9926) (Heap1Heap@@0 T@PolymorphicMapType_9926) (ref@@4 T@Ref) (wset@@4 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select wset@@4 (|sk_Node__isolated#condqp1| (|Node__isolated#condqp1| Heap2Heap@@0 ref@@4 wset@@4) (|Node__isolated#condqp1| Heap1Heap@@0 ref@@4 wset@@4))) (< NoPerm FullPerm))  (and (select wset@@4 (|sk_Node__isolated#condqp1| (|Node__isolated#condqp1| Heap2Heap@@0 ref@@4 wset@@4) (|Node__isolated#condqp1| Heap1Heap@@0 ref@@4 wset@@4))) (< NoPerm FullPerm))) (=> (and (select wset@@4 (|sk_Node__isolated#condqp1| (|Node__isolated#condqp1| Heap2Heap@@0 ref@@4 wset@@4) (|Node__isolated#condqp1| Heap1Heap@@0 ref@@4 wset@@4))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap2Heap@@0) (|sk_Node__isolated#condqp1| (|Node__isolated#condqp1| Heap2Heap@@0 ref@@4 wset@@4) (|Node__isolated#condqp1| Heap1Heap@@0 ref@@4 wset@@4)) data) (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap1Heap@@0) (|sk_Node__isolated#condqp1| (|Node__isolated#condqp1| Heap2Heap@@0 ref@@4 wset@@4) (|Node__isolated#condqp1| Heap1Heap@@0 ref@@4 wset@@4)) data)))) (= (|Node__isolated#condqp1| Heap2Heap@@0 ref@@4 wset@@4) (|Node__isolated#condqp1| Heap1Heap@@0 ref@@4 wset@@4)))
 :qid |stdinbpl.446:15|
 :skolemid |88|
 :pattern ( (|Node__isolated#condqp1| Heap2Heap@@0 ref@@4 wset@@4) (|Node__isolated#condqp1| Heap1Heap@@0 ref@@4 wset@@4) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((ref@@5 T@Ref) (wset@@5 (Array T@Ref Bool)) ) (! (= (getPredWandId_6406_6407 (Node__isolated ref@@5 wset@@5)) 0)
 :qid |stdinbpl.420:15|
 :skolemid |84|
 :pattern ( (Node__isolated ref@@5 wset@@5))
)))
(assert (forall ((ref@@6 T@Ref) (wset@@6 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_6406 (Node__isolated ref@@6 wset@@6)) (|Node__isolated#sm| ref@@6 wset@@6))
 :qid |stdinbpl.412:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_6406 (Node__isolated ref@@6 wset@@6)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_9926) (o_35 T@Ref) (f_11 T@Field_16259_16264) (v T@PolymorphicMapType_10475) ) (! (succHeap Heap@@19 (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@19) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@19) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@19) (store (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@19) o_35 f_11 v) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@19) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@19) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@19) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@19) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@19) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@19) (store (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@19) o_35 f_11 v) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@19) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@19) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@19) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_9926) (o_35@@0 T@Ref) (f_11@@0 T@Field_16244_16245) (v@@0 T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@20) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@20) (store (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@20) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@20) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@20) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@20) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@20) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@20) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@20) (store (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@20) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@20) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@20) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@20) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@20) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_9926) (o_35@@1 T@Ref) (f_11@@1 T@Field_6406_10000) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@21) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@21) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@21) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@21) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@21) (store (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@21) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@21) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@21) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@21) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@21) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@21) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@21) (store (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@21) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@21) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_9926) (o_35@@2 T@Ref) (f_11@@2 T@Field_6406_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@22) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@22) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@22) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@22) (store (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@22) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@22) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@22) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@22) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@22) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@22) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@22) (store (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@22) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@22) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@22) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_9926) (o_35@@3 T@Ref) (f_11@@3 T@Field_9986_16264) (v@@3 T@PolymorphicMapType_10475) ) (! (succHeap Heap@@23 (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@23) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@23) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@23) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@23) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@23) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@23) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@23) (store (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@23) o_35@@3 f_11@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@23) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@23) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@23) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@23) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@23) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@23) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@23) (store (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@23) o_35@@3 f_11@@3 v@@3)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_9926) (o_35@@4 T@Ref) (f_11@@4 T@Field_9986_6407) (v@@4 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@24) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@24) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@24) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@24) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@24) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@24) (store (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@24) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@24) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@24) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@24) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@24) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@24) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@24) (store (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@24) o_35@@4 f_11@@4 v@@4) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_9926) (o_35@@5 T@Ref) (f_11@@5 T@Field_9999_10000) (v@@5 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@25) (store (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@25) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@25) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@25) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@25) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@25) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@25) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@25) (store (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@25) o_35@@5 f_11@@5 v@@5) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@25) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@25) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@25) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@25) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@25) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_9926) (o_35@@6 T@Ref) (f_11@@6 T@Field_9986_53) (v@@6 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_9926 (store (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@26) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@26) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@26) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@26) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@26) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@26) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@26) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_9926 (store (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@26) o_35@@6 f_11@@6 v@@6) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@26) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@26) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@26) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@26) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@26) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@26) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@26)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.301:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.302:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((o_35@@7 T@Ref) (f_31 T@Field_9999_10000) (Heap@@27 T@PolymorphicMapType_9926) ) (!  (=> (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@27) o_35@@7 $allocated) (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@27) (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@27) o_35@@7 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@27) o_35@@7 f_31))
)))
(assert (forall ((p@@2 T@Field_16244_16245) (v_1@@1 T@FrameType) (q T@Field_16244_16245) (w@@1 T@FrameType) (r T@Field_16244_16245) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16244_16244 p@@2 v_1@@1 q w@@1) (InsidePredicate_16244_16244 q w@@1 r u)) (InsidePredicate_16244_16244 p@@2 v_1@@1 r u))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16244_16244 p@@2 v_1@@1 q w@@1) (InsidePredicate_16244_16244 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_16244_16245) (v_1@@2 T@FrameType) (q@@0 T@Field_16244_16245) (w@@2 T@FrameType) (r@@0 T@Field_9986_6407) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_16244_16244 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_16244_9986 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_16244_9986 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16244_16244 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_16244_9986 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_16244_16245) (v_1@@3 T@FrameType) (q@@1 T@Field_9986_6407) (w@@3 T@FrameType) (r@@1 T@Field_16244_16245) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_16244_9986 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9986_16244 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_16244_16244 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16244_9986 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_9986_16244 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_16244_16245) (v_1@@4 T@FrameType) (q@@2 T@Field_9986_6407) (w@@4 T@FrameType) (r@@2 T@Field_9986_6407) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_16244_9986 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9986_9986 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_16244_9986 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16244_9986 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_9986_9986 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_9986_6407) (v_1@@5 T@FrameType) (q@@3 T@Field_16244_16245) (w@@5 T@FrameType) (r@@3 T@Field_16244_16245) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_9986_16244 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_16244_16244 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_9986_16244 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9986_16244 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_16244_16244 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_9986_6407) (v_1@@6 T@FrameType) (q@@4 T@Field_16244_16245) (w@@6 T@FrameType) (r@@4 T@Field_9986_6407) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_9986_16244 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_16244_9986 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_9986_9986 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9986_16244 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_16244_9986 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_9986_6407) (v_1@@7 T@FrameType) (q@@5 T@Field_9986_6407) (w@@7 T@FrameType) (r@@5 T@Field_16244_16245) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_9986_9986 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9986_16244 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_9986_16244 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9986_9986 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_9986_16244 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_9986_6407) (v_1@@8 T@FrameType) (q@@6 T@Field_9986_6407) (w@@8 T@FrameType) (r@@6 T@Field_9986_6407) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_9986_9986 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9986_9986 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_9986_9986 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.196:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9986_9986 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_9986_9986 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.307:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@2 () T@PolymorphicMapType_9947)
(declare-fun x () T@Ref)
(declare-fun x__wset () (Array T@Ref Bool))
(declare-fun Heap@4 () T@PolymorphicMapType_9926)
(declare-fun Heap@1 () T@PolymorphicMapType_9926)
(declare-fun Heap@2 () T@PolymorphicMapType_9926)
(declare-fun Heap@3 () T@PolymorphicMapType_9926)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun QPMask@0 () T@PolymorphicMapType_9947)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun Mask@1 () T@PolymorphicMapType_9947)
(declare-fun neverTriggered4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref (Array T@Ref Bool)) T@Ref)
(declare-fun qpRange4 (T@Ref (Array T@Ref Bool)) Bool)
(declare-fun QPMask@1 () T@PolymorphicMapType_9947)
(declare-fun getPredWandId_6399_6400 (T@Field_9999_10000) Int)
(declare-fun getPredWandId_6399_6407 (T@Field_9986_6407) Int)
(declare-fun getPredWandId_6399_53 (T@Field_9986_53) Int)
(declare-fun getPredWandId_6399_43302 (T@Field_9986_16264) Int)
(declare-fun getPredWandId_6406_6400 (T@Field_6406_10000) Int)
(declare-fun getPredWandId_6406_53 (T@Field_6406_53) Int)
(declare-fun getPredWandId_6406_43949 (T@Field_16259_16264) Int)
(declare-fun neverTriggered5 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_9947)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) T@Ref)
(declare-fun neverTriggered6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref (Array T@Ref Bool)) T@Ref)
(declare-fun qpRange6 (T@Ref (Array T@Ref Bool)) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_9947)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3624 (Int) T@FrameType)
(declare-fun Heap@@28 () T@PolymorphicMapType_9926)
(declare-fun Heap@0 () T@PolymorphicMapType_9926)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_9947)
(set-info :boogie-vc-id test)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon6_correct true))
(let ((anon9_Else_correct  (=> (HasDirectPerm_6406_6407 Mask@2 null (Node__isolated x x__wset)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 3) 1)) anon6_correct))))
(let ((anon9_Then_correct  (=> (not (HasDirectPerm_6406_6407 Mask@2 null (Node__isolated x x__wset))) (=> (and (and (= Heap@2 (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@1) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@1) (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@1) (store (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@1) null (|Node__isolated#sm| x x__wset) ZeroPMask) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@1) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@1) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@1) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@1))) (= Heap@3 (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@2) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@2) (store (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@2) null (Node__isolated x x__wset) freshVersion@0) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@2) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@2) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@2) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@2) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 2) 1))) anon6_correct))))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 4) (- 0 10)) (forall ((r_1 T@Ref) (r_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1 r_2)) (select x__wset r_1)) (select x__wset r_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_1 r_2)))
 :qid |stdinbpl.613:15|
 :skolemid |102|
))) (=> (forall ((r_1@@0 T@Ref) (r_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1@@0 r_2@@0)) (select x__wset r_1@@0)) (select x__wset r_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_1@@0 r_2@@0)))
 :qid |stdinbpl.613:15|
 :skolemid |102|
)) (=> (and (and (forall ((r_1@@1 T@Ref) ) (!  (=> (and (select x__wset r_1@@1) (< NoPerm FullPerm)) (and (qpRange3 r_1@@1) (= (invRecv3 r_1@@1) r_1@@1)))
 :qid |stdinbpl.619:22|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@1) r_1@@1 data))
 :pattern ( (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@0) r_1@@1 data))
 :pattern ( (select x__wset r_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select x__wset (invRecv3 o_4)) (< NoPerm FullPerm)) (qpRange3 o_4)) (= (invRecv3 o_4) o_4))
 :qid |stdinbpl.623:22|
 :skolemid |104|
 :pattern ( (invRecv3 o_4))
))) (and (forall ((r_1@@2 T@Ref) ) (!  (=> (select x__wset r_1@@2) (not (= r_1@@2 null)))
 :qid |stdinbpl.629:22|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@1) r_1@@2 data))
 :pattern ( (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@0) r_1@@2 data))
 :pattern ( (select x__wset r_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select x__wset (invRecv3 o_4@@0)) (< NoPerm FullPerm)) (qpRange3 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv3 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@0) o_4@@0 data) (+ (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| Mask@1) o_4@@0 data) FullPerm)))) (=> (not (and (and (select x__wset (invRecv3 o_4@@0)) (< NoPerm FullPerm)) (qpRange3 o_4@@0))) (= (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@0) o_4@@0 data) (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| Mask@1) o_4@@0 data))))
 :qid |stdinbpl.635:22|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@0) o_4@@0 data))
)))) (=> (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_9986_53) ) (!  (=> true (= (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| Mask@1) o_4@@1 f_5) (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.639:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| Mask@1) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_9999_10000) ) (!  (=> (not (= f_5@@0 data)) (= (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| Mask@1) o_4@@2 f_5@@0) (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.639:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| Mask@1) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_9986_6407) ) (!  (=> true (= (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| Mask@1) o_4@@3 f_5@@1) (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.639:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| Mask@1) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_9986_16264) ) (!  (=> true (= (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| Mask@1) o_4@@4 f_5@@2) (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.639:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| Mask@1) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_6406_53) ) (!  (=> true (= (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| Mask@1) o_4@@5 f_5@@3) (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.639:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| Mask@1) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| QPMask@0) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_6406_10000) ) (!  (=> true (= (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| Mask@1) o_4@@6 f_5@@4) (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| QPMask@0) o_4@@6 f_5@@4)))
 :qid |stdinbpl.639:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| Mask@1) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| QPMask@0) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_16244_16245) ) (!  (=> true (= (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| Mask@1) o_4@@7 f_5@@5) (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@0) o_4@@7 f_5@@5)))
 :qid |stdinbpl.639:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| Mask@1) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@0) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_16259_16264) ) (!  (=> true (= (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| Mask@1) o_4@@8 f_5@@6) (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| QPMask@0) o_4@@8 f_5@@6)))
 :qid |stdinbpl.639:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| Mask@1) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| QPMask@0) o_4@@8 f_5@@6))
))) (state Heap@1 QPMask@0)) (and (=> (= (ControlFlow 0 4) (- 0 9)) (forall ((r_1_1 T@Ref) (r_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1 r_1_2)) (select x__wset r_1_1)) (select x__wset r_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_1_1 r_1_2)) (not (= x__wset x__wset))))
 :qid |stdinbpl.649:17|
 :skolemid |108|
 :pattern ( (neverTriggered4 r_1_1) (neverTriggered4 r_1_2))
))) (=> (forall ((r_1_1@@0 T@Ref) (r_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_1_1@@0 r_1_2@@0)) (select x__wset r_1_1@@0)) (select x__wset r_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_1_1@@0 r_1_2@@0)) (not (= x__wset x__wset))))
 :qid |stdinbpl.649:17|
 :skolemid |108|
 :pattern ( (neverTriggered4 r_1_1@@0) (neverTriggered4 r_1_2@@0))
)) (=> (forall ((r_1_1@@1 T@Ref) ) (!  (=> (and (select x__wset r_1_1@@1) (< NoPerm FullPerm)) (and (= (invRecv4 r_1_1@@1 x__wset) r_1_1@@1) (qpRange4 r_1_1@@1 x__wset)))
 :qid |stdinbpl.655:22|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@1) null (Node__isolated r_1_1@@1 x__wset)))
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@0) null (Node__isolated r_1_1@@1 x__wset)))
 :pattern ( (select x__wset r_1_1@@1))
)) (=> (and (forall ((ref@@7 T@Ref) (wset@@7 (Array T@Ref Bool)) ) (!  (=> (and (and (select x__wset (invRecv4 ref@@7 wset@@7)) (< NoPerm FullPerm)) (qpRange4 ref@@7 wset@@7)) (and (= (invRecv4 ref@@7 wset@@7) ref@@7) (= x__wset wset@@7)))
 :qid |stdinbpl.659:22|
 :skolemid |110|
 :pattern ( (invRecv4 ref@@7 wset@@7))
)) (forall ((ref@@8 T@Ref) (wset@@8 (Array T@Ref Bool)) ) (!  (=> (and (and (select x__wset (invRecv4 ref@@8 wset@@8)) (< NoPerm FullPerm)) (qpRange4 ref@@8 wset@@8)) (and (=> (< NoPerm FullPerm) (and (= (invRecv4 ref@@8 wset@@8) ref@@8) (= x__wset wset@@8))) (= (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@1) null (Node__isolated ref@@8 wset@@8)) (+ (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@0) null (Node__isolated ref@@8 wset@@8)) FullPerm))))
 :qid |stdinbpl.665:22|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@1) null (Node__isolated ref@@8 wset@@8)))
))) (=> (and (and (and (and (and (and (and (and (forall ((o_4@@9 T@Ref) (f_5@@7 T@Field_9999_10000) ) (!  (=> (or (or (not (= o_4@@9 null)) (not (IsPredicateField_6399_6400 f_5@@7))) (not (= (getPredWandId_6399_6400 f_5@@7) 0))) (= (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@0) o_4@@9 f_5@@7) (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@1) o_4@@9 f_5@@7)))
 :qid |stdinbpl.671:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@0) o_4@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@1) o_4@@9 f_5@@7))
)) (forall ((o_4@@10 T@Ref) (f_5@@8 T@Field_9986_6407) ) (!  (=> (or (or (not (= o_4@@10 null)) (not (IsPredicateField_9986_28849 f_5@@8))) (not (= (getPredWandId_6399_6407 f_5@@8) 0))) (= (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| QPMask@0) o_4@@10 f_5@@8) (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| QPMask@1) o_4@@10 f_5@@8)))
 :qid |stdinbpl.671:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| QPMask@0) o_4@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| QPMask@1) o_4@@10 f_5@@8))
))) (forall ((o_4@@11 T@Ref) (f_5@@9 T@Field_9986_53) ) (!  (=> (or (or (not (= o_4@@11 null)) (not (IsPredicateField_6399_53 f_5@@9))) (not (= (getPredWandId_6399_53 f_5@@9) 0))) (= (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| QPMask@0) o_4@@11 f_5@@9) (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| QPMask@1) o_4@@11 f_5@@9)))
 :qid |stdinbpl.671:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| QPMask@0) o_4@@11 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| QPMask@1) o_4@@11 f_5@@9))
))) (forall ((o_4@@12 T@Ref) (f_5@@10 T@Field_9986_16264) ) (!  (=> (or (or (not (= o_4@@12 null)) (not (IsPredicateField_6399_36858 f_5@@10))) (not (= (getPredWandId_6399_43302 f_5@@10) 0))) (= (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| QPMask@0) o_4@@12 f_5@@10) (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| QPMask@1) o_4@@12 f_5@@10)))
 :qid |stdinbpl.671:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| QPMask@0) o_4@@12 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| QPMask@1) o_4@@12 f_5@@10))
))) (forall ((o_4@@13 T@Ref) (f_5@@11 T@Field_6406_10000) ) (!  (=> (or (or (not (= o_4@@13 null)) (not (IsPredicateField_6406_6400 f_5@@11))) (not (= (getPredWandId_6406_6400 f_5@@11) 0))) (= (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| QPMask@0) o_4@@13 f_5@@11) (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| QPMask@1) o_4@@13 f_5@@11)))
 :qid |stdinbpl.671:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| QPMask@0) o_4@@13 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| QPMask@1) o_4@@13 f_5@@11))
))) (forall ((o_4@@14 T@Ref) (f_5@@12 T@Field_16244_16245) ) (!  (=> (or (or (not (= o_4@@14 null)) (not (IsPredicateField_6406_6407 f_5@@12))) (not (= (getPredWandId_6406_6407 f_5@@12) 0))) (= (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@0) o_4@@14 f_5@@12) (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@1) o_4@@14 f_5@@12)))
 :qid |stdinbpl.671:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@0) o_4@@14 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@1) o_4@@14 f_5@@12))
))) (forall ((o_4@@15 T@Ref) (f_5@@13 T@Field_6406_53) ) (!  (=> (or (or (not (= o_4@@15 null)) (not (IsPredicateField_6406_53 f_5@@13))) (not (= (getPredWandId_6406_53 f_5@@13) 0))) (= (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| QPMask@0) o_4@@15 f_5@@13) (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| QPMask@1) o_4@@15 f_5@@13)))
 :qid |stdinbpl.671:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| QPMask@0) o_4@@15 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| QPMask@1) o_4@@15 f_5@@13))
))) (forall ((o_4@@16 T@Ref) (f_5@@14 T@Field_16259_16264) ) (!  (=> (or (or (not (= o_4@@16 null)) (not (IsPredicateField_6406_37521 f_5@@14))) (not (= (getPredWandId_6406_43949 f_5@@14) 0))) (= (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| QPMask@0) o_4@@16 f_5@@14) (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| QPMask@1) o_4@@16 f_5@@14)))
 :qid |stdinbpl.671:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| QPMask@0) o_4@@16 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| QPMask@1) o_4@@16 f_5@@14))
))) (and (and (forall ((ref@@9 T@Ref) (wset@@9 (Array T@Ref Bool)) ) (!  (=> (not (and (and (select x__wset (invRecv4 ref@@9 wset@@9)) (< NoPerm FullPerm)) (qpRange4 ref@@9 wset@@9))) (= (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@1) null (Node__isolated ref@@9 wset@@9)) (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@0) null (Node__isolated ref@@9 wset@@9))))
 :qid |stdinbpl.675:22|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@1) null (Node__isolated ref@@9 wset@@9)))
)) (state Heap@1 QPMask@1)) (and (state Heap@1 QPMask@1) (state Heap@1 QPMask@1)))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (forall ((r_3_2 T@Ref) (r_3_3 T@Ref) ) (!  (=> (and (and (and (and (not (= r_3_2 r_3_3)) (select x__wset r_3_2)) (select x__wset r_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_3_2 r_3_3)))
 :qid |stdinbpl.694:17|
 :skolemid |114|
 :pattern ( (neverTriggered5 r_3_2) (neverTriggered5 r_3_3))
))) (=> (forall ((r_3_2@@0 T@Ref) (r_3_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_3_2@@0 r_3_3@@0)) (select x__wset r_3_2@@0)) (select x__wset r_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_3_2@@0 r_3_3@@0)))
 :qid |stdinbpl.694:17|
 :skolemid |114|
 :pattern ( (neverTriggered5 r_3_2@@0) (neverTriggered5 r_3_3@@0))
)) (and (=> (= (ControlFlow 0 4) (- 0 7)) (forall ((r_3_2@@1 T@Ref) ) (!  (=> (select x__wset r_3_2@@1) (>= (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@1) r_3_2@@1 data) FullPerm))
 :qid |stdinbpl.701:17|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@1) r_3_2@@1 data))
 :pattern ( (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@2) r_3_2@@1 data))
 :pattern ( (select x__wset r_3_2@@1))
))) (=> (forall ((r_3_2@@2 T@Ref) ) (!  (=> (select x__wset r_3_2@@2) (>= (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@1) r_3_2@@2 data) FullPerm))
 :qid |stdinbpl.701:17|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@1) r_3_2@@2 data))
 :pattern ( (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@2) r_3_2@@2 data))
 :pattern ( (select x__wset r_3_2@@2))
)) (=> (forall ((r_3_2@@3 T@Ref) ) (!  (=> (and (select x__wset r_3_2@@3) (< NoPerm FullPerm)) (and (qpRange5 r_3_2@@3) (= (invRecv5 r_3_2@@3) r_3_2@@3)))
 :qid |stdinbpl.707:22|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@1) r_3_2@@3 data))
 :pattern ( (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@2) r_3_2@@3 data))
 :pattern ( (select x__wset r_3_2@@3))
)) (=> (and (forall ((o_4@@17 T@Ref) ) (!  (=> (and (select x__wset (invRecv5 o_4@@17)) (and (< NoPerm FullPerm) (qpRange5 o_4@@17))) (= (invRecv5 o_4@@17) o_4@@17))
 :qid |stdinbpl.711:22|
 :skolemid |117|
 :pattern ( (invRecv5 o_4@@17))
)) (forall ((o_4@@18 T@Ref) ) (!  (and (=> (and (select x__wset (invRecv5 o_4@@18)) (and (< NoPerm FullPerm) (qpRange5 o_4@@18))) (and (= (invRecv5 o_4@@18) o_4@@18) (= (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@2) o_4@@18 data) (- (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@1) o_4@@18 data) FullPerm)))) (=> (not (and (select x__wset (invRecv5 o_4@@18)) (and (< NoPerm FullPerm) (qpRange5 o_4@@18)))) (= (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@2) o_4@@18 data) (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@1) o_4@@18 data))))
 :qid |stdinbpl.717:22|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@2) o_4@@18 data))
))) (=> (and (and (and (and (and (and (and (forall ((o_4@@19 T@Ref) (f_5@@15 T@Field_9986_53) ) (!  (=> true (= (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| QPMask@1) o_4@@19 f_5@@15) (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| QPMask@2) o_4@@19 f_5@@15)))
 :qid |stdinbpl.723:29|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| QPMask@2) o_4@@19 f_5@@15))
)) (forall ((o_4@@20 T@Ref) (f_5@@16 T@Field_9999_10000) ) (!  (=> (not (= f_5@@16 data)) (= (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@1) o_4@@20 f_5@@16) (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@2) o_4@@20 f_5@@16)))
 :qid |stdinbpl.723:29|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@2) o_4@@20 f_5@@16))
))) (forall ((o_4@@21 T@Ref) (f_5@@17 T@Field_9986_6407) ) (!  (=> true (= (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| QPMask@1) o_4@@21 f_5@@17) (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| QPMask@2) o_4@@21 f_5@@17)))
 :qid |stdinbpl.723:29|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| QPMask@2) o_4@@21 f_5@@17))
))) (forall ((o_4@@22 T@Ref) (f_5@@18 T@Field_9986_16264) ) (!  (=> true (= (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| QPMask@1) o_4@@22 f_5@@18) (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| QPMask@2) o_4@@22 f_5@@18)))
 :qid |stdinbpl.723:29|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| QPMask@2) o_4@@22 f_5@@18))
))) (forall ((o_4@@23 T@Ref) (f_5@@19 T@Field_6406_53) ) (!  (=> true (= (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| QPMask@1) o_4@@23 f_5@@19) (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| QPMask@2) o_4@@23 f_5@@19)))
 :qid |stdinbpl.723:29|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| QPMask@2) o_4@@23 f_5@@19))
))) (forall ((o_4@@24 T@Ref) (f_5@@20 T@Field_6406_10000) ) (!  (=> true (= (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| QPMask@1) o_4@@24 f_5@@20) (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| QPMask@2) o_4@@24 f_5@@20)))
 :qid |stdinbpl.723:29|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| QPMask@2) o_4@@24 f_5@@20))
))) (forall ((o_4@@25 T@Ref) (f_5@@21 T@Field_16244_16245) ) (!  (=> true (= (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@1) o_4@@25 f_5@@21) (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@2) o_4@@25 f_5@@21)))
 :qid |stdinbpl.723:29|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@2) o_4@@25 f_5@@21))
))) (forall ((o_4@@26 T@Ref) (f_5@@22 T@Field_16259_16264) ) (!  (=> true (= (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| QPMask@1) o_4@@26 f_5@@22) (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| QPMask@2) o_4@@26 f_5@@22)))
 :qid |stdinbpl.723:29|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| QPMask@2) o_4@@26 f_5@@22))
))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (forall ((r_4 T@Ref) (r_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_4 r_4_1)) (select x__wset r_4)) (select x__wset r_4_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_4 r_4_1)) (not (= x__wset x__wset))))
 :qid |stdinbpl.735:17|
 :skolemid |120|
 :pattern ( (neverTriggered6 r_4) (neverTriggered6 r_4_1))
))) (=> (forall ((r_4@@0 T@Ref) (r_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_4@@0 r_4_1@@0)) (select x__wset r_4@@0)) (select x__wset r_4_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= r_4@@0 r_4_1@@0)) (not (= x__wset x__wset))))
 :qid |stdinbpl.735:17|
 :skolemid |120|
 :pattern ( (neverTriggered6 r_4@@0) (neverTriggered6 r_4_1@@0))
)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((r_4@@1 T@Ref) ) (!  (=> (select x__wset r_4@@1) (>= (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@2) null (Node__isolated r_4@@1 x__wset)) FullPerm))
 :qid |stdinbpl.742:17|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@1) null (Node__isolated r_4@@1 x__wset)))
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@2) null (Node__isolated r_4@@1 x__wset)))
 :pattern ( (select x__wset r_4@@1))
))) (=> (forall ((r_4@@2 T@Ref) ) (!  (=> (select x__wset r_4@@2) (>= (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@2) null (Node__isolated r_4@@2 x__wset)) FullPerm))
 :qid |stdinbpl.742:17|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@1) null (Node__isolated r_4@@2 x__wset)))
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@2) null (Node__isolated r_4@@2 x__wset)))
 :pattern ( (select x__wset r_4@@2))
)) (=> (and (and (forall ((r_4@@3 T@Ref) ) (!  (=> (and (select x__wset r_4@@3) (< NoPerm FullPerm)) (and (= (invRecv6 r_4@@3 x__wset) r_4@@3) (qpRange6 r_4@@3 x__wset)))
 :qid |stdinbpl.748:22|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@1) null (Node__isolated r_4@@3 x__wset)))
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@2) null (Node__isolated r_4@@3 x__wset)))
 :pattern ( (select x__wset r_4@@3))
)) (forall ((ref_1_1 T@Ref) (wset_1 (Array T@Ref Bool)) ) (!  (=> (and (and (select x__wset (invRecv6 ref_1_1 wset_1)) (< NoPerm FullPerm)) (qpRange6 ref_1_1 wset_1)) (and (= (invRecv6 ref_1_1 wset_1) ref_1_1) (= x__wset wset_1)))
 :qid |stdinbpl.752:22|
 :skolemid |123|
 :pattern ( (invRecv6 ref_1_1 wset_1))
))) (and (forall ((ref_1_1@@0 T@Ref) (wset_1@@0 (Array T@Ref Bool)) ) (!  (=> (and (and (select x__wset (invRecv6 ref_1_1@@0 wset_1@@0)) (< NoPerm FullPerm)) (qpRange6 ref_1_1@@0 wset_1@@0)) (and (and (= (invRecv6 ref_1_1@@0 wset_1@@0) ref_1_1@@0) (= x__wset wset_1@@0)) (= (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@3) null (Node__isolated ref_1_1@@0 wset_1@@0)) (- (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@2) null (Node__isolated ref_1_1@@0 wset_1@@0)) FullPerm))))
 :qid |stdinbpl.758:22|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@3) null (Node__isolated ref_1_1@@0 wset_1@@0)))
)) (forall ((ref_1_1@@1 T@Ref) (wset_1@@1 (Array T@Ref Bool)) ) (!  (=> (not (and (and (select x__wset (invRecv6 ref_1_1@@1 wset_1@@1)) (< NoPerm FullPerm)) (qpRange6 ref_1_1@@1 wset_1@@1))) (= (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@3) null (Node__isolated ref_1_1@@1 wset_1@@1)) (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@2) null (Node__isolated ref_1_1@@1 wset_1@@1))))
 :qid |stdinbpl.762:22|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@3) null (Node__isolated ref_1_1@@1 wset_1@@1)))
)))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@27 T@Ref) (f_5@@23 T@Field_9999_10000) ) (!  (=> (or (or (not (= o_4@@27 null)) (not (IsPredicateField_6399_6400 f_5@@23))) (not (= (getPredWandId_6399_6400 f_5@@23) 0))) (= (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@2) o_4@@27 f_5@@23) (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@3) o_4@@27 f_5@@23)))
 :qid |stdinbpl.768:29|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@2) o_4@@27 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@3) o_4@@27 f_5@@23))
)) (forall ((o_4@@28 T@Ref) (f_5@@24 T@Field_9986_6407) ) (!  (=> (or (or (not (= o_4@@28 null)) (not (IsPredicateField_9986_28849 f_5@@24))) (not (= (getPredWandId_6399_6407 f_5@@24) 0))) (= (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| QPMask@2) o_4@@28 f_5@@24) (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| QPMask@3) o_4@@28 f_5@@24)))
 :qid |stdinbpl.768:29|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| QPMask@2) o_4@@28 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| QPMask@3) o_4@@28 f_5@@24))
))) (forall ((o_4@@29 T@Ref) (f_5@@25 T@Field_9986_53) ) (!  (=> (or (or (not (= o_4@@29 null)) (not (IsPredicateField_6399_53 f_5@@25))) (not (= (getPredWandId_6399_53 f_5@@25) 0))) (= (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| QPMask@2) o_4@@29 f_5@@25) (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| QPMask@3) o_4@@29 f_5@@25)))
 :qid |stdinbpl.768:29|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| QPMask@2) o_4@@29 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| QPMask@3) o_4@@29 f_5@@25))
))) (forall ((o_4@@30 T@Ref) (f_5@@26 T@Field_9986_16264) ) (!  (=> (or (or (not (= o_4@@30 null)) (not (IsPredicateField_6399_36858 f_5@@26))) (not (= (getPredWandId_6399_43302 f_5@@26) 0))) (= (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| QPMask@2) o_4@@30 f_5@@26) (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| QPMask@3) o_4@@30 f_5@@26)))
 :qid |stdinbpl.768:29|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| QPMask@2) o_4@@30 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| QPMask@3) o_4@@30 f_5@@26))
))) (forall ((o_4@@31 T@Ref) (f_5@@27 T@Field_6406_10000) ) (!  (=> (or (or (not (= o_4@@31 null)) (not (IsPredicateField_6406_6400 f_5@@27))) (not (= (getPredWandId_6406_6400 f_5@@27) 0))) (= (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| QPMask@2) o_4@@31 f_5@@27) (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| QPMask@3) o_4@@31 f_5@@27)))
 :qid |stdinbpl.768:29|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| QPMask@2) o_4@@31 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| QPMask@3) o_4@@31 f_5@@27))
))) (forall ((o_4@@32 T@Ref) (f_5@@28 T@Field_16244_16245) ) (!  (=> (or (or (not (= o_4@@32 null)) (not (IsPredicateField_6406_6407 f_5@@28))) (not (= (getPredWandId_6406_6407 f_5@@28) 0))) (= (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@2) o_4@@32 f_5@@28) (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@3) o_4@@32 f_5@@28)))
 :qid |stdinbpl.768:29|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@2) o_4@@32 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@3) o_4@@32 f_5@@28))
))) (forall ((o_4@@33 T@Ref) (f_5@@29 T@Field_6406_53) ) (!  (=> (or (or (not (= o_4@@33 null)) (not (IsPredicateField_6406_53 f_5@@29))) (not (= (getPredWandId_6406_53 f_5@@29) 0))) (= (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| QPMask@2) o_4@@33 f_5@@29) (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| QPMask@3) o_4@@33 f_5@@29)))
 :qid |stdinbpl.768:29|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| QPMask@2) o_4@@33 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| QPMask@3) o_4@@33 f_5@@29))
))) (forall ((o_4@@34 T@Ref) (f_5@@30 T@Field_16259_16264) ) (!  (=> (or (or (not (= o_4@@34 null)) (not (IsPredicateField_6406_37521 f_5@@30))) (not (= (getPredWandId_6406_43949 f_5@@30) 0))) (= (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| QPMask@2) o_4@@34 f_5@@30) (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| QPMask@3) o_4@@34 f_5@@30)))
 :qid |stdinbpl.768:29|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| QPMask@2) o_4@@34 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| QPMask@3) o_4@@34 f_5@@30))
))) (= Mask@2 (PolymorphicMapType_9947 (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| QPMask@3) (store (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@3) null (Node__isolated x x__wset) (+ (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| QPMask@3) null (Node__isolated x x__wset)) FullPerm)) (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| QPMask@3) (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| QPMask@3) (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| QPMask@3) (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| QPMask@3) (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| QPMask@3) (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| QPMask@3)))) (and (and (state Heap@1 Mask@2) (state Heap@1 Mask@2)) (and (|Node__isolated#trigger_6406| Heap@1 (Node__isolated x x__wset)) (= (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@1) null (Node__isolated x x__wset)) (CombineFrames (FrameFragment_3624 (|Node__isolated#condqp1| Heap@1 x x__wset)) (FrameFragment_3624 (|Node__isolated#condqp2| Heap@1 x x__wset))))))) (and (=> (= (ControlFlow 0 4) 2) anon9_Then_correct) (=> (= (ControlFlow 0 4) 3) anon9_Else_correct))))))))))))))))))))))))))
(let ((anon8_Else_correct  (=> (HasDirectPerm_6406_6407 Mask@1 null (Node__isolated x x__wset)) (=> (and (= Heap@1 Heap@@28) (= (ControlFlow 0 12) 4)) anon4_correct))))
(let ((anon8_Then_correct  (=> (and (and (not (HasDirectPerm_6406_6407 Mask@1 null (Node__isolated x x__wset))) (= Heap@0 (PolymorphicMapType_9926 (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@28) (|PolymorphicMapType_9926_6071_6072#PolymorphicMapType_9926| Heap@@28) (store (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@28) null (Node__isolated x x__wset) newVersion@0) (|PolymorphicMapType_9926_6413_25961#PolymorphicMapType_9926| Heap@@28) (|PolymorphicMapType_9926_6406_53#PolymorphicMapType_9926| Heap@@28) (|PolymorphicMapType_9926_6406_10000#PolymorphicMapType_9926| Heap@@28) (|PolymorphicMapType_9926_9986_6407#PolymorphicMapType_9926| Heap@@28) (|PolymorphicMapType_9926_9986_28278#PolymorphicMapType_9926| Heap@@28)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 11) 4))) anon4_correct)))
(let ((anon2_correct  (=> (= Mask@1 (PolymorphicMapType_9947 (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| Mask@0) (store (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| Mask@0) null (Node__isolated x x__wset) (- (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| Mask@0) null (Node__isolated x x__wset)) FullPerm)) (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| Mask@0) (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| Mask@0) (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| Mask@0) (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| Mask@0) (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| Mask@0) (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| Mask@0))) (and (=> (= (ControlFlow 0 13) 11) anon8_Then_correct) (=> (= (ControlFlow 0 13) 12) anon8_Else_correct)))))
(let ((anon7_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 16) 13)) anon2_correct)))
(let ((anon7_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= FullPerm (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| Mask@0) null (Node__isolated x x__wset)))) (=> (<= FullPerm (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| Mask@0) null (Node__isolated x x__wset))) (=> (= (ControlFlow 0 14) 13) anon2_correct))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@28 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_9926_6068_53#PolymorphicMapType_9926| Heap@@28) x $allocated) (= Mask@0 (PolymorphicMapType_9947 (|PolymorphicMapType_9947_6399_6400#PolymorphicMapType_9947| ZeroMask) (store (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| ZeroMask) null (Node__isolated x x__wset) (+ (select (|PolymorphicMapType_9947_6406_6407#PolymorphicMapType_9947| ZeroMask) null (Node__isolated x x__wset)) FullPerm)) (|PolymorphicMapType_9947_6399_6407#PolymorphicMapType_9947| ZeroMask) (|PolymorphicMapType_9947_6399_53#PolymorphicMapType_9947| ZeroMask) (|PolymorphicMapType_9947_6399_35366#PolymorphicMapType_9947| ZeroMask) (|PolymorphicMapType_9947_6406_6400#PolymorphicMapType_9947| ZeroMask) (|PolymorphicMapType_9947_6406_53#PolymorphicMapType_9947| ZeroMask) (|PolymorphicMapType_9947_6406_35697#PolymorphicMapType_9947| ZeroMask))))) (and (and (state Heap@@28 Mask@0) (state Heap@@28 Mask@0)) (and (|Node__isolated#trigger_6406| Heap@@28 (Node__isolated x x__wset)) (= (select (|PolymorphicMapType_9926_6406_6407#PolymorphicMapType_9926| Heap@@28) null (Node__isolated x x__wset)) (CombineFrames (FrameFragment_3624 (|Node__isolated#condqp1| Heap@@28 x x__wset)) (FrameFragment_3624 (|Node__isolated#condqp2| Heap@@28 x x__wset))))))) (and (=> (= (ControlFlow 0 17) 14) anon7_Then_correct) (=> (= (ControlFlow 0 17) 16) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18) 17) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
