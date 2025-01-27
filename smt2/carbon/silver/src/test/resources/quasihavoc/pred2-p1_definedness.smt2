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
(declare-sort T@Field_5671_53 0)
(declare-sort T@Field_5684_5685 0)
(declare-sort T@Field_8997_1186 0)
(declare-sort T@Field_9044_9045 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_9057_9062 0)
(declare-sort T@Field_9964_9965 0)
(declare-sort T@Field_9977_9982 0)
(declare-sort T@Field_2971_2975 0)
(declare-sort T@Field_2971_9062 0)
(declare-sort T@Field_2974_1186 0)
(declare-sort T@Field_2974_53 0)
(declare-sort T@Field_2974_5685 0)
(declare-sort T@Field_2999_1186 0)
(declare-sort T@Field_2999_53 0)
(declare-sort T@Field_2999_5685 0)
(declare-datatypes ((T@PolymorphicMapType_5632 0)) (((PolymorphicMapType_5632 (|PolymorphicMapType_5632_2971_1186#PolymorphicMapType_5632| (Array T@Ref T@Field_8997_1186 Real)) (|PolymorphicMapType_5632_2974_2975#PolymorphicMapType_5632| (Array T@Ref T@Field_9044_9045 Real)) (|PolymorphicMapType_5632_2999_3000#PolymorphicMapType_5632| (Array T@Ref T@Field_9964_9965 Real)) (|PolymorphicMapType_5632_2971_2975#PolymorphicMapType_5632| (Array T@Ref T@Field_2971_2975 Real)) (|PolymorphicMapType_5632_2971_53#PolymorphicMapType_5632| (Array T@Ref T@Field_5671_53 Real)) (|PolymorphicMapType_5632_2971_5685#PolymorphicMapType_5632| (Array T@Ref T@Field_5684_5685 Real)) (|PolymorphicMapType_5632_2971_32625#PolymorphicMapType_5632| (Array T@Ref T@Field_2971_9062 Real)) (|PolymorphicMapType_5632_2974_1186#PolymorphicMapType_5632| (Array T@Ref T@Field_2974_1186 Real)) (|PolymorphicMapType_5632_2974_53#PolymorphicMapType_5632| (Array T@Ref T@Field_2974_53 Real)) (|PolymorphicMapType_5632_2974_5685#PolymorphicMapType_5632| (Array T@Ref T@Field_2974_5685 Real)) (|PolymorphicMapType_5632_2974_33036#PolymorphicMapType_5632| (Array T@Ref T@Field_9057_9062 Real)) (|PolymorphicMapType_5632_2999_1186#PolymorphicMapType_5632| (Array T@Ref T@Field_2999_1186 Real)) (|PolymorphicMapType_5632_2999_53#PolymorphicMapType_5632| (Array T@Ref T@Field_2999_53 Real)) (|PolymorphicMapType_5632_2999_5685#PolymorphicMapType_5632| (Array T@Ref T@Field_2999_5685 Real)) (|PolymorphicMapType_5632_2999_33447#PolymorphicMapType_5632| (Array T@Ref T@Field_9977_9982 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6160 0)) (((PolymorphicMapType_6160 (|PolymorphicMapType_6160_2971_1186#PolymorphicMapType_6160| (Array T@Ref T@Field_8997_1186 Bool)) (|PolymorphicMapType_6160_2971_53#PolymorphicMapType_6160| (Array T@Ref T@Field_5671_53 Bool)) (|PolymorphicMapType_6160_2971_5685#PolymorphicMapType_6160| (Array T@Ref T@Field_5684_5685 Bool)) (|PolymorphicMapType_6160_2971_9045#PolymorphicMapType_6160| (Array T@Ref T@Field_2971_2975 Bool)) (|PolymorphicMapType_6160_2971_22685#PolymorphicMapType_6160| (Array T@Ref T@Field_2971_9062 Bool)) (|PolymorphicMapType_6160_9044_1186#PolymorphicMapType_6160| (Array T@Ref T@Field_2974_1186 Bool)) (|PolymorphicMapType_6160_9044_53#PolymorphicMapType_6160| (Array T@Ref T@Field_2974_53 Bool)) (|PolymorphicMapType_6160_9044_5685#PolymorphicMapType_6160| (Array T@Ref T@Field_2974_5685 Bool)) (|PolymorphicMapType_6160_9044_9045#PolymorphicMapType_6160| (Array T@Ref T@Field_9044_9045 Bool)) (|PolymorphicMapType_6160_9044_23733#PolymorphicMapType_6160| (Array T@Ref T@Field_9057_9062 Bool)) (|PolymorphicMapType_6160_9964_1186#PolymorphicMapType_6160| (Array T@Ref T@Field_2999_1186 Bool)) (|PolymorphicMapType_6160_9964_53#PolymorphicMapType_6160| (Array T@Ref T@Field_2999_53 Bool)) (|PolymorphicMapType_6160_9964_5685#PolymorphicMapType_6160| (Array T@Ref T@Field_2999_5685 Bool)) (|PolymorphicMapType_6160_9964_9045#PolymorphicMapType_6160| (Array T@Ref T@Field_9964_9965 Bool)) (|PolymorphicMapType_6160_9964_24781#PolymorphicMapType_6160| (Array T@Ref T@Field_9977_9982 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5611 0)) (((PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| (Array T@Ref T@Field_5671_53 Bool)) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| (Array T@Ref T@Field_5684_5685 T@Ref)) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| (Array T@Ref T@Field_8997_1186 Int)) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| (Array T@Ref T@Field_9044_9045 T@FrameType)) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| (Array T@Ref T@Field_9057_9062 T@PolymorphicMapType_6160)) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| (Array T@Ref T@Field_9964_9965 T@FrameType)) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| (Array T@Ref T@Field_9977_9982 T@PolymorphicMapType_6160)) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| (Array T@Ref T@Field_2971_2975 T@FrameType)) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| (Array T@Ref T@Field_2971_9062 T@PolymorphicMapType_6160)) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| (Array T@Ref T@Field_2974_1186 Int)) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| (Array T@Ref T@Field_2974_53 Bool)) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| (Array T@Ref T@Field_2974_5685 T@Ref)) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| (Array T@Ref T@Field_2999_1186 Int)) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| (Array T@Ref T@Field_2999_53 Bool)) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| (Array T@Ref T@Field_2999_5685 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_5671_53)
(declare-fun f_7 () T@Field_8997_1186)
(declare-fun succHeap (T@PolymorphicMapType_5611 T@PolymorphicMapType_5611) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5611 T@PolymorphicMapType_5611) Bool)
(declare-fun state (T@PolymorphicMapType_5611 T@PolymorphicMapType_5632) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5632) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6160)
(declare-fun p1 (T@Ref) T@Field_9044_9045)
(declare-fun IsPredicateField_2974_2975 (T@Field_9044_9045) Bool)
(declare-fun p2 (T@Ref) T@Field_9964_9965)
(declare-fun IsPredicateField_2999_3000 (T@Field_9964_9965) Bool)
(declare-fun |p1#trigger_2974| (T@PolymorphicMapType_5611 T@Field_9044_9045) Bool)
(declare-fun |p1#everUsed_2974| (T@Field_9044_9045) Bool)
(declare-fun |p2#trigger_2999| (T@PolymorphicMapType_5611 T@Field_9964_9965) Bool)
(declare-fun |p2#everUsed_2999| (T@Field_9964_9965) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5611 T@PolymorphicMapType_5611 T@PolymorphicMapType_5632) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_2999 (T@Field_9964_9965) T@Field_9977_9982)
(declare-fun HasDirectPerm_2999_3000 (T@PolymorphicMapType_5632 T@Ref T@Field_9964_9965) Bool)
(declare-fun PredicateMaskField_2974 (T@Field_9044_9045) T@Field_9057_9062)
(declare-fun HasDirectPerm_2974_2975 (T@PolymorphicMapType_5632 T@Ref T@Field_9044_9045) Bool)
(declare-fun IsPredicateField_2971_20888 (T@Field_2971_2975) Bool)
(declare-fun PredicateMaskField_2971 (T@Field_2971_2975) T@Field_2971_9062)
(declare-fun HasDirectPerm_2971_2975 (T@PolymorphicMapType_5632 T@Ref T@Field_2971_2975) Bool)
(declare-fun IsWandField_2999_26584 (T@Field_9964_9965) Bool)
(declare-fun WandMaskField_2999 (T@Field_9964_9965) T@Field_9977_9982)
(declare-fun IsWandField_2974_26227 (T@Field_9044_9045) Bool)
(declare-fun WandMaskField_2974 (T@Field_9044_9045) T@Field_9057_9062)
(declare-fun IsWandField_2971_25870 (T@Field_2971_2975) Bool)
(declare-fun WandMaskField_2971 (T@Field_2971_2975) T@Field_2971_9062)
(declare-fun |p1#sm| (T@Ref) T@Field_9057_9062)
(declare-fun |p2#sm| (T@Ref) T@Field_9977_9982)
(declare-fun dummyHeap () T@PolymorphicMapType_5611)
(declare-fun ZeroMask () T@PolymorphicMapType_5632)
(declare-fun InsidePredicate_5671_5671 (T@Field_2971_2975 T@FrameType T@Field_2971_2975 T@FrameType) Bool)
(declare-fun InsidePredicate_2974_2974 (T@Field_9044_9045 T@FrameType T@Field_9044_9045 T@FrameType) Bool)
(declare-fun InsidePredicate_2999_9964 (T@Field_9964_9965 T@FrameType T@Field_9964_9965 T@FrameType) Bool)
(declare-fun IsPredicateField_2971_1186 (T@Field_8997_1186) Bool)
(declare-fun IsWandField_2971_1186 (T@Field_8997_1186) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_2999_36902 (T@Field_9977_9982) Bool)
(declare-fun IsWandField_2999_36918 (T@Field_9977_9982) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_2999_5685 (T@Field_2999_5685) Bool)
(declare-fun IsWandField_2999_5685 (T@Field_2999_5685) Bool)
(declare-fun IsPredicateField_2999_53 (T@Field_2999_53) Bool)
(declare-fun IsWandField_2999_53 (T@Field_2999_53) Bool)
(declare-fun IsPredicateField_2999_1186 (T@Field_2999_1186) Bool)
(declare-fun IsWandField_2999_1186 (T@Field_2999_1186) Bool)
(declare-fun IsPredicateField_2974_36071 (T@Field_9057_9062) Bool)
(declare-fun IsWandField_2974_36087 (T@Field_9057_9062) Bool)
(declare-fun IsPredicateField_2974_5685 (T@Field_2974_5685) Bool)
(declare-fun IsWandField_2974_5685 (T@Field_2974_5685) Bool)
(declare-fun IsPredicateField_2974_53 (T@Field_2974_53) Bool)
(declare-fun IsWandField_2974_53 (T@Field_2974_53) Bool)
(declare-fun IsPredicateField_2974_1186 (T@Field_2974_1186) Bool)
(declare-fun IsWandField_2974_1186 (T@Field_2974_1186) Bool)
(declare-fun IsPredicateField_2971_35240 (T@Field_2971_9062) Bool)
(declare-fun IsWandField_2971_35256 (T@Field_2971_9062) Bool)
(declare-fun IsPredicateField_2971_5685 (T@Field_5684_5685) Bool)
(declare-fun IsWandField_2971_5685 (T@Field_5684_5685) Bool)
(declare-fun IsPredicateField_2971_53 (T@Field_5671_53) Bool)
(declare-fun IsWandField_2971_53 (T@Field_5671_53) Bool)
(declare-fun HasDirectPerm_2999_20643 (T@PolymorphicMapType_5632 T@Ref T@Field_9977_9982) Bool)
(declare-fun HasDirectPerm_2999_5685 (T@PolymorphicMapType_5632 T@Ref T@Field_2999_5685) Bool)
(declare-fun HasDirectPerm_2999_53 (T@PolymorphicMapType_5632 T@Ref T@Field_2999_53) Bool)
(declare-fun HasDirectPerm_2999_1186 (T@PolymorphicMapType_5632 T@Ref T@Field_2999_1186) Bool)
(declare-fun HasDirectPerm_2974_19545 (T@PolymorphicMapType_5632 T@Ref T@Field_9057_9062) Bool)
(declare-fun HasDirectPerm_2974_5685 (T@PolymorphicMapType_5632 T@Ref T@Field_2974_5685) Bool)
(declare-fun HasDirectPerm_2974_53 (T@PolymorphicMapType_5632 T@Ref T@Field_2974_53) Bool)
(declare-fun HasDirectPerm_2974_1186 (T@PolymorphicMapType_5632 T@Ref T@Field_2974_1186) Bool)
(declare-fun HasDirectPerm_2971_18404 (T@PolymorphicMapType_5632 T@Ref T@Field_2971_9062) Bool)
(declare-fun HasDirectPerm_2971_5685 (T@PolymorphicMapType_5632 T@Ref T@Field_5684_5685) Bool)
(declare-fun HasDirectPerm_2971_53 (T@PolymorphicMapType_5632 T@Ref T@Field_5671_53) Bool)
(declare-fun HasDirectPerm_2971_1186 (T@PolymorphicMapType_5632 T@Ref T@Field_8997_1186) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5632 T@PolymorphicMapType_5632 T@PolymorphicMapType_5632) Bool)
(declare-fun getPredWandId_2974_2975 (T@Field_9044_9045) Int)
(declare-fun getPredWandId_2999_3000 (T@Field_9964_9965) Int)
(declare-fun InsidePredicate_2974_5671 (T@Field_9044_9045 T@FrameType T@Field_2971_2975 T@FrameType) Bool)
(declare-fun InsidePredicate_5671_9964 (T@Field_2971_2975 T@FrameType T@Field_9964_9965 T@FrameType) Bool)
(declare-fun InsidePredicate_2974_9964 (T@Field_9044_9045 T@FrameType T@Field_9964_9965 T@FrameType) Bool)
(declare-fun InsidePredicate_5671_2974 (T@Field_2971_2975 T@FrameType T@Field_9044_9045 T@FrameType) Bool)
(declare-fun InsidePredicate_2999_5671 (T@Field_9964_9965 T@FrameType T@Field_2971_2975 T@FrameType) Bool)
(declare-fun InsidePredicate_2999_2974 (T@Field_9964_9965 T@FrameType T@Field_9044_9045 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_5611) (Heap1 T@PolymorphicMapType_5611) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5611) (Mask T@PolymorphicMapType_5632) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5611) (Heap1@@0 T@PolymorphicMapType_5611) (Heap2 T@PolymorphicMapType_5611) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9977_9982) ) (!  (not (select (|PolymorphicMapType_6160_9964_24781#PolymorphicMapType_6160| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6160_9964_24781#PolymorphicMapType_6160| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9964_9965) ) (!  (not (select (|PolymorphicMapType_6160_9964_9045#PolymorphicMapType_6160| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6160_9964_9045#PolymorphicMapType_6160| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_2999_5685) ) (!  (not (select (|PolymorphicMapType_6160_9964_5685#PolymorphicMapType_6160| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6160_9964_5685#PolymorphicMapType_6160| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_2999_53) ) (!  (not (select (|PolymorphicMapType_6160_9964_53#PolymorphicMapType_6160| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6160_9964_53#PolymorphicMapType_6160| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_2999_1186) ) (!  (not (select (|PolymorphicMapType_6160_9964_1186#PolymorphicMapType_6160| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6160_9964_1186#PolymorphicMapType_6160| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_9057_9062) ) (!  (not (select (|PolymorphicMapType_6160_9044_23733#PolymorphicMapType_6160| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6160_9044_23733#PolymorphicMapType_6160| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_9044_9045) ) (!  (not (select (|PolymorphicMapType_6160_9044_9045#PolymorphicMapType_6160| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6160_9044_9045#PolymorphicMapType_6160| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_2974_5685) ) (!  (not (select (|PolymorphicMapType_6160_9044_5685#PolymorphicMapType_6160| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6160_9044_5685#PolymorphicMapType_6160| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_2974_53) ) (!  (not (select (|PolymorphicMapType_6160_9044_53#PolymorphicMapType_6160| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6160_9044_53#PolymorphicMapType_6160| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_2974_1186) ) (!  (not (select (|PolymorphicMapType_6160_9044_1186#PolymorphicMapType_6160| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6160_9044_1186#PolymorphicMapType_6160| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_2971_9062) ) (!  (not (select (|PolymorphicMapType_6160_2971_22685#PolymorphicMapType_6160| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6160_2971_22685#PolymorphicMapType_6160| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_2971_2975) ) (!  (not (select (|PolymorphicMapType_6160_2971_9045#PolymorphicMapType_6160| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6160_2971_9045#PolymorphicMapType_6160| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5684_5685) ) (!  (not (select (|PolymorphicMapType_6160_2971_5685#PolymorphicMapType_6160| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6160_2971_5685#PolymorphicMapType_6160| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5671_53) ) (!  (not (select (|PolymorphicMapType_6160_2971_53#PolymorphicMapType_6160| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6160_2971_53#PolymorphicMapType_6160| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_8997_1186) ) (!  (not (select (|PolymorphicMapType_6160_2971_1186#PolymorphicMapType_6160| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6160_2971_1186#PolymorphicMapType_6160| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_2974_2975 (p1 x))
 :qid |stdinbpl.195:15|
 :skolemid |23|
 :pattern ( (p1 x))
)))
(assert (forall ((x@@0 T@Ref) ) (! (IsPredicateField_2999_3000 (p2 x@@0))
 :qid |stdinbpl.249:15|
 :skolemid |29|
 :pattern ( (p2 x@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5611) (x@@1 T@Ref) ) (! (|p1#everUsed_2974| (p1 x@@1))
 :qid |stdinbpl.214:15|
 :skolemid |27|
 :pattern ( (|p1#trigger_2974| Heap@@0 (p1 x@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5611) (x@@2 T@Ref) ) (! (|p2#everUsed_2999| (p2 x@@2))
 :qid |stdinbpl.268:15|
 :skolemid |33|
 :pattern ( (|p2#trigger_2999| Heap@@1 (p2 x@@2)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5611) (ExhaleHeap T@PolymorphicMapType_5611) (Mask@@0 T@PolymorphicMapType_5632) (pm_f_5 T@Field_9964_9965) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_2999_3000 Mask@@0 null pm_f_5) (IsPredicateField_2999_3000 pm_f_5)) (= (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@2) null (PredicateMaskField_2999 pm_f_5)) (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap) null (PredicateMaskField_2999 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_2999_3000 pm_f_5) (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap) null (PredicateMaskField_2999 pm_f_5)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5611) (ExhaleHeap@@0 T@PolymorphicMapType_5611) (Mask@@1 T@PolymorphicMapType_5632) (pm_f_5@@0 T@Field_9044_9045) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_2974_2975 Mask@@1 null pm_f_5@@0) (IsPredicateField_2974_2975 pm_f_5@@0)) (= (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@3) null (PredicateMaskField_2974 pm_f_5@@0)) (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@0) null (PredicateMaskField_2974 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_2974_2975 pm_f_5@@0) (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@0) null (PredicateMaskField_2974 pm_f_5@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5611) (ExhaleHeap@@1 T@PolymorphicMapType_5611) (Mask@@2 T@PolymorphicMapType_5632) (pm_f_5@@1 T@Field_2971_2975) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_2971_2975 Mask@@2 null pm_f_5@@1) (IsPredicateField_2971_20888 pm_f_5@@1)) (= (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@4) null (PredicateMaskField_2971 pm_f_5@@1)) (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@1) null (PredicateMaskField_2971 pm_f_5@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_2971_20888 pm_f_5@@1) (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@1) null (PredicateMaskField_2971 pm_f_5@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5611) (ExhaleHeap@@2 T@PolymorphicMapType_5611) (Mask@@3 T@PolymorphicMapType_5632) (pm_f_5@@2 T@Field_9964_9965) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_2999_3000 Mask@@3 null pm_f_5@@2) (IsWandField_2999_26584 pm_f_5@@2)) (= (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@5) null (WandMaskField_2999 pm_f_5@@2)) (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@2) null (WandMaskField_2999 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_2999_26584 pm_f_5@@2) (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@2) null (WandMaskField_2999 pm_f_5@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5611) (ExhaleHeap@@3 T@PolymorphicMapType_5611) (Mask@@4 T@PolymorphicMapType_5632) (pm_f_5@@3 T@Field_9044_9045) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_2974_2975 Mask@@4 null pm_f_5@@3) (IsWandField_2974_26227 pm_f_5@@3)) (= (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@6) null (WandMaskField_2974 pm_f_5@@3)) (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@3) null (WandMaskField_2974 pm_f_5@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_2974_26227 pm_f_5@@3) (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@3) null (WandMaskField_2974 pm_f_5@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5611) (ExhaleHeap@@4 T@PolymorphicMapType_5611) (Mask@@5 T@PolymorphicMapType_5632) (pm_f_5@@4 T@Field_2971_2975) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_2971_2975 Mask@@5 null pm_f_5@@4) (IsWandField_2971_25870 pm_f_5@@4)) (= (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@7) null (WandMaskField_2971 pm_f_5@@4)) (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@4) null (WandMaskField_2971 pm_f_5@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_2971_25870 pm_f_5@@4) (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@4) null (WandMaskField_2971 pm_f_5@@4)))
)))
(assert (forall ((x@@3 T@Ref) (x2 T@Ref) ) (!  (=> (= (p1 x@@3) (p1 x2)) (= x@@3 x2))
 :qid |stdinbpl.205:15|
 :skolemid |25|
 :pattern ( (p1 x@@3) (p1 x2))
)))
(assert (forall ((x@@4 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|p1#sm| x@@4) (|p1#sm| x2@@0)) (= x@@4 x2@@0))
 :qid |stdinbpl.209:15|
 :skolemid |26|
 :pattern ( (|p1#sm| x@@4) (|p1#sm| x2@@0))
)))
(assert (forall ((x@@5 T@Ref) (x2@@1 T@Ref) ) (!  (=> (= (p2 x@@5) (p2 x2@@1)) (= x@@5 x2@@1))
 :qid |stdinbpl.259:15|
 :skolemid |31|
 :pattern ( (p2 x@@5) (p2 x2@@1))
)))
(assert (forall ((x@@6 T@Ref) (x2@@2 T@Ref) ) (!  (=> (= (|p2#sm| x@@6) (|p2#sm| x2@@2)) (= x@@6 x2@@2))
 :qid |stdinbpl.263:15|
 :skolemid |32|
 :pattern ( (|p2#sm| x@@6) (|p2#sm| x2@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5611) (ExhaleHeap@@5 T@PolymorphicMapType_5611) (Mask@@6 T@PolymorphicMapType_5632) (o_15 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@8) o_15 $allocated) (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@5) o_15 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@5) o_15 $allocated))
)))
(assert (forall ((p T@Field_2971_2975) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5671_5671 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5671_5671 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_9044_9045) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_2974_2974 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_2974_2974 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_9964_9965) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_2999_9964 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_2999_9964 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_2971_1186 f_7)))
(assert  (not (IsWandField_2971_1186 f_7)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5611) (ExhaleHeap@@6 T@PolymorphicMapType_5611) (Mask@@7 T@PolymorphicMapType_5632) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@9 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5632) (o_2@@14 T@Ref) (f_4@@14 T@Field_9977_9982) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5632_2999_33447#PolymorphicMapType_5632| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_2999_36902 f_4@@14))) (not (IsWandField_2999_36918 f_4@@14))) (<= (select (|PolymorphicMapType_5632_2999_33447#PolymorphicMapType_5632| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5632_2999_33447#PolymorphicMapType_5632| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5632) (o_2@@15 T@Ref) (f_4@@15 T@Field_2999_5685) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5632_2999_5685#PolymorphicMapType_5632| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_2999_5685 f_4@@15))) (not (IsWandField_2999_5685 f_4@@15))) (<= (select (|PolymorphicMapType_5632_2999_5685#PolymorphicMapType_5632| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5632_2999_5685#PolymorphicMapType_5632| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5632) (o_2@@16 T@Ref) (f_4@@16 T@Field_2999_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_5632_2999_53#PolymorphicMapType_5632| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_2999_53 f_4@@16))) (not (IsWandField_2999_53 f_4@@16))) (<= (select (|PolymorphicMapType_5632_2999_53#PolymorphicMapType_5632| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_5632_2999_53#PolymorphicMapType_5632| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5632) (o_2@@17 T@Ref) (f_4@@17 T@Field_9964_9965) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_5632_2999_3000#PolymorphicMapType_5632| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_2999_3000 f_4@@17))) (not (IsWandField_2999_26584 f_4@@17))) (<= (select (|PolymorphicMapType_5632_2999_3000#PolymorphicMapType_5632| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_5632_2999_3000#PolymorphicMapType_5632| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5632) (o_2@@18 T@Ref) (f_4@@18 T@Field_2999_1186) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_5632_2999_1186#PolymorphicMapType_5632| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_2999_1186 f_4@@18))) (not (IsWandField_2999_1186 f_4@@18))) (<= (select (|PolymorphicMapType_5632_2999_1186#PolymorphicMapType_5632| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_5632_2999_1186#PolymorphicMapType_5632| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5632) (o_2@@19 T@Ref) (f_4@@19 T@Field_9057_9062) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_5632_2974_33036#PolymorphicMapType_5632| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_2974_36071 f_4@@19))) (not (IsWandField_2974_36087 f_4@@19))) (<= (select (|PolymorphicMapType_5632_2974_33036#PolymorphicMapType_5632| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_5632_2974_33036#PolymorphicMapType_5632| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_5632) (o_2@@20 T@Ref) (f_4@@20 T@Field_2974_5685) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_5632_2974_5685#PolymorphicMapType_5632| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_2974_5685 f_4@@20))) (not (IsWandField_2974_5685 f_4@@20))) (<= (select (|PolymorphicMapType_5632_2974_5685#PolymorphicMapType_5632| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_5632_2974_5685#PolymorphicMapType_5632| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_5632) (o_2@@21 T@Ref) (f_4@@21 T@Field_2974_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_5632_2974_53#PolymorphicMapType_5632| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_2974_53 f_4@@21))) (not (IsWandField_2974_53 f_4@@21))) (<= (select (|PolymorphicMapType_5632_2974_53#PolymorphicMapType_5632| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_5632_2974_53#PolymorphicMapType_5632| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_5632) (o_2@@22 T@Ref) (f_4@@22 T@Field_9044_9045) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_5632_2974_2975#PolymorphicMapType_5632| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_2974_2975 f_4@@22))) (not (IsWandField_2974_26227 f_4@@22))) (<= (select (|PolymorphicMapType_5632_2974_2975#PolymorphicMapType_5632| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_5632_2974_2975#PolymorphicMapType_5632| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_5632) (o_2@@23 T@Ref) (f_4@@23 T@Field_2974_1186) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_5632_2974_1186#PolymorphicMapType_5632| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_2974_1186 f_4@@23))) (not (IsWandField_2974_1186 f_4@@23))) (<= (select (|PolymorphicMapType_5632_2974_1186#PolymorphicMapType_5632| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_5632_2974_1186#PolymorphicMapType_5632| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_5632) (o_2@@24 T@Ref) (f_4@@24 T@Field_2971_9062) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_5632_2971_32625#PolymorphicMapType_5632| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_2971_35240 f_4@@24))) (not (IsWandField_2971_35256 f_4@@24))) (<= (select (|PolymorphicMapType_5632_2971_32625#PolymorphicMapType_5632| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_5632_2971_32625#PolymorphicMapType_5632| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_5632) (o_2@@25 T@Ref) (f_4@@25 T@Field_5684_5685) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_5632_2971_5685#PolymorphicMapType_5632| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_2971_5685 f_4@@25))) (not (IsWandField_2971_5685 f_4@@25))) (<= (select (|PolymorphicMapType_5632_2971_5685#PolymorphicMapType_5632| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_5632_2971_5685#PolymorphicMapType_5632| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_5632) (o_2@@26 T@Ref) (f_4@@26 T@Field_5671_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_5632_2971_53#PolymorphicMapType_5632| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_2971_53 f_4@@26))) (not (IsWandField_2971_53 f_4@@26))) (<= (select (|PolymorphicMapType_5632_2971_53#PolymorphicMapType_5632| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_5632_2971_53#PolymorphicMapType_5632| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_5632) (o_2@@27 T@Ref) (f_4@@27 T@Field_2971_2975) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_5632_2971_2975#PolymorphicMapType_5632| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_2971_20888 f_4@@27))) (not (IsWandField_2971_25870 f_4@@27))) (<= (select (|PolymorphicMapType_5632_2971_2975#PolymorphicMapType_5632| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_5632_2971_2975#PolymorphicMapType_5632| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_5632) (o_2@@28 T@Ref) (f_4@@28 T@Field_8997_1186) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_5632_2971_1186#PolymorphicMapType_5632| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_2971_1186 f_4@@28))) (not (IsWandField_2971_1186 f_4@@28))) (<= (select (|PolymorphicMapType_5632_2971_1186#PolymorphicMapType_5632| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_5632_2971_1186#PolymorphicMapType_5632| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_5632) (o_2@@29 T@Ref) (f_4@@29 T@Field_9977_9982) ) (! (= (HasDirectPerm_2999_20643 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_5632_2999_33447#PolymorphicMapType_5632| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2999_20643 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_5632) (o_2@@30 T@Ref) (f_4@@30 T@Field_2999_5685) ) (! (= (HasDirectPerm_2999_5685 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_5632_2999_5685#PolymorphicMapType_5632| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2999_5685 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_5632) (o_2@@31 T@Ref) (f_4@@31 T@Field_2999_53) ) (! (= (HasDirectPerm_2999_53 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_5632_2999_53#PolymorphicMapType_5632| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2999_53 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_5632) (o_2@@32 T@Ref) (f_4@@32 T@Field_9964_9965) ) (! (= (HasDirectPerm_2999_3000 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_5632_2999_3000#PolymorphicMapType_5632| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2999_3000 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_5632) (o_2@@33 T@Ref) (f_4@@33 T@Field_2999_1186) ) (! (= (HasDirectPerm_2999_1186 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_5632_2999_1186#PolymorphicMapType_5632| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2999_1186 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_5632) (o_2@@34 T@Ref) (f_4@@34 T@Field_9057_9062) ) (! (= (HasDirectPerm_2974_19545 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_5632_2974_33036#PolymorphicMapType_5632| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2974_19545 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_5632) (o_2@@35 T@Ref) (f_4@@35 T@Field_2974_5685) ) (! (= (HasDirectPerm_2974_5685 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_5632_2974_5685#PolymorphicMapType_5632| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2974_5685 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_5632) (o_2@@36 T@Ref) (f_4@@36 T@Field_2974_53) ) (! (= (HasDirectPerm_2974_53 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_5632_2974_53#PolymorphicMapType_5632| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2974_53 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_5632) (o_2@@37 T@Ref) (f_4@@37 T@Field_9044_9045) ) (! (= (HasDirectPerm_2974_2975 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_5632_2974_2975#PolymorphicMapType_5632| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2974_2975 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_5632) (o_2@@38 T@Ref) (f_4@@38 T@Field_2974_1186) ) (! (= (HasDirectPerm_2974_1186 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_5632_2974_1186#PolymorphicMapType_5632| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2974_1186 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_5632) (o_2@@39 T@Ref) (f_4@@39 T@Field_2971_9062) ) (! (= (HasDirectPerm_2971_18404 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_5632_2971_32625#PolymorphicMapType_5632| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2971_18404 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_5632) (o_2@@40 T@Ref) (f_4@@40 T@Field_5684_5685) ) (! (= (HasDirectPerm_2971_5685 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_5632_2971_5685#PolymorphicMapType_5632| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2971_5685 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_5632) (o_2@@41 T@Ref) (f_4@@41 T@Field_5671_53) ) (! (= (HasDirectPerm_2971_53 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_5632_2971_53#PolymorphicMapType_5632| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2971_53 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_5632) (o_2@@42 T@Ref) (f_4@@42 T@Field_2971_2975) ) (! (= (HasDirectPerm_2971_2975 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_5632_2971_2975#PolymorphicMapType_5632| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2971_2975 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_5632) (o_2@@43 T@Ref) (f_4@@43 T@Field_8997_1186) ) (! (= (HasDirectPerm_2971_1186 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_5632_2971_1186#PolymorphicMapType_5632| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_2971_1186 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5611) (ExhaleHeap@@7 T@PolymorphicMapType_5611) (Mask@@38 T@PolymorphicMapType_5632) (o_15@@0 T@Ref) (f_23 T@Field_9977_9982) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_2999_20643 Mask@@38 o_15@@0 f_23) (= (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@10) o_15@@0 f_23) (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@7) o_15@@0 f_23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@7) o_15@@0 f_23))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5611) (ExhaleHeap@@8 T@PolymorphicMapType_5611) (Mask@@39 T@PolymorphicMapType_5632) (o_15@@1 T@Ref) (f_23@@0 T@Field_2999_5685) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_2999_5685 Mask@@39 o_15@@1 f_23@@0) (= (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@11) o_15@@1 f_23@@0) (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| ExhaleHeap@@8) o_15@@1 f_23@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| ExhaleHeap@@8) o_15@@1 f_23@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5611) (ExhaleHeap@@9 T@PolymorphicMapType_5611) (Mask@@40 T@PolymorphicMapType_5632) (o_15@@2 T@Ref) (f_23@@1 T@Field_2999_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_2999_53 Mask@@40 o_15@@2 f_23@@1) (= (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@12) o_15@@2 f_23@@1) (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| ExhaleHeap@@9) o_15@@2 f_23@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| ExhaleHeap@@9) o_15@@2 f_23@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5611) (ExhaleHeap@@10 T@PolymorphicMapType_5611) (Mask@@41 T@PolymorphicMapType_5632) (o_15@@3 T@Ref) (f_23@@2 T@Field_9964_9965) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_2999_3000 Mask@@41 o_15@@3 f_23@@2) (= (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@13) o_15@@3 f_23@@2) (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| ExhaleHeap@@10) o_15@@3 f_23@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| ExhaleHeap@@10) o_15@@3 f_23@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5611) (ExhaleHeap@@11 T@PolymorphicMapType_5611) (Mask@@42 T@PolymorphicMapType_5632) (o_15@@4 T@Ref) (f_23@@3 T@Field_2999_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_2999_1186 Mask@@42 o_15@@4 f_23@@3) (= (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@14) o_15@@4 f_23@@3) (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| ExhaleHeap@@11) o_15@@4 f_23@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| ExhaleHeap@@11) o_15@@4 f_23@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5611) (ExhaleHeap@@12 T@PolymorphicMapType_5611) (Mask@@43 T@PolymorphicMapType_5632) (o_15@@5 T@Ref) (f_23@@4 T@Field_9057_9062) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_2974_19545 Mask@@43 o_15@@5 f_23@@4) (= (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@15) o_15@@5 f_23@@4) (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@12) o_15@@5 f_23@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@12) o_15@@5 f_23@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5611) (ExhaleHeap@@13 T@PolymorphicMapType_5611) (Mask@@44 T@PolymorphicMapType_5632) (o_15@@6 T@Ref) (f_23@@5 T@Field_2974_5685) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_2974_5685 Mask@@44 o_15@@6 f_23@@5) (= (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@16) o_15@@6 f_23@@5) (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| ExhaleHeap@@13) o_15@@6 f_23@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| ExhaleHeap@@13) o_15@@6 f_23@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5611) (ExhaleHeap@@14 T@PolymorphicMapType_5611) (Mask@@45 T@PolymorphicMapType_5632) (o_15@@7 T@Ref) (f_23@@6 T@Field_2974_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_2974_53 Mask@@45 o_15@@7 f_23@@6) (= (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@17) o_15@@7 f_23@@6) (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| ExhaleHeap@@14) o_15@@7 f_23@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| ExhaleHeap@@14) o_15@@7 f_23@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5611) (ExhaleHeap@@15 T@PolymorphicMapType_5611) (Mask@@46 T@PolymorphicMapType_5632) (o_15@@8 T@Ref) (f_23@@7 T@Field_9044_9045) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_2974_2975 Mask@@46 o_15@@8 f_23@@7) (= (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@18) o_15@@8 f_23@@7) (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| ExhaleHeap@@15) o_15@@8 f_23@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| ExhaleHeap@@15) o_15@@8 f_23@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5611) (ExhaleHeap@@16 T@PolymorphicMapType_5611) (Mask@@47 T@PolymorphicMapType_5632) (o_15@@9 T@Ref) (f_23@@8 T@Field_2974_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_2974_1186 Mask@@47 o_15@@9 f_23@@8) (= (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@19) o_15@@9 f_23@@8) (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| ExhaleHeap@@16) o_15@@9 f_23@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| ExhaleHeap@@16) o_15@@9 f_23@@8))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5611) (ExhaleHeap@@17 T@PolymorphicMapType_5611) (Mask@@48 T@PolymorphicMapType_5632) (o_15@@10 T@Ref) (f_23@@9 T@Field_2971_9062) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_2971_18404 Mask@@48 o_15@@10 f_23@@9) (= (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@20) o_15@@10 f_23@@9) (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@17) o_15@@10 f_23@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@17) o_15@@10 f_23@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5611) (ExhaleHeap@@18 T@PolymorphicMapType_5611) (Mask@@49 T@PolymorphicMapType_5632) (o_15@@11 T@Ref) (f_23@@10 T@Field_5684_5685) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_2971_5685 Mask@@49 o_15@@11 f_23@@10) (= (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@21) o_15@@11 f_23@@10) (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| ExhaleHeap@@18) o_15@@11 f_23@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| ExhaleHeap@@18) o_15@@11 f_23@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5611) (ExhaleHeap@@19 T@PolymorphicMapType_5611) (Mask@@50 T@PolymorphicMapType_5632) (o_15@@12 T@Ref) (f_23@@11 T@Field_5671_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_2971_53 Mask@@50 o_15@@12 f_23@@11) (= (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@22) o_15@@12 f_23@@11) (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@19) o_15@@12 f_23@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@19) o_15@@12 f_23@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5611) (ExhaleHeap@@20 T@PolymorphicMapType_5611) (Mask@@51 T@PolymorphicMapType_5632) (o_15@@13 T@Ref) (f_23@@12 T@Field_2971_2975) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_2971_2975 Mask@@51 o_15@@13 f_23@@12) (= (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@23) o_15@@13 f_23@@12) (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| ExhaleHeap@@20) o_15@@13 f_23@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| ExhaleHeap@@20) o_15@@13 f_23@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5611) (ExhaleHeap@@21 T@PolymorphicMapType_5611) (Mask@@52 T@PolymorphicMapType_5632) (o_15@@14 T@Ref) (f_23@@13 T@Field_8997_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_2971_1186 Mask@@52 o_15@@14 f_23@@13) (= (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@24) o_15@@14 f_23@@13) (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| ExhaleHeap@@21) o_15@@14 f_23@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| ExhaleHeap@@21) o_15@@14 f_23@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_9977_9982) ) (! (= (select (|PolymorphicMapType_5632_2999_33447#PolymorphicMapType_5632| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5632_2999_33447#PolymorphicMapType_5632| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_2999_5685) ) (! (= (select (|PolymorphicMapType_5632_2999_5685#PolymorphicMapType_5632| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5632_2999_5685#PolymorphicMapType_5632| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_2999_53) ) (! (= (select (|PolymorphicMapType_5632_2999_53#PolymorphicMapType_5632| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5632_2999_53#PolymorphicMapType_5632| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_9964_9965) ) (! (= (select (|PolymorphicMapType_5632_2999_3000#PolymorphicMapType_5632| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5632_2999_3000#PolymorphicMapType_5632| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_2999_1186) ) (! (= (select (|PolymorphicMapType_5632_2999_1186#PolymorphicMapType_5632| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5632_2999_1186#PolymorphicMapType_5632| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_9057_9062) ) (! (= (select (|PolymorphicMapType_5632_2974_33036#PolymorphicMapType_5632| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5632_2974_33036#PolymorphicMapType_5632| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_2974_5685) ) (! (= (select (|PolymorphicMapType_5632_2974_5685#PolymorphicMapType_5632| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5632_2974_5685#PolymorphicMapType_5632| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_2974_53) ) (! (= (select (|PolymorphicMapType_5632_2974_53#PolymorphicMapType_5632| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5632_2974_53#PolymorphicMapType_5632| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_9044_9045) ) (! (= (select (|PolymorphicMapType_5632_2974_2975#PolymorphicMapType_5632| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5632_2974_2975#PolymorphicMapType_5632| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_2974_1186) ) (! (= (select (|PolymorphicMapType_5632_2974_1186#PolymorphicMapType_5632| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5632_2974_1186#PolymorphicMapType_5632| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_2971_9062) ) (! (= (select (|PolymorphicMapType_5632_2971_32625#PolymorphicMapType_5632| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5632_2971_32625#PolymorphicMapType_5632| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_5684_5685) ) (! (= (select (|PolymorphicMapType_5632_2971_5685#PolymorphicMapType_5632| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5632_2971_5685#PolymorphicMapType_5632| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_5671_53) ) (! (= (select (|PolymorphicMapType_5632_2971_53#PolymorphicMapType_5632| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5632_2971_53#PolymorphicMapType_5632| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_2971_2975) ) (! (= (select (|PolymorphicMapType_5632_2971_2975#PolymorphicMapType_5632| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5632_2971_2975#PolymorphicMapType_5632| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_8997_1186) ) (! (= (select (|PolymorphicMapType_5632_2971_1186#PolymorphicMapType_5632| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5632_2971_1186#PolymorphicMapType_5632| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5632) (SummandMask1 T@PolymorphicMapType_5632) (SummandMask2 T@PolymorphicMapType_5632) (o_2@@59 T@Ref) (f_4@@59 T@Field_9977_9982) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5632_2999_33447#PolymorphicMapType_5632| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_5632_2999_33447#PolymorphicMapType_5632| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_5632_2999_33447#PolymorphicMapType_5632| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5632_2999_33447#PolymorphicMapType_5632| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5632_2999_33447#PolymorphicMapType_5632| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5632_2999_33447#PolymorphicMapType_5632| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5632) (SummandMask1@@0 T@PolymorphicMapType_5632) (SummandMask2@@0 T@PolymorphicMapType_5632) (o_2@@60 T@Ref) (f_4@@60 T@Field_2999_5685) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5632_2999_5685#PolymorphicMapType_5632| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_5632_2999_5685#PolymorphicMapType_5632| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_5632_2999_5685#PolymorphicMapType_5632| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5632_2999_5685#PolymorphicMapType_5632| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5632_2999_5685#PolymorphicMapType_5632| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5632_2999_5685#PolymorphicMapType_5632| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5632) (SummandMask1@@1 T@PolymorphicMapType_5632) (SummandMask2@@1 T@PolymorphicMapType_5632) (o_2@@61 T@Ref) (f_4@@61 T@Field_2999_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5632_2999_53#PolymorphicMapType_5632| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_5632_2999_53#PolymorphicMapType_5632| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_5632_2999_53#PolymorphicMapType_5632| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5632_2999_53#PolymorphicMapType_5632| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5632_2999_53#PolymorphicMapType_5632| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5632_2999_53#PolymorphicMapType_5632| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5632) (SummandMask1@@2 T@PolymorphicMapType_5632) (SummandMask2@@2 T@PolymorphicMapType_5632) (o_2@@62 T@Ref) (f_4@@62 T@Field_9964_9965) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5632_2999_3000#PolymorphicMapType_5632| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_5632_2999_3000#PolymorphicMapType_5632| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_5632_2999_3000#PolymorphicMapType_5632| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5632_2999_3000#PolymorphicMapType_5632| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5632_2999_3000#PolymorphicMapType_5632| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5632_2999_3000#PolymorphicMapType_5632| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_5632) (SummandMask1@@3 T@PolymorphicMapType_5632) (SummandMask2@@3 T@PolymorphicMapType_5632) (o_2@@63 T@Ref) (f_4@@63 T@Field_2999_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_5632_2999_1186#PolymorphicMapType_5632| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_5632_2999_1186#PolymorphicMapType_5632| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_5632_2999_1186#PolymorphicMapType_5632| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5632_2999_1186#PolymorphicMapType_5632| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5632_2999_1186#PolymorphicMapType_5632| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_5632_2999_1186#PolymorphicMapType_5632| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_5632) (SummandMask1@@4 T@PolymorphicMapType_5632) (SummandMask2@@4 T@PolymorphicMapType_5632) (o_2@@64 T@Ref) (f_4@@64 T@Field_9057_9062) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_5632_2974_33036#PolymorphicMapType_5632| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_5632_2974_33036#PolymorphicMapType_5632| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_5632_2974_33036#PolymorphicMapType_5632| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5632_2974_33036#PolymorphicMapType_5632| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5632_2974_33036#PolymorphicMapType_5632| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_5632_2974_33036#PolymorphicMapType_5632| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_5632) (SummandMask1@@5 T@PolymorphicMapType_5632) (SummandMask2@@5 T@PolymorphicMapType_5632) (o_2@@65 T@Ref) (f_4@@65 T@Field_2974_5685) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_5632_2974_5685#PolymorphicMapType_5632| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_5632_2974_5685#PolymorphicMapType_5632| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_5632_2974_5685#PolymorphicMapType_5632| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5632_2974_5685#PolymorphicMapType_5632| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5632_2974_5685#PolymorphicMapType_5632| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_5632_2974_5685#PolymorphicMapType_5632| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_5632) (SummandMask1@@6 T@PolymorphicMapType_5632) (SummandMask2@@6 T@PolymorphicMapType_5632) (o_2@@66 T@Ref) (f_4@@66 T@Field_2974_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_5632_2974_53#PolymorphicMapType_5632| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_5632_2974_53#PolymorphicMapType_5632| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_5632_2974_53#PolymorphicMapType_5632| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5632_2974_53#PolymorphicMapType_5632| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5632_2974_53#PolymorphicMapType_5632| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_5632_2974_53#PolymorphicMapType_5632| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_5632) (SummandMask1@@7 T@PolymorphicMapType_5632) (SummandMask2@@7 T@PolymorphicMapType_5632) (o_2@@67 T@Ref) (f_4@@67 T@Field_9044_9045) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_5632_2974_2975#PolymorphicMapType_5632| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_5632_2974_2975#PolymorphicMapType_5632| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_5632_2974_2975#PolymorphicMapType_5632| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5632_2974_2975#PolymorphicMapType_5632| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5632_2974_2975#PolymorphicMapType_5632| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_5632_2974_2975#PolymorphicMapType_5632| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_5632) (SummandMask1@@8 T@PolymorphicMapType_5632) (SummandMask2@@8 T@PolymorphicMapType_5632) (o_2@@68 T@Ref) (f_4@@68 T@Field_2974_1186) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_5632_2974_1186#PolymorphicMapType_5632| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_5632_2974_1186#PolymorphicMapType_5632| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_5632_2974_1186#PolymorphicMapType_5632| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5632_2974_1186#PolymorphicMapType_5632| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5632_2974_1186#PolymorphicMapType_5632| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_5632_2974_1186#PolymorphicMapType_5632| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_5632) (SummandMask1@@9 T@PolymorphicMapType_5632) (SummandMask2@@9 T@PolymorphicMapType_5632) (o_2@@69 T@Ref) (f_4@@69 T@Field_2971_9062) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_5632_2971_32625#PolymorphicMapType_5632| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_5632_2971_32625#PolymorphicMapType_5632| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_5632_2971_32625#PolymorphicMapType_5632| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5632_2971_32625#PolymorphicMapType_5632| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5632_2971_32625#PolymorphicMapType_5632| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_5632_2971_32625#PolymorphicMapType_5632| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_5632) (SummandMask1@@10 T@PolymorphicMapType_5632) (SummandMask2@@10 T@PolymorphicMapType_5632) (o_2@@70 T@Ref) (f_4@@70 T@Field_5684_5685) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_5632_2971_5685#PolymorphicMapType_5632| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_5632_2971_5685#PolymorphicMapType_5632| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_5632_2971_5685#PolymorphicMapType_5632| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5632_2971_5685#PolymorphicMapType_5632| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5632_2971_5685#PolymorphicMapType_5632| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_5632_2971_5685#PolymorphicMapType_5632| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_5632) (SummandMask1@@11 T@PolymorphicMapType_5632) (SummandMask2@@11 T@PolymorphicMapType_5632) (o_2@@71 T@Ref) (f_4@@71 T@Field_5671_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_5632_2971_53#PolymorphicMapType_5632| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_5632_2971_53#PolymorphicMapType_5632| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_5632_2971_53#PolymorphicMapType_5632| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5632_2971_53#PolymorphicMapType_5632| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5632_2971_53#PolymorphicMapType_5632| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_5632_2971_53#PolymorphicMapType_5632| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_5632) (SummandMask1@@12 T@PolymorphicMapType_5632) (SummandMask2@@12 T@PolymorphicMapType_5632) (o_2@@72 T@Ref) (f_4@@72 T@Field_2971_2975) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_5632_2971_2975#PolymorphicMapType_5632| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_5632_2971_2975#PolymorphicMapType_5632| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_5632_2971_2975#PolymorphicMapType_5632| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5632_2971_2975#PolymorphicMapType_5632| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5632_2971_2975#PolymorphicMapType_5632| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_5632_2971_2975#PolymorphicMapType_5632| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_5632) (SummandMask1@@13 T@PolymorphicMapType_5632) (SummandMask2@@13 T@PolymorphicMapType_5632) (o_2@@73 T@Ref) (f_4@@73 T@Field_8997_1186) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_5632_2971_1186#PolymorphicMapType_5632| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_5632_2971_1186#PolymorphicMapType_5632| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_5632_2971_1186#PolymorphicMapType_5632| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5632_2971_1186#PolymorphicMapType_5632| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5632_2971_1186#PolymorphicMapType_5632| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_5632_2971_1186#PolymorphicMapType_5632| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5611) (ExhaleHeap@@22 T@PolymorphicMapType_5611) (Mask@@53 T@PolymorphicMapType_5632) (pm_f_5@@5 T@Field_9964_9965) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_2999_3000 Mask@@53 null pm_f_5@@5) (IsPredicateField_2999_3000 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_23@@14 T@Field_8997_1186) ) (!  (=> (select (|PolymorphicMapType_6160_2971_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) null (PredicateMaskField_2999 pm_f_5@@5))) o2_5 f_23@@14) (= (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@25) o2_5 f_23@@14) (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5 f_23@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5 f_23@@14))
)) (forall ((o2_5@@0 T@Ref) (f_23@@15 T@Field_5671_53) ) (!  (=> (select (|PolymorphicMapType_6160_2971_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) null (PredicateMaskField_2999 pm_f_5@@5))) o2_5@@0 f_23@@15) (= (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@25) o2_5@@0 f_23@@15) (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@0 f_23@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@0 f_23@@15))
))) (forall ((o2_5@@1 T@Ref) (f_23@@16 T@Field_5684_5685) ) (!  (=> (select (|PolymorphicMapType_6160_2971_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) null (PredicateMaskField_2999 pm_f_5@@5))) o2_5@@1 f_23@@16) (= (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@25) o2_5@@1 f_23@@16) (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@1 f_23@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@1 f_23@@16))
))) (forall ((o2_5@@2 T@Ref) (f_23@@17 T@Field_2971_2975) ) (!  (=> (select (|PolymorphicMapType_6160_2971_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) null (PredicateMaskField_2999 pm_f_5@@5))) o2_5@@2 f_23@@17) (= (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@25) o2_5@@2 f_23@@17) (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@2 f_23@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@2 f_23@@17))
))) (forall ((o2_5@@3 T@Ref) (f_23@@18 T@Field_2971_9062) ) (!  (=> (select (|PolymorphicMapType_6160_2971_22685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) null (PredicateMaskField_2999 pm_f_5@@5))) o2_5@@3 f_23@@18) (= (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@25) o2_5@@3 f_23@@18) (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@3 f_23@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@3 f_23@@18))
))) (forall ((o2_5@@4 T@Ref) (f_23@@19 T@Field_2974_1186) ) (!  (=> (select (|PolymorphicMapType_6160_9044_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) null (PredicateMaskField_2999 pm_f_5@@5))) o2_5@@4 f_23@@19) (= (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@25) o2_5@@4 f_23@@19) (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@4 f_23@@19)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@4 f_23@@19))
))) (forall ((o2_5@@5 T@Ref) (f_23@@20 T@Field_2974_53) ) (!  (=> (select (|PolymorphicMapType_6160_9044_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) null (PredicateMaskField_2999 pm_f_5@@5))) o2_5@@5 f_23@@20) (= (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@25) o2_5@@5 f_23@@20) (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@5 f_23@@20)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@5 f_23@@20))
))) (forall ((o2_5@@6 T@Ref) (f_23@@21 T@Field_2974_5685) ) (!  (=> (select (|PolymorphicMapType_6160_9044_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) null (PredicateMaskField_2999 pm_f_5@@5))) o2_5@@6 f_23@@21) (= (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@25) o2_5@@6 f_23@@21) (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@6 f_23@@21)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@6 f_23@@21))
))) (forall ((o2_5@@7 T@Ref) (f_23@@22 T@Field_9044_9045) ) (!  (=> (select (|PolymorphicMapType_6160_9044_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) null (PredicateMaskField_2999 pm_f_5@@5))) o2_5@@7 f_23@@22) (= (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@25) o2_5@@7 f_23@@22) (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@7 f_23@@22)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@7 f_23@@22))
))) (forall ((o2_5@@8 T@Ref) (f_23@@23 T@Field_9057_9062) ) (!  (=> (select (|PolymorphicMapType_6160_9044_23733#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) null (PredicateMaskField_2999 pm_f_5@@5))) o2_5@@8 f_23@@23) (= (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@25) o2_5@@8 f_23@@23) (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@8 f_23@@23)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@8 f_23@@23))
))) (forall ((o2_5@@9 T@Ref) (f_23@@24 T@Field_2999_1186) ) (!  (=> (select (|PolymorphicMapType_6160_9964_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) null (PredicateMaskField_2999 pm_f_5@@5))) o2_5@@9 f_23@@24) (= (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@25) o2_5@@9 f_23@@24) (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@9 f_23@@24)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@9 f_23@@24))
))) (forall ((o2_5@@10 T@Ref) (f_23@@25 T@Field_2999_53) ) (!  (=> (select (|PolymorphicMapType_6160_9964_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) null (PredicateMaskField_2999 pm_f_5@@5))) o2_5@@10 f_23@@25) (= (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@25) o2_5@@10 f_23@@25) (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@10 f_23@@25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@10 f_23@@25))
))) (forall ((o2_5@@11 T@Ref) (f_23@@26 T@Field_2999_5685) ) (!  (=> (select (|PolymorphicMapType_6160_9964_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) null (PredicateMaskField_2999 pm_f_5@@5))) o2_5@@11 f_23@@26) (= (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@25) o2_5@@11 f_23@@26) (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@11 f_23@@26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@11 f_23@@26))
))) (forall ((o2_5@@12 T@Ref) (f_23@@27 T@Field_9964_9965) ) (!  (=> (select (|PolymorphicMapType_6160_9964_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) null (PredicateMaskField_2999 pm_f_5@@5))) o2_5@@12 f_23@@27) (= (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@25) o2_5@@12 f_23@@27) (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@12 f_23@@27)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@12 f_23@@27))
))) (forall ((o2_5@@13 T@Ref) (f_23@@28 T@Field_9977_9982) ) (!  (=> (select (|PolymorphicMapType_6160_9964_24781#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) null (PredicateMaskField_2999 pm_f_5@@5))) o2_5@@13 f_23@@28) (= (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@25) o2_5@@13 f_23@@28) (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@13 f_23@@28)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@22) o2_5@@13 f_23@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (IsPredicateField_2999_3000 pm_f_5@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5611) (ExhaleHeap@@23 T@PolymorphicMapType_5611) (Mask@@54 T@PolymorphicMapType_5632) (pm_f_5@@6 T@Field_9044_9045) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_2974_2975 Mask@@54 null pm_f_5@@6) (IsPredicateField_2974_2975 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@14 T@Ref) (f_23@@29 T@Field_8997_1186) ) (!  (=> (select (|PolymorphicMapType_6160_2971_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) null (PredicateMaskField_2974 pm_f_5@@6))) o2_5@@14 f_23@@29) (= (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@26) o2_5@@14 f_23@@29) (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@14 f_23@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@14 f_23@@29))
)) (forall ((o2_5@@15 T@Ref) (f_23@@30 T@Field_5671_53) ) (!  (=> (select (|PolymorphicMapType_6160_2971_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) null (PredicateMaskField_2974 pm_f_5@@6))) o2_5@@15 f_23@@30) (= (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@26) o2_5@@15 f_23@@30) (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@15 f_23@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@15 f_23@@30))
))) (forall ((o2_5@@16 T@Ref) (f_23@@31 T@Field_5684_5685) ) (!  (=> (select (|PolymorphicMapType_6160_2971_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) null (PredicateMaskField_2974 pm_f_5@@6))) o2_5@@16 f_23@@31) (= (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@26) o2_5@@16 f_23@@31) (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@16 f_23@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@16 f_23@@31))
))) (forall ((o2_5@@17 T@Ref) (f_23@@32 T@Field_2971_2975) ) (!  (=> (select (|PolymorphicMapType_6160_2971_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) null (PredicateMaskField_2974 pm_f_5@@6))) o2_5@@17 f_23@@32) (= (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@26) o2_5@@17 f_23@@32) (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@17 f_23@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@17 f_23@@32))
))) (forall ((o2_5@@18 T@Ref) (f_23@@33 T@Field_2971_9062) ) (!  (=> (select (|PolymorphicMapType_6160_2971_22685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) null (PredicateMaskField_2974 pm_f_5@@6))) o2_5@@18 f_23@@33) (= (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@26) o2_5@@18 f_23@@33) (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@18 f_23@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@18 f_23@@33))
))) (forall ((o2_5@@19 T@Ref) (f_23@@34 T@Field_2974_1186) ) (!  (=> (select (|PolymorphicMapType_6160_9044_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) null (PredicateMaskField_2974 pm_f_5@@6))) o2_5@@19 f_23@@34) (= (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@26) o2_5@@19 f_23@@34) (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@19 f_23@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@19 f_23@@34))
))) (forall ((o2_5@@20 T@Ref) (f_23@@35 T@Field_2974_53) ) (!  (=> (select (|PolymorphicMapType_6160_9044_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) null (PredicateMaskField_2974 pm_f_5@@6))) o2_5@@20 f_23@@35) (= (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@26) o2_5@@20 f_23@@35) (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@20 f_23@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@20 f_23@@35))
))) (forall ((o2_5@@21 T@Ref) (f_23@@36 T@Field_2974_5685) ) (!  (=> (select (|PolymorphicMapType_6160_9044_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) null (PredicateMaskField_2974 pm_f_5@@6))) o2_5@@21 f_23@@36) (= (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@26) o2_5@@21 f_23@@36) (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@21 f_23@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@21 f_23@@36))
))) (forall ((o2_5@@22 T@Ref) (f_23@@37 T@Field_9044_9045) ) (!  (=> (select (|PolymorphicMapType_6160_9044_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) null (PredicateMaskField_2974 pm_f_5@@6))) o2_5@@22 f_23@@37) (= (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@26) o2_5@@22 f_23@@37) (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@22 f_23@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@22 f_23@@37))
))) (forall ((o2_5@@23 T@Ref) (f_23@@38 T@Field_9057_9062) ) (!  (=> (select (|PolymorphicMapType_6160_9044_23733#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) null (PredicateMaskField_2974 pm_f_5@@6))) o2_5@@23 f_23@@38) (= (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) o2_5@@23 f_23@@38) (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@23 f_23@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@23 f_23@@38))
))) (forall ((o2_5@@24 T@Ref) (f_23@@39 T@Field_2999_1186) ) (!  (=> (select (|PolymorphicMapType_6160_9964_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) null (PredicateMaskField_2974 pm_f_5@@6))) o2_5@@24 f_23@@39) (= (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@26) o2_5@@24 f_23@@39) (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@24 f_23@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@24 f_23@@39))
))) (forall ((o2_5@@25 T@Ref) (f_23@@40 T@Field_2999_53) ) (!  (=> (select (|PolymorphicMapType_6160_9964_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) null (PredicateMaskField_2974 pm_f_5@@6))) o2_5@@25 f_23@@40) (= (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@26) o2_5@@25 f_23@@40) (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@25 f_23@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@25 f_23@@40))
))) (forall ((o2_5@@26 T@Ref) (f_23@@41 T@Field_2999_5685) ) (!  (=> (select (|PolymorphicMapType_6160_9964_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) null (PredicateMaskField_2974 pm_f_5@@6))) o2_5@@26 f_23@@41) (= (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@26) o2_5@@26 f_23@@41) (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@26 f_23@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@26 f_23@@41))
))) (forall ((o2_5@@27 T@Ref) (f_23@@42 T@Field_9964_9965) ) (!  (=> (select (|PolymorphicMapType_6160_9964_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) null (PredicateMaskField_2974 pm_f_5@@6))) o2_5@@27 f_23@@42) (= (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@26) o2_5@@27 f_23@@42) (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@27 f_23@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@27 f_23@@42))
))) (forall ((o2_5@@28 T@Ref) (f_23@@43 T@Field_9977_9982) ) (!  (=> (select (|PolymorphicMapType_6160_9964_24781#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@26) null (PredicateMaskField_2974 pm_f_5@@6))) o2_5@@28 f_23@@43) (= (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@26) o2_5@@28 f_23@@43) (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@28 f_23@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@23) o2_5@@28 f_23@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (IsPredicateField_2974_2975 pm_f_5@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5611) (ExhaleHeap@@24 T@PolymorphicMapType_5611) (Mask@@55 T@PolymorphicMapType_5632) (pm_f_5@@7 T@Field_2971_2975) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_2971_2975 Mask@@55 null pm_f_5@@7) (IsPredicateField_2971_20888 pm_f_5@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_23@@44 T@Field_8997_1186) ) (!  (=> (select (|PolymorphicMapType_6160_2971_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) null (PredicateMaskField_2971 pm_f_5@@7))) o2_5@@29 f_23@@44) (= (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@27) o2_5@@29 f_23@@44) (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@29 f_23@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@29 f_23@@44))
)) (forall ((o2_5@@30 T@Ref) (f_23@@45 T@Field_5671_53) ) (!  (=> (select (|PolymorphicMapType_6160_2971_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) null (PredicateMaskField_2971 pm_f_5@@7))) o2_5@@30 f_23@@45) (= (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@27) o2_5@@30 f_23@@45) (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@30 f_23@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@30 f_23@@45))
))) (forall ((o2_5@@31 T@Ref) (f_23@@46 T@Field_5684_5685) ) (!  (=> (select (|PolymorphicMapType_6160_2971_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) null (PredicateMaskField_2971 pm_f_5@@7))) o2_5@@31 f_23@@46) (= (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@27) o2_5@@31 f_23@@46) (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@31 f_23@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@31 f_23@@46))
))) (forall ((o2_5@@32 T@Ref) (f_23@@47 T@Field_2971_2975) ) (!  (=> (select (|PolymorphicMapType_6160_2971_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) null (PredicateMaskField_2971 pm_f_5@@7))) o2_5@@32 f_23@@47) (= (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@27) o2_5@@32 f_23@@47) (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@32 f_23@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@32 f_23@@47))
))) (forall ((o2_5@@33 T@Ref) (f_23@@48 T@Field_2971_9062) ) (!  (=> (select (|PolymorphicMapType_6160_2971_22685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) null (PredicateMaskField_2971 pm_f_5@@7))) o2_5@@33 f_23@@48) (= (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) o2_5@@33 f_23@@48) (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@33 f_23@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@33 f_23@@48))
))) (forall ((o2_5@@34 T@Ref) (f_23@@49 T@Field_2974_1186) ) (!  (=> (select (|PolymorphicMapType_6160_9044_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) null (PredicateMaskField_2971 pm_f_5@@7))) o2_5@@34 f_23@@49) (= (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@27) o2_5@@34 f_23@@49) (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@34 f_23@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@34 f_23@@49))
))) (forall ((o2_5@@35 T@Ref) (f_23@@50 T@Field_2974_53) ) (!  (=> (select (|PolymorphicMapType_6160_9044_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) null (PredicateMaskField_2971 pm_f_5@@7))) o2_5@@35 f_23@@50) (= (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@27) o2_5@@35 f_23@@50) (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@35 f_23@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@35 f_23@@50))
))) (forall ((o2_5@@36 T@Ref) (f_23@@51 T@Field_2974_5685) ) (!  (=> (select (|PolymorphicMapType_6160_9044_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) null (PredicateMaskField_2971 pm_f_5@@7))) o2_5@@36 f_23@@51) (= (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@27) o2_5@@36 f_23@@51) (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@36 f_23@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@36 f_23@@51))
))) (forall ((o2_5@@37 T@Ref) (f_23@@52 T@Field_9044_9045) ) (!  (=> (select (|PolymorphicMapType_6160_9044_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) null (PredicateMaskField_2971 pm_f_5@@7))) o2_5@@37 f_23@@52) (= (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@27) o2_5@@37 f_23@@52) (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@37 f_23@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@37 f_23@@52))
))) (forall ((o2_5@@38 T@Ref) (f_23@@53 T@Field_9057_9062) ) (!  (=> (select (|PolymorphicMapType_6160_9044_23733#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) null (PredicateMaskField_2971 pm_f_5@@7))) o2_5@@38 f_23@@53) (= (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@27) o2_5@@38 f_23@@53) (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@38 f_23@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@38 f_23@@53))
))) (forall ((o2_5@@39 T@Ref) (f_23@@54 T@Field_2999_1186) ) (!  (=> (select (|PolymorphicMapType_6160_9964_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) null (PredicateMaskField_2971 pm_f_5@@7))) o2_5@@39 f_23@@54) (= (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@27) o2_5@@39 f_23@@54) (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@39 f_23@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@39 f_23@@54))
))) (forall ((o2_5@@40 T@Ref) (f_23@@55 T@Field_2999_53) ) (!  (=> (select (|PolymorphicMapType_6160_9964_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) null (PredicateMaskField_2971 pm_f_5@@7))) o2_5@@40 f_23@@55) (= (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@27) o2_5@@40 f_23@@55) (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@40 f_23@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@40 f_23@@55))
))) (forall ((o2_5@@41 T@Ref) (f_23@@56 T@Field_2999_5685) ) (!  (=> (select (|PolymorphicMapType_6160_9964_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) null (PredicateMaskField_2971 pm_f_5@@7))) o2_5@@41 f_23@@56) (= (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@27) o2_5@@41 f_23@@56) (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@41 f_23@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@41 f_23@@56))
))) (forall ((o2_5@@42 T@Ref) (f_23@@57 T@Field_9964_9965) ) (!  (=> (select (|PolymorphicMapType_6160_9964_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) null (PredicateMaskField_2971 pm_f_5@@7))) o2_5@@42 f_23@@57) (= (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@27) o2_5@@42 f_23@@57) (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@42 f_23@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@42 f_23@@57))
))) (forall ((o2_5@@43 T@Ref) (f_23@@58 T@Field_9977_9982) ) (!  (=> (select (|PolymorphicMapType_6160_9964_24781#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@27) null (PredicateMaskField_2971 pm_f_5@@7))) o2_5@@43 f_23@@58) (= (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@27) o2_5@@43 f_23@@58) (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@43 f_23@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@24) o2_5@@43 f_23@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (IsPredicateField_2971_20888 pm_f_5@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5611) (ExhaleHeap@@25 T@PolymorphicMapType_5611) (Mask@@56 T@PolymorphicMapType_5632) (pm_f_5@@8 T@Field_9964_9965) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_2999_3000 Mask@@56 null pm_f_5@@8) (IsWandField_2999_26584 pm_f_5@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@44 T@Ref) (f_23@@59 T@Field_8997_1186) ) (!  (=> (select (|PolymorphicMapType_6160_2971_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) null (WandMaskField_2999 pm_f_5@@8))) o2_5@@44 f_23@@59) (= (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@28) o2_5@@44 f_23@@59) (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@44 f_23@@59)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@44 f_23@@59))
)) (forall ((o2_5@@45 T@Ref) (f_23@@60 T@Field_5671_53) ) (!  (=> (select (|PolymorphicMapType_6160_2971_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) null (WandMaskField_2999 pm_f_5@@8))) o2_5@@45 f_23@@60) (= (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@28) o2_5@@45 f_23@@60) (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@45 f_23@@60)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@45 f_23@@60))
))) (forall ((o2_5@@46 T@Ref) (f_23@@61 T@Field_5684_5685) ) (!  (=> (select (|PolymorphicMapType_6160_2971_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) null (WandMaskField_2999 pm_f_5@@8))) o2_5@@46 f_23@@61) (= (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@28) o2_5@@46 f_23@@61) (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@46 f_23@@61)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@46 f_23@@61))
))) (forall ((o2_5@@47 T@Ref) (f_23@@62 T@Field_2971_2975) ) (!  (=> (select (|PolymorphicMapType_6160_2971_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) null (WandMaskField_2999 pm_f_5@@8))) o2_5@@47 f_23@@62) (= (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@28) o2_5@@47 f_23@@62) (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@47 f_23@@62)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@47 f_23@@62))
))) (forall ((o2_5@@48 T@Ref) (f_23@@63 T@Field_2971_9062) ) (!  (=> (select (|PolymorphicMapType_6160_2971_22685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) null (WandMaskField_2999 pm_f_5@@8))) o2_5@@48 f_23@@63) (= (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@28) o2_5@@48 f_23@@63) (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@48 f_23@@63)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@48 f_23@@63))
))) (forall ((o2_5@@49 T@Ref) (f_23@@64 T@Field_2974_1186) ) (!  (=> (select (|PolymorphicMapType_6160_9044_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) null (WandMaskField_2999 pm_f_5@@8))) o2_5@@49 f_23@@64) (= (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@28) o2_5@@49 f_23@@64) (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@49 f_23@@64)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@49 f_23@@64))
))) (forall ((o2_5@@50 T@Ref) (f_23@@65 T@Field_2974_53) ) (!  (=> (select (|PolymorphicMapType_6160_9044_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) null (WandMaskField_2999 pm_f_5@@8))) o2_5@@50 f_23@@65) (= (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@28) o2_5@@50 f_23@@65) (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@50 f_23@@65)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@50 f_23@@65))
))) (forall ((o2_5@@51 T@Ref) (f_23@@66 T@Field_2974_5685) ) (!  (=> (select (|PolymorphicMapType_6160_9044_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) null (WandMaskField_2999 pm_f_5@@8))) o2_5@@51 f_23@@66) (= (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@28) o2_5@@51 f_23@@66) (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@51 f_23@@66)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@51 f_23@@66))
))) (forall ((o2_5@@52 T@Ref) (f_23@@67 T@Field_9044_9045) ) (!  (=> (select (|PolymorphicMapType_6160_9044_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) null (WandMaskField_2999 pm_f_5@@8))) o2_5@@52 f_23@@67) (= (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@28) o2_5@@52 f_23@@67) (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@52 f_23@@67)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@52 f_23@@67))
))) (forall ((o2_5@@53 T@Ref) (f_23@@68 T@Field_9057_9062) ) (!  (=> (select (|PolymorphicMapType_6160_9044_23733#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) null (WandMaskField_2999 pm_f_5@@8))) o2_5@@53 f_23@@68) (= (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@28) o2_5@@53 f_23@@68) (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@53 f_23@@68)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@53 f_23@@68))
))) (forall ((o2_5@@54 T@Ref) (f_23@@69 T@Field_2999_1186) ) (!  (=> (select (|PolymorphicMapType_6160_9964_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) null (WandMaskField_2999 pm_f_5@@8))) o2_5@@54 f_23@@69) (= (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@28) o2_5@@54 f_23@@69) (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@54 f_23@@69)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@54 f_23@@69))
))) (forall ((o2_5@@55 T@Ref) (f_23@@70 T@Field_2999_53) ) (!  (=> (select (|PolymorphicMapType_6160_9964_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) null (WandMaskField_2999 pm_f_5@@8))) o2_5@@55 f_23@@70) (= (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@28) o2_5@@55 f_23@@70) (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@55 f_23@@70)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@55 f_23@@70))
))) (forall ((o2_5@@56 T@Ref) (f_23@@71 T@Field_2999_5685) ) (!  (=> (select (|PolymorphicMapType_6160_9964_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) null (WandMaskField_2999 pm_f_5@@8))) o2_5@@56 f_23@@71) (= (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@28) o2_5@@56 f_23@@71) (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@56 f_23@@71)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@56 f_23@@71))
))) (forall ((o2_5@@57 T@Ref) (f_23@@72 T@Field_9964_9965) ) (!  (=> (select (|PolymorphicMapType_6160_9964_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) null (WandMaskField_2999 pm_f_5@@8))) o2_5@@57 f_23@@72) (= (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@28) o2_5@@57 f_23@@72) (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@57 f_23@@72)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@57 f_23@@72))
))) (forall ((o2_5@@58 T@Ref) (f_23@@73 T@Field_9977_9982) ) (!  (=> (select (|PolymorphicMapType_6160_9964_24781#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) null (WandMaskField_2999 pm_f_5@@8))) o2_5@@58 f_23@@73) (= (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@28) o2_5@@58 f_23@@73) (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@58 f_23@@73)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@25) o2_5@@58 f_23@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (IsWandField_2999_26584 pm_f_5@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5611) (ExhaleHeap@@26 T@PolymorphicMapType_5611) (Mask@@57 T@PolymorphicMapType_5632) (pm_f_5@@9 T@Field_9044_9045) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_2974_2975 Mask@@57 null pm_f_5@@9) (IsWandField_2974_26227 pm_f_5@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@59 T@Ref) (f_23@@74 T@Field_8997_1186) ) (!  (=> (select (|PolymorphicMapType_6160_2971_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) null (WandMaskField_2974 pm_f_5@@9))) o2_5@@59 f_23@@74) (= (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@29) o2_5@@59 f_23@@74) (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@59 f_23@@74)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@59 f_23@@74))
)) (forall ((o2_5@@60 T@Ref) (f_23@@75 T@Field_5671_53) ) (!  (=> (select (|PolymorphicMapType_6160_2971_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) null (WandMaskField_2974 pm_f_5@@9))) o2_5@@60 f_23@@75) (= (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@29) o2_5@@60 f_23@@75) (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@60 f_23@@75)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@60 f_23@@75))
))) (forall ((o2_5@@61 T@Ref) (f_23@@76 T@Field_5684_5685) ) (!  (=> (select (|PolymorphicMapType_6160_2971_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) null (WandMaskField_2974 pm_f_5@@9))) o2_5@@61 f_23@@76) (= (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@29) o2_5@@61 f_23@@76) (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@61 f_23@@76)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@61 f_23@@76))
))) (forall ((o2_5@@62 T@Ref) (f_23@@77 T@Field_2971_2975) ) (!  (=> (select (|PolymorphicMapType_6160_2971_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) null (WandMaskField_2974 pm_f_5@@9))) o2_5@@62 f_23@@77) (= (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@29) o2_5@@62 f_23@@77) (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@62 f_23@@77)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@62 f_23@@77))
))) (forall ((o2_5@@63 T@Ref) (f_23@@78 T@Field_2971_9062) ) (!  (=> (select (|PolymorphicMapType_6160_2971_22685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) null (WandMaskField_2974 pm_f_5@@9))) o2_5@@63 f_23@@78) (= (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@29) o2_5@@63 f_23@@78) (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@63 f_23@@78)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@63 f_23@@78))
))) (forall ((o2_5@@64 T@Ref) (f_23@@79 T@Field_2974_1186) ) (!  (=> (select (|PolymorphicMapType_6160_9044_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) null (WandMaskField_2974 pm_f_5@@9))) o2_5@@64 f_23@@79) (= (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@29) o2_5@@64 f_23@@79) (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@64 f_23@@79)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@64 f_23@@79))
))) (forall ((o2_5@@65 T@Ref) (f_23@@80 T@Field_2974_53) ) (!  (=> (select (|PolymorphicMapType_6160_9044_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) null (WandMaskField_2974 pm_f_5@@9))) o2_5@@65 f_23@@80) (= (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@29) o2_5@@65 f_23@@80) (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@65 f_23@@80)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@65 f_23@@80))
))) (forall ((o2_5@@66 T@Ref) (f_23@@81 T@Field_2974_5685) ) (!  (=> (select (|PolymorphicMapType_6160_9044_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) null (WandMaskField_2974 pm_f_5@@9))) o2_5@@66 f_23@@81) (= (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@29) o2_5@@66 f_23@@81) (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@66 f_23@@81)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@66 f_23@@81))
))) (forall ((o2_5@@67 T@Ref) (f_23@@82 T@Field_9044_9045) ) (!  (=> (select (|PolymorphicMapType_6160_9044_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) null (WandMaskField_2974 pm_f_5@@9))) o2_5@@67 f_23@@82) (= (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@29) o2_5@@67 f_23@@82) (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@67 f_23@@82)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@67 f_23@@82))
))) (forall ((o2_5@@68 T@Ref) (f_23@@83 T@Field_9057_9062) ) (!  (=> (select (|PolymorphicMapType_6160_9044_23733#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) null (WandMaskField_2974 pm_f_5@@9))) o2_5@@68 f_23@@83) (= (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) o2_5@@68 f_23@@83) (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@68 f_23@@83)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@68 f_23@@83))
))) (forall ((o2_5@@69 T@Ref) (f_23@@84 T@Field_2999_1186) ) (!  (=> (select (|PolymorphicMapType_6160_9964_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) null (WandMaskField_2974 pm_f_5@@9))) o2_5@@69 f_23@@84) (= (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@29) o2_5@@69 f_23@@84) (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@69 f_23@@84)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@69 f_23@@84))
))) (forall ((o2_5@@70 T@Ref) (f_23@@85 T@Field_2999_53) ) (!  (=> (select (|PolymorphicMapType_6160_9964_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) null (WandMaskField_2974 pm_f_5@@9))) o2_5@@70 f_23@@85) (= (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@29) o2_5@@70 f_23@@85) (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@70 f_23@@85)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@70 f_23@@85))
))) (forall ((o2_5@@71 T@Ref) (f_23@@86 T@Field_2999_5685) ) (!  (=> (select (|PolymorphicMapType_6160_9964_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) null (WandMaskField_2974 pm_f_5@@9))) o2_5@@71 f_23@@86) (= (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@29) o2_5@@71 f_23@@86) (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@71 f_23@@86)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@71 f_23@@86))
))) (forall ((o2_5@@72 T@Ref) (f_23@@87 T@Field_9964_9965) ) (!  (=> (select (|PolymorphicMapType_6160_9964_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) null (WandMaskField_2974 pm_f_5@@9))) o2_5@@72 f_23@@87) (= (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@29) o2_5@@72 f_23@@87) (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@72 f_23@@87)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@72 f_23@@87))
))) (forall ((o2_5@@73 T@Ref) (f_23@@88 T@Field_9977_9982) ) (!  (=> (select (|PolymorphicMapType_6160_9964_24781#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@29) null (WandMaskField_2974 pm_f_5@@9))) o2_5@@73 f_23@@88) (= (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@29) o2_5@@73 f_23@@88) (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@73 f_23@@88)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@26) o2_5@@73 f_23@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (IsWandField_2974_26227 pm_f_5@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_5611) (ExhaleHeap@@27 T@PolymorphicMapType_5611) (Mask@@58 T@PolymorphicMapType_5632) (pm_f_5@@10 T@Field_2971_2975) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_2971_2975 Mask@@58 null pm_f_5@@10) (IsWandField_2971_25870 pm_f_5@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_5@@74 T@Ref) (f_23@@89 T@Field_8997_1186) ) (!  (=> (select (|PolymorphicMapType_6160_2971_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) null (WandMaskField_2971 pm_f_5@@10))) o2_5@@74 f_23@@89) (= (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@30) o2_5@@74 f_23@@89) (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@74 f_23@@89)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@74 f_23@@89))
)) (forall ((o2_5@@75 T@Ref) (f_23@@90 T@Field_5671_53) ) (!  (=> (select (|PolymorphicMapType_6160_2971_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) null (WandMaskField_2971 pm_f_5@@10))) o2_5@@75 f_23@@90) (= (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@30) o2_5@@75 f_23@@90) (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@75 f_23@@90)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@75 f_23@@90))
))) (forall ((o2_5@@76 T@Ref) (f_23@@91 T@Field_5684_5685) ) (!  (=> (select (|PolymorphicMapType_6160_2971_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) null (WandMaskField_2971 pm_f_5@@10))) o2_5@@76 f_23@@91) (= (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@30) o2_5@@76 f_23@@91) (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@76 f_23@@91)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@76 f_23@@91))
))) (forall ((o2_5@@77 T@Ref) (f_23@@92 T@Field_2971_2975) ) (!  (=> (select (|PolymorphicMapType_6160_2971_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) null (WandMaskField_2971 pm_f_5@@10))) o2_5@@77 f_23@@92) (= (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@30) o2_5@@77 f_23@@92) (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@77 f_23@@92)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@77 f_23@@92))
))) (forall ((o2_5@@78 T@Ref) (f_23@@93 T@Field_2971_9062) ) (!  (=> (select (|PolymorphicMapType_6160_2971_22685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) null (WandMaskField_2971 pm_f_5@@10))) o2_5@@78 f_23@@93) (= (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) o2_5@@78 f_23@@93) (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@78 f_23@@93)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@78 f_23@@93))
))) (forall ((o2_5@@79 T@Ref) (f_23@@94 T@Field_2974_1186) ) (!  (=> (select (|PolymorphicMapType_6160_9044_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) null (WandMaskField_2971 pm_f_5@@10))) o2_5@@79 f_23@@94) (= (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@30) o2_5@@79 f_23@@94) (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@79 f_23@@94)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@79 f_23@@94))
))) (forall ((o2_5@@80 T@Ref) (f_23@@95 T@Field_2974_53) ) (!  (=> (select (|PolymorphicMapType_6160_9044_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) null (WandMaskField_2971 pm_f_5@@10))) o2_5@@80 f_23@@95) (= (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@30) o2_5@@80 f_23@@95) (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@80 f_23@@95)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@80 f_23@@95))
))) (forall ((o2_5@@81 T@Ref) (f_23@@96 T@Field_2974_5685) ) (!  (=> (select (|PolymorphicMapType_6160_9044_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) null (WandMaskField_2971 pm_f_5@@10))) o2_5@@81 f_23@@96) (= (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@30) o2_5@@81 f_23@@96) (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@81 f_23@@96)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@81 f_23@@96))
))) (forall ((o2_5@@82 T@Ref) (f_23@@97 T@Field_9044_9045) ) (!  (=> (select (|PolymorphicMapType_6160_9044_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) null (WandMaskField_2971 pm_f_5@@10))) o2_5@@82 f_23@@97) (= (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@30) o2_5@@82 f_23@@97) (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@82 f_23@@97)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@82 f_23@@97))
))) (forall ((o2_5@@83 T@Ref) (f_23@@98 T@Field_9057_9062) ) (!  (=> (select (|PolymorphicMapType_6160_9044_23733#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) null (WandMaskField_2971 pm_f_5@@10))) o2_5@@83 f_23@@98) (= (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@30) o2_5@@83 f_23@@98) (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@83 f_23@@98)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@83 f_23@@98))
))) (forall ((o2_5@@84 T@Ref) (f_23@@99 T@Field_2999_1186) ) (!  (=> (select (|PolymorphicMapType_6160_9964_1186#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) null (WandMaskField_2971 pm_f_5@@10))) o2_5@@84 f_23@@99) (= (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@30) o2_5@@84 f_23@@99) (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@84 f_23@@99)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@84 f_23@@99))
))) (forall ((o2_5@@85 T@Ref) (f_23@@100 T@Field_2999_53) ) (!  (=> (select (|PolymorphicMapType_6160_9964_53#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) null (WandMaskField_2971 pm_f_5@@10))) o2_5@@85 f_23@@100) (= (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@30) o2_5@@85 f_23@@100) (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@85 f_23@@100)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@85 f_23@@100))
))) (forall ((o2_5@@86 T@Ref) (f_23@@101 T@Field_2999_5685) ) (!  (=> (select (|PolymorphicMapType_6160_9964_5685#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) null (WandMaskField_2971 pm_f_5@@10))) o2_5@@86 f_23@@101) (= (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@30) o2_5@@86 f_23@@101) (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@86 f_23@@101)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@86 f_23@@101))
))) (forall ((o2_5@@87 T@Ref) (f_23@@102 T@Field_9964_9965) ) (!  (=> (select (|PolymorphicMapType_6160_9964_9045#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) null (WandMaskField_2971 pm_f_5@@10))) o2_5@@87 f_23@@102) (= (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@30) o2_5@@87 f_23@@102) (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@87 f_23@@102)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@87 f_23@@102))
))) (forall ((o2_5@@88 T@Ref) (f_23@@103 T@Field_9977_9982) ) (!  (=> (select (|PolymorphicMapType_6160_9964_24781#PolymorphicMapType_6160| (select (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@30) null (WandMaskField_2971 pm_f_5@@10))) o2_5@@88 f_23@@103) (= (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@30) o2_5@@88 f_23@@103) (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@88 f_23@@103)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| ExhaleHeap@@27) o2_5@@88 f_23@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (IsWandField_2971_25870 pm_f_5@@10))
)))
(assert (forall ((x@@7 T@Ref) ) (! (= (getPredWandId_2974_2975 (p1 x@@7)) 0)
 :qid |stdinbpl.199:15|
 :skolemid |24|
 :pattern ( (p1 x@@7))
)))
(assert (forall ((x@@8 T@Ref) ) (! (= (getPredWandId_2999_3000 (p2 x@@8)) 1)
 :qid |stdinbpl.253:15|
 :skolemid |30|
 :pattern ( (p2 x@@8))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_5611) (o_14 T@Ref) (f_24 T@Field_9977_9982) (v T@PolymorphicMapType_6160) ) (! (succHeap Heap@@31 (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@31) (store (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@31) o_14 f_24 v) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@31) (store (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@31) o_14 f_24 v) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@31) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_5611) (o_14@@0 T@Ref) (f_24@@0 T@Field_9964_9965) (v@@0 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@32) (store (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@32) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@32) (store (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@32) o_14@@0 f_24@@0 v@@0) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@32) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_5611) (o_14@@1 T@Ref) (f_24@@1 T@Field_2999_1186) (v@@1 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@33) (store (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@33) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@33) (store (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@33) o_14@@1 f_24@@1 v@@1) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@33) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_5611) (o_14@@2 T@Ref) (f_24@@2 T@Field_2999_5685) (v@@2 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@34) (store (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@34) o_14@@2 f_24@@2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@34) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@34) (store (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@34) o_14@@2 f_24@@2 v@@2)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_5611) (o_14@@3 T@Ref) (f_24@@3 T@Field_2999_53) (v@@3 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@35) (store (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@35) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@35) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@35) (store (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@35) o_14@@3 f_24@@3 v@@3) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_5611) (o_14@@4 T@Ref) (f_24@@4 T@Field_9057_9062) (v@@4 T@PolymorphicMapType_6160) ) (! (succHeap Heap@@36 (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@36) (store (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@36) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@36) (store (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@36) o_14@@4 f_24@@4 v@@4) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@36) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_5611) (o_14@@5 T@Ref) (f_24@@5 T@Field_9044_9045) (v@@5 T@FrameType) ) (! (succHeap Heap@@37 (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@37) (store (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@37) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@37) (store (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@37) o_14@@5 f_24@@5 v@@5) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@37) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_5611) (o_14@@6 T@Ref) (f_24@@6 T@Field_2974_1186) (v@@6 Int) ) (! (succHeap Heap@@38 (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@38) (store (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@38) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@38) (store (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@38) o_14@@6 f_24@@6 v@@6) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@38) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_5611) (o_14@@7 T@Ref) (f_24@@7 T@Field_2974_5685) (v@@7 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@39) (store (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@39) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@39) (store (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@39) o_14@@7 f_24@@7 v@@7) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@39) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_5611) (o_14@@8 T@Ref) (f_24@@8 T@Field_2974_53) (v@@8 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@40) (store (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@40) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@40) (store (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@40) o_14@@8 f_24@@8 v@@8) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@40) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_5611) (o_14@@9 T@Ref) (f_24@@9 T@Field_2971_9062) (v@@9 T@PolymorphicMapType_6160) ) (! (succHeap Heap@@41 (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@41) (store (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@41) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@41) (store (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@41) o_14@@9 f_24@@9 v@@9) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@41) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_5611) (o_14@@10 T@Ref) (f_24@@10 T@Field_2971_2975) (v@@10 T@FrameType) ) (! (succHeap Heap@@42 (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@42) (store (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@42) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@42) (store (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@42) o_14@@10 f_24@@10 v@@10) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@42) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_5611) (o_14@@11 T@Ref) (f_24@@11 T@Field_8997_1186) (v@@11 Int) ) (! (succHeap Heap@@43 (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@43) (store (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@43) o_14@@11 f_24@@11 v@@11) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@43) (store (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@43) o_14@@11 f_24@@11 v@@11) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@43) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_5611) (o_14@@12 T@Ref) (f_24@@12 T@Field_5684_5685) (v@@12 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@44) (store (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@44) o_14@@12 f_24@@12 v@@12) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5611 (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@44) (store (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@44) o_14@@12 f_24@@12 v@@12) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@44) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_5611) (o_14@@13 T@Ref) (f_24@@13 T@Field_5671_53) (v@@13 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_5611 (store (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@45) o_14@@13 f_24@@13 v@@13) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5611 (store (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@45) o_14@@13 f_24@@13 v@@13) (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2971_1186#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2974_2975#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2978_12140#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2999_3000#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_3003_13484#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2971_2975#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2971_18446#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2974_1186#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2974_53#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2974_5685#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2999_1186#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2999_53#PolymorphicMapType_5611| Heap@@45) (|PolymorphicMapType_5611_2999_5685#PolymorphicMapType_5611| Heap@@45)))
)))
(assert (forall ((x@@9 T@Ref) ) (! (= (PredicateMaskField_2974 (p1 x@@9)) (|p1#sm| x@@9))
 :qid |stdinbpl.191:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_2974 (p1 x@@9)))
)))
(assert (forall ((x@@10 T@Ref) ) (! (= (PredicateMaskField_2999 (p2 x@@10)) (|p2#sm| x@@10))
 :qid |stdinbpl.245:15|
 :skolemid |28|
 :pattern ( (PredicateMaskField_2999 (p2 x@@10)))
)))
(assert (forall ((o_14@@14 T@Ref) (f_22 T@Field_5684_5685) (Heap@@46 T@PolymorphicMapType_5611) ) (!  (=> (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@46) o_14@@14 $allocated) (select (|PolymorphicMapType_5611_2843_53#PolymorphicMapType_5611| Heap@@46) (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@46) o_14@@14 f_22) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5611_2846_2847#PolymorphicMapType_5611| Heap@@46) o_14@@14 f_22))
)))
(assert (forall ((p@@3 T@Field_9044_9045) (v_1@@2 T@FrameType) (q T@Field_2971_2975) (w@@2 T@FrameType) (r T@Field_9964_9965) (u T@FrameType) ) (!  (=> (and (InsidePredicate_2974_5671 p@@3 v_1@@2 q w@@2) (InsidePredicate_5671_9964 q w@@2 r u)) (InsidePredicate_2974_9964 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2974_5671 p@@3 v_1@@2 q w@@2) (InsidePredicate_5671_9964 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_9044_9045) (v_1@@3 T@FrameType) (q@@0 T@Field_2971_2975) (w@@3 T@FrameType) (r@@0 T@Field_2971_2975) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_2974_5671 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_5671_5671 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_2974_5671 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2974_5671 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_5671_5671 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_9044_9045) (v_1@@4 T@FrameType) (q@@1 T@Field_2971_2975) (w@@4 T@FrameType) (r@@1 T@Field_9044_9045) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_2974_5671 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_5671_2974 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_2974_2974 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2974_5671 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_5671_2974 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_9044_9045) (v_1@@5 T@FrameType) (q@@2 T@Field_9964_9965) (w@@5 T@FrameType) (r@@2 T@Field_9964_9965) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_2974_9964 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_2999_9964 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_2974_9964 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2974_9964 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_2999_9964 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_9044_9045) (v_1@@6 T@FrameType) (q@@3 T@Field_9964_9965) (w@@6 T@FrameType) (r@@3 T@Field_2971_2975) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_2974_9964 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_2999_5671 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_2974_5671 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2974_9964 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_2999_5671 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_9044_9045) (v_1@@7 T@FrameType) (q@@4 T@Field_9964_9965) (w@@7 T@FrameType) (r@@4 T@Field_9044_9045) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_2974_9964 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_2999_2974 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_2974_2974 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2974_9964 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_2999_2974 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_9044_9045) (v_1@@8 T@FrameType) (q@@5 T@Field_9044_9045) (w@@8 T@FrameType) (r@@5 T@Field_9964_9965) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_2974_2974 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_2974_9964 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_2974_9964 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2974_2974 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_2974_9964 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_9044_9045) (v_1@@9 T@FrameType) (q@@6 T@Field_9044_9045) (w@@9 T@FrameType) (r@@6 T@Field_2971_2975) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_2974_2974 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_2974_5671 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_2974_5671 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2974_2974 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_2974_5671 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_9044_9045) (v_1@@10 T@FrameType) (q@@7 T@Field_9044_9045) (w@@10 T@FrameType) (r@@7 T@Field_9044_9045) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_2974_2974 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_2974_2974 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_2974_2974 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2974_2974 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_2974_2974 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_2971_2975) (v_1@@11 T@FrameType) (q@@8 T@Field_2971_2975) (w@@11 T@FrameType) (r@@8 T@Field_9964_9965) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_5671_5671 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_5671_9964 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_5671_9964 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5671_5671 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_5671_9964 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_2971_2975) (v_1@@12 T@FrameType) (q@@9 T@Field_2971_2975) (w@@12 T@FrameType) (r@@9 T@Field_2971_2975) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_5671_5671 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_5671_5671 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_5671_5671 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5671_5671 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_5671_5671 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_2971_2975) (v_1@@13 T@FrameType) (q@@10 T@Field_2971_2975) (w@@13 T@FrameType) (r@@10 T@Field_9044_9045) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_5671_5671 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_5671_2974 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_5671_2974 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5671_5671 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_5671_2974 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_2971_2975) (v_1@@14 T@FrameType) (q@@11 T@Field_9964_9965) (w@@14 T@FrameType) (r@@11 T@Field_9964_9965) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_5671_9964 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_2999_9964 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_5671_9964 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5671_9964 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_2999_9964 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_2971_2975) (v_1@@15 T@FrameType) (q@@12 T@Field_9964_9965) (w@@15 T@FrameType) (r@@12 T@Field_2971_2975) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_5671_9964 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_2999_5671 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_5671_5671 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5671_9964 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_2999_5671 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_2971_2975) (v_1@@16 T@FrameType) (q@@13 T@Field_9964_9965) (w@@16 T@FrameType) (r@@13 T@Field_9044_9045) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_5671_9964 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_2999_2974 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_5671_2974 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5671_9964 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_2999_2974 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_2971_2975) (v_1@@17 T@FrameType) (q@@14 T@Field_9044_9045) (w@@17 T@FrameType) (r@@14 T@Field_9964_9965) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_5671_2974 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_2974_9964 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_5671_9964 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5671_2974 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_2974_9964 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_2971_2975) (v_1@@18 T@FrameType) (q@@15 T@Field_9044_9045) (w@@18 T@FrameType) (r@@15 T@Field_2971_2975) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_5671_2974 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_2974_5671 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_5671_5671 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5671_2974 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_2974_5671 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_2971_2975) (v_1@@19 T@FrameType) (q@@16 T@Field_9044_9045) (w@@19 T@FrameType) (r@@16 T@Field_9044_9045) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_5671_2974 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_2974_2974 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_5671_2974 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5671_2974 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_2974_2974 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_9964_9965) (v_1@@20 T@FrameType) (q@@17 T@Field_2971_2975) (w@@20 T@FrameType) (r@@17 T@Field_9964_9965) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_2999_5671 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_5671_9964 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_2999_9964 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2999_5671 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_5671_9964 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_9964_9965) (v_1@@21 T@FrameType) (q@@18 T@Field_2971_2975) (w@@21 T@FrameType) (r@@18 T@Field_2971_2975) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_2999_5671 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_5671_5671 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_2999_5671 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2999_5671 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_5671_5671 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_9964_9965) (v_1@@22 T@FrameType) (q@@19 T@Field_2971_2975) (w@@22 T@FrameType) (r@@19 T@Field_9044_9045) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_2999_5671 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_5671_2974 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_2999_2974 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2999_5671 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_5671_2974 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_9964_9965) (v_1@@23 T@FrameType) (q@@20 T@Field_9964_9965) (w@@23 T@FrameType) (r@@20 T@Field_9964_9965) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_2999_9964 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_2999_9964 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_2999_9964 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2999_9964 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_2999_9964 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_9964_9965) (v_1@@24 T@FrameType) (q@@21 T@Field_9964_9965) (w@@24 T@FrameType) (r@@21 T@Field_2971_2975) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_2999_9964 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_2999_5671 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_2999_5671 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2999_9964 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_2999_5671 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_9964_9965) (v_1@@25 T@FrameType) (q@@22 T@Field_9964_9965) (w@@25 T@FrameType) (r@@22 T@Field_9044_9045) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_2999_9964 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_2999_2974 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_2999_2974 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2999_9964 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_2999_2974 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_9964_9965) (v_1@@26 T@FrameType) (q@@23 T@Field_9044_9045) (w@@26 T@FrameType) (r@@23 T@Field_9964_9965) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_2999_2974 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_2974_9964 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_2999_9964 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2999_2974 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_2974_9964 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_9964_9965) (v_1@@27 T@FrameType) (q@@24 T@Field_9044_9045) (w@@27 T@FrameType) (r@@24 T@Field_2971_2975) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_2999_2974 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_2974_5671 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_2999_5671 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2999_2974 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_2974_5671 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_9964_9965) (v_1@@28 T@FrameType) (q@@25 T@Field_9044_9045) (w@@28 T@FrameType) (r@@25 T@Field_9044_9045) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_2999_2974 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_2974_2974 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_2999_2974 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_2999_2974 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_2974_2974 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |p1#definedness|)
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
