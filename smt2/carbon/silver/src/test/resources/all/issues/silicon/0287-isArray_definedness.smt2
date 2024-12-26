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
(declare-sort T@Field_3213_53 0)
(declare-sort T@Field_3226_3227 0)
(declare-sort T@Field_6541_1210 0)
(declare-sort T@Field_3213_6589 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_3213_6606 0)
(declare-sort T@Field_6588_53 0)
(declare-sort T@Field_6588_3227 0)
(declare-sort T@Field_6588_1210 0)
(declare-sort T@Field_6588_6589 0)
(declare-sort T@Field_6601_6606 0)
(declare-datatypes ((T@PolymorphicMapType_3174 0)) (((PolymorphicMapType_3174 (|PolymorphicMapType_3174_1833_1210#PolymorphicMapType_3174| (Array T@Ref T@Field_6541_1210 Real)) (|PolymorphicMapType_3174_1833_53#PolymorphicMapType_3174| (Array T@Ref T@Field_3213_53 Real)) (|PolymorphicMapType_3174_1833_3227#PolymorphicMapType_3174| (Array T@Ref T@Field_3226_3227 Real)) (|PolymorphicMapType_3174_1833_6589#PolymorphicMapType_3174| (Array T@Ref T@Field_3213_6589 Real)) (|PolymorphicMapType_3174_1833_18478#PolymorphicMapType_3174| (Array T@Ref T@Field_3213_6606 Real)) (|PolymorphicMapType_3174_6588_1210#PolymorphicMapType_3174| (Array T@Ref T@Field_6588_1210 Real)) (|PolymorphicMapType_3174_6588_53#PolymorphicMapType_3174| (Array T@Ref T@Field_6588_53 Real)) (|PolymorphicMapType_3174_6588_3227#PolymorphicMapType_3174| (Array T@Ref T@Field_6588_3227 Real)) (|PolymorphicMapType_3174_6588_6589#PolymorphicMapType_3174| (Array T@Ref T@Field_6588_6589 Real)) (|PolymorphicMapType_3174_6588_18904#PolymorphicMapType_3174| (Array T@Ref T@Field_6601_6606 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3702 0)) (((PolymorphicMapType_3702 (|PolymorphicMapType_3702_3213_53#PolymorphicMapType_3702| (Array T@Ref T@Field_3213_53 Bool)) (|PolymorphicMapType_3702_3213_3227#PolymorphicMapType_3702| (Array T@Ref T@Field_3226_3227 Bool)) (|PolymorphicMapType_3702_3213_1210#PolymorphicMapType_3702| (Array T@Ref T@Field_6541_1210 Bool)) (|PolymorphicMapType_3702_3213_6589#PolymorphicMapType_3702| (Array T@Ref T@Field_3213_6589 Bool)) (|PolymorphicMapType_3702_3213_12036#PolymorphicMapType_3702| (Array T@Ref T@Field_3213_6606 Bool)) (|PolymorphicMapType_3702_6588_53#PolymorphicMapType_3702| (Array T@Ref T@Field_6588_53 Bool)) (|PolymorphicMapType_3702_6588_3227#PolymorphicMapType_3702| (Array T@Ref T@Field_6588_3227 Bool)) (|PolymorphicMapType_3702_6588_1210#PolymorphicMapType_3702| (Array T@Ref T@Field_6588_1210 Bool)) (|PolymorphicMapType_3702_6588_6589#PolymorphicMapType_3702| (Array T@Ref T@Field_6588_6589 Bool)) (|PolymorphicMapType_3702_6588_13084#PolymorphicMapType_3702| (Array T@Ref T@Field_6601_6606 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_3153 0)) (((PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| (Array T@Ref T@Field_3213_53 Bool)) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| (Array T@Ref T@Field_3226_3227 T@Ref)) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| (Array T@Ref T@Field_6541_1210 Int)) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| (Array T@Ref T@Field_3213_6589 T@FrameType)) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| (Array T@Ref T@Field_3213_6606 T@PolymorphicMapType_3702)) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| (Array T@Ref T@Field_6588_53 Bool)) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| (Array T@Ref T@Field_6588_3227 T@Ref)) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| (Array T@Ref T@Field_6588_1210 Int)) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| (Array T@Ref T@Field_6588_6589 T@FrameType)) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| (Array T@Ref T@Field_6601_6606 T@PolymorphicMapType_3702)) ) ) ))
(declare-fun $allocated () T@Field_3213_53)
(declare-fun val () T@Field_6541_1210)
(declare-fun succHeap (T@PolymorphicMapType_3153 T@PolymorphicMapType_3153) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_3153 T@PolymorphicMapType_3153) Bool)
(declare-fun state (T@PolymorphicMapType_3153 T@PolymorphicMapType_3174) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_3174) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_3702)
(declare-fun isArray (T@Ref) T@Field_6588_6589)
(declare-fun IsPredicateField_1836_1837 (T@Field_6588_6589) Bool)
(declare-fun |isArray#trigger_1836| (T@PolymorphicMapType_3153 T@Field_6588_6589) Bool)
(declare-fun |isArray#everUsed_1836| (T@Field_6588_6589) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_3153 T@PolymorphicMapType_3153 T@PolymorphicMapType_3174) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_1836 (T@Field_6588_6589) T@Field_6601_6606)
(declare-fun HasDirectPerm_6588_6589 (T@PolymorphicMapType_3174 T@Ref T@Field_6588_6589) Bool)
(declare-fun IsPredicateField_3213_10552 (T@Field_3213_6589) Bool)
(declare-fun PredicateMaskField_3213 (T@Field_3213_6589) T@Field_3213_6606)
(declare-fun HasDirectPerm_3213_6589 (T@PolymorphicMapType_3174 T@Ref T@Field_3213_6589) Bool)
(declare-fun IsWandField_6588_14249 (T@Field_6588_6589) Bool)
(declare-fun WandMaskField_6588 (T@Field_6588_6589) T@Field_6601_6606)
(declare-fun IsWandField_3213_13892 (T@Field_3213_6589) Bool)
(declare-fun WandMaskField_3213 (T@Field_3213_6589) T@Field_3213_6606)
(declare-fun |isArray#sm| (T@Ref) T@Field_6601_6606)
(declare-fun dummyHeap () T@PolymorphicMapType_3153)
(declare-fun ZeroMask () T@PolymorphicMapType_3174)
(declare-fun InsidePredicate_6588_6588 (T@Field_6588_6589 T@FrameType T@Field_6588_6589 T@FrameType) Bool)
(declare-fun InsidePredicate_3213_3213 (T@Field_3213_6589 T@FrameType T@Field_3213_6589 T@FrameType) Bool)
(declare-fun IsPredicateField_1833_1210 (T@Field_6541_1210) Bool)
(declare-fun IsWandField_1833_1210 (T@Field_6541_1210) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6588_21196 (T@Field_6601_6606) Bool)
(declare-fun IsWandField_6588_21212 (T@Field_6601_6606) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6588_3227 (T@Field_6588_3227) Bool)
(declare-fun IsWandField_6588_3227 (T@Field_6588_3227) Bool)
(declare-fun IsPredicateField_6588_53 (T@Field_6588_53) Bool)
(declare-fun IsWandField_6588_53 (T@Field_6588_53) Bool)
(declare-fun IsPredicateField_6588_1210 (T@Field_6588_1210) Bool)
(declare-fun IsWandField_6588_1210 (T@Field_6588_1210) Bool)
(declare-fun IsPredicateField_1833_20365 (T@Field_3213_6606) Bool)
(declare-fun IsWandField_1833_20381 (T@Field_3213_6606) Bool)
(declare-fun IsPredicateField_1833_3227 (T@Field_3226_3227) Bool)
(declare-fun IsWandField_1833_3227 (T@Field_3226_3227) Bool)
(declare-fun IsPredicateField_1833_53 (T@Field_3213_53) Bool)
(declare-fun IsWandField_1833_53 (T@Field_3213_53) Bool)
(declare-fun HasDirectPerm_6588_10264 (T@PolymorphicMapType_3174 T@Ref T@Field_6601_6606) Bool)
(declare-fun HasDirectPerm_6588_1210 (T@PolymorphicMapType_3174 T@Ref T@Field_6588_1210) Bool)
(declare-fun HasDirectPerm_6588_3227 (T@PolymorphicMapType_3174 T@Ref T@Field_6588_3227) Bool)
(declare-fun HasDirectPerm_6588_53 (T@PolymorphicMapType_3174 T@Ref T@Field_6588_53) Bool)
(declare-fun HasDirectPerm_3213_9086 (T@PolymorphicMapType_3174 T@Ref T@Field_3213_6606) Bool)
(declare-fun HasDirectPerm_3213_1210 (T@PolymorphicMapType_3174 T@Ref T@Field_6541_1210) Bool)
(declare-fun HasDirectPerm_3213_3227 (T@PolymorphicMapType_3174 T@Ref T@Field_3226_3227) Bool)
(declare-fun HasDirectPerm_3213_53 (T@PolymorphicMapType_3174 T@Ref T@Field_3213_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_3174 T@PolymorphicMapType_3174 T@PolymorphicMapType_3174) Bool)
(declare-fun getPredWandId_1836_1837 (T@Field_6588_6589) Int)
(declare-fun |isArray#condqp1| (T@PolymorphicMapType_3153 T@Ref) Int)
(declare-fun InsidePredicate_6588_3213 (T@Field_6588_6589 T@FrameType T@Field_3213_6589 T@FrameType) Bool)
(declare-fun InsidePredicate_3213_6588 (T@Field_3213_6589 T@FrameType T@Field_6588_6589 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_3153) (Heap1 T@PolymorphicMapType_3153) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_3153) (Mask T@PolymorphicMapType_3174) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_3153) (Heap1@@0 T@PolymorphicMapType_3153) (Heap2 T@PolymorphicMapType_3153) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6601_6606) ) (!  (not (select (|PolymorphicMapType_3702_6588_13084#PolymorphicMapType_3702| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3702_6588_13084#PolymorphicMapType_3702| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6588_6589) ) (!  (not (select (|PolymorphicMapType_3702_6588_6589#PolymorphicMapType_3702| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3702_6588_6589#PolymorphicMapType_3702| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6588_1210) ) (!  (not (select (|PolymorphicMapType_3702_6588_1210#PolymorphicMapType_3702| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3702_6588_1210#PolymorphicMapType_3702| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6588_3227) ) (!  (not (select (|PolymorphicMapType_3702_6588_3227#PolymorphicMapType_3702| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3702_6588_3227#PolymorphicMapType_3702| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6588_53) ) (!  (not (select (|PolymorphicMapType_3702_6588_53#PolymorphicMapType_3702| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3702_6588_53#PolymorphicMapType_3702| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3213_6606) ) (!  (not (select (|PolymorphicMapType_3702_3213_12036#PolymorphicMapType_3702| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3702_3213_12036#PolymorphicMapType_3702| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3213_6589) ) (!  (not (select (|PolymorphicMapType_3702_3213_6589#PolymorphicMapType_3702| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3702_3213_6589#PolymorphicMapType_3702| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_6541_1210) ) (!  (not (select (|PolymorphicMapType_3702_3213_1210#PolymorphicMapType_3702| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3702_3213_1210#PolymorphicMapType_3702| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_3226_3227) ) (!  (not (select (|PolymorphicMapType_3702_3213_3227#PolymorphicMapType_3702| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3702_3213_3227#PolymorphicMapType_3702| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_3213_53) ) (!  (not (select (|PolymorphicMapType_3702_3213_53#PolymorphicMapType_3702| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_3702_3213_53#PolymorphicMapType_3702| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((xs T@Ref) ) (! (IsPredicateField_1836_1837 (isArray xs))
 :qid |stdinbpl.210:15|
 :skolemid |23|
 :pattern ( (isArray xs))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_3153) (xs@@0 T@Ref) ) (! (|isArray#everUsed_1836| (isArray xs@@0))
 :qid |stdinbpl.229:15|
 :skolemid |27|
 :pattern ( (|isArray#trigger_1836| Heap@@0 (isArray xs@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_3153) (ExhaleHeap T@PolymorphicMapType_3153) (Mask@@0 T@PolymorphicMapType_3174) (pm_f_2 T@Field_6588_6589) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6588_6589 Mask@@0 null pm_f_2) (IsPredicateField_1836_1837 pm_f_2)) (= (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@1) null (PredicateMaskField_1836 pm_f_2)) (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| ExhaleHeap) null (PredicateMaskField_1836 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_1836_1837 pm_f_2) (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| ExhaleHeap) null (PredicateMaskField_1836 pm_f_2)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_3153) (ExhaleHeap@@0 T@PolymorphicMapType_3153) (Mask@@1 T@PolymorphicMapType_3174) (pm_f_2@@0 T@Field_3213_6589) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3213_6589 Mask@@1 null pm_f_2@@0) (IsPredicateField_3213_10552 pm_f_2@@0)) (= (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@2) null (PredicateMaskField_3213 pm_f_2@@0)) (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| ExhaleHeap@@0) null (PredicateMaskField_3213 pm_f_2@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3213_10552 pm_f_2@@0) (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| ExhaleHeap@@0) null (PredicateMaskField_3213 pm_f_2@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_3153) (ExhaleHeap@@1 T@PolymorphicMapType_3153) (Mask@@2 T@PolymorphicMapType_3174) (pm_f_2@@1 T@Field_6588_6589) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6588_6589 Mask@@2 null pm_f_2@@1) (IsWandField_6588_14249 pm_f_2@@1)) (= (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@3) null (WandMaskField_6588 pm_f_2@@1)) (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| ExhaleHeap@@1) null (WandMaskField_6588 pm_f_2@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_6588_14249 pm_f_2@@1) (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| ExhaleHeap@@1) null (WandMaskField_6588 pm_f_2@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_3153) (ExhaleHeap@@2 T@PolymorphicMapType_3153) (Mask@@3 T@PolymorphicMapType_3174) (pm_f_2@@2 T@Field_3213_6589) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3213_6589 Mask@@3 null pm_f_2@@2) (IsWandField_3213_13892 pm_f_2@@2)) (= (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@4) null (WandMaskField_3213 pm_f_2@@2)) (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| ExhaleHeap@@2) null (WandMaskField_3213 pm_f_2@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_3213_13892 pm_f_2@@2) (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| ExhaleHeap@@2) null (WandMaskField_3213 pm_f_2@@2)))
)))
(assert (forall ((xs@@1 T@Ref) (xs2 T@Ref) ) (!  (=> (= (isArray xs@@1) (isArray xs2)) (= xs@@1 xs2))
 :qid |stdinbpl.220:15|
 :skolemid |25|
 :pattern ( (isArray xs@@1) (isArray xs2))
)))
(assert (forall ((xs@@2 T@Ref) (xs2@@0 T@Ref) ) (!  (=> (= (|isArray#sm| xs@@2) (|isArray#sm| xs2@@0)) (= xs@@2 xs2@@0))
 :qid |stdinbpl.224:15|
 :skolemid |26|
 :pattern ( (|isArray#sm| xs@@2) (|isArray#sm| xs2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_3153) (ExhaleHeap@@3 T@PolymorphicMapType_3153) (Mask@@4 T@PolymorphicMapType_3174) (pm_f_2@@3 T@Field_6588_6589) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6588_6589 Mask@@4 null pm_f_2@@3) (IsPredicateField_1836_1837 pm_f_2@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_3213_53) ) (!  (=> (select (|PolymorphicMapType_3702_3213_53#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@5) null (PredicateMaskField_1836 pm_f_2@@3))) o2_2 f_9) (= (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@5) o2_2 f_9) (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_3226_3227) ) (!  (=> (select (|PolymorphicMapType_3702_3213_3227#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@5) null (PredicateMaskField_1836 pm_f_2@@3))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@5) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_6541_1210) ) (!  (=> (select (|PolymorphicMapType_3702_3213_1210#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@5) null (PredicateMaskField_1836 pm_f_2@@3))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@5) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_3213_6589) ) (!  (=> (select (|PolymorphicMapType_3702_3213_6589#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@5) null (PredicateMaskField_1836 pm_f_2@@3))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@5) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@2 f_9@@2))
))) (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_3213_6606) ) (!  (=> (select (|PolymorphicMapType_3702_3213_12036#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@5) null (PredicateMaskField_1836 pm_f_2@@3))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@5) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@3 f_9@@3))
))) (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_6588_53) ) (!  (=> (select (|PolymorphicMapType_3702_6588_53#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@5) null (PredicateMaskField_1836 pm_f_2@@3))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@5) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@4 f_9@@4))
))) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_6588_3227) ) (!  (=> (select (|PolymorphicMapType_3702_6588_3227#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@5) null (PredicateMaskField_1836 pm_f_2@@3))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@5) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_6588_1210) ) (!  (=> (select (|PolymorphicMapType_3702_6588_1210#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@5) null (PredicateMaskField_1836 pm_f_2@@3))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@5) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@6 f_9@@6))
))) (forall ((o2_2@@7 T@Ref) (f_9@@7 T@Field_6588_6589) ) (!  (=> (select (|PolymorphicMapType_3702_6588_6589#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@5) null (PredicateMaskField_1836 pm_f_2@@3))) o2_2@@7 f_9@@7) (= (select (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@5) o2_2@@7 f_9@@7) (select (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@7 f_9@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@7 f_9@@7))
))) (forall ((o2_2@@8 T@Ref) (f_9@@8 T@Field_6601_6606) ) (!  (=> (select (|PolymorphicMapType_3702_6588_13084#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@5) null (PredicateMaskField_1836 pm_f_2@@3))) o2_2@@8 f_9@@8) (= (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@5) o2_2@@8 f_9@@8) (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@8 f_9@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| ExhaleHeap@@3) o2_2@@8 f_9@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_1836_1837 pm_f_2@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_3153) (ExhaleHeap@@4 T@PolymorphicMapType_3153) (Mask@@5 T@PolymorphicMapType_3174) (pm_f_2@@4 T@Field_3213_6589) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3213_6589 Mask@@5 null pm_f_2@@4) (IsPredicateField_3213_10552 pm_f_2@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_2@@9 T@Ref) (f_9@@9 T@Field_3213_53) ) (!  (=> (select (|PolymorphicMapType_3702_3213_53#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@6) null (PredicateMaskField_3213 pm_f_2@@4))) o2_2@@9 f_9@@9) (= (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@6) o2_2@@9 f_9@@9) (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@9 f_9@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@9 f_9@@9))
)) (forall ((o2_2@@10 T@Ref) (f_9@@10 T@Field_3226_3227) ) (!  (=> (select (|PolymorphicMapType_3702_3213_3227#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@6) null (PredicateMaskField_3213 pm_f_2@@4))) o2_2@@10 f_9@@10) (= (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@6) o2_2@@10 f_9@@10) (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@10 f_9@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@10 f_9@@10))
))) (forall ((o2_2@@11 T@Ref) (f_9@@11 T@Field_6541_1210) ) (!  (=> (select (|PolymorphicMapType_3702_3213_1210#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@6) null (PredicateMaskField_3213 pm_f_2@@4))) o2_2@@11 f_9@@11) (= (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@6) o2_2@@11 f_9@@11) (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@11 f_9@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@11 f_9@@11))
))) (forall ((o2_2@@12 T@Ref) (f_9@@12 T@Field_3213_6589) ) (!  (=> (select (|PolymorphicMapType_3702_3213_6589#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@6) null (PredicateMaskField_3213 pm_f_2@@4))) o2_2@@12 f_9@@12) (= (select (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@6) o2_2@@12 f_9@@12) (select (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@12 f_9@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@12 f_9@@12))
))) (forall ((o2_2@@13 T@Ref) (f_9@@13 T@Field_3213_6606) ) (!  (=> (select (|PolymorphicMapType_3702_3213_12036#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@6) null (PredicateMaskField_3213 pm_f_2@@4))) o2_2@@13 f_9@@13) (= (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@6) o2_2@@13 f_9@@13) (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@13 f_9@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@13 f_9@@13))
))) (forall ((o2_2@@14 T@Ref) (f_9@@14 T@Field_6588_53) ) (!  (=> (select (|PolymorphicMapType_3702_6588_53#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@6) null (PredicateMaskField_3213 pm_f_2@@4))) o2_2@@14 f_9@@14) (= (select (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@6) o2_2@@14 f_9@@14) (select (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@14 f_9@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@14 f_9@@14))
))) (forall ((o2_2@@15 T@Ref) (f_9@@15 T@Field_6588_3227) ) (!  (=> (select (|PolymorphicMapType_3702_6588_3227#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@6) null (PredicateMaskField_3213 pm_f_2@@4))) o2_2@@15 f_9@@15) (= (select (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@6) o2_2@@15 f_9@@15) (select (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@15 f_9@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@15 f_9@@15))
))) (forall ((o2_2@@16 T@Ref) (f_9@@16 T@Field_6588_1210) ) (!  (=> (select (|PolymorphicMapType_3702_6588_1210#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@6) null (PredicateMaskField_3213 pm_f_2@@4))) o2_2@@16 f_9@@16) (= (select (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@6) o2_2@@16 f_9@@16) (select (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@16 f_9@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@16 f_9@@16))
))) (forall ((o2_2@@17 T@Ref) (f_9@@17 T@Field_6588_6589) ) (!  (=> (select (|PolymorphicMapType_3702_6588_6589#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@6) null (PredicateMaskField_3213 pm_f_2@@4))) o2_2@@17 f_9@@17) (= (select (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@6) o2_2@@17 f_9@@17) (select (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@17 f_9@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@17 f_9@@17))
))) (forall ((o2_2@@18 T@Ref) (f_9@@18 T@Field_6601_6606) ) (!  (=> (select (|PolymorphicMapType_3702_6588_13084#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@6) null (PredicateMaskField_3213 pm_f_2@@4))) o2_2@@18 f_9@@18) (= (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@6) o2_2@@18 f_9@@18) (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@18 f_9@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| ExhaleHeap@@4) o2_2@@18 f_9@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3213_10552 pm_f_2@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_3153) (ExhaleHeap@@5 T@PolymorphicMapType_3153) (Mask@@6 T@PolymorphicMapType_3174) (pm_f_2@@5 T@Field_6588_6589) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_6588_6589 Mask@@6 null pm_f_2@@5) (IsWandField_6588_14249 pm_f_2@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_2@@19 T@Ref) (f_9@@19 T@Field_3213_53) ) (!  (=> (select (|PolymorphicMapType_3702_3213_53#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@7) null (WandMaskField_6588 pm_f_2@@5))) o2_2@@19 f_9@@19) (= (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@7) o2_2@@19 f_9@@19) (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@19 f_9@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@19 f_9@@19))
)) (forall ((o2_2@@20 T@Ref) (f_9@@20 T@Field_3226_3227) ) (!  (=> (select (|PolymorphicMapType_3702_3213_3227#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@7) null (WandMaskField_6588 pm_f_2@@5))) o2_2@@20 f_9@@20) (= (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@7) o2_2@@20 f_9@@20) (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@20 f_9@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@20 f_9@@20))
))) (forall ((o2_2@@21 T@Ref) (f_9@@21 T@Field_6541_1210) ) (!  (=> (select (|PolymorphicMapType_3702_3213_1210#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@7) null (WandMaskField_6588 pm_f_2@@5))) o2_2@@21 f_9@@21) (= (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@7) o2_2@@21 f_9@@21) (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@21 f_9@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@21 f_9@@21))
))) (forall ((o2_2@@22 T@Ref) (f_9@@22 T@Field_3213_6589) ) (!  (=> (select (|PolymorphicMapType_3702_3213_6589#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@7) null (WandMaskField_6588 pm_f_2@@5))) o2_2@@22 f_9@@22) (= (select (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@7) o2_2@@22 f_9@@22) (select (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@22 f_9@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@22 f_9@@22))
))) (forall ((o2_2@@23 T@Ref) (f_9@@23 T@Field_3213_6606) ) (!  (=> (select (|PolymorphicMapType_3702_3213_12036#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@7) null (WandMaskField_6588 pm_f_2@@5))) o2_2@@23 f_9@@23) (= (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@7) o2_2@@23 f_9@@23) (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@23 f_9@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@23 f_9@@23))
))) (forall ((o2_2@@24 T@Ref) (f_9@@24 T@Field_6588_53) ) (!  (=> (select (|PolymorphicMapType_3702_6588_53#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@7) null (WandMaskField_6588 pm_f_2@@5))) o2_2@@24 f_9@@24) (= (select (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@7) o2_2@@24 f_9@@24) (select (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@24 f_9@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@24 f_9@@24))
))) (forall ((o2_2@@25 T@Ref) (f_9@@25 T@Field_6588_3227) ) (!  (=> (select (|PolymorphicMapType_3702_6588_3227#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@7) null (WandMaskField_6588 pm_f_2@@5))) o2_2@@25 f_9@@25) (= (select (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@7) o2_2@@25 f_9@@25) (select (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@25 f_9@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@25 f_9@@25))
))) (forall ((o2_2@@26 T@Ref) (f_9@@26 T@Field_6588_1210) ) (!  (=> (select (|PolymorphicMapType_3702_6588_1210#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@7) null (WandMaskField_6588 pm_f_2@@5))) o2_2@@26 f_9@@26) (= (select (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@7) o2_2@@26 f_9@@26) (select (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@26 f_9@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@26 f_9@@26))
))) (forall ((o2_2@@27 T@Ref) (f_9@@27 T@Field_6588_6589) ) (!  (=> (select (|PolymorphicMapType_3702_6588_6589#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@7) null (WandMaskField_6588 pm_f_2@@5))) o2_2@@27 f_9@@27) (= (select (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@7) o2_2@@27 f_9@@27) (select (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@27 f_9@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@27 f_9@@27))
))) (forall ((o2_2@@28 T@Ref) (f_9@@28 T@Field_6601_6606) ) (!  (=> (select (|PolymorphicMapType_3702_6588_13084#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@7) null (WandMaskField_6588 pm_f_2@@5))) o2_2@@28 f_9@@28) (= (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@7) o2_2@@28 f_9@@28) (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@28 f_9@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| ExhaleHeap@@5) o2_2@@28 f_9@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_6588_14249 pm_f_2@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_3153) (ExhaleHeap@@6 T@PolymorphicMapType_3153) (Mask@@7 T@PolymorphicMapType_3174) (pm_f_2@@6 T@Field_3213_6589) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3213_6589 Mask@@7 null pm_f_2@@6) (IsWandField_3213_13892 pm_f_2@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_2@@29 T@Ref) (f_9@@29 T@Field_3213_53) ) (!  (=> (select (|PolymorphicMapType_3702_3213_53#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@8) null (WandMaskField_3213 pm_f_2@@6))) o2_2@@29 f_9@@29) (= (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@8) o2_2@@29 f_9@@29) (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@29 f_9@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@29 f_9@@29))
)) (forall ((o2_2@@30 T@Ref) (f_9@@30 T@Field_3226_3227) ) (!  (=> (select (|PolymorphicMapType_3702_3213_3227#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@8) null (WandMaskField_3213 pm_f_2@@6))) o2_2@@30 f_9@@30) (= (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@8) o2_2@@30 f_9@@30) (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@30 f_9@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@30 f_9@@30))
))) (forall ((o2_2@@31 T@Ref) (f_9@@31 T@Field_6541_1210) ) (!  (=> (select (|PolymorphicMapType_3702_3213_1210#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@8) null (WandMaskField_3213 pm_f_2@@6))) o2_2@@31 f_9@@31) (= (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@8) o2_2@@31 f_9@@31) (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@31 f_9@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@31 f_9@@31))
))) (forall ((o2_2@@32 T@Ref) (f_9@@32 T@Field_3213_6589) ) (!  (=> (select (|PolymorphicMapType_3702_3213_6589#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@8) null (WandMaskField_3213 pm_f_2@@6))) o2_2@@32 f_9@@32) (= (select (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@8) o2_2@@32 f_9@@32) (select (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@32 f_9@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@32 f_9@@32))
))) (forall ((o2_2@@33 T@Ref) (f_9@@33 T@Field_3213_6606) ) (!  (=> (select (|PolymorphicMapType_3702_3213_12036#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@8) null (WandMaskField_3213 pm_f_2@@6))) o2_2@@33 f_9@@33) (= (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@8) o2_2@@33 f_9@@33) (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@33 f_9@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@33 f_9@@33))
))) (forall ((o2_2@@34 T@Ref) (f_9@@34 T@Field_6588_53) ) (!  (=> (select (|PolymorphicMapType_3702_6588_53#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@8) null (WandMaskField_3213 pm_f_2@@6))) o2_2@@34 f_9@@34) (= (select (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@8) o2_2@@34 f_9@@34) (select (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@34 f_9@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@34 f_9@@34))
))) (forall ((o2_2@@35 T@Ref) (f_9@@35 T@Field_6588_3227) ) (!  (=> (select (|PolymorphicMapType_3702_6588_3227#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@8) null (WandMaskField_3213 pm_f_2@@6))) o2_2@@35 f_9@@35) (= (select (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@8) o2_2@@35 f_9@@35) (select (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@35 f_9@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@35 f_9@@35))
))) (forall ((o2_2@@36 T@Ref) (f_9@@36 T@Field_6588_1210) ) (!  (=> (select (|PolymorphicMapType_3702_6588_1210#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@8) null (WandMaskField_3213 pm_f_2@@6))) o2_2@@36 f_9@@36) (= (select (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@8) o2_2@@36 f_9@@36) (select (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@36 f_9@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@36 f_9@@36))
))) (forall ((o2_2@@37 T@Ref) (f_9@@37 T@Field_6588_6589) ) (!  (=> (select (|PolymorphicMapType_3702_6588_6589#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@8) null (WandMaskField_3213 pm_f_2@@6))) o2_2@@37 f_9@@37) (= (select (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@8) o2_2@@37 f_9@@37) (select (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@37 f_9@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@37 f_9@@37))
))) (forall ((o2_2@@38 T@Ref) (f_9@@38 T@Field_6601_6606) ) (!  (=> (select (|PolymorphicMapType_3702_6588_13084#PolymorphicMapType_3702| (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@8) null (WandMaskField_3213 pm_f_2@@6))) o2_2@@38 f_9@@38) (= (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@8) o2_2@@38 f_9@@38) (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@38 f_9@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| ExhaleHeap@@6) o2_2@@38 f_9@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_3213_13892 pm_f_2@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_3153) (ExhaleHeap@@7 T@PolymorphicMapType_3153) (Mask@@8 T@PolymorphicMapType_3174) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@9) o_6 $allocated) (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| ExhaleHeap@@7) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| ExhaleHeap@@7) o_6 $allocated))
)))
(assert (forall ((p T@Field_6588_6589) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6588_6588 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6588_6588 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_3213_6589) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3213_3213 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3213_3213 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_1833_1210 val)))
(assert  (not (IsWandField_1833_1210 val)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_3153) (ExhaleHeap@@8 T@PolymorphicMapType_3153) (Mask@@9 T@PolymorphicMapType_3174) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_3174) (o_2@@9 T@Ref) (f_4@@9 T@Field_6601_6606) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_3174_6588_18904#PolymorphicMapType_3174| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6588_21196 f_4@@9))) (not (IsWandField_6588_21212 f_4@@9))) (<= (select (|PolymorphicMapType_3174_6588_18904#PolymorphicMapType_3174| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_3174_6588_18904#PolymorphicMapType_3174| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_3174) (o_2@@10 T@Ref) (f_4@@10 T@Field_6588_6589) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_3174_6588_6589#PolymorphicMapType_3174| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_1836_1837 f_4@@10))) (not (IsWandField_6588_14249 f_4@@10))) (<= (select (|PolymorphicMapType_3174_6588_6589#PolymorphicMapType_3174| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_3174_6588_6589#PolymorphicMapType_3174| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_3174) (o_2@@11 T@Ref) (f_4@@11 T@Field_6588_3227) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_3174_6588_3227#PolymorphicMapType_3174| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6588_3227 f_4@@11))) (not (IsWandField_6588_3227 f_4@@11))) (<= (select (|PolymorphicMapType_3174_6588_3227#PolymorphicMapType_3174| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_3174_6588_3227#PolymorphicMapType_3174| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_3174) (o_2@@12 T@Ref) (f_4@@12 T@Field_6588_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_3174_6588_53#PolymorphicMapType_3174| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6588_53 f_4@@12))) (not (IsWandField_6588_53 f_4@@12))) (<= (select (|PolymorphicMapType_3174_6588_53#PolymorphicMapType_3174| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_3174_6588_53#PolymorphicMapType_3174| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_3174) (o_2@@13 T@Ref) (f_4@@13 T@Field_6588_1210) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_3174_6588_1210#PolymorphicMapType_3174| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6588_1210 f_4@@13))) (not (IsWandField_6588_1210 f_4@@13))) (<= (select (|PolymorphicMapType_3174_6588_1210#PolymorphicMapType_3174| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_3174_6588_1210#PolymorphicMapType_3174| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_3174) (o_2@@14 T@Ref) (f_4@@14 T@Field_3213_6606) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_3174_1833_18478#PolymorphicMapType_3174| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_1833_20365 f_4@@14))) (not (IsWandField_1833_20381 f_4@@14))) (<= (select (|PolymorphicMapType_3174_1833_18478#PolymorphicMapType_3174| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_3174_1833_18478#PolymorphicMapType_3174| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_3174) (o_2@@15 T@Ref) (f_4@@15 T@Field_3213_6589) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_3174_1833_6589#PolymorphicMapType_3174| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3213_10552 f_4@@15))) (not (IsWandField_3213_13892 f_4@@15))) (<= (select (|PolymorphicMapType_3174_1833_6589#PolymorphicMapType_3174| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_3174_1833_6589#PolymorphicMapType_3174| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_3174) (o_2@@16 T@Ref) (f_4@@16 T@Field_3226_3227) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_3174_1833_3227#PolymorphicMapType_3174| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_1833_3227 f_4@@16))) (not (IsWandField_1833_3227 f_4@@16))) (<= (select (|PolymorphicMapType_3174_1833_3227#PolymorphicMapType_3174| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_3174_1833_3227#PolymorphicMapType_3174| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_3174) (o_2@@17 T@Ref) (f_4@@17 T@Field_3213_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_3174_1833_53#PolymorphicMapType_3174| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_1833_53 f_4@@17))) (not (IsWandField_1833_53 f_4@@17))) (<= (select (|PolymorphicMapType_3174_1833_53#PolymorphicMapType_3174| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_3174_1833_53#PolymorphicMapType_3174| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_3174) (o_2@@18 T@Ref) (f_4@@18 T@Field_6541_1210) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_3174_1833_1210#PolymorphicMapType_3174| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_1833_1210 f_4@@18))) (not (IsWandField_1833_1210 f_4@@18))) (<= (select (|PolymorphicMapType_3174_1833_1210#PolymorphicMapType_3174| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_3174_1833_1210#PolymorphicMapType_3174| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_3174) (o_2@@19 T@Ref) (f_4@@19 T@Field_6601_6606) ) (! (= (HasDirectPerm_6588_10264 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_3174_6588_18904#PolymorphicMapType_3174| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6588_10264 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_3174) (o_2@@20 T@Ref) (f_4@@20 T@Field_6588_6589) ) (! (= (HasDirectPerm_6588_6589 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_3174_6588_6589#PolymorphicMapType_3174| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6588_6589 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_3174) (o_2@@21 T@Ref) (f_4@@21 T@Field_6588_1210) ) (! (= (HasDirectPerm_6588_1210 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_3174_6588_1210#PolymorphicMapType_3174| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6588_1210 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_3174) (o_2@@22 T@Ref) (f_4@@22 T@Field_6588_3227) ) (! (= (HasDirectPerm_6588_3227 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_3174_6588_3227#PolymorphicMapType_3174| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6588_3227 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_3174) (o_2@@23 T@Ref) (f_4@@23 T@Field_6588_53) ) (! (= (HasDirectPerm_6588_53 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_3174_6588_53#PolymorphicMapType_3174| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6588_53 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_3174) (o_2@@24 T@Ref) (f_4@@24 T@Field_3213_6606) ) (! (= (HasDirectPerm_3213_9086 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_3174_1833_18478#PolymorphicMapType_3174| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3213_9086 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_3174) (o_2@@25 T@Ref) (f_4@@25 T@Field_3213_6589) ) (! (= (HasDirectPerm_3213_6589 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_3174_1833_6589#PolymorphicMapType_3174| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3213_6589 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_3174) (o_2@@26 T@Ref) (f_4@@26 T@Field_6541_1210) ) (! (= (HasDirectPerm_3213_1210 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_3174_1833_1210#PolymorphicMapType_3174| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3213_1210 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_3174) (o_2@@27 T@Ref) (f_4@@27 T@Field_3226_3227) ) (! (= (HasDirectPerm_3213_3227 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_3174_1833_3227#PolymorphicMapType_3174| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3213_3227 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_3174) (o_2@@28 T@Ref) (f_4@@28 T@Field_3213_53) ) (! (= (HasDirectPerm_3213_53 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_3174_1833_53#PolymorphicMapType_3174| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3213_53 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_3153) (ExhaleHeap@@9 T@PolymorphicMapType_3153) (Mask@@30 T@PolymorphicMapType_3174) (o_6@@0 T@Ref) (f_9@@39 T@Field_6601_6606) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_6588_10264 Mask@@30 o_6@@0 f_9@@39) (= (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@11) o_6@@0 f_9@@39) (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| ExhaleHeap@@9) o_6@@0 f_9@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| ExhaleHeap@@9) o_6@@0 f_9@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_3153) (ExhaleHeap@@10 T@PolymorphicMapType_3153) (Mask@@31 T@PolymorphicMapType_3174) (o_6@@1 T@Ref) (f_9@@40 T@Field_6588_6589) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_6588_6589 Mask@@31 o_6@@1 f_9@@40) (= (select (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@12) o_6@@1 f_9@@40) (select (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| ExhaleHeap@@10) o_6@@1 f_9@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| ExhaleHeap@@10) o_6@@1 f_9@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_3153) (ExhaleHeap@@11 T@PolymorphicMapType_3153) (Mask@@32 T@PolymorphicMapType_3174) (o_6@@2 T@Ref) (f_9@@41 T@Field_6588_1210) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_6588_1210 Mask@@32 o_6@@2 f_9@@41) (= (select (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@13) o_6@@2 f_9@@41) (select (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| ExhaleHeap@@11) o_6@@2 f_9@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| ExhaleHeap@@11) o_6@@2 f_9@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_3153) (ExhaleHeap@@12 T@PolymorphicMapType_3153) (Mask@@33 T@PolymorphicMapType_3174) (o_6@@3 T@Ref) (f_9@@42 T@Field_6588_3227) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_6588_3227 Mask@@33 o_6@@3 f_9@@42) (= (select (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@14) o_6@@3 f_9@@42) (select (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| ExhaleHeap@@12) o_6@@3 f_9@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| ExhaleHeap@@12) o_6@@3 f_9@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_3153) (ExhaleHeap@@13 T@PolymorphicMapType_3153) (Mask@@34 T@PolymorphicMapType_3174) (o_6@@4 T@Ref) (f_9@@43 T@Field_6588_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_6588_53 Mask@@34 o_6@@4 f_9@@43) (= (select (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@15) o_6@@4 f_9@@43) (select (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| ExhaleHeap@@13) o_6@@4 f_9@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| ExhaleHeap@@13) o_6@@4 f_9@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_3153) (ExhaleHeap@@14 T@PolymorphicMapType_3153) (Mask@@35 T@PolymorphicMapType_3174) (o_6@@5 T@Ref) (f_9@@44 T@Field_3213_6606) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_3213_9086 Mask@@35 o_6@@5 f_9@@44) (= (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@16) o_6@@5 f_9@@44) (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| ExhaleHeap@@14) o_6@@5 f_9@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| ExhaleHeap@@14) o_6@@5 f_9@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_3153) (ExhaleHeap@@15 T@PolymorphicMapType_3153) (Mask@@36 T@PolymorphicMapType_3174) (o_6@@6 T@Ref) (f_9@@45 T@Field_3213_6589) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_3213_6589 Mask@@36 o_6@@6 f_9@@45) (= (select (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@17) o_6@@6 f_9@@45) (select (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| ExhaleHeap@@15) o_6@@6 f_9@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| ExhaleHeap@@15) o_6@@6 f_9@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_3153) (ExhaleHeap@@16 T@PolymorphicMapType_3153) (Mask@@37 T@PolymorphicMapType_3174) (o_6@@7 T@Ref) (f_9@@46 T@Field_6541_1210) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_3213_1210 Mask@@37 o_6@@7 f_9@@46) (= (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@18) o_6@@7 f_9@@46) (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| ExhaleHeap@@16) o_6@@7 f_9@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| ExhaleHeap@@16) o_6@@7 f_9@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_3153) (ExhaleHeap@@17 T@PolymorphicMapType_3153) (Mask@@38 T@PolymorphicMapType_3174) (o_6@@8 T@Ref) (f_9@@47 T@Field_3226_3227) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_3213_3227 Mask@@38 o_6@@8 f_9@@47) (= (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@19) o_6@@8 f_9@@47) (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| ExhaleHeap@@17) o_6@@8 f_9@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| ExhaleHeap@@17) o_6@@8 f_9@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_3153) (ExhaleHeap@@18 T@PolymorphicMapType_3153) (Mask@@39 T@PolymorphicMapType_3174) (o_6@@9 T@Ref) (f_9@@48 T@Field_3213_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_3213_53 Mask@@39 o_6@@9 f_9@@48) (= (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@20) o_6@@9 f_9@@48) (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| ExhaleHeap@@18) o_6@@9 f_9@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| ExhaleHeap@@18) o_6@@9 f_9@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_6601_6606) ) (! (= (select (|PolymorphicMapType_3174_6588_18904#PolymorphicMapType_3174| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3174_6588_18904#PolymorphicMapType_3174| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_6588_6589) ) (! (= (select (|PolymorphicMapType_3174_6588_6589#PolymorphicMapType_3174| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3174_6588_6589#PolymorphicMapType_3174| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_6588_3227) ) (! (= (select (|PolymorphicMapType_3174_6588_3227#PolymorphicMapType_3174| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3174_6588_3227#PolymorphicMapType_3174| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_6588_53) ) (! (= (select (|PolymorphicMapType_3174_6588_53#PolymorphicMapType_3174| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3174_6588_53#PolymorphicMapType_3174| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_6588_1210) ) (! (= (select (|PolymorphicMapType_3174_6588_1210#PolymorphicMapType_3174| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3174_6588_1210#PolymorphicMapType_3174| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_3213_6606) ) (! (= (select (|PolymorphicMapType_3174_1833_18478#PolymorphicMapType_3174| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3174_1833_18478#PolymorphicMapType_3174| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_3213_6589) ) (! (= (select (|PolymorphicMapType_3174_1833_6589#PolymorphicMapType_3174| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3174_1833_6589#PolymorphicMapType_3174| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_3226_3227) ) (! (= (select (|PolymorphicMapType_3174_1833_3227#PolymorphicMapType_3174| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3174_1833_3227#PolymorphicMapType_3174| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_3213_53) ) (! (= (select (|PolymorphicMapType_3174_1833_53#PolymorphicMapType_3174| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3174_1833_53#PolymorphicMapType_3174| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_6541_1210) ) (! (= (select (|PolymorphicMapType_3174_1833_1210#PolymorphicMapType_3174| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_3174_1833_1210#PolymorphicMapType_3174| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_3174) (SummandMask1 T@PolymorphicMapType_3174) (SummandMask2 T@PolymorphicMapType_3174) (o_2@@39 T@Ref) (f_4@@39 T@Field_6601_6606) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_3174_6588_18904#PolymorphicMapType_3174| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_3174_6588_18904#PolymorphicMapType_3174| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_3174_6588_18904#PolymorphicMapType_3174| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3174_6588_18904#PolymorphicMapType_3174| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3174_6588_18904#PolymorphicMapType_3174| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_3174_6588_18904#PolymorphicMapType_3174| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_3174) (SummandMask1@@0 T@PolymorphicMapType_3174) (SummandMask2@@0 T@PolymorphicMapType_3174) (o_2@@40 T@Ref) (f_4@@40 T@Field_6588_6589) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_3174_6588_6589#PolymorphicMapType_3174| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_3174_6588_6589#PolymorphicMapType_3174| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_3174_6588_6589#PolymorphicMapType_3174| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3174_6588_6589#PolymorphicMapType_3174| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3174_6588_6589#PolymorphicMapType_3174| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_3174_6588_6589#PolymorphicMapType_3174| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_3174) (SummandMask1@@1 T@PolymorphicMapType_3174) (SummandMask2@@1 T@PolymorphicMapType_3174) (o_2@@41 T@Ref) (f_4@@41 T@Field_6588_3227) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_3174_6588_3227#PolymorphicMapType_3174| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_3174_6588_3227#PolymorphicMapType_3174| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_3174_6588_3227#PolymorphicMapType_3174| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3174_6588_3227#PolymorphicMapType_3174| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3174_6588_3227#PolymorphicMapType_3174| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_3174_6588_3227#PolymorphicMapType_3174| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_3174) (SummandMask1@@2 T@PolymorphicMapType_3174) (SummandMask2@@2 T@PolymorphicMapType_3174) (o_2@@42 T@Ref) (f_4@@42 T@Field_6588_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_3174_6588_53#PolymorphicMapType_3174| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_3174_6588_53#PolymorphicMapType_3174| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_3174_6588_53#PolymorphicMapType_3174| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3174_6588_53#PolymorphicMapType_3174| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3174_6588_53#PolymorphicMapType_3174| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_3174_6588_53#PolymorphicMapType_3174| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_3174) (SummandMask1@@3 T@PolymorphicMapType_3174) (SummandMask2@@3 T@PolymorphicMapType_3174) (o_2@@43 T@Ref) (f_4@@43 T@Field_6588_1210) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_3174_6588_1210#PolymorphicMapType_3174| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_3174_6588_1210#PolymorphicMapType_3174| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_3174_6588_1210#PolymorphicMapType_3174| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3174_6588_1210#PolymorphicMapType_3174| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3174_6588_1210#PolymorphicMapType_3174| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_3174_6588_1210#PolymorphicMapType_3174| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_3174) (SummandMask1@@4 T@PolymorphicMapType_3174) (SummandMask2@@4 T@PolymorphicMapType_3174) (o_2@@44 T@Ref) (f_4@@44 T@Field_3213_6606) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_3174_1833_18478#PolymorphicMapType_3174| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_3174_1833_18478#PolymorphicMapType_3174| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_3174_1833_18478#PolymorphicMapType_3174| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3174_1833_18478#PolymorphicMapType_3174| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3174_1833_18478#PolymorphicMapType_3174| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_3174_1833_18478#PolymorphicMapType_3174| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_3174) (SummandMask1@@5 T@PolymorphicMapType_3174) (SummandMask2@@5 T@PolymorphicMapType_3174) (o_2@@45 T@Ref) (f_4@@45 T@Field_3213_6589) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_3174_1833_6589#PolymorphicMapType_3174| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_3174_1833_6589#PolymorphicMapType_3174| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_3174_1833_6589#PolymorphicMapType_3174| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3174_1833_6589#PolymorphicMapType_3174| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3174_1833_6589#PolymorphicMapType_3174| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_3174_1833_6589#PolymorphicMapType_3174| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_3174) (SummandMask1@@6 T@PolymorphicMapType_3174) (SummandMask2@@6 T@PolymorphicMapType_3174) (o_2@@46 T@Ref) (f_4@@46 T@Field_3226_3227) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_3174_1833_3227#PolymorphicMapType_3174| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_3174_1833_3227#PolymorphicMapType_3174| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_3174_1833_3227#PolymorphicMapType_3174| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3174_1833_3227#PolymorphicMapType_3174| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3174_1833_3227#PolymorphicMapType_3174| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_3174_1833_3227#PolymorphicMapType_3174| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_3174) (SummandMask1@@7 T@PolymorphicMapType_3174) (SummandMask2@@7 T@PolymorphicMapType_3174) (o_2@@47 T@Ref) (f_4@@47 T@Field_3213_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_3174_1833_53#PolymorphicMapType_3174| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_3174_1833_53#PolymorphicMapType_3174| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_3174_1833_53#PolymorphicMapType_3174| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_3174_1833_53#PolymorphicMapType_3174| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_3174_1833_53#PolymorphicMapType_3174| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_3174_1833_53#PolymorphicMapType_3174| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_3174) (SummandMask1@@8 T@PolymorphicMapType_3174) (SummandMask2@@8 T@PolymorphicMapType_3174) (o_2@@48 T@Ref) (f_4@@48 T@Field_6541_1210) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_3174_1833_1210#PolymorphicMapType_3174| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_3174_1833_1210#PolymorphicMapType_3174| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_3174_1833_1210#PolymorphicMapType_3174| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_3174_1833_1210#PolymorphicMapType_3174| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_3174_1833_1210#PolymorphicMapType_3174| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_3174_1833_1210#PolymorphicMapType_3174| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((xs@@3 T@Ref) ) (! (= (getPredWandId_1836_1837 (isArray xs@@3)) 0)
 :qid |stdinbpl.214:15|
 :skolemid |24|
 :pattern ( (isArray xs@@3))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_3153) (Heap1Heap T@PolymorphicMapType_3153) (xs@@4 T@Ref) ) (!  (=> (and (= (< NoPerm FullPerm) (< NoPerm FullPerm)) (=> (< NoPerm FullPerm) (= (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap2Heap) xs@@4 val) (select (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap1Heap) xs@@4 val)))) (= (|isArray#condqp1| Heap2Heap xs@@4) (|isArray#condqp1| Heap1Heap xs@@4)))
 :qid |stdinbpl.240:15|
 :skolemid |28|
 :pattern ( (|isArray#condqp1| Heap2Heap xs@@4) (|isArray#condqp1| Heap1Heap xs@@4) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_3153) (o_5 T@Ref) (f_10 T@Field_6601_6606) (v T@PolymorphicMapType_3702) ) (! (succHeap Heap@@21 (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@21) (store (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@21) o_5 f_10 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@21) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@21) (store (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@21) o_5 f_10 v)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_3153) (o_5@@0 T@Ref) (f_10@@0 T@Field_6588_6589) (v@@0 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@22) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@22) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@22) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@22) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@22) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@22) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@22) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@22) (store (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@22) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@22) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@22) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@22) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@22) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@22) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@22) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@22) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@22) (store (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@22) o_5@@0 f_10@@0 v@@0) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_3153) (o_5@@1 T@Ref) (f_10@@1 T@Field_6588_1210) (v@@1 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@23) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@23) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@23) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@23) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@23) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@23) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@23) (store (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@23) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@23) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@23) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@23) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@23) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@23) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@23) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@23) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@23) (store (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@23) o_5@@1 f_10@@1 v@@1) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@23) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_3153) (o_5@@2 T@Ref) (f_10@@2 T@Field_6588_3227) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@24) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@24) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@24) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@24) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@24) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@24) (store (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@24) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@24) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@24) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@24) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@24) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@24) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@24) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@24) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@24) (store (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@24) o_5@@2 f_10@@2 v@@2) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@24) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@24) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_3153) (o_5@@3 T@Ref) (f_10@@3 T@Field_6588_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@25) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@25) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@25) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@25) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@25) (store (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@25) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@25) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@25) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@25) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@25) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@25) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@25) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@25) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@25) (store (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@25) o_5@@3 f_10@@3 v@@3) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@25) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@25) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@25) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_3153) (o_5@@4 T@Ref) (f_10@@4 T@Field_3213_6606) (v@@4 T@PolymorphicMapType_3702) ) (! (succHeap Heap@@26 (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@26) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@26) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@26) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@26) (store (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@26) o_5@@4 f_10@@4 v@@4) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@26) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@26) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@26) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@26) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@26) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@26) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@26) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@26) (store (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@26) o_5@@4 f_10@@4 v@@4) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@26) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@26) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@26) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@26) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_3153) (o_5@@5 T@Ref) (f_10@@5 T@Field_3213_6589) (v@@5 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@27) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@27) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@27) (store (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@27) o_5@@5 f_10@@5 v@@5) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@27) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@27) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@27) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@27) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@27) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@27) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@27) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@27) (store (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@27) o_5@@5 f_10@@5 v@@5) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@27) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@27) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@27) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@27) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@27) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_3153) (o_5@@6 T@Ref) (f_10@@6 T@Field_6541_1210) (v@@6 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@28) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@28) (store (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@28) o_5@@6 f_10@@6 v@@6) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@28) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@28) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@28) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@28) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@28) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@28) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@28) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@28) (store (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@28) o_5@@6 f_10@@6 v@@6) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@28) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@28) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@28) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@28) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@28) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@28) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_3153) (o_5@@7 T@Ref) (f_10@@7 T@Field_3226_3227) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@29) (store (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@29) o_5@@7 f_10@@7 v@@7) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@29) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@29) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@29) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@29) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@29) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@29) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@29) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3153 (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@29) (store (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@29) o_5@@7 f_10@@7 v@@7) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@29) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@29) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@29) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@29) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@29) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@29) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@29) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_3153) (o_5@@8 T@Ref) (f_10@@8 T@Field_3213_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_3153 (store (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@30) o_5@@8 f_10@@8 v@@8) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_3153 (store (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@30) o_5@@8 f_10@@8 v@@8) (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_1833_1210#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_3213_6589#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_3213_9128#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_6588_53#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_6588_3227#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_6588_1210#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_6588_6589#PolymorphicMapType_3153| Heap@@30) (|PolymorphicMapType_3153_6588_10306#PolymorphicMapType_3153| Heap@@30)))
)))
(assert (forall ((xs@@5 T@Ref) ) (! (= (PredicateMaskField_1836 (isArray xs@@5)) (|isArray#sm| xs@@5))
 :qid |stdinbpl.206:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_1836 (isArray xs@@5)))
)))
(assert (forall ((o_5@@9 T@Ref) (f_3 T@Field_3226_3227) (Heap@@31 T@PolymorphicMapType_3153) ) (!  (=> (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@31) o_5@@9 $allocated) (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@31) (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@31) o_5@@9 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_3153_1706_1707#PolymorphicMapType_3153| Heap@@31) o_5@@9 f_3))
)))
(assert (forall ((p@@2 T@Field_6588_6589) (v_1@@1 T@FrameType) (q T@Field_6588_6589) (w@@1 T@FrameType) (r T@Field_6588_6589) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6588_6588 p@@2 v_1@@1 q w@@1) (InsidePredicate_6588_6588 q w@@1 r u)) (InsidePredicate_6588_6588 p@@2 v_1@@1 r u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6588_6588 p@@2 v_1@@1 q w@@1) (InsidePredicate_6588_6588 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_6588_6589) (v_1@@2 T@FrameType) (q@@0 T@Field_6588_6589) (w@@2 T@FrameType) (r@@0 T@Field_3213_6589) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_6588_6588 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6588_3213 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_6588_3213 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6588_6588 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6588_3213 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_6588_6589) (v_1@@3 T@FrameType) (q@@1 T@Field_3213_6589) (w@@3 T@FrameType) (r@@1 T@Field_6588_6589) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_6588_3213 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3213_6588 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_6588_6588 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6588_3213 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3213_6588 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_6588_6589) (v_1@@4 T@FrameType) (q@@2 T@Field_3213_6589) (w@@4 T@FrameType) (r@@2 T@Field_3213_6589) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_6588_3213 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3213_3213 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_6588_3213 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6588_3213 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3213_3213 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_3213_6589) (v_1@@5 T@FrameType) (q@@3 T@Field_6588_6589) (w@@5 T@FrameType) (r@@3 T@Field_6588_6589) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_3213_6588 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6588_6588 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_3213_6588 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3213_6588 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6588_6588 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_3213_6589) (v_1@@6 T@FrameType) (q@@4 T@Field_6588_6589) (w@@6 T@FrameType) (r@@4 T@Field_3213_6589) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_3213_6588 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6588_3213 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_3213_3213 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3213_6588 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6588_3213 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_3213_6589) (v_1@@7 T@FrameType) (q@@5 T@Field_3213_6589) (w@@7 T@FrameType) (r@@5 T@Field_6588_6589) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_3213_3213 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3213_6588 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_3213_6588 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3213_3213 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3213_6588 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_3213_6589) (v_1@@8 T@FrameType) (q@@6 T@Field_3213_6589) (w@@8 T@FrameType) (r@@6 T@Field_3213_6589) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_3213_3213 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3213_3213 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_3213_3213 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3213_3213 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3213_3213 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs@@6 () T@Ref)
(declare-fun Heap@@32 () T@PolymorphicMapType_3153)
(set-info :boogie-vc-id |isArray#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((i_2_1 Int) (i_2_2 Int) ) (!  (=> (and (and (not (= i_2_1 i_2_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= xs@@6 xs@@6)))
 :qid |stdinbpl.264:15|
 :skolemid |29|
)))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_3153_1703_53#PolymorphicMapType_3153| Heap@@32) xs@@6 $allocated)) (and (=> (= (ControlFlow 0 4) 1) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid