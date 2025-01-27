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
(declare-sort T@Field_8847_53 0)
(declare-sort T@Field_8860_8861 0)
(declare-sort T@Field_12261_12262 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12274_12279 0)
(declare-sort T@Field_4231_12262 0)
(declare-sort T@Field_4231_12279 0)
(declare-sort T@Field_12261_4232 0)
(declare-sort T@Field_12261_53 0)
(declare-datatypes ((T@PolymorphicMapType_8808 0)) (((PolymorphicMapType_8808 (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| (Array T@Ref T@Field_8860_8861 Real)) (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| (Array T@Ref T@Field_12261_12262 Real)) (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| (Array T@Ref T@Field_4231_12262 Real)) (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| (Array T@Ref T@Field_8847_53 Real)) (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| (Array T@Ref T@Field_4231_12279 Real)) (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| (Array T@Ref T@Field_12261_4232 Real)) (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| (Array T@Ref T@Field_12261_53 Real)) (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| (Array T@Ref T@Field_12274_12279 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9336 0)) (((PolymorphicMapType_9336 (|PolymorphicMapType_9336_4231_4232#PolymorphicMapType_9336| (Array T@Ref T@Field_8860_8861 Bool)) (|PolymorphicMapType_9336_4231_53#PolymorphicMapType_9336| (Array T@Ref T@Field_8847_53 Bool)) (|PolymorphicMapType_9336_4231_12262#PolymorphicMapType_9336| (Array T@Ref T@Field_4231_12262 Bool)) (|PolymorphicMapType_9336_4231_32164#PolymorphicMapType_9336| (Array T@Ref T@Field_4231_12279 Bool)) (|PolymorphicMapType_9336_12261_4232#PolymorphicMapType_9336| (Array T@Ref T@Field_12261_4232 Bool)) (|PolymorphicMapType_9336_12261_53#PolymorphicMapType_9336| (Array T@Ref T@Field_12261_53 Bool)) (|PolymorphicMapType_9336_12261_12262#PolymorphicMapType_9336| (Array T@Ref T@Field_12261_12262 Bool)) (|PolymorphicMapType_9336_12261_33014#PolymorphicMapType_9336| (Array T@Ref T@Field_12274_12279 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8787 0)) (((PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| (Array T@Ref T@Field_8847_53 Bool)) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| (Array T@Ref T@Field_8860_8861 T@Ref)) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| (Array T@Ref T@Field_12261_12262 T@FrameType)) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| (Array T@Ref T@Field_12274_12279 T@PolymorphicMapType_9336)) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| (Array T@Ref T@Field_4231_12262 T@FrameType)) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| (Array T@Ref T@Field_4231_12279 T@PolymorphicMapType_9336)) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| (Array T@Ref T@Field_12261_4232 T@Ref)) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| (Array T@Ref T@Field_12261_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_8847_53)
(declare-fun n_85 () T@Field_8860_8861)
(declare-fun m_20 () T@Field_8860_8861)
(declare-fun succHeap (T@PolymorphicMapType_8787 T@PolymorphicMapType_8787) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8787 T@PolymorphicMapType_8787) Bool)
(declare-fun state (T@PolymorphicMapType_8787 T@PolymorphicMapType_8808) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8808) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8787 T@PolymorphicMapType_8787 T@PolymorphicMapType_8808) Bool)
(declare-fun IsPredicateField_4238_4239 (T@Field_12261_12262) Bool)
(declare-fun HasDirectPerm_12261_12262 (T@PolymorphicMapType_8808 T@Ref T@Field_12261_12262) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4238 (T@Field_12261_12262) T@Field_12274_12279)
(declare-fun IsPredicateField_4231_30893 (T@Field_4231_12262) Bool)
(declare-fun HasDirectPerm_4231_12262 (T@PolymorphicMapType_8808 T@Ref T@Field_4231_12262) Bool)
(declare-fun PredicateMaskField_4231 (T@Field_4231_12262) T@Field_4231_12279)
(declare-fun IsWandField_12261_34179 (T@Field_12261_12262) Bool)
(declare-fun WandMaskField_12261 (T@Field_12261_12262) T@Field_12274_12279)
(declare-fun IsWandField_4231_33822 (T@Field_4231_12262) Bool)
(declare-fun WandMaskField_4231 (T@Field_4231_12262) T@Field_4231_12279)
(declare-fun ZeroPMask () T@PolymorphicMapType_9336)
(declare-fun P (T@Ref) T@Field_12261_12262)
(declare-fun |P#trigger_4238| (T@PolymorphicMapType_8787 T@Field_12261_12262) Bool)
(declare-fun |P#everUsed_4238| (T@Field_12261_12262) Bool)
(declare-fun |P#sm| (T@Ref) T@Field_12274_12279)
(declare-fun dummyHeap () T@PolymorphicMapType_8787)
(declare-fun ZeroMask () T@PolymorphicMapType_8808)
(declare-fun InsidePredicate_12261_12261 (T@Field_12261_12262 T@FrameType T@Field_12261_12262 T@FrameType) Bool)
(declare-fun InsidePredicate_8847_8847 (T@Field_4231_12262 T@FrameType T@Field_4231_12262 T@FrameType) Bool)
(declare-fun IsPredicateField_4231_4232 (T@Field_8860_8861) Bool)
(declare-fun IsWandField_4231_4232 (T@Field_8860_8861) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4238_39890 (T@Field_12274_12279) Bool)
(declare-fun IsWandField_4238_39906 (T@Field_12274_12279) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4238_53 (T@Field_12261_53) Bool)
(declare-fun IsWandField_4238_53 (T@Field_12261_53) Bool)
(declare-fun IsPredicateField_4238_4232 (T@Field_12261_4232) Bool)
(declare-fun IsWandField_4238_4232 (T@Field_12261_4232) Bool)
(declare-fun IsPredicateField_4231_39227 (T@Field_4231_12279) Bool)
(declare-fun IsWandField_4231_39243 (T@Field_4231_12279) Bool)
(declare-fun IsPredicateField_4231_53 (T@Field_8847_53) Bool)
(declare-fun IsWandField_4231_53 (T@Field_8847_53) Bool)
(declare-fun HasDirectPerm_12261_30648 (T@PolymorphicMapType_8808 T@Ref T@Field_12274_12279) Bool)
(declare-fun HasDirectPerm_12261_53 (T@PolymorphicMapType_8808 T@Ref T@Field_12261_53) Bool)
(declare-fun HasDirectPerm_12261_4232 (T@PolymorphicMapType_8808 T@Ref T@Field_12261_4232) Bool)
(declare-fun HasDirectPerm_4231_29708 (T@PolymorphicMapType_8808 T@Ref T@Field_4231_12279) Bool)
(declare-fun HasDirectPerm_4231_53 (T@PolymorphicMapType_8808 T@Ref T@Field_8847_53) Bool)
(declare-fun HasDirectPerm_4231_4232 (T@PolymorphicMapType_8808 T@Ref T@Field_8860_8861) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8808 T@PolymorphicMapType_8808 T@PolymorphicMapType_8808) Bool)
(declare-fun getPredWandId_4238_4239 (T@Field_12261_12262) Int)
(declare-fun InsidePredicate_12261_8847 (T@Field_12261_12262 T@FrameType T@Field_4231_12262 T@FrameType) Bool)
(declare-fun InsidePredicate_8847_12261 (T@Field_4231_12262 T@FrameType T@Field_12261_12262 T@FrameType) Bool)
(assert (distinct n_85 m_20)
)
(assert (forall ((Heap0 T@PolymorphicMapType_8787) (Heap1 T@PolymorphicMapType_8787) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8787) (Mask T@PolymorphicMapType_8808) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8787) (ExhaleHeap T@PolymorphicMapType_8787) (Mask@@0 T@PolymorphicMapType_8808) (pm_f T@Field_12261_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12261_12262 Mask@@0 null pm_f) (IsPredicateField_4238_4239 pm_f)) (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_8860_8861) ) (!  (=> (select (|PolymorphicMapType_9336_4231_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2 f_2) (= (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@0) o2 f_2) (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_8847_53) ) (!  (=> (select (|PolymorphicMapType_9336_4231_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@0) o2@@0 f_2@@0) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_4231_12262) ) (!  (=> (select (|PolymorphicMapType_9336_4231_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@0) o2@@1 f_2@@1) (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_4231_12279) ) (!  (=> (select (|PolymorphicMapType_9336_4231_32164#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@0) o2@@2 f_2@@2) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_12261_4232) ) (!  (=> (select (|PolymorphicMapType_9336_12261_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@0) o2@@3 f_2@@3) (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_12261_53) ) (!  (=> (select (|PolymorphicMapType_9336_12261_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@0) o2@@4 f_2@@4) (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_12261_12262) ) (!  (=> (select (|PolymorphicMapType_9336_12261_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@0) o2@@5 f_2@@5) (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_12274_12279) ) (!  (=> (select (|PolymorphicMapType_9336_12261_33014#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) o2@@6 f_2@@6) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4238_4239 pm_f))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8787) (ExhaleHeap@@0 T@PolymorphicMapType_8787) (Mask@@1 T@PolymorphicMapType_8808) (pm_f@@0 T@Field_4231_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4231_12262 Mask@@1 null pm_f@@0) (IsPredicateField_4231_30893 pm_f@@0)) (and (and (and (and (and (and (and (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_8860_8861) ) (!  (=> (select (|PolymorphicMapType_9336_4231_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@1) o2@@7 f_2@@7) (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@7 f_2@@7))
)) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_8847_53) ) (!  (=> (select (|PolymorphicMapType_9336_4231_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@1) o2@@8 f_2@@8) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_4231_12262) ) (!  (=> (select (|PolymorphicMapType_9336_4231_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@1) o2@@9 f_2@@9) (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_4231_12279) ) (!  (=> (select (|PolymorphicMapType_9336_4231_32164#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) o2@@10 f_2@@10) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_12261_4232) ) (!  (=> (select (|PolymorphicMapType_9336_12261_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@1) o2@@11 f_2@@11) (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_12261_53) ) (!  (=> (select (|PolymorphicMapType_9336_12261_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@1) o2@@12 f_2@@12) (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_12261_12262) ) (!  (=> (select (|PolymorphicMapType_9336_12261_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@1) o2@@13 f_2@@13) (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_12274_12279) ) (!  (=> (select (|PolymorphicMapType_9336_12261_33014#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@1) o2@@14 f_2@@14) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@14 f_2@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4231_30893 pm_f@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8787) (ExhaleHeap@@1 T@PolymorphicMapType_8787) (Mask@@2 T@PolymorphicMapType_8808) (pm_f@@1 T@Field_12261_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_12261_12262 Mask@@2 null pm_f@@1) (IsWandField_12261_34179 pm_f@@1)) (and (and (and (and (and (and (and (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_8860_8861) ) (!  (=> (select (|PolymorphicMapType_9336_4231_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@2) o2@@15 f_2@@15) (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@15 f_2@@15)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@15 f_2@@15))
)) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_8847_53) ) (!  (=> (select (|PolymorphicMapType_9336_4231_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@2) o2@@16 f_2@@16) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@16 f_2@@16)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_4231_12262) ) (!  (=> (select (|PolymorphicMapType_9336_4231_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@2) o2@@17 f_2@@17) (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@17 f_2@@17)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_4231_12279) ) (!  (=> (select (|PolymorphicMapType_9336_4231_32164#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@2) o2@@18 f_2@@18) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@18 f_2@@18)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@18 f_2@@18))
))) (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_12261_4232) ) (!  (=> (select (|PolymorphicMapType_9336_12261_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@2) o2@@19 f_2@@19) (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@19 f_2@@19))
))) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_12261_53) ) (!  (=> (select (|PolymorphicMapType_9336_12261_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@2) o2@@20 f_2@@20) (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_12261_12262) ) (!  (=> (select (|PolymorphicMapType_9336_12261_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@2) o2@@21 f_2@@21) (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_12274_12279) ) (!  (=> (select (|PolymorphicMapType_9336_12261_33014#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) o2@@22 f_2@@22) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@22 f_2@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_12261_34179 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8787) (ExhaleHeap@@2 T@PolymorphicMapType_8787) (Mask@@3 T@PolymorphicMapType_8808) (pm_f@@2 T@Field_4231_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4231_12262 Mask@@3 null pm_f@@2) (IsWandField_4231_33822 pm_f@@2)) (and (and (and (and (and (and (and (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_8860_8861) ) (!  (=> (select (|PolymorphicMapType_9336_4231_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@3) o2@@23 f_2@@23) (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@23 f_2@@23))
)) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_8847_53) ) (!  (=> (select (|PolymorphicMapType_9336_4231_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@3) o2@@24 f_2@@24) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_4231_12262) ) (!  (=> (select (|PolymorphicMapType_9336_4231_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@3) o2@@25 f_2@@25) (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_4231_12279) ) (!  (=> (select (|PolymorphicMapType_9336_4231_32164#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) o2@@26 f_2@@26) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_12261_4232) ) (!  (=> (select (|PolymorphicMapType_9336_12261_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@3) o2@@27 f_2@@27) (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_12261_53) ) (!  (=> (select (|PolymorphicMapType_9336_12261_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@3) o2@@28 f_2@@28) (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_12261_12262) ) (!  (=> (select (|PolymorphicMapType_9336_12261_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@3) o2@@29 f_2@@29) (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_12274_12279) ) (!  (=> (select (|PolymorphicMapType_9336_12261_33014#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@3) o2@@30 f_2@@30) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@30 f_2@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4231_33822 pm_f@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8787) (Heap1@@0 T@PolymorphicMapType_8787) (Heap2 T@PolymorphicMapType_8787) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12274_12279) ) (!  (not (select (|PolymorphicMapType_9336_12261_33014#PolymorphicMapType_9336| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_12261_33014#PolymorphicMapType_9336| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12261_12262) ) (!  (not (select (|PolymorphicMapType_9336_12261_12262#PolymorphicMapType_9336| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_12261_12262#PolymorphicMapType_9336| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12261_53) ) (!  (not (select (|PolymorphicMapType_9336_12261_53#PolymorphicMapType_9336| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_12261_53#PolymorphicMapType_9336| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12261_4232) ) (!  (not (select (|PolymorphicMapType_9336_12261_4232#PolymorphicMapType_9336| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_12261_4232#PolymorphicMapType_9336| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4231_12279) ) (!  (not (select (|PolymorphicMapType_9336_4231_32164#PolymorphicMapType_9336| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_4231_32164#PolymorphicMapType_9336| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4231_12262) ) (!  (not (select (|PolymorphicMapType_9336_4231_12262#PolymorphicMapType_9336| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_4231_12262#PolymorphicMapType_9336| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8847_53) ) (!  (not (select (|PolymorphicMapType_9336_4231_53#PolymorphicMapType_9336| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_4231_53#PolymorphicMapType_9336| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8860_8861) ) (!  (not (select (|PolymorphicMapType_9336_4231_4232#PolymorphicMapType_9336| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_4231_4232#PolymorphicMapType_9336| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_4238_4239 (P x))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (P x))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8787) (x@@0 T@Ref) ) (! (|P#everUsed_4238| (P x@@0))
 :qid |stdinbpl.217:15|
 :skolemid |27|
 :pattern ( (|P#trigger_4238| Heap@@4 (P x@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8787) (ExhaleHeap@@3 T@PolymorphicMapType_8787) (Mask@@4 T@PolymorphicMapType_8808) (pm_f@@3 T@Field_12261_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_12261_12262 Mask@@4 null pm_f@@3) (IsPredicateField_4238_4239 pm_f@@3)) (= (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@5) null (PredicateMaskField_4238 pm_f@@3)) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@3) null (PredicateMaskField_4238 pm_f@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4238_4239 pm_f@@3) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@3) null (PredicateMaskField_4238 pm_f@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8787) (ExhaleHeap@@4 T@PolymorphicMapType_8787) (Mask@@5 T@PolymorphicMapType_8808) (pm_f@@4 T@Field_4231_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4231_12262 Mask@@5 null pm_f@@4) (IsPredicateField_4231_30893 pm_f@@4)) (= (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@6) null (PredicateMaskField_4231 pm_f@@4)) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@4) null (PredicateMaskField_4231 pm_f@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_4231_30893 pm_f@@4) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@4) null (PredicateMaskField_4231 pm_f@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8787) (ExhaleHeap@@5 T@PolymorphicMapType_8787) (Mask@@6 T@PolymorphicMapType_8808) (pm_f@@5 T@Field_12261_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_12261_12262 Mask@@6 null pm_f@@5) (IsWandField_12261_34179 pm_f@@5)) (= (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@7) null (WandMaskField_12261 pm_f@@5)) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@5) null (WandMaskField_12261 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_12261_34179 pm_f@@5) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@5) null (WandMaskField_12261 pm_f@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8787) (ExhaleHeap@@6 T@PolymorphicMapType_8787) (Mask@@7 T@PolymorphicMapType_8808) (pm_f@@6 T@Field_4231_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4231_12262 Mask@@7 null pm_f@@6) (IsWandField_4231_33822 pm_f@@6)) (= (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@8) null (WandMaskField_4231 pm_f@@6)) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@6) null (WandMaskField_4231 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_4231_33822 pm_f@@6) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@6) null (WandMaskField_4231 pm_f@@6)))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@1) (P x2)) (= x@@1 x2))
 :qid |stdinbpl.208:15|
 :skolemid |25|
 :pattern ( (P x@@1) (P x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@2) (|P#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.212:15|
 :skolemid |26|
 :pattern ( (|P#sm| x@@2) (|P#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8787) (ExhaleHeap@@7 T@PolymorphicMapType_8787) (Mask@@8 T@PolymorphicMapType_8808) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@9) o_1 $allocated) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_12261_12262) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12261_12261 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12261_12261 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4231_12262) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8847_8847 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8847_8847 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4231_4232 n_85)))
(assert  (not (IsWandField_4231_4232 n_85)))
(assert  (not (IsPredicateField_4231_4232 m_20)))
(assert  (not (IsWandField_4231_4232 m_20)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8787) (ExhaleHeap@@8 T@PolymorphicMapType_8787) (Mask@@9 T@PolymorphicMapType_8808) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8808) (o_2@@7 T@Ref) (f_4@@7 T@Field_12274_12279) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4238_39890 f_4@@7))) (not (IsWandField_4238_39906 f_4@@7))) (<= (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8808) (o_2@@8 T@Ref) (f_4@@8 T@Field_12261_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4238_53 f_4@@8))) (not (IsWandField_4238_53 f_4@@8))) (<= (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8808) (o_2@@9 T@Ref) (f_4@@9 T@Field_12261_12262) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4238_4239 f_4@@9))) (not (IsWandField_12261_34179 f_4@@9))) (<= (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8808) (o_2@@10 T@Ref) (f_4@@10 T@Field_12261_4232) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4238_4232 f_4@@10))) (not (IsWandField_4238_4232 f_4@@10))) (<= (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8808) (o_2@@11 T@Ref) (f_4@@11 T@Field_4231_12279) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4231_39227 f_4@@11))) (not (IsWandField_4231_39243 f_4@@11))) (<= (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8808) (o_2@@12 T@Ref) (f_4@@12 T@Field_8847_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4231_53 f_4@@12))) (not (IsWandField_4231_53 f_4@@12))) (<= (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8808) (o_2@@13 T@Ref) (f_4@@13 T@Field_4231_12262) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4231_30893 f_4@@13))) (not (IsWandField_4231_33822 f_4@@13))) (<= (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8808) (o_2@@14 T@Ref) (f_4@@14 T@Field_8860_8861) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4231_4232 f_4@@14))) (not (IsWandField_4231_4232 f_4@@14))) (<= (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8808) (o_2@@15 T@Ref) (f_4@@15 T@Field_12274_12279) ) (! (= (HasDirectPerm_12261_30648 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12261_30648 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8808) (o_2@@16 T@Ref) (f_4@@16 T@Field_12261_12262) ) (! (= (HasDirectPerm_12261_12262 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12261_12262 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8808) (o_2@@17 T@Ref) (f_4@@17 T@Field_12261_53) ) (! (= (HasDirectPerm_12261_53 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12261_53 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8808) (o_2@@18 T@Ref) (f_4@@18 T@Field_12261_4232) ) (! (= (HasDirectPerm_12261_4232 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12261_4232 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8808) (o_2@@19 T@Ref) (f_4@@19 T@Field_4231_12279) ) (! (= (HasDirectPerm_4231_29708 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4231_29708 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8808) (o_2@@20 T@Ref) (f_4@@20 T@Field_4231_12262) ) (! (= (HasDirectPerm_4231_12262 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4231_12262 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8808) (o_2@@21 T@Ref) (f_4@@21 T@Field_8847_53) ) (! (= (HasDirectPerm_4231_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4231_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8808) (o_2@@22 T@Ref) (f_4@@22 T@Field_8860_8861) ) (! (= (HasDirectPerm_4231_4232 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4231_4232 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8787) (ExhaleHeap@@9 T@PolymorphicMapType_8787) (Mask@@26 T@PolymorphicMapType_8808) (o_1@@0 T@Ref) (f_2@@31 T@Field_12274_12279) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_12261_30648 Mask@@26 o_1@@0 f_2@@31) (= (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@11) o_1@@0 f_2@@31) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@9) o_1@@0 f_2@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@9) o_1@@0 f_2@@31))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8787) (ExhaleHeap@@10 T@PolymorphicMapType_8787) (Mask@@27 T@PolymorphicMapType_8808) (o_1@@1 T@Ref) (f_2@@32 T@Field_12261_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_12261_12262 Mask@@27 o_1@@1 f_2@@32) (= (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@12) o_1@@1 f_2@@32) (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@10) o_1@@1 f_2@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@10) o_1@@1 f_2@@32))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8787) (ExhaleHeap@@11 T@PolymorphicMapType_8787) (Mask@@28 T@PolymorphicMapType_8808) (o_1@@2 T@Ref) (f_2@@33 T@Field_12261_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_12261_53 Mask@@28 o_1@@2 f_2@@33) (= (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@13) o_1@@2 f_2@@33) (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@11) o_1@@2 f_2@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@11) o_1@@2 f_2@@33))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8787) (ExhaleHeap@@12 T@PolymorphicMapType_8787) (Mask@@29 T@PolymorphicMapType_8808) (o_1@@3 T@Ref) (f_2@@34 T@Field_12261_4232) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_12261_4232 Mask@@29 o_1@@3 f_2@@34) (= (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@14) o_1@@3 f_2@@34) (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@12) o_1@@3 f_2@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@12) o_1@@3 f_2@@34))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8787) (ExhaleHeap@@13 T@PolymorphicMapType_8787) (Mask@@30 T@PolymorphicMapType_8808) (o_1@@4 T@Ref) (f_2@@35 T@Field_4231_12279) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_4231_29708 Mask@@30 o_1@@4 f_2@@35) (= (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@15) o_1@@4 f_2@@35) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@13) o_1@@4 f_2@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@13) o_1@@4 f_2@@35))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8787) (ExhaleHeap@@14 T@PolymorphicMapType_8787) (Mask@@31 T@PolymorphicMapType_8808) (o_1@@5 T@Ref) (f_2@@36 T@Field_4231_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_4231_12262 Mask@@31 o_1@@5 f_2@@36) (= (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@16) o_1@@5 f_2@@36) (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@14) o_1@@5 f_2@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@14) o_1@@5 f_2@@36))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8787) (ExhaleHeap@@15 T@PolymorphicMapType_8787) (Mask@@32 T@PolymorphicMapType_8808) (o_1@@6 T@Ref) (f_2@@37 T@Field_8847_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_4231_53 Mask@@32 o_1@@6 f_2@@37) (= (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@17) o_1@@6 f_2@@37) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@15) o_1@@6 f_2@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@15) o_1@@6 f_2@@37))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8787) (ExhaleHeap@@16 T@PolymorphicMapType_8787) (Mask@@33 T@PolymorphicMapType_8808) (o_1@@7 T@Ref) (f_2@@38 T@Field_8860_8861) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_4231_4232 Mask@@33 o_1@@7 f_2@@38) (= (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@18) o_1@@7 f_2@@38) (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@16) o_1@@7 f_2@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@16) o_1@@7 f_2@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_12274_12279) ) (! (= (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_12261_53) ) (! (= (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_12261_12262) ) (! (= (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_12261_4232) ) (! (= (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_4231_12279) ) (! (= (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_8847_53) ) (! (= (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_4231_12262) ) (! (= (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8860_8861) ) (! (= (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8808) (SummandMask1 T@PolymorphicMapType_8808) (SummandMask2 T@PolymorphicMapType_8808) (o_2@@31 T@Ref) (f_4@@31 T@Field_12274_12279) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8808) (SummandMask1@@0 T@PolymorphicMapType_8808) (SummandMask2@@0 T@PolymorphicMapType_8808) (o_2@@32 T@Ref) (f_4@@32 T@Field_12261_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8808) (SummandMask1@@1 T@PolymorphicMapType_8808) (SummandMask2@@1 T@PolymorphicMapType_8808) (o_2@@33 T@Ref) (f_4@@33 T@Field_12261_12262) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8808) (SummandMask1@@2 T@PolymorphicMapType_8808) (SummandMask2@@2 T@PolymorphicMapType_8808) (o_2@@34 T@Ref) (f_4@@34 T@Field_12261_4232) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8808) (SummandMask1@@3 T@PolymorphicMapType_8808) (SummandMask2@@3 T@PolymorphicMapType_8808) (o_2@@35 T@Ref) (f_4@@35 T@Field_4231_12279) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8808) (SummandMask1@@4 T@PolymorphicMapType_8808) (SummandMask2@@4 T@PolymorphicMapType_8808) (o_2@@36 T@Ref) (f_4@@36 T@Field_8847_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8808) (SummandMask1@@5 T@PolymorphicMapType_8808) (SummandMask2@@5 T@PolymorphicMapType_8808) (o_2@@37 T@Ref) (f_4@@37 T@Field_4231_12262) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8808) (SummandMask1@@6 T@PolymorphicMapType_8808) (SummandMask2@@6 T@PolymorphicMapType_8808) (o_2@@38 T@Ref) (f_4@@38 T@Field_8860_8861) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_4238_4239 (P x@@3)) 0)
 :qid |stdinbpl.202:15|
 :skolemid |24|
 :pattern ( (P x@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8787) (o T@Ref) (f_3 T@Field_12274_12279) (v T@PolymorphicMapType_9336) ) (! (succHeap Heap@@19 (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@19) (store (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@19) o f_3 v) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@19) (store (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@19) o f_3 v) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8787) (o@@0 T@Ref) (f_3@@0 T@Field_12261_12262) (v@@0 T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@20) (store (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@20) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@20) (store (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@20) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8787) (o@@1 T@Ref) (f_3@@1 T@Field_12261_4232) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@21) (store (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@21) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@21) (store (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@21) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8787) (o@@2 T@Ref) (f_3@@2 T@Field_12261_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@22) (store (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@22) o@@2 f_3@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@22) (store (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@22) o@@2 f_3@@2 v@@2)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8787) (o@@3 T@Ref) (f_3@@3 T@Field_4231_12279) (v@@3 T@PolymorphicMapType_9336) ) (! (succHeap Heap@@23 (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@23) (store (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@23) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@23) (store (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@23) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8787) (o@@4 T@Ref) (f_3@@4 T@Field_4231_12262) (v@@4 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@24) (store (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@24) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@24) (store (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@24) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8787) (o@@5 T@Ref) (f_3@@5 T@Field_8860_8861) (v@@5 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@25) (store (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@25) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@25) (store (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@25) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8787) (o@@6 T@Ref) (f_3@@6 T@Field_8847_53) (v@@6 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_8787 (store (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@26) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (store (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@26) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@26)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_4238 (P x@@4)) (|P#sm| x@@4))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_4238 (P x@@4)))
)))
(assert (forall ((o@@7 T@Ref) (f T@Field_8860_8861) (Heap@@27 T@PolymorphicMapType_8787) ) (!  (=> (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@27) o@@7 $allocated) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@27) (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@27) o@@7 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@27) o@@7 f))
)))
(assert (forall ((p@@2 T@Field_12261_12262) (v_1@@1 T@FrameType) (q T@Field_12261_12262) (w@@1 T@FrameType) (r T@Field_12261_12262) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12261_12261 p@@2 v_1@@1 q w@@1) (InsidePredicate_12261_12261 q w@@1 r u)) (InsidePredicate_12261_12261 p@@2 v_1@@1 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12261_12261 p@@2 v_1@@1 q w@@1) (InsidePredicate_12261_12261 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_12261_12262) (v_1@@2 T@FrameType) (q@@0 T@Field_12261_12262) (w@@2 T@FrameType) (r@@0 T@Field_4231_12262) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_12261_12261 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12261_8847 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_12261_8847 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12261_12261 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12261_8847 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_12261_12262) (v_1@@3 T@FrameType) (q@@1 T@Field_4231_12262) (w@@3 T@FrameType) (r@@1 T@Field_12261_12262) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_12261_8847 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8847_12261 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_12261_12261 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12261_8847 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8847_12261 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_12261_12262) (v_1@@4 T@FrameType) (q@@2 T@Field_4231_12262) (w@@4 T@FrameType) (r@@2 T@Field_4231_12262) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_12261_8847 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8847_8847 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_12261_8847 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12261_8847 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8847_8847 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4231_12262) (v_1@@5 T@FrameType) (q@@3 T@Field_12261_12262) (w@@5 T@FrameType) (r@@3 T@Field_12261_12262) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8847_12261 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12261_12261 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8847_12261 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8847_12261 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12261_12261 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4231_12262) (v_1@@6 T@FrameType) (q@@4 T@Field_12261_12262) (w@@6 T@FrameType) (r@@4 T@Field_4231_12262) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8847_12261 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12261_8847 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8847_8847 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8847_12261 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12261_8847 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4231_12262) (v_1@@7 T@FrameType) (q@@5 T@Field_4231_12262) (w@@7 T@FrameType) (r@@5 T@Field_12261_12262) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8847_8847 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8847_12261 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8847_12261 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8847_8847 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8847_12261 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4231_12262) (v_1@@8 T@FrameType) (q@@6 T@Field_4231_12262) (w@@8 T@FrameType) (r@@6 T@Field_4231_12262) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8847_8847 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8847_8847 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8847_8847 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8847_8847 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8847_8847 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@28 () T@PolymorphicMapType_8787)
(declare-fun a_2 () T@Ref)
(declare-fun b_24 () T@Ref)
(declare-fun c () T@Ref)
(declare-fun d () T@Ref)
(declare-fun e_1 () T@Ref)
(declare-fun c@0 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_8808)
(declare-fun d@0 () T@Ref)
(declare-fun freshObj@0 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_8787)
(declare-fun Mask@1 () T@PolymorphicMapType_8808)
(declare-fun _receiver0 () T@Ref)
(declare-fun _target0 () T@Ref)
(declare-fun _target0@0 () T@Ref)
(declare-fun Mask@2 () T@PolymorphicMapType_8808)
(declare-fun e_1@0 () T@Ref)
(declare-fun Heap@1 () T@PolymorphicMapType_8787)
(declare-fun _receiver0_1 () T@Ref)
(declare-fun _target0_1 () T@Ref)
(declare-fun _receiver0_1@0 () T@Ref)
(declare-fun freshObj@1 () T@Ref)
(declare-fun Heap@2 () T@PolymorphicMapType_8787)
(declare-fun Mask@3 () T@PolymorphicMapType_8808)
(set-info :boogie-vc-id test1_1)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (and (state Heap@@28 ZeroMask) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@28) a_2 $allocated) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@28) b_24 $allocated)) (and (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@28) c $allocated) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@28) d $allocated))) (=> (and (and (and (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@28) e_1 $allocated) (not (= c@0 null))) (and (= Mask@0 (PolymorphicMapType_8808 (store (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| ZeroMask) c@0 n_85 (+ (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| ZeroMask) c@0 n_85) FullPerm)) (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| ZeroMask) (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| ZeroMask) (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| ZeroMask) (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| ZeroMask) (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| ZeroMask) (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| ZeroMask) (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| ZeroMask))) (state Heap@@28 Mask@0))) (and (and (state Heap@@28 Mask@0) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@28) c@0 $allocated)) (and (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@28) d@0 $allocated) (state Heap@@28 Mask@0)))) (=> (and (and (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@28) freshObj@0 $allocated))) (= Heap@0 (PolymorphicMapType_8787 (store (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@28) freshObj@0 $allocated true) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@28) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@28) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@28) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@28) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@28) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@28) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@28)))) (and (and (= Mask@1 (PolymorphicMapType_8808 (store (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@0) freshObj@0 n_85 (+ (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@0) freshObj@0 n_85) FullPerm)) (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| Mask@0) (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| Mask@0) (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| Mask@0) (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| Mask@0) (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| Mask@0) (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| Mask@0) (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| Mask@0))) (state Heap@0 Mask@1)) (and (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@0) _receiver0 $allocated) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@0) _target0 $allocated)))) (and (and (and (state Heap@0 Mask@1) (not (= _target0@0 null))) (and (= Mask@2 (PolymorphicMapType_8808 (store (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@1) _target0@0 n_85 (+ (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@1) _target0@0 n_85) FullPerm)) (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| Mask@1) (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| Mask@1) (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| Mask@1) (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| Mask@1) (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| Mask@1) (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| Mask@1) (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| Mask@1))) (state Heap@0 Mask@2))) (and (and (state Heap@0 Mask@2) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@0) _target0@0 $allocated)) (and (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@0) e_1@0 $allocated) (state Heap@0 Mask@2))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= FullPerm (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@2) c@0 n_85))) (=> (= FullPerm (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@2) c@0 n_85)) (=> (and (and (= Heap@1 (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@0) (store (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@0) c@0 n_85 _target0@0) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@0) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@0) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@0) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@0) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@0) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@0))) (state Heap@1 Mask@2)) (and (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@1) _receiver0_1 $allocated) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@1) _target0_1 $allocated))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_4231_4232 Mask@2 c@0 n_85)) (=> (HasDirectPerm_4231_4232 Mask@2 c@0 n_85) (=> (and (and (and (= _receiver0_1@0 (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@1) c@0 n_85)) (state Heap@1 Mask@2)) (and (not (= freshObj@1 null)) (not (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@1) freshObj@1 $allocated)))) (and (and (= Heap@2 (PolymorphicMapType_8787 (store (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@1) freshObj@1 $allocated true) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@1) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@1) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@1) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@1) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@1) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@1) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@1))) (= Mask@3 (PolymorphicMapType_8808 (store (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@2) freshObj@1 n_85 (+ (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@2) freshObj@1 n_85) FullPerm)) (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| Mask@2) (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| Mask@2) (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| Mask@2) (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| Mask@2) (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| Mask@2) (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| Mask@2) (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| Mask@2)))) (and (state Heap@2 Mask@3) (= (ControlFlow 0 2) (- 0 1))))) (= FullPerm (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@3) _receiver0_1@0 n_85))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
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
(declare-sort T@Field_8847_53 0)
(declare-sort T@Field_8860_8861 0)
(declare-sort T@Field_12261_12262 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12274_12279 0)
(declare-sort T@Field_4231_12262 0)
(declare-sort T@Field_4231_12279 0)
(declare-sort T@Field_12261_4232 0)
(declare-sort T@Field_12261_53 0)
(declare-datatypes ((T@PolymorphicMapType_8808 0)) (((PolymorphicMapType_8808 (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| (Array T@Ref T@Field_8860_8861 Real)) (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| (Array T@Ref T@Field_12261_12262 Real)) (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| (Array T@Ref T@Field_4231_12262 Real)) (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| (Array T@Ref T@Field_8847_53 Real)) (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| (Array T@Ref T@Field_4231_12279 Real)) (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| (Array T@Ref T@Field_12261_4232 Real)) (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| (Array T@Ref T@Field_12261_53 Real)) (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| (Array T@Ref T@Field_12274_12279 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9336 0)) (((PolymorphicMapType_9336 (|PolymorphicMapType_9336_4231_4232#PolymorphicMapType_9336| (Array T@Ref T@Field_8860_8861 Bool)) (|PolymorphicMapType_9336_4231_53#PolymorphicMapType_9336| (Array T@Ref T@Field_8847_53 Bool)) (|PolymorphicMapType_9336_4231_12262#PolymorphicMapType_9336| (Array T@Ref T@Field_4231_12262 Bool)) (|PolymorphicMapType_9336_4231_32164#PolymorphicMapType_9336| (Array T@Ref T@Field_4231_12279 Bool)) (|PolymorphicMapType_9336_12261_4232#PolymorphicMapType_9336| (Array T@Ref T@Field_12261_4232 Bool)) (|PolymorphicMapType_9336_12261_53#PolymorphicMapType_9336| (Array T@Ref T@Field_12261_53 Bool)) (|PolymorphicMapType_9336_12261_12262#PolymorphicMapType_9336| (Array T@Ref T@Field_12261_12262 Bool)) (|PolymorphicMapType_9336_12261_33014#PolymorphicMapType_9336| (Array T@Ref T@Field_12274_12279 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8787 0)) (((PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| (Array T@Ref T@Field_8847_53 Bool)) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| (Array T@Ref T@Field_8860_8861 T@Ref)) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| (Array T@Ref T@Field_12261_12262 T@FrameType)) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| (Array T@Ref T@Field_12274_12279 T@PolymorphicMapType_9336)) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| (Array T@Ref T@Field_4231_12262 T@FrameType)) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| (Array T@Ref T@Field_4231_12279 T@PolymorphicMapType_9336)) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| (Array T@Ref T@Field_12261_4232 T@Ref)) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| (Array T@Ref T@Field_12261_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_8847_53)
(declare-fun n_85 () T@Field_8860_8861)
(declare-fun m_20 () T@Field_8860_8861)
(declare-fun succHeap (T@PolymorphicMapType_8787 T@PolymorphicMapType_8787) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8787 T@PolymorphicMapType_8787) Bool)
(declare-fun state (T@PolymorphicMapType_8787 T@PolymorphicMapType_8808) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8808) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8787 T@PolymorphicMapType_8787 T@PolymorphicMapType_8808) Bool)
(declare-fun IsPredicateField_4238_4239 (T@Field_12261_12262) Bool)
(declare-fun HasDirectPerm_12261_12262 (T@PolymorphicMapType_8808 T@Ref T@Field_12261_12262) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4238 (T@Field_12261_12262) T@Field_12274_12279)
(declare-fun IsPredicateField_4231_30893 (T@Field_4231_12262) Bool)
(declare-fun HasDirectPerm_4231_12262 (T@PolymorphicMapType_8808 T@Ref T@Field_4231_12262) Bool)
(declare-fun PredicateMaskField_4231 (T@Field_4231_12262) T@Field_4231_12279)
(declare-fun IsWandField_12261_34179 (T@Field_12261_12262) Bool)
(declare-fun WandMaskField_12261 (T@Field_12261_12262) T@Field_12274_12279)
(declare-fun IsWandField_4231_33822 (T@Field_4231_12262) Bool)
(declare-fun WandMaskField_4231 (T@Field_4231_12262) T@Field_4231_12279)
(declare-fun ZeroPMask () T@PolymorphicMapType_9336)
(declare-fun P (T@Ref) T@Field_12261_12262)
(declare-fun |P#trigger_4238| (T@PolymorphicMapType_8787 T@Field_12261_12262) Bool)
(declare-fun |P#everUsed_4238| (T@Field_12261_12262) Bool)
(declare-fun |P#sm| (T@Ref) T@Field_12274_12279)
(declare-fun dummyHeap () T@PolymorphicMapType_8787)
(declare-fun ZeroMask () T@PolymorphicMapType_8808)
(declare-fun InsidePredicate_12261_12261 (T@Field_12261_12262 T@FrameType T@Field_12261_12262 T@FrameType) Bool)
(declare-fun InsidePredicate_8847_8847 (T@Field_4231_12262 T@FrameType T@Field_4231_12262 T@FrameType) Bool)
(declare-fun IsPredicateField_4231_4232 (T@Field_8860_8861) Bool)
(declare-fun IsWandField_4231_4232 (T@Field_8860_8861) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4238_39890 (T@Field_12274_12279) Bool)
(declare-fun IsWandField_4238_39906 (T@Field_12274_12279) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4238_53 (T@Field_12261_53) Bool)
(declare-fun IsWandField_4238_53 (T@Field_12261_53) Bool)
(declare-fun IsPredicateField_4238_4232 (T@Field_12261_4232) Bool)
(declare-fun IsWandField_4238_4232 (T@Field_12261_4232) Bool)
(declare-fun IsPredicateField_4231_39227 (T@Field_4231_12279) Bool)
(declare-fun IsWandField_4231_39243 (T@Field_4231_12279) Bool)
(declare-fun IsPredicateField_4231_53 (T@Field_8847_53) Bool)
(declare-fun IsWandField_4231_53 (T@Field_8847_53) Bool)
(declare-fun HasDirectPerm_12261_30648 (T@PolymorphicMapType_8808 T@Ref T@Field_12274_12279) Bool)
(declare-fun HasDirectPerm_12261_53 (T@PolymorphicMapType_8808 T@Ref T@Field_12261_53) Bool)
(declare-fun HasDirectPerm_12261_4232 (T@PolymorphicMapType_8808 T@Ref T@Field_12261_4232) Bool)
(declare-fun HasDirectPerm_4231_29708 (T@PolymorphicMapType_8808 T@Ref T@Field_4231_12279) Bool)
(declare-fun HasDirectPerm_4231_53 (T@PolymorphicMapType_8808 T@Ref T@Field_8847_53) Bool)
(declare-fun HasDirectPerm_4231_4232 (T@PolymorphicMapType_8808 T@Ref T@Field_8860_8861) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8808 T@PolymorphicMapType_8808 T@PolymorphicMapType_8808) Bool)
(declare-fun getPredWandId_4238_4239 (T@Field_12261_12262) Int)
(declare-fun InsidePredicate_12261_8847 (T@Field_12261_12262 T@FrameType T@Field_4231_12262 T@FrameType) Bool)
(declare-fun InsidePredicate_8847_12261 (T@Field_4231_12262 T@FrameType T@Field_12261_12262 T@FrameType) Bool)
(assert (distinct n_85 m_20)
)
(assert (forall ((Heap0 T@PolymorphicMapType_8787) (Heap1 T@PolymorphicMapType_8787) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8787) (Mask T@PolymorphicMapType_8808) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8787) (ExhaleHeap T@PolymorphicMapType_8787) (Mask@@0 T@PolymorphicMapType_8808) (pm_f T@Field_12261_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12261_12262 Mask@@0 null pm_f) (IsPredicateField_4238_4239 pm_f)) (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_8860_8861) ) (!  (=> (select (|PolymorphicMapType_9336_4231_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2 f_2) (= (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@0) o2 f_2) (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_8847_53) ) (!  (=> (select (|PolymorphicMapType_9336_4231_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@0) o2@@0 f_2@@0) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_4231_12262) ) (!  (=> (select (|PolymorphicMapType_9336_4231_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@0) o2@@1 f_2@@1) (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_4231_12279) ) (!  (=> (select (|PolymorphicMapType_9336_4231_32164#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@0) o2@@2 f_2@@2) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_12261_4232) ) (!  (=> (select (|PolymorphicMapType_9336_12261_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@0) o2@@3 f_2@@3) (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_12261_53) ) (!  (=> (select (|PolymorphicMapType_9336_12261_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@0) o2@@4 f_2@@4) (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_12261_12262) ) (!  (=> (select (|PolymorphicMapType_9336_12261_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@0) o2@@5 f_2@@5) (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_12274_12279) ) (!  (=> (select (|PolymorphicMapType_9336_12261_33014#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) null (PredicateMaskField_4238 pm_f))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@0) o2@@6 f_2@@6) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4238_4239 pm_f))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8787) (ExhaleHeap@@0 T@PolymorphicMapType_8787) (Mask@@1 T@PolymorphicMapType_8808) (pm_f@@0 T@Field_4231_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4231_12262 Mask@@1 null pm_f@@0) (IsPredicateField_4231_30893 pm_f@@0)) (and (and (and (and (and (and (and (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_8860_8861) ) (!  (=> (select (|PolymorphicMapType_9336_4231_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@1) o2@@7 f_2@@7) (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@7 f_2@@7))
)) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_8847_53) ) (!  (=> (select (|PolymorphicMapType_9336_4231_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@1) o2@@8 f_2@@8) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@8 f_2@@8))
))) (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_4231_12262) ) (!  (=> (select (|PolymorphicMapType_9336_4231_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@1) o2@@9 f_2@@9) (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@9 f_2@@9))
))) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_4231_12279) ) (!  (=> (select (|PolymorphicMapType_9336_4231_32164#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) o2@@10 f_2@@10) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_12261_4232) ) (!  (=> (select (|PolymorphicMapType_9336_12261_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@1) o2@@11 f_2@@11) (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_12261_53) ) (!  (=> (select (|PolymorphicMapType_9336_12261_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@1) o2@@12 f_2@@12) (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_12261_12262) ) (!  (=> (select (|PolymorphicMapType_9336_12261_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@1) o2@@13 f_2@@13) (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_12274_12279) ) (!  (=> (select (|PolymorphicMapType_9336_12261_33014#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@1) null (PredicateMaskField_4231 pm_f@@0))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@1) o2@@14 f_2@@14) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@0) o2@@14 f_2@@14))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_4231_30893 pm_f@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8787) (ExhaleHeap@@1 T@PolymorphicMapType_8787) (Mask@@2 T@PolymorphicMapType_8808) (pm_f@@1 T@Field_12261_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_12261_12262 Mask@@2 null pm_f@@1) (IsWandField_12261_34179 pm_f@@1)) (and (and (and (and (and (and (and (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_8860_8861) ) (!  (=> (select (|PolymorphicMapType_9336_4231_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@2) o2@@15 f_2@@15) (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@15 f_2@@15)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@15 f_2@@15))
)) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_8847_53) ) (!  (=> (select (|PolymorphicMapType_9336_4231_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@2) o2@@16 f_2@@16) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@16 f_2@@16)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_4231_12262) ) (!  (=> (select (|PolymorphicMapType_9336_4231_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@2) o2@@17 f_2@@17) (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@17 f_2@@17)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_4231_12279) ) (!  (=> (select (|PolymorphicMapType_9336_4231_32164#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@2) o2@@18 f_2@@18) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@18 f_2@@18)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@18 f_2@@18))
))) (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_12261_4232) ) (!  (=> (select (|PolymorphicMapType_9336_12261_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@2) o2@@19 f_2@@19) (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@19 f_2@@19))
))) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_12261_53) ) (!  (=> (select (|PolymorphicMapType_9336_12261_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@2) o2@@20 f_2@@20) (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_12261_12262) ) (!  (=> (select (|PolymorphicMapType_9336_12261_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@2) o2@@21 f_2@@21) (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_12274_12279) ) (!  (=> (select (|PolymorphicMapType_9336_12261_33014#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) null (WandMaskField_12261 pm_f@@1))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@2) o2@@22 f_2@@22) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@1) o2@@22 f_2@@22))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_12261_34179 pm_f@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8787) (ExhaleHeap@@2 T@PolymorphicMapType_8787) (Mask@@3 T@PolymorphicMapType_8808) (pm_f@@2 T@Field_4231_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_4231_12262 Mask@@3 null pm_f@@2) (IsWandField_4231_33822 pm_f@@2)) (and (and (and (and (and (and (and (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_8860_8861) ) (!  (=> (select (|PolymorphicMapType_9336_4231_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@3) o2@@23 f_2@@23) (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@23 f_2@@23))
)) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_8847_53) ) (!  (=> (select (|PolymorphicMapType_9336_4231_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@3) o2@@24 f_2@@24) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_4231_12262) ) (!  (=> (select (|PolymorphicMapType_9336_4231_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@3) o2@@25 f_2@@25) (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_4231_12279) ) (!  (=> (select (|PolymorphicMapType_9336_4231_32164#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) o2@@26 f_2@@26) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_12261_4232) ) (!  (=> (select (|PolymorphicMapType_9336_12261_4232#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@3) o2@@27 f_2@@27) (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_12261_53) ) (!  (=> (select (|PolymorphicMapType_9336_12261_53#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@3) o2@@28 f_2@@28) (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@28 f_2@@28))
))) (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_12261_12262) ) (!  (=> (select (|PolymorphicMapType_9336_12261_12262#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@3) o2@@29 f_2@@29) (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@29 f_2@@29))
))) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_12274_12279) ) (!  (=> (select (|PolymorphicMapType_9336_12261_33014#PolymorphicMapType_9336| (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@3) null (WandMaskField_4231 pm_f@@2))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@3) o2@@30 f_2@@30) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@2) o2@@30 f_2@@30))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_4231_33822 pm_f@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8787) (Heap1@@0 T@PolymorphicMapType_8787) (Heap2 T@PolymorphicMapType_8787) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12274_12279) ) (!  (not (select (|PolymorphicMapType_9336_12261_33014#PolymorphicMapType_9336| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_12261_33014#PolymorphicMapType_9336| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12261_12262) ) (!  (not (select (|PolymorphicMapType_9336_12261_12262#PolymorphicMapType_9336| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_12261_12262#PolymorphicMapType_9336| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_12261_53) ) (!  (not (select (|PolymorphicMapType_9336_12261_53#PolymorphicMapType_9336| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_12261_53#PolymorphicMapType_9336| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12261_4232) ) (!  (not (select (|PolymorphicMapType_9336_12261_4232#PolymorphicMapType_9336| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_12261_4232#PolymorphicMapType_9336| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_4231_12279) ) (!  (not (select (|PolymorphicMapType_9336_4231_32164#PolymorphicMapType_9336| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_4231_32164#PolymorphicMapType_9336| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_4231_12262) ) (!  (not (select (|PolymorphicMapType_9336_4231_12262#PolymorphicMapType_9336| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_4231_12262#PolymorphicMapType_9336| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8847_53) ) (!  (not (select (|PolymorphicMapType_9336_4231_53#PolymorphicMapType_9336| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_4231_53#PolymorphicMapType_9336| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8860_8861) ) (!  (not (select (|PolymorphicMapType_9336_4231_4232#PolymorphicMapType_9336| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9336_4231_4232#PolymorphicMapType_9336| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_4238_4239 (P x))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (P x))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8787) (x@@0 T@Ref) ) (! (|P#everUsed_4238| (P x@@0))
 :qid |stdinbpl.217:15|
 :skolemid |27|
 :pattern ( (|P#trigger_4238| Heap@@4 (P x@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8787) (ExhaleHeap@@3 T@PolymorphicMapType_8787) (Mask@@4 T@PolymorphicMapType_8808) (pm_f@@3 T@Field_12261_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_12261_12262 Mask@@4 null pm_f@@3) (IsPredicateField_4238_4239 pm_f@@3)) (= (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@5) null (PredicateMaskField_4238 pm_f@@3)) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@3) null (PredicateMaskField_4238 pm_f@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_4238_4239 pm_f@@3) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@3) null (PredicateMaskField_4238 pm_f@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8787) (ExhaleHeap@@4 T@PolymorphicMapType_8787) (Mask@@5 T@PolymorphicMapType_8808) (pm_f@@4 T@Field_4231_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_4231_12262 Mask@@5 null pm_f@@4) (IsPredicateField_4231_30893 pm_f@@4)) (= (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@6) null (PredicateMaskField_4231 pm_f@@4)) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@4) null (PredicateMaskField_4231 pm_f@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_4231_30893 pm_f@@4) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@4) null (PredicateMaskField_4231 pm_f@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8787) (ExhaleHeap@@5 T@PolymorphicMapType_8787) (Mask@@6 T@PolymorphicMapType_8808) (pm_f@@5 T@Field_12261_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_12261_12262 Mask@@6 null pm_f@@5) (IsWandField_12261_34179 pm_f@@5)) (= (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@7) null (WandMaskField_12261 pm_f@@5)) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@5) null (WandMaskField_12261 pm_f@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_12261_34179 pm_f@@5) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@5) null (WandMaskField_12261 pm_f@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8787) (ExhaleHeap@@6 T@PolymorphicMapType_8787) (Mask@@7 T@PolymorphicMapType_8808) (pm_f@@6 T@Field_4231_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_4231_12262 Mask@@7 null pm_f@@6) (IsWandField_4231_33822 pm_f@@6)) (= (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@8) null (WandMaskField_4231 pm_f@@6)) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@6) null (WandMaskField_4231 pm_f@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_4231_33822 pm_f@@6) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@6) null (WandMaskField_4231 pm_f@@6)))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@1) (P x2)) (= x@@1 x2))
 :qid |stdinbpl.208:15|
 :skolemid |25|
 :pattern ( (P x@@1) (P x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@2) (|P#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.212:15|
 :skolemid |26|
 :pattern ( (|P#sm| x@@2) (|P#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8787) (ExhaleHeap@@7 T@PolymorphicMapType_8787) (Mask@@8 T@PolymorphicMapType_8808) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@9) o_1 $allocated) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_12261_12262) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12261_12261 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12261_12261 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_4231_12262) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_8847_8847 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8847_8847 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_4231_4232 n_85)))
(assert  (not (IsWandField_4231_4232 n_85)))
(assert  (not (IsPredicateField_4231_4232 m_20)))
(assert  (not (IsWandField_4231_4232 m_20)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8787) (ExhaleHeap@@8 T@PolymorphicMapType_8787) (Mask@@9 T@PolymorphicMapType_8808) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8808) (o_2@@7 T@Ref) (f_4@@7 T@Field_12274_12279) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| Mask@@10) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_4238_39890 f_4@@7))) (not (IsWandField_4238_39906 f_4@@7))) (<= (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| Mask@@10) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| Mask@@10) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8808) (o_2@@8 T@Ref) (f_4@@8 T@Field_12261_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| Mask@@11) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_4238_53 f_4@@8))) (not (IsWandField_4238_53 f_4@@8))) (<= (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| Mask@@11) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| Mask@@11) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8808) (o_2@@9 T@Ref) (f_4@@9 T@Field_12261_12262) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| Mask@@12) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_4238_4239 f_4@@9))) (not (IsWandField_12261_34179 f_4@@9))) (<= (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| Mask@@12) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| Mask@@12) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8808) (o_2@@10 T@Ref) (f_4@@10 T@Field_12261_4232) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| Mask@@13) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_4238_4232 f_4@@10))) (not (IsWandField_4238_4232 f_4@@10))) (<= (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| Mask@@13) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| Mask@@13) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_8808) (o_2@@11 T@Ref) (f_4@@11 T@Field_4231_12279) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| Mask@@14) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_4231_39227 f_4@@11))) (not (IsWandField_4231_39243 f_4@@11))) (<= (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| Mask@@14) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| Mask@@14) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_8808) (o_2@@12 T@Ref) (f_4@@12 T@Field_8847_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| Mask@@15) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_4231_53 f_4@@12))) (not (IsWandField_4231_53 f_4@@12))) (<= (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| Mask@@15) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| Mask@@15) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_8808) (o_2@@13 T@Ref) (f_4@@13 T@Field_4231_12262) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| Mask@@16) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_4231_30893 f_4@@13))) (not (IsWandField_4231_33822 f_4@@13))) (<= (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| Mask@@16) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| Mask@@16) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_8808) (o_2@@14 T@Ref) (f_4@@14 T@Field_8860_8861) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@@17) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_4231_4232 f_4@@14))) (not (IsWandField_4231_4232 f_4@@14))) (<= (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@@17) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@@17) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_8808) (o_2@@15 T@Ref) (f_4@@15 T@Field_12274_12279) ) (! (= (HasDirectPerm_12261_30648 Mask@@18 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| Mask@@18) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12261_30648 Mask@@18 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_8808) (o_2@@16 T@Ref) (f_4@@16 T@Field_12261_12262) ) (! (= (HasDirectPerm_12261_12262 Mask@@19 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| Mask@@19) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12261_12262 Mask@@19 o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_8808) (o_2@@17 T@Ref) (f_4@@17 T@Field_12261_53) ) (! (= (HasDirectPerm_12261_53 Mask@@20 o_2@@17 f_4@@17) (> (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| Mask@@20) o_2@@17 f_4@@17) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12261_53 Mask@@20 o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_8808) (o_2@@18 T@Ref) (f_4@@18 T@Field_12261_4232) ) (! (= (HasDirectPerm_12261_4232 Mask@@21 o_2@@18 f_4@@18) (> (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| Mask@@21) o_2@@18 f_4@@18) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12261_4232 Mask@@21 o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_8808) (o_2@@19 T@Ref) (f_4@@19 T@Field_4231_12279) ) (! (= (HasDirectPerm_4231_29708 Mask@@22 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| Mask@@22) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4231_29708 Mask@@22 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_8808) (o_2@@20 T@Ref) (f_4@@20 T@Field_4231_12262) ) (! (= (HasDirectPerm_4231_12262 Mask@@23 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| Mask@@23) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4231_12262 Mask@@23 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_8808) (o_2@@21 T@Ref) (f_4@@21 T@Field_8847_53) ) (! (= (HasDirectPerm_4231_53 Mask@@24 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| Mask@@24) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4231_53 Mask@@24 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_8808) (o_2@@22 T@Ref) (f_4@@22 T@Field_8860_8861) ) (! (= (HasDirectPerm_4231_4232 Mask@@25 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| Mask@@25) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4231_4232 Mask@@25 o_2@@22 f_4@@22))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8787) (ExhaleHeap@@9 T@PolymorphicMapType_8787) (Mask@@26 T@PolymorphicMapType_8808) (o_1@@0 T@Ref) (f_2@@31 T@Field_12274_12279) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_12261_30648 Mask@@26 o_1@@0 f_2@@31) (= (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@11) o_1@@0 f_2@@31) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@9) o_1@@0 f_2@@31))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| ExhaleHeap@@9) o_1@@0 f_2@@31))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8787) (ExhaleHeap@@10 T@PolymorphicMapType_8787) (Mask@@27 T@PolymorphicMapType_8808) (o_1@@1 T@Ref) (f_2@@32 T@Field_12261_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (=> (HasDirectPerm_12261_12262 Mask@@27 o_1@@1 f_2@@32) (= (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@12) o_1@@1 f_2@@32) (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@10) o_1@@1 f_2@@32))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@27) (select (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| ExhaleHeap@@10) o_1@@1 f_2@@32))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8787) (ExhaleHeap@@11 T@PolymorphicMapType_8787) (Mask@@28 T@PolymorphicMapType_8808) (o_1@@2 T@Ref) (f_2@@33 T@Field_12261_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (=> (HasDirectPerm_12261_53 Mask@@28 o_1@@2 f_2@@33) (= (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@13) o_1@@2 f_2@@33) (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@11) o_1@@2 f_2@@33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@28) (select (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| ExhaleHeap@@11) o_1@@2 f_2@@33))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8787) (ExhaleHeap@@12 T@PolymorphicMapType_8787) (Mask@@29 T@PolymorphicMapType_8808) (o_1@@3 T@Ref) (f_2@@34 T@Field_12261_4232) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (=> (HasDirectPerm_12261_4232 Mask@@29 o_1@@3 f_2@@34) (= (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@14) o_1@@3 f_2@@34) (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@12) o_1@@3 f_2@@34))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@29) (select (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| ExhaleHeap@@12) o_1@@3 f_2@@34))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8787) (ExhaleHeap@@13 T@PolymorphicMapType_8787) (Mask@@30 T@PolymorphicMapType_8808) (o_1@@4 T@Ref) (f_2@@35 T@Field_4231_12279) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (=> (HasDirectPerm_4231_29708 Mask@@30 o_1@@4 f_2@@35) (= (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@15) o_1@@4 f_2@@35) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@13) o_1@@4 f_2@@35))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@30) (select (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| ExhaleHeap@@13) o_1@@4 f_2@@35))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_8787) (ExhaleHeap@@14 T@PolymorphicMapType_8787) (Mask@@31 T@PolymorphicMapType_8808) (o_1@@5 T@Ref) (f_2@@36 T@Field_4231_12262) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (=> (HasDirectPerm_4231_12262 Mask@@31 o_1@@5 f_2@@36) (= (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@16) o_1@@5 f_2@@36) (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@14) o_1@@5 f_2@@36))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@31) (select (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| ExhaleHeap@@14) o_1@@5 f_2@@36))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_8787) (ExhaleHeap@@15 T@PolymorphicMapType_8787) (Mask@@32 T@PolymorphicMapType_8808) (o_1@@6 T@Ref) (f_2@@37 T@Field_8847_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (=> (HasDirectPerm_4231_53 Mask@@32 o_1@@6 f_2@@37) (= (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@17) o_1@@6 f_2@@37) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@15) o_1@@6 f_2@@37))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@32) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| ExhaleHeap@@15) o_1@@6 f_2@@37))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_8787) (ExhaleHeap@@16 T@PolymorphicMapType_8787) (Mask@@33 T@PolymorphicMapType_8808) (o_1@@7 T@Ref) (f_2@@38 T@Field_8860_8861) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (=> (HasDirectPerm_4231_4232 Mask@@33 o_1@@7 f_2@@38) (= (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@18) o_1@@7 f_2@@38) (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@16) o_1@@7 f_2@@38))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@33) (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| ExhaleHeap@@16) o_1@@7 f_2@@38))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_12274_12279) ) (! (= (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| ZeroMask) o_2@@23 f_4@@23) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| ZeroMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_12261_53) ) (! (= (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| ZeroMask) o_2@@24 f_4@@24) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| ZeroMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_12261_12262) ) (! (= (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| ZeroMask) o_2@@25 f_4@@25) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| ZeroMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_12261_4232) ) (! (= (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| ZeroMask) o_2@@26 f_4@@26) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| ZeroMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_4231_12279) ) (! (= (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| ZeroMask) o_2@@27 f_4@@27) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| ZeroMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_8847_53) ) (! (= (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| ZeroMask) o_2@@28 f_4@@28) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| ZeroMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_4231_12262) ) (! (= (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8860_8861) ) (! (= (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8808) (SummandMask1 T@PolymorphicMapType_8808) (SummandMask2 T@PolymorphicMapType_8808) (o_2@@31 T@Ref) (f_4@@31 T@Field_12274_12279) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| ResultMask) o_2@@31 f_4@@31) (+ (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| SummandMask1) o_2@@31 f_4@@31) (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| SummandMask2) o_2@@31 f_4@@31))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| ResultMask) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| SummandMask1) o_2@@31 f_4@@31))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8808_4238_38066#PolymorphicMapType_8808| SummandMask2) o_2@@31 f_4@@31))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8808) (SummandMask1@@0 T@PolymorphicMapType_8808) (SummandMask2@@0 T@PolymorphicMapType_8808) (o_2@@32 T@Ref) (f_4@@32 T@Field_12261_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| ResultMask@@0) o_2@@32 f_4@@32) (+ (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| SummandMask1@@0) o_2@@32 f_4@@32) (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| SummandMask2@@0) o_2@@32 f_4@@32))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| ResultMask@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| SummandMask1@@0) o_2@@32 f_4@@32))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8808_4238_53#PolymorphicMapType_8808| SummandMask2@@0) o_2@@32 f_4@@32))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8808) (SummandMask1@@1 T@PolymorphicMapType_8808) (SummandMask2@@1 T@PolymorphicMapType_8808) (o_2@@33 T@Ref) (f_4@@33 T@Field_12261_12262) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| ResultMask@@1) o_2@@33 f_4@@33) (+ (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| SummandMask1@@1) o_2@@33 f_4@@33) (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| SummandMask2@@1) o_2@@33 f_4@@33))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| ResultMask@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| SummandMask1@@1) o_2@@33 f_4@@33))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8808_4238_4239#PolymorphicMapType_8808| SummandMask2@@1) o_2@@33 f_4@@33))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8808) (SummandMask1@@2 T@PolymorphicMapType_8808) (SummandMask2@@2 T@PolymorphicMapType_8808) (o_2@@34 T@Ref) (f_4@@34 T@Field_12261_4232) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| ResultMask@@2) o_2@@34 f_4@@34) (+ (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| SummandMask1@@2) o_2@@34 f_4@@34) (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| SummandMask2@@2) o_2@@34 f_4@@34))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| ResultMask@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| SummandMask1@@2) o_2@@34 f_4@@34))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8808_4238_4232#PolymorphicMapType_8808| SummandMask2@@2) o_2@@34 f_4@@34))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8808) (SummandMask1@@3 T@PolymorphicMapType_8808) (SummandMask2@@3 T@PolymorphicMapType_8808) (o_2@@35 T@Ref) (f_4@@35 T@Field_4231_12279) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| ResultMask@@3) o_2@@35 f_4@@35) (+ (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| SummandMask1@@3) o_2@@35 f_4@@35) (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| SummandMask2@@3) o_2@@35 f_4@@35))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| ResultMask@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| SummandMask1@@3) o_2@@35 f_4@@35))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8808_4231_37735#PolymorphicMapType_8808| SummandMask2@@3) o_2@@35 f_4@@35))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_8808) (SummandMask1@@4 T@PolymorphicMapType_8808) (SummandMask2@@4 T@PolymorphicMapType_8808) (o_2@@36 T@Ref) (f_4@@36 T@Field_8847_53) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| ResultMask@@4) o_2@@36 f_4@@36) (+ (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| SummandMask1@@4) o_2@@36 f_4@@36) (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| SummandMask2@@4) o_2@@36 f_4@@36))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| ResultMask@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| SummandMask1@@4) o_2@@36 f_4@@36))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_8808_4231_53#PolymorphicMapType_8808| SummandMask2@@4) o_2@@36 f_4@@36))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_8808) (SummandMask1@@5 T@PolymorphicMapType_8808) (SummandMask2@@5 T@PolymorphicMapType_8808) (o_2@@37 T@Ref) (f_4@@37 T@Field_4231_12262) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| ResultMask@@5) o_2@@37 f_4@@37) (+ (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| SummandMask1@@5) o_2@@37 f_4@@37) (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| SummandMask2@@5) o_2@@37 f_4@@37))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| ResultMask@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| SummandMask1@@5) o_2@@37 f_4@@37))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_8808_4231_4239#PolymorphicMapType_8808| SummandMask2@@5) o_2@@37 f_4@@37))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_8808) (SummandMask1@@6 T@PolymorphicMapType_8808) (SummandMask2@@6 T@PolymorphicMapType_8808) (o_2@@38 T@Ref) (f_4@@38 T@Field_8860_8861) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| ResultMask@@6) o_2@@38 f_4@@38) (+ (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| SummandMask1@@6) o_2@@38 f_4@@38) (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| SummandMask2@@6) o_2@@38 f_4@@38))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| ResultMask@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| SummandMask1@@6) o_2@@38 f_4@@38))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_8808_4231_4232#PolymorphicMapType_8808| SummandMask2@@6) o_2@@38 f_4@@38))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_4238_4239 (P x@@3)) 0)
 :qid |stdinbpl.202:15|
 :skolemid |24|
 :pattern ( (P x@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_8787) (o T@Ref) (f_3 T@Field_12274_12279) (v T@PolymorphicMapType_9336) ) (! (succHeap Heap@@19 (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@19) (store (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@19) o f_3 v) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@19) (store (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@19) o f_3 v) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@19) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_8787) (o@@0 T@Ref) (f_3@@0 T@Field_12261_12262) (v@@0 T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@20) (store (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@20) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@20) (store (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@20) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@20) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_8787) (o@@1 T@Ref) (f_3@@1 T@Field_12261_4232) (v@@1 T@Ref) ) (! (succHeap Heap@@21 (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@21) (store (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@21) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@21) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@21) (store (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@21) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_8787) (o@@2 T@Ref) (f_3@@2 T@Field_12261_53) (v@@2 Bool) ) (! (succHeap Heap@@22 (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@22) (store (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@22) o@@2 f_3@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@22) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@22) (store (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@22) o@@2 f_3@@2 v@@2)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_8787) (o@@3 T@Ref) (f_3@@3 T@Field_4231_12279) (v@@3 T@PolymorphicMapType_9336) ) (! (succHeap Heap@@23 (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@23) (store (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@23) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@23) (store (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@23) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@23) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_8787) (o@@4 T@Ref) (f_3@@4 T@Field_4231_12262) (v@@4 T@FrameType) ) (! (succHeap Heap@@24 (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@24) (store (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@24) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@24) (store (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@24) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@24) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_8787) (o@@5 T@Ref) (f_3@@5 T@Field_8860_8861) (v@@5 T@Ref) ) (! (succHeap Heap@@25 (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@25) (store (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@25) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@25) (store (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@25) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@25) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_8787) (o@@6 T@Ref) (f_3@@6 T@Field_8847_53) (v@@6 Bool) ) (! (succHeap Heap@@26 (PolymorphicMapType_8787 (store (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@26) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8787 (store (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@26) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4238_4239#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4242_18157#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4231_12262#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_4231_29750#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_12261_4232#PolymorphicMapType_8787| Heap@@26) (|PolymorphicMapType_8787_12261_53#PolymorphicMapType_8787| Heap@@26)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_4238 (P x@@4)) (|P#sm| x@@4))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_4238 (P x@@4)))
)))
(assert (forall ((o@@7 T@Ref) (f T@Field_8860_8861) (Heap@@27 T@PolymorphicMapType_8787) ) (!  (=> (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@27) o@@7 $allocated) (select (|PolymorphicMapType_8787_4103_53#PolymorphicMapType_8787| Heap@@27) (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@27) o@@7 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8787_4106_4107#PolymorphicMapType_8787| Heap@@27) o@@7 f))
)))
(assert (forall ((p@@2 T@Field_12261_12262) (v_1@@1 T@FrameType) (q T@Field_12261_12262) (w@@1 T@FrameType) (r T@Field_12261_12262) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12261_12261 p@@2 v_1@@1 q w@@1) (InsidePredicate_12261_12261 q w@@1 r u)) (InsidePredicate_12261_12261 p@@2 v_1@@1 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12261_12261 p@@2 v_1@@1 q w@@1) (InsidePredicate_12261_12261 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_12261_12262) (v_1@@2 T@FrameType) (q@@0 T@Field_12261_12262) (w@@2 T@FrameType) (r@@0 T@Field_4231_12262) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_12261_12261 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12261_8847 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_12261_8847 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12261_12261 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_12261_8847 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_12261_12262) (v_1@@3 T@FrameType) (q@@1 T@Field_4231_12262) (w@@3 T@FrameType) (r@@1 T@Field_12261_12262) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_12261_8847 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8847_12261 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_12261_12261 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12261_8847 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_8847_12261 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_12261_12262) (v_1@@4 T@FrameType) (q@@2 T@Field_4231_12262) (w@@4 T@FrameType) (r@@2 T@Field_4231_12262) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_12261_8847 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8847_8847 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_12261_8847 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12261_8847 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_8847_8847 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_4231_12262) (v_1@@5 T@FrameType) (q@@3 T@Field_12261_12262) (w@@5 T@FrameType) (r@@3 T@Field_12261_12262) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_8847_12261 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12261_12261 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_8847_12261 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8847_12261 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_12261_12261 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_4231_12262) (v_1@@6 T@FrameType) (q@@4 T@Field_12261_12262) (w@@6 T@FrameType) (r@@4 T@Field_4231_12262) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_8847_12261 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12261_8847 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_8847_8847 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8847_12261 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_12261_8847 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_4231_12262) (v_1@@7 T@FrameType) (q@@5 T@Field_4231_12262) (w@@7 T@FrameType) (r@@5 T@Field_12261_12262) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_8847_8847 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8847_12261 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_8847_12261 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8847_8847 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_8847_12261 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_4231_12262) (v_1@@8 T@FrameType) (q@@6 T@Field_4231_12262) (w@@8 T@FrameType) (r@@6 T@Field_4231_12262) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_8847_8847 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8847_8847 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_8847_8847 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8847_8847 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_8847_8847 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

