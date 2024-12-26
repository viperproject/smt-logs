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
(declare-sort T@Field_6039_53 0)
(declare-sort T@Field_6052_6053 0)
(declare-sort T@Field_10301_1736 0)
(declare-sort T@Field_9384_9389 0)
(declare-sort T@Field_3515_9389 0)
(declare-sort T@Field_3515_9403 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_9369_1219 0)
(declare-sort T@Field_9369_53 0)
(declare-sort T@Field_9369_6053 0)
(declare-sort T@Field_9402_9403 0)
(declare-datatypes ((T@PolymorphicMapType_6000 0)) (((PolymorphicMapType_6000 (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| (Array T@Ref T@Field_10301_1736 Real)) (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| (Array T@Ref T@Field_9369_1219 Real)) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| (Array T@Ref T@Field_6039_53 Real)) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| (Array T@Ref T@Field_6052_6053 Real)) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| (Array T@Ref T@Field_3515_9389 Real)) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| (Array T@Ref T@Field_3515_9403 Real)) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| (Array T@Ref T@Field_9369_53 Real)) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| (Array T@Ref T@Field_9369_6053 Real)) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| (Array T@Ref T@Field_9384_9389 Real)) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| (Array T@Ref T@Field_9402_9403 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6528 0)) (((PolymorphicMapType_6528 (|PolymorphicMapType_6528_3515_1736#PolymorphicMapType_6528| (Array T@Ref T@Field_10301_1736 Bool)) (|PolymorphicMapType_6528_3515_53#PolymorphicMapType_6528| (Array T@Ref T@Field_6039_53 Bool)) (|PolymorphicMapType_6528_3515_6053#PolymorphicMapType_6528| (Array T@Ref T@Field_6052_6053 Bool)) (|PolymorphicMapType_6528_3515_20774#PolymorphicMapType_6528| (Array T@Ref T@Field_3515_9389 Bool)) (|PolymorphicMapType_6528_3515_9403#PolymorphicMapType_6528| (Array T@Ref T@Field_3515_9403 Bool)) (|PolymorphicMapType_6528_9369_1736#PolymorphicMapType_6528| (Array T@Ref T@Field_9369_1219 Bool)) (|PolymorphicMapType_6528_9369_53#PolymorphicMapType_6528| (Array T@Ref T@Field_9369_53 Bool)) (|PolymorphicMapType_6528_9369_6053#PolymorphicMapType_6528| (Array T@Ref T@Field_9369_6053 Bool)) (|PolymorphicMapType_6528_9369_21822#PolymorphicMapType_6528| (Array T@Ref T@Field_9384_9389 Bool)) (|PolymorphicMapType_6528_9369_9403#PolymorphicMapType_6528| (Array T@Ref T@Field_9402_9403 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5979 0)) (((PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| (Array T@Ref T@Field_6039_53 Bool)) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| (Array T@Ref T@Field_6052_6053 T@Ref)) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| (Array T@Ref T@Field_10301_1736 Int)) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| (Array T@Ref T@Field_9384_9389 T@PolymorphicMapType_6528)) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| (Array T@Ref T@Field_3515_9389 T@PolymorphicMapType_6528)) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| (Array T@Ref T@Field_3515_9403 T@FrameType)) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| (Array T@Ref T@Field_9369_1219 Int)) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| (Array T@Ref T@Field_9369_53 Bool)) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| (Array T@Ref T@Field_9369_6053 T@Ref)) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| (Array T@Ref T@Field_9402_9403 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6039_53)
(declare-fun f_7 () T@Field_10301_1736)
(declare-fun g () T@Field_10301_1736)
(declare-fun WandMaskField_3456 (T@Field_9402_9403) T@Field_9384_9389)
(declare-fun |wand#ft| (T@Ref Real T@Ref Int T@Ref Real T@Ref Real) T@Field_9402_9403)
(declare-fun |wand#sm| (T@Ref Real T@Ref Int T@Ref Real T@Ref Real) T@Field_9384_9389)
(declare-fun succHeap (T@PolymorphicMapType_5979 T@PolymorphicMapType_5979) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5979 T@PolymorphicMapType_5979) Bool)
(declare-fun state (T@PolymorphicMapType_5979 T@PolymorphicMapType_6000) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6000) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6528)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5979 T@PolymorphicMapType_5979 T@PolymorphicMapType_6000) Bool)
(declare-fun IsPredicateField_3456_3457 (T@Field_9402_9403) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9369 (T@Field_9402_9403) T@Field_9384_9389)
(declare-fun HasDirectPerm_9369_9403 (T@PolymorphicMapType_6000 T@Ref T@Field_9402_9403) Bool)
(declare-fun IsPredicateField_3515_19481 (T@Field_3515_9403) Bool)
(declare-fun PredicateMaskField_3515 (T@Field_3515_9403) T@Field_3515_9389)
(declare-fun HasDirectPerm_3515_9403 (T@PolymorphicMapType_6000 T@Ref T@Field_3515_9403) Bool)
(declare-fun IsWandField_3456_3457 (T@Field_9402_9403) Bool)
(declare-fun IsWandField_3515_22834 (T@Field_3515_9403) Bool)
(declare-fun WandMaskField_3515 (T@Field_3515_9403) T@Field_3515_9389)
(declare-fun wand (T@Ref Real T@Ref Int T@Ref Real T@Ref Real) T@Field_9369_1219)
(declare-fun IsWandField_3437_1219 (T@Field_9369_1219) Bool)
(declare-fun IsPredicateField_3437_1219 (T@Field_9369_1219) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_5979)
(declare-fun ZeroMask () T@PolymorphicMapType_6000)
(declare-fun InsidePredicate_9369_9369 (T@Field_9402_9403 T@FrameType T@Field_9402_9403 T@FrameType) Bool)
(declare-fun InsidePredicate_6039_6039 (T@Field_3515_9403 T@FrameType T@Field_3515_9403 T@FrameType) Bool)
(declare-fun IsPredicateField_3515_1736 (T@Field_10301_1736) Bool)
(declare-fun IsWandField_3515_1736 (T@Field_10301_1736) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3437_29926 (T@Field_9384_9389) Bool)
(declare-fun IsWandField_3437_29942 (T@Field_9384_9389) Bool)
(declare-fun IsPredicateField_3437_6053 (T@Field_9369_6053) Bool)
(declare-fun IsWandField_3437_6053 (T@Field_9369_6053) Bool)
(declare-fun IsPredicateField_3437_53 (T@Field_9369_53) Bool)
(declare-fun IsWandField_3437_53 (T@Field_9369_53) Bool)
(declare-fun IsPredicateField_3517_29109 (T@Field_3515_9389) Bool)
(declare-fun IsWandField_3517_29125 (T@Field_3515_9389) Bool)
(declare-fun IsPredicateField_3517_6053 (T@Field_6052_6053) Bool)
(declare-fun IsWandField_3517_6053 (T@Field_6052_6053) Bool)
(declare-fun IsPredicateField_3517_53 (T@Field_6039_53) Bool)
(declare-fun IsWandField_3517_53 (T@Field_6039_53) Bool)
(declare-fun HasDirectPerm_9369_19008 (T@PolymorphicMapType_6000 T@Ref T@Field_9384_9389) Bool)
(declare-fun HasDirectPerm_9369_6053 (T@PolymorphicMapType_6000 T@Ref T@Field_9369_6053) Bool)
(declare-fun HasDirectPerm_9369_53 (T@PolymorphicMapType_6000 T@Ref T@Field_9369_53) Bool)
(declare-fun HasDirectPerm_9369_1736 (T@PolymorphicMapType_6000 T@Ref T@Field_9369_1219) Bool)
(declare-fun HasDirectPerm_3515_17830 (T@PolymorphicMapType_6000 T@Ref T@Field_3515_9389) Bool)
(declare-fun HasDirectPerm_3515_6053 (T@PolymorphicMapType_6000 T@Ref T@Field_6052_6053) Bool)
(declare-fun HasDirectPerm_3515_53 (T@PolymorphicMapType_6000 T@Ref T@Field_6039_53) Bool)
(declare-fun HasDirectPerm_3515_1736 (T@PolymorphicMapType_6000 T@Ref T@Field_10301_1736) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6000 T@PolymorphicMapType_6000 T@PolymorphicMapType_6000) Bool)
(declare-fun getPredWandId_3437_1219 (T@Field_9369_1219) Int)
(declare-fun InsidePredicate_9369_6039 (T@Field_9402_9403 T@FrameType T@Field_3515_9403 T@FrameType) Bool)
(declare-fun InsidePredicate_6039_9369 (T@Field_3515_9403 T@FrameType T@Field_9402_9403 T@FrameType) Bool)
(assert (distinct f_7 g)
)
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 Int) (arg5 T@Ref) (arg6 Real) (arg7 T@Ref) (arg8 Real) ) (! (= (|wand#sm| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8) (WandMaskField_3456 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_3456 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_5979) (Heap1 T@PolymorphicMapType_5979) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_5979) (Mask T@PolymorphicMapType_6000) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5979) (Heap1@@0 T@PolymorphicMapType_5979) (Heap2 T@PolymorphicMapType_5979) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_9402_9403) ) (!  (not (select (|PolymorphicMapType_6528_9369_9403#PolymorphicMapType_6528| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6528_9369_9403#PolymorphicMapType_6528| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_9384_9389) ) (!  (not (select (|PolymorphicMapType_6528_9369_21822#PolymorphicMapType_6528| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6528_9369_21822#PolymorphicMapType_6528| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9369_6053) ) (!  (not (select (|PolymorphicMapType_6528_9369_6053#PolymorphicMapType_6528| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6528_9369_6053#PolymorphicMapType_6528| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_9369_53) ) (!  (not (select (|PolymorphicMapType_6528_9369_53#PolymorphicMapType_6528| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6528_9369_53#PolymorphicMapType_6528| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_9369_1219) ) (!  (not (select (|PolymorphicMapType_6528_9369_1736#PolymorphicMapType_6528| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6528_9369_1736#PolymorphicMapType_6528| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3515_9403) ) (!  (not (select (|PolymorphicMapType_6528_3515_9403#PolymorphicMapType_6528| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6528_3515_9403#PolymorphicMapType_6528| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3515_9389) ) (!  (not (select (|PolymorphicMapType_6528_3515_20774#PolymorphicMapType_6528| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6528_3515_20774#PolymorphicMapType_6528| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_6052_6053) ) (!  (not (select (|PolymorphicMapType_6528_3515_6053#PolymorphicMapType_6528| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6528_3515_6053#PolymorphicMapType_6528| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_6039_53) ) (!  (not (select (|PolymorphicMapType_6528_3515_53#PolymorphicMapType_6528| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6528_3515_53#PolymorphicMapType_6528| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_10301_1736) ) (!  (not (select (|PolymorphicMapType_6528_3515_1736#PolymorphicMapType_6528| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6528_3515_1736#PolymorphicMapType_6528| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5979) (ExhaleHeap T@PolymorphicMapType_5979) (Mask@@0 T@PolymorphicMapType_6000) (pm_f T@Field_9402_9403) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_9369_9403 Mask@@0 null pm_f) (IsPredicateField_3456_3457 pm_f)) (= (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@0) null (PredicateMaskField_9369 pm_f)) (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| ExhaleHeap) null (PredicateMaskField_9369 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_3456_3457 pm_f) (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| ExhaleHeap) null (PredicateMaskField_9369 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5979) (ExhaleHeap@@0 T@PolymorphicMapType_5979) (Mask@@1 T@PolymorphicMapType_6000) (pm_f@@0 T@Field_3515_9403) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3515_9403 Mask@@1 null pm_f@@0) (IsPredicateField_3515_19481 pm_f@@0)) (= (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@1) null (PredicateMaskField_3515 pm_f@@0)) (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| ExhaleHeap@@0) null (PredicateMaskField_3515 pm_f@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsPredicateField_3515_19481 pm_f@@0) (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| ExhaleHeap@@0) null (PredicateMaskField_3515 pm_f@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5979) (ExhaleHeap@@1 T@PolymorphicMapType_5979) (Mask@@2 T@PolymorphicMapType_6000) (pm_f@@1 T@Field_9402_9403) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9369_9403 Mask@@2 null pm_f@@1) (IsWandField_3456_3457 pm_f@@1)) (= (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@2) null (WandMaskField_3456 pm_f@@1)) (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| ExhaleHeap@@1) null (WandMaskField_3456 pm_f@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsWandField_3456_3457 pm_f@@1) (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| ExhaleHeap@@1) null (WandMaskField_3456 pm_f@@1)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5979) (ExhaleHeap@@2 T@PolymorphicMapType_5979) (Mask@@3 T@PolymorphicMapType_6000) (pm_f@@2 T@Field_3515_9403) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_3515_9403 Mask@@3 null pm_f@@2) (IsWandField_3515_22834 pm_f@@2)) (= (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@3) null (WandMaskField_3515 pm_f@@2)) (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| ExhaleHeap@@2) null (WandMaskField_3515 pm_f@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_3515_22834 pm_f@@2) (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| ExhaleHeap@@2) null (WandMaskField_3515 pm_f@@2)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5979) (ExhaleHeap@@3 T@PolymorphicMapType_5979) (Mask@@4 T@PolymorphicMapType_6000) (pm_f@@3 T@Field_9402_9403) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_9369_9403 Mask@@4 null pm_f@@3) (IsPredicateField_3456_3457 pm_f@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_10301_1736) ) (!  (=> (select (|PolymorphicMapType_6528_3515_1736#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@4) null (PredicateMaskField_9369 pm_f@@3))) o2 f_2) (= (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@4) o2 f_2) (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6039_53) ) (!  (=> (select (|PolymorphicMapType_6528_3515_53#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@4) null (PredicateMaskField_9369 pm_f@@3))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@4) o2@@0 f_2@@0) (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6052_6053) ) (!  (=> (select (|PolymorphicMapType_6528_3515_6053#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@4) null (PredicateMaskField_9369 pm_f@@3))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@4) o2@@1 f_2@@1) (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3515_9389) ) (!  (=> (select (|PolymorphicMapType_6528_3515_20774#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@4) null (PredicateMaskField_9369 pm_f@@3))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@4) o2@@2 f_2@@2) (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3515_9403) ) (!  (=> (select (|PolymorphicMapType_6528_3515_9403#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@4) null (PredicateMaskField_9369 pm_f@@3))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@4) o2@@3 f_2@@3) (select (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@3 f_2@@3))
))) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_9369_1219) ) (!  (=> (select (|PolymorphicMapType_6528_9369_1736#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@4) null (PredicateMaskField_9369 pm_f@@3))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@4) o2@@4 f_2@@4) (select (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@4 f_2@@4)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_9369_53) ) (!  (=> (select (|PolymorphicMapType_6528_9369_53#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@4) null (PredicateMaskField_9369 pm_f@@3))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@4) o2@@5 f_2@@5) (select (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@5 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9369_6053) ) (!  (=> (select (|PolymorphicMapType_6528_9369_6053#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@4) null (PredicateMaskField_9369 pm_f@@3))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@4) o2@@6 f_2@@6) (select (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@6 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_9384_9389) ) (!  (=> (select (|PolymorphicMapType_6528_9369_21822#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@4) null (PredicateMaskField_9369 pm_f@@3))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@4) o2@@7 f_2@@7) (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@7 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_9402_9403) ) (!  (=> (select (|PolymorphicMapType_6528_9369_9403#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@4) null (PredicateMaskField_9369 pm_f@@3))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@4) o2@@8 f_2@@8) (select (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@8 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| ExhaleHeap@@3) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (IsPredicateField_3456_3457 pm_f@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5979) (ExhaleHeap@@4 T@PolymorphicMapType_5979) (Mask@@5 T@PolymorphicMapType_6000) (pm_f@@4 T@Field_3515_9403) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_3515_9403 Mask@@5 null pm_f@@4) (IsPredicateField_3515_19481 pm_f@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2@@9 T@Ref) (f_2@@9 T@Field_10301_1736) ) (!  (=> (select (|PolymorphicMapType_6528_3515_1736#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@5) null (PredicateMaskField_3515 pm_f@@4))) o2@@9 f_2@@9) (= (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@5) o2@@9 f_2@@9) (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@9 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@9 f_2@@9))
)) (forall ((o2@@10 T@Ref) (f_2@@10 T@Field_6039_53) ) (!  (=> (select (|PolymorphicMapType_6528_3515_53#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@5) null (PredicateMaskField_3515 pm_f@@4))) o2@@10 f_2@@10) (= (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@5) o2@@10 f_2@@10) (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@10 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@10 f_2@@10))
))) (forall ((o2@@11 T@Ref) (f_2@@11 T@Field_6052_6053) ) (!  (=> (select (|PolymorphicMapType_6528_3515_6053#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@5) null (PredicateMaskField_3515 pm_f@@4))) o2@@11 f_2@@11) (= (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@5) o2@@11 f_2@@11) (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@11 f_2@@11)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@11 f_2@@11))
))) (forall ((o2@@12 T@Ref) (f_2@@12 T@Field_3515_9389) ) (!  (=> (select (|PolymorphicMapType_6528_3515_20774#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@5) null (PredicateMaskField_3515 pm_f@@4))) o2@@12 f_2@@12) (= (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@5) o2@@12 f_2@@12) (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@12 f_2@@12)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@12 f_2@@12))
))) (forall ((o2@@13 T@Ref) (f_2@@13 T@Field_3515_9403) ) (!  (=> (select (|PolymorphicMapType_6528_3515_9403#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@5) null (PredicateMaskField_3515 pm_f@@4))) o2@@13 f_2@@13) (= (select (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@5) o2@@13 f_2@@13) (select (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@13 f_2@@13)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@13 f_2@@13))
))) (forall ((o2@@14 T@Ref) (f_2@@14 T@Field_9369_1219) ) (!  (=> (select (|PolymorphicMapType_6528_9369_1736#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@5) null (PredicateMaskField_3515 pm_f@@4))) o2@@14 f_2@@14) (= (select (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@5) o2@@14 f_2@@14) (select (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@14 f_2@@14)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@14 f_2@@14))
))) (forall ((o2@@15 T@Ref) (f_2@@15 T@Field_9369_53) ) (!  (=> (select (|PolymorphicMapType_6528_9369_53#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@5) null (PredicateMaskField_3515 pm_f@@4))) o2@@15 f_2@@15) (= (select (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@5) o2@@15 f_2@@15) (select (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@15 f_2@@15)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@15 f_2@@15))
))) (forall ((o2@@16 T@Ref) (f_2@@16 T@Field_9369_6053) ) (!  (=> (select (|PolymorphicMapType_6528_9369_6053#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@5) null (PredicateMaskField_3515 pm_f@@4))) o2@@16 f_2@@16) (= (select (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@5) o2@@16 f_2@@16) (select (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@16 f_2@@16)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@16 f_2@@16))
))) (forall ((o2@@17 T@Ref) (f_2@@17 T@Field_9384_9389) ) (!  (=> (select (|PolymorphicMapType_6528_9369_21822#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@5) null (PredicateMaskField_3515 pm_f@@4))) o2@@17 f_2@@17) (= (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@5) o2@@17 f_2@@17) (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@17 f_2@@17)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@17 f_2@@17))
))) (forall ((o2@@18 T@Ref) (f_2@@18 T@Field_9402_9403) ) (!  (=> (select (|PolymorphicMapType_6528_9369_9403#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@5) null (PredicateMaskField_3515 pm_f@@4))) o2@@18 f_2@@18) (= (select (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@5) o2@@18 f_2@@18) (select (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@18 f_2@@18)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| ExhaleHeap@@4) o2@@18 f_2@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (IsPredicateField_3515_19481 pm_f@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5979) (ExhaleHeap@@5 T@PolymorphicMapType_5979) (Mask@@6 T@PolymorphicMapType_6000) (pm_f@@5 T@Field_9402_9403) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_9369_9403 Mask@@6 null pm_f@@5) (IsWandField_3456_3457 pm_f@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2@@19 T@Ref) (f_2@@19 T@Field_10301_1736) ) (!  (=> (select (|PolymorphicMapType_6528_3515_1736#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@6) null (WandMaskField_3456 pm_f@@5))) o2@@19 f_2@@19) (= (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@6) o2@@19 f_2@@19) (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@19 f_2@@19)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@19 f_2@@19))
)) (forall ((o2@@20 T@Ref) (f_2@@20 T@Field_6039_53) ) (!  (=> (select (|PolymorphicMapType_6528_3515_53#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@6) null (WandMaskField_3456 pm_f@@5))) o2@@20 f_2@@20) (= (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@6) o2@@20 f_2@@20) (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@20 f_2@@20)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@20 f_2@@20))
))) (forall ((o2@@21 T@Ref) (f_2@@21 T@Field_6052_6053) ) (!  (=> (select (|PolymorphicMapType_6528_3515_6053#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@6) null (WandMaskField_3456 pm_f@@5))) o2@@21 f_2@@21) (= (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@6) o2@@21 f_2@@21) (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@21 f_2@@21)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@21 f_2@@21))
))) (forall ((o2@@22 T@Ref) (f_2@@22 T@Field_3515_9389) ) (!  (=> (select (|PolymorphicMapType_6528_3515_20774#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@6) null (WandMaskField_3456 pm_f@@5))) o2@@22 f_2@@22) (= (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@6) o2@@22 f_2@@22) (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@22 f_2@@22)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@22 f_2@@22))
))) (forall ((o2@@23 T@Ref) (f_2@@23 T@Field_3515_9403) ) (!  (=> (select (|PolymorphicMapType_6528_3515_9403#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@6) null (WandMaskField_3456 pm_f@@5))) o2@@23 f_2@@23) (= (select (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@6) o2@@23 f_2@@23) (select (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@23 f_2@@23)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@23 f_2@@23))
))) (forall ((o2@@24 T@Ref) (f_2@@24 T@Field_9369_1219) ) (!  (=> (select (|PolymorphicMapType_6528_9369_1736#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@6) null (WandMaskField_3456 pm_f@@5))) o2@@24 f_2@@24) (= (select (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@6) o2@@24 f_2@@24) (select (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@24 f_2@@24)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@24 f_2@@24))
))) (forall ((o2@@25 T@Ref) (f_2@@25 T@Field_9369_53) ) (!  (=> (select (|PolymorphicMapType_6528_9369_53#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@6) null (WandMaskField_3456 pm_f@@5))) o2@@25 f_2@@25) (= (select (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@6) o2@@25 f_2@@25) (select (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@25 f_2@@25)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@25 f_2@@25))
))) (forall ((o2@@26 T@Ref) (f_2@@26 T@Field_9369_6053) ) (!  (=> (select (|PolymorphicMapType_6528_9369_6053#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@6) null (WandMaskField_3456 pm_f@@5))) o2@@26 f_2@@26) (= (select (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@6) o2@@26 f_2@@26) (select (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@26 f_2@@26)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@26 f_2@@26))
))) (forall ((o2@@27 T@Ref) (f_2@@27 T@Field_9384_9389) ) (!  (=> (select (|PolymorphicMapType_6528_9369_21822#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@6) null (WandMaskField_3456 pm_f@@5))) o2@@27 f_2@@27) (= (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@6) o2@@27 f_2@@27) (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@27 f_2@@27)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@27 f_2@@27))
))) (forall ((o2@@28 T@Ref) (f_2@@28 T@Field_9402_9403) ) (!  (=> (select (|PolymorphicMapType_6528_9369_9403#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@6) null (WandMaskField_3456 pm_f@@5))) o2@@28 f_2@@28) (= (select (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@6) o2@@28 f_2@@28) (select (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@28 f_2@@28)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| ExhaleHeap@@5) o2@@28 f_2@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@6) (IsWandField_3456_3457 pm_f@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5979) (ExhaleHeap@@6 T@PolymorphicMapType_5979) (Mask@@7 T@PolymorphicMapType_6000) (pm_f@@6 T@Field_3515_9403) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_3515_9403 Mask@@7 null pm_f@@6) (IsWandField_3515_22834 pm_f@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2@@29 T@Ref) (f_2@@29 T@Field_10301_1736) ) (!  (=> (select (|PolymorphicMapType_6528_3515_1736#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@7) null (WandMaskField_3515 pm_f@@6))) o2@@29 f_2@@29) (= (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@7) o2@@29 f_2@@29) (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@29 f_2@@29)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@29 f_2@@29))
)) (forall ((o2@@30 T@Ref) (f_2@@30 T@Field_6039_53) ) (!  (=> (select (|PolymorphicMapType_6528_3515_53#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@7) null (WandMaskField_3515 pm_f@@6))) o2@@30 f_2@@30) (= (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@7) o2@@30 f_2@@30) (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@30 f_2@@30)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@30 f_2@@30))
))) (forall ((o2@@31 T@Ref) (f_2@@31 T@Field_6052_6053) ) (!  (=> (select (|PolymorphicMapType_6528_3515_6053#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@7) null (WandMaskField_3515 pm_f@@6))) o2@@31 f_2@@31) (= (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@7) o2@@31 f_2@@31) (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@31 f_2@@31)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@31 f_2@@31))
))) (forall ((o2@@32 T@Ref) (f_2@@32 T@Field_3515_9389) ) (!  (=> (select (|PolymorphicMapType_6528_3515_20774#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@7) null (WandMaskField_3515 pm_f@@6))) o2@@32 f_2@@32) (= (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@7) o2@@32 f_2@@32) (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@32 f_2@@32)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@32 f_2@@32))
))) (forall ((o2@@33 T@Ref) (f_2@@33 T@Field_3515_9403) ) (!  (=> (select (|PolymorphicMapType_6528_3515_9403#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@7) null (WandMaskField_3515 pm_f@@6))) o2@@33 f_2@@33) (= (select (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@7) o2@@33 f_2@@33) (select (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@33 f_2@@33)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@33 f_2@@33))
))) (forall ((o2@@34 T@Ref) (f_2@@34 T@Field_9369_1219) ) (!  (=> (select (|PolymorphicMapType_6528_9369_1736#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@7) null (WandMaskField_3515 pm_f@@6))) o2@@34 f_2@@34) (= (select (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@7) o2@@34 f_2@@34) (select (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@34 f_2@@34)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@34 f_2@@34))
))) (forall ((o2@@35 T@Ref) (f_2@@35 T@Field_9369_53) ) (!  (=> (select (|PolymorphicMapType_6528_9369_53#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@7) null (WandMaskField_3515 pm_f@@6))) o2@@35 f_2@@35) (= (select (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@7) o2@@35 f_2@@35) (select (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@35 f_2@@35)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@35 f_2@@35))
))) (forall ((o2@@36 T@Ref) (f_2@@36 T@Field_9369_6053) ) (!  (=> (select (|PolymorphicMapType_6528_9369_6053#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@7) null (WandMaskField_3515 pm_f@@6))) o2@@36 f_2@@36) (= (select (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@7) o2@@36 f_2@@36) (select (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@36 f_2@@36)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@36 f_2@@36))
))) (forall ((o2@@37 T@Ref) (f_2@@37 T@Field_9384_9389) ) (!  (=> (select (|PolymorphicMapType_6528_9369_21822#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@7) null (WandMaskField_3515 pm_f@@6))) o2@@37 f_2@@37) (= (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@7) o2@@37 f_2@@37) (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@37 f_2@@37)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@37 f_2@@37))
))) (forall ((o2@@38 T@Ref) (f_2@@38 T@Field_9402_9403) ) (!  (=> (select (|PolymorphicMapType_6528_9369_9403#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@7) null (WandMaskField_3515 pm_f@@6))) o2@@38 f_2@@38) (= (select (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@7) o2@@38 f_2@@38) (select (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@38 f_2@@38)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| ExhaleHeap@@6) o2@@38 f_2@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@7) (IsWandField_3515_22834 pm_f@@6))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 Int) (arg5@@0 T@Ref) (arg6@@0 Real) (arg7@@0 T@Ref) (arg8@@0 Real) ) (! (IsWandField_3437_1219 (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 Int) (arg5@@1 T@Ref) (arg6@@1 Real) (arg7@@1 T@Ref) (arg8@@1 Real) ) (! (IsWandField_3456_3457 (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 Int) (arg5@@2 T@Ref) (arg6@@2 Real) (arg7@@2 T@Ref) (arg8@@2 Real) ) (!  (not (IsPredicateField_3437_1219 (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 T@Ref) (arg4@@3 Int) (arg5@@3 T@Ref) (arg6@@3 Real) (arg7@@3 T@Ref) (arg8@@3 Real) ) (!  (not (IsPredicateField_3456_3457 (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5979) (ExhaleHeap@@7 T@PolymorphicMapType_5979) (Mask@@8 T@PolymorphicMapType_6000) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@8) o_1 $allocated) (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| ExhaleHeap@@7) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| ExhaleHeap@@7) o_1 $allocated))
)))
(assert (forall ((p T@Field_9402_9403) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_9369_9369 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9369_9369 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_3515_9403) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_6039_6039 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6039_6039 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3515_1736 f_7)))
(assert  (not (IsWandField_3515_1736 f_7)))
(assert  (not (IsPredicateField_3515_1736 g)))
(assert  (not (IsWandField_3515_1736 g)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5979) (ExhaleHeap@@8 T@PolymorphicMapType_5979) (Mask@@9 T@PolymorphicMapType_6000) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@9 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6000) (o_2@@9 T@Ref) (f_4@@9 T@Field_9402_9403) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3456_3457 f_4@@9))) (not (IsWandField_3456_3457 f_4@@9))) (<= (select (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6000) (o_2@@10 T@Ref) (f_4@@10 T@Field_9384_9389) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3437_29926 f_4@@10))) (not (IsWandField_3437_29942 f_4@@10))) (<= (select (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6000) (o_2@@11 T@Ref) (f_4@@11 T@Field_9369_6053) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3437_6053 f_4@@11))) (not (IsWandField_3437_6053 f_4@@11))) (<= (select (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6000) (o_2@@12 T@Ref) (f_4@@12 T@Field_9369_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3437_53 f_4@@12))) (not (IsWandField_3437_53 f_4@@12))) (<= (select (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6000) (o_2@@13 T@Ref) (f_4@@13 T@Field_9369_1219) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3437_1219 f_4@@13))) (not (IsWandField_3437_1219 f_4@@13))) (<= (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6000) (o_2@@14 T@Ref) (f_4@@14 T@Field_3515_9403) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3515_19481 f_4@@14))) (not (IsWandField_3515_22834 f_4@@14))) (<= (select (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6000) (o_2@@15 T@Ref) (f_4@@15 T@Field_3515_9389) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3517_29109 f_4@@15))) (not (IsWandField_3517_29125 f_4@@15))) (<= (select (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6000) (o_2@@16 T@Ref) (f_4@@16 T@Field_6052_6053) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3517_6053 f_4@@16))) (not (IsWandField_3517_6053 f_4@@16))) (<= (select (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6000) (o_2@@17 T@Ref) (f_4@@17 T@Field_6039_53) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3517_53 f_4@@17))) (not (IsWandField_3517_53 f_4@@17))) (<= (select (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6000) (o_2@@18 T@Ref) (f_4@@18 T@Field_10301_1736) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3515_1736 f_4@@18))) (not (IsWandField_3515_1736 f_4@@18))) (<= (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6000) (o_2@@19 T@Ref) (f_4@@19 T@Field_9402_9403) ) (! (= (HasDirectPerm_9369_9403 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9369_9403 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6000) (o_2@@20 T@Ref) (f_4@@20 T@Field_9384_9389) ) (! (= (HasDirectPerm_9369_19008 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9369_19008 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6000) (o_2@@21 T@Ref) (f_4@@21 T@Field_9369_6053) ) (! (= (HasDirectPerm_9369_6053 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9369_6053 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6000) (o_2@@22 T@Ref) (f_4@@22 T@Field_9369_53) ) (! (= (HasDirectPerm_9369_53 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9369_53 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6000) (o_2@@23 T@Ref) (f_4@@23 T@Field_9369_1219) ) (! (= (HasDirectPerm_9369_1736 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9369_1736 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6000) (o_2@@24 T@Ref) (f_4@@24 T@Field_3515_9403) ) (! (= (HasDirectPerm_3515_9403 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3515_9403 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6000) (o_2@@25 T@Ref) (f_4@@25 T@Field_3515_9389) ) (! (= (HasDirectPerm_3515_17830 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3515_17830 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6000) (o_2@@26 T@Ref) (f_4@@26 T@Field_6052_6053) ) (! (= (HasDirectPerm_3515_6053 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3515_6053 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_6000) (o_2@@27 T@Ref) (f_4@@27 T@Field_6039_53) ) (! (= (HasDirectPerm_3515_53 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3515_53 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_6000) (o_2@@28 T@Ref) (f_4@@28 T@Field_10301_1736) ) (! (= (HasDirectPerm_3515_1736 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3515_1736 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5979) (ExhaleHeap@@9 T@PolymorphicMapType_5979) (Mask@@30 T@PolymorphicMapType_6000) (o_1@@0 T@Ref) (f_2@@39 T@Field_9402_9403) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_9369_9403 Mask@@30 o_1@@0 f_2@@39) (= (select (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@10) o_1@@0 f_2@@39) (select (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| ExhaleHeap@@9) o_1@@0 f_2@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| ExhaleHeap@@9) o_1@@0 f_2@@39))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5979) (ExhaleHeap@@10 T@PolymorphicMapType_5979) (Mask@@31 T@PolymorphicMapType_6000) (o_1@@1 T@Ref) (f_2@@40 T@Field_9384_9389) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_9369_19008 Mask@@31 o_1@@1 f_2@@40) (= (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@11) o_1@@1 f_2@@40) (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| ExhaleHeap@@10) o_1@@1 f_2@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| ExhaleHeap@@10) o_1@@1 f_2@@40))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5979) (ExhaleHeap@@11 T@PolymorphicMapType_5979) (Mask@@32 T@PolymorphicMapType_6000) (o_1@@2 T@Ref) (f_2@@41 T@Field_9369_6053) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_9369_6053 Mask@@32 o_1@@2 f_2@@41) (= (select (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@12) o_1@@2 f_2@@41) (select (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| ExhaleHeap@@11) o_1@@2 f_2@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| ExhaleHeap@@11) o_1@@2 f_2@@41))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5979) (ExhaleHeap@@12 T@PolymorphicMapType_5979) (Mask@@33 T@PolymorphicMapType_6000) (o_1@@3 T@Ref) (f_2@@42 T@Field_9369_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_9369_53 Mask@@33 o_1@@3 f_2@@42) (= (select (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@13) o_1@@3 f_2@@42) (select (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| ExhaleHeap@@12) o_1@@3 f_2@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| ExhaleHeap@@12) o_1@@3 f_2@@42))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_5979) (ExhaleHeap@@13 T@PolymorphicMapType_5979) (Mask@@34 T@PolymorphicMapType_6000) (o_1@@4 T@Ref) (f_2@@43 T@Field_9369_1219) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_9369_1736 Mask@@34 o_1@@4 f_2@@43) (= (select (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@14) o_1@@4 f_2@@43) (select (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| ExhaleHeap@@13) o_1@@4 f_2@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| ExhaleHeap@@13) o_1@@4 f_2@@43))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_5979) (ExhaleHeap@@14 T@PolymorphicMapType_5979) (Mask@@35 T@PolymorphicMapType_6000) (o_1@@5 T@Ref) (f_2@@44 T@Field_3515_9403) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_3515_9403 Mask@@35 o_1@@5 f_2@@44) (= (select (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@15) o_1@@5 f_2@@44) (select (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| ExhaleHeap@@14) o_1@@5 f_2@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| ExhaleHeap@@14) o_1@@5 f_2@@44))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_5979) (ExhaleHeap@@15 T@PolymorphicMapType_5979) (Mask@@36 T@PolymorphicMapType_6000) (o_1@@6 T@Ref) (f_2@@45 T@Field_3515_9389) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_3515_17830 Mask@@36 o_1@@6 f_2@@45) (= (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@16) o_1@@6 f_2@@45) (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| ExhaleHeap@@15) o_1@@6 f_2@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| ExhaleHeap@@15) o_1@@6 f_2@@45))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_5979) (ExhaleHeap@@16 T@PolymorphicMapType_5979) (Mask@@37 T@PolymorphicMapType_6000) (o_1@@7 T@Ref) (f_2@@46 T@Field_6052_6053) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_3515_6053 Mask@@37 o_1@@7 f_2@@46) (= (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@17) o_1@@7 f_2@@46) (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| ExhaleHeap@@16) o_1@@7 f_2@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| ExhaleHeap@@16) o_1@@7 f_2@@46))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_5979) (ExhaleHeap@@17 T@PolymorphicMapType_5979) (Mask@@38 T@PolymorphicMapType_6000) (o_1@@8 T@Ref) (f_2@@47 T@Field_6039_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_3515_53 Mask@@38 o_1@@8 f_2@@47) (= (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@18) o_1@@8 f_2@@47) (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| ExhaleHeap@@17) o_1@@8 f_2@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| ExhaleHeap@@17) o_1@@8 f_2@@47))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_5979) (ExhaleHeap@@18 T@PolymorphicMapType_5979) (Mask@@39 T@PolymorphicMapType_6000) (o_1@@9 T@Ref) (f_2@@48 T@Field_10301_1736) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_3515_1736 Mask@@39 o_1@@9 f_2@@48) (= (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@19) o_1@@9 f_2@@48) (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| ExhaleHeap@@18) o_1@@9 f_2@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| ExhaleHeap@@18) o_1@@9 f_2@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_9402_9403) ) (! (= (select (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_9384_9389) ) (! (= (select (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_9369_6053) ) (! (= (select (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_9369_53) ) (! (= (select (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_9369_1219) ) (! (= (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_3515_9403) ) (! (= (select (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_3515_9389) ) (! (= (select (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_6052_6053) ) (! (= (select (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_6039_53) ) (! (= (select (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_10301_1736) ) (! (= (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6000) (SummandMask1 T@PolymorphicMapType_6000) (SummandMask2 T@PolymorphicMapType_6000) (o_2@@39 T@Ref) (f_4@@39 T@Field_9402_9403) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6000) (SummandMask1@@0 T@PolymorphicMapType_6000) (SummandMask2@@0 T@PolymorphicMapType_6000) (o_2@@40 T@Ref) (f_4@@40 T@Field_9384_9389) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6000) (SummandMask1@@1 T@PolymorphicMapType_6000) (SummandMask2@@1 T@PolymorphicMapType_6000) (o_2@@41 T@Ref) (f_4@@41 T@Field_9369_6053) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6000) (SummandMask1@@2 T@PolymorphicMapType_6000) (SummandMask2@@2 T@PolymorphicMapType_6000) (o_2@@42 T@Ref) (f_4@@42 T@Field_9369_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6000) (SummandMask1@@3 T@PolymorphicMapType_6000) (SummandMask2@@3 T@PolymorphicMapType_6000) (o_2@@43 T@Ref) (f_4@@43 T@Field_9369_1219) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6000) (SummandMask1@@4 T@PolymorphicMapType_6000) (SummandMask2@@4 T@PolymorphicMapType_6000) (o_2@@44 T@Ref) (f_4@@44 T@Field_3515_9403) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6000) (SummandMask1@@5 T@PolymorphicMapType_6000) (SummandMask2@@5 T@PolymorphicMapType_6000) (o_2@@45 T@Ref) (f_4@@45 T@Field_3515_9389) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6000) (SummandMask1@@6 T@PolymorphicMapType_6000) (SummandMask2@@6 T@PolymorphicMapType_6000) (o_2@@46 T@Ref) (f_4@@46 T@Field_6052_6053) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_6000) (SummandMask1@@7 T@PolymorphicMapType_6000) (SummandMask2@@7 T@PolymorphicMapType_6000) (o_2@@47 T@Ref) (f_4@@47 T@Field_6039_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_6000) (SummandMask1@@8 T@PolymorphicMapType_6000) (SummandMask2@@8 T@PolymorphicMapType_6000) (o_2@@48 T@Ref) (f_4@@48 T@Field_10301_1736) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 T@Ref) (arg4@@4 Int) (arg5@@4 T@Ref) (arg6@@4 Real) (arg7@@4 T@Ref) (arg8@@4 Real) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 Int) (arg5_2 T@Ref) (arg6_2 Real) (arg7_2 T@Ref) (arg8_2 Real) ) (!  (=> (= (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2)) (and (= arg1@@4 arg1_2) (and (= arg2@@4 arg2_2) (and (= arg3@@4 arg3_2) (and (= arg4@@4 arg4_2) (and (= arg5@@4 arg5_2) (and (= arg6@@4 arg6_2) (and (= arg7@@4 arg7_2) (= arg8@@4 arg8_2)))))))))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 T@Ref) (arg4@@5 Int) (arg5@@5 T@Ref) (arg6@@5 Real) (arg7@@5 T@Ref) (arg8@@5 Real) ) (! (= (getPredWandId_3437_1219 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5 arg8@@5)) 0)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5 arg8@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_5979) (o T@Ref) (f_3 T@Field_9402_9403) (v T@FrameType) ) (! (succHeap Heap@@20 (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@20) (store (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@20) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@20) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@20) (store (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@20) o f_3 v)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_5979) (o@@0 T@Ref) (f_3@@0 T@Field_9384_9389) (v@@0 T@PolymorphicMapType_6528) ) (! (succHeap Heap@@21 (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@21) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@21) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@21) (store (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@21) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@21) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@21) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@21) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@21) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@21) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@21) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@21) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@21) (store (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@21) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@21) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@21) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@21) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@21) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@21) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_5979) (o@@1 T@Ref) (f_3@@1 T@Field_9369_1219) (v@@1 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@22) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@22) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@22) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@22) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@22) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@22) (store (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@22) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@22) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@22) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@22) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@22) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@22) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@22) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@22) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@22) (store (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@22) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@22) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@22) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_5979) (o@@2 T@Ref) (f_3@@2 T@Field_9369_6053) (v@@2 T@Ref) ) (! (succHeap Heap@@23 (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@23) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@23) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@23) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@23) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@23) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@23) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@23) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@23) (store (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@23) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@23) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@23) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@23) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@23) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@23) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@23) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@23) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@23) (store (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@23) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_5979) (o@@3 T@Ref) (f_3@@3 T@Field_9369_53) (v@@3 Bool) ) (! (succHeap Heap@@24 (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@24) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@24) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@24) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@24) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@24) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@24) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@24) (store (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@24) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@24) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@24) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@24) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@24) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@24) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@24) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@24) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@24) (store (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@24) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@24) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_5979) (o@@4 T@Ref) (f_3@@4 T@Field_3515_9403) (v@@4 T@FrameType) ) (! (succHeap Heap@@25 (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@25) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@25) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@25) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@25) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@25) (store (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@25) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@25) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@25) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@25) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@25) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@25) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@25) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@25) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@25) (store (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@25) o@@4 f_3@@4 v@@4) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@25) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@25) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@25) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_5979) (o@@5 T@Ref) (f_3@@5 T@Field_3515_9389) (v@@5 T@PolymorphicMapType_6528) ) (! (succHeap Heap@@26 (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@26) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@26) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@26) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@26) (store (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@26) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@26) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@26) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@26) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@26) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@26) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@26) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@26) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@26) (store (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@26) o@@5 f_3@@5 v@@5) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@26) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@26) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@26) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@26) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_5979) (o@@6 T@Ref) (f_3@@6 T@Field_10301_1736) (v@@6 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@27) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@27) (store (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@27) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@27) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@27) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@27) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@27) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@27) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@27) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@27) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@27) (store (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@27) o@@6 f_3@@6 v@@6) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@27) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@27) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@27) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@27) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@27) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@27) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_5979) (o@@7 T@Ref) (f_3@@7 T@Field_6052_6053) (v@@7 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@28) (store (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@28) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@28) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@28) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@28) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@28) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@28) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@28) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@28) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@28) (store (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@28) o@@7 f_3@@7 v@@7) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@28) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@28) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@28) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@28) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@28) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@28) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@28) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_5979) (o@@8 T@Ref) (f_3@@8 T@Field_6039_53) (v@@8 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_5979 (store (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@29) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5979 (store (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@29) o@@8 f_3@@8 v@@8) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@29) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@29)))
)))
(assert (forall ((o@@9 T@Ref) (f T@Field_6052_6053) (Heap@@30 T@PolymorphicMapType_5979) ) (!  (=> (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@30) o@@9 $allocated) (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@30) (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@30) o@@9 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@30) o@@9 f))
)))
(assert (forall ((p@@2 T@Field_9402_9403) (v_1@@1 T@FrameType) (q T@Field_9402_9403) (w@@1 T@FrameType) (r T@Field_9402_9403) (u T@FrameType) ) (!  (=> (and (InsidePredicate_9369_9369 p@@2 v_1@@1 q w@@1) (InsidePredicate_9369_9369 q w@@1 r u)) (InsidePredicate_9369_9369 p@@2 v_1@@1 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9369_9369 p@@2 v_1@@1 q w@@1) (InsidePredicate_9369_9369 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_9402_9403) (v_1@@2 T@FrameType) (q@@0 T@Field_9402_9403) (w@@2 T@FrameType) (r@@0 T@Field_3515_9403) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_9369_9369 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_9369_6039 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_9369_6039 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9369_9369 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_9369_6039 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_9402_9403) (v_1@@3 T@FrameType) (q@@1 T@Field_3515_9403) (w@@3 T@FrameType) (r@@1 T@Field_9402_9403) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_9369_6039 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6039_9369 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_9369_9369 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9369_6039 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6039_9369 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_9402_9403) (v_1@@4 T@FrameType) (q@@2 T@Field_3515_9403) (w@@4 T@FrameType) (r@@2 T@Field_3515_9403) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_9369_6039 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6039_6039 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_9369_6039 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9369_6039 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6039_6039 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_3515_9403) (v_1@@5 T@FrameType) (q@@3 T@Field_9402_9403) (w@@5 T@FrameType) (r@@3 T@Field_9402_9403) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_6039_9369 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_9369_9369 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_6039_9369 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6039_9369 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_9369_9369 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_3515_9403) (v_1@@6 T@FrameType) (q@@4 T@Field_9402_9403) (w@@6 T@FrameType) (r@@4 T@Field_3515_9403) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_6039_9369 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_9369_6039 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_6039_6039 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6039_9369 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_9369_6039 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_3515_9403) (v_1@@7 T@FrameType) (q@@5 T@Field_3515_9403) (w@@7 T@FrameType) (r@@5 T@Field_9402_9403) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_6039_6039 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6039_9369 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_6039_9369 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6039_6039 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6039_9369 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_3515_9403) (v_1@@8 T@FrameType) (q@@6 T@Field_3515_9403) (w@@8 T@FrameType) (r@@6 T@Field_3515_9403) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_6039_6039 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6039_6039 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_6039_6039 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6039_6039 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6039_6039 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@8 () T@PolymorphicMapType_6000)
(declare-fun Mask@7 () T@PolymorphicMapType_6000)
(declare-fun x () T@Ref)
(declare-fun perm@1 () Real)
(declare-fun Heap@5 () T@PolymorphicMapType_5979)
(declare-fun perm@2 () Real)
(declare-fun Mask@9 () T@PolymorphicMapType_6000)
(declare-fun Mask@10 () T@PolymorphicMapType_6000)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_5979)
(declare-fun b_1_1@8 () Bool)
(declare-fun b_2_1@12 () Bool)
(declare-fun neededTransfer@8 () Real)
(declare-fun Used_1Mask@7 () T@PolymorphicMapType_6000)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun b_4@0 () Bool)
(declare-fun b_4@1 () Bool)
(declare-fun Result_1Heap () T@PolymorphicMapType_5979)
(declare-fun Result_1Mask () T@PolymorphicMapType_6000)
(declare-fun b_4@2 () Bool)
(declare-fun Ops_1Mask () T@PolymorphicMapType_6000)
(declare-fun b_4@3 () Bool)
(declare-fun Ops_1Heap@0 () T@PolymorphicMapType_5979)
(declare-fun Used_1Heap@0 () T@PolymorphicMapType_5979)
(declare-fun b_4@4 () Bool)
(declare-fun b_1_1@9 () Bool)
(declare-fun Mask@6 () T@PolymorphicMapType_6000)
(declare-fun Mask@5 () T@PolymorphicMapType_6000)
(declare-fun takeTransfer@3 () Real)
(declare-fun neededTransfer@6 () Real)
(declare-fun b_2_1@9 () Bool)
(declare-fun Heap@3 () T@PolymorphicMapType_5979)
(declare-fun Mask@3 () T@PolymorphicMapType_6000)
(declare-fun Used_1Mask@5 () T@PolymorphicMapType_6000)
(declare-fun neededTransfer@7 () Real)
(declare-fun Used_1Mask@6 () T@PolymorphicMapType_6000)
(declare-fun b_2_1@10 () Bool)
(declare-fun b_2_1@11 () Bool)
(declare-fun Mask@4 () T@PolymorphicMapType_6000)
(declare-fun Heap@4 () T@PolymorphicMapType_5979)
(declare-fun maskTransfer@3 () Real)
(declare-fun takeTransfer@2 () Real)
(declare-fun Used_1Mask@3 () T@PolymorphicMapType_6000)
(declare-fun b_2_1@6 () Bool)
(declare-fun neededTransfer@5 () Real)
(declare-fun Used_1Mask@4 () T@PolymorphicMapType_6000)
(declare-fun b_2_1@7 () Bool)
(declare-fun b_2_1@8 () Bool)
(declare-fun Ops_1Mask@5 () T@PolymorphicMapType_6000)
(declare-fun Ops_1Mask@4 () T@PolymorphicMapType_6000)
(declare-fun maskTransfer@2 () Real)
(declare-fun b_1_1@7 () Bool)
(declare-fun neededTransfer@4 () Real)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_3@0 () Bool)
(declare-fun b_3@1 () Bool)
(declare-fun ResultHeap () T@PolymorphicMapType_5979)
(declare-fun ResultMask@@9 () T@PolymorphicMapType_6000)
(declare-fun b_3@2 () Bool)
(declare-fun b_3@3 () Bool)
(declare-fun b_3@4 () Bool)
(declare-fun takeTransfer@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_6000)
(declare-fun Heap@1 () T@PolymorphicMapType_5979)
(declare-fun neededTransfer@2 () Real)
(declare-fun b_2_1@3 () Bool)
(declare-fun Used_1Mask@1 () T@PolymorphicMapType_6000)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_1Mask@2 () T@PolymorphicMapType_6000)
(declare-fun b_2_1@4 () Bool)
(declare-fun b_2_1@5 () Bool)
(declare-fun Mask@2 () T@PolymorphicMapType_6000)
(declare-fun Heap@2 () T@PolymorphicMapType_5979)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun Ops_1Mask@2 () T@PolymorphicMapType_6000)
(declare-fun b_2_1@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun neededTransfer@1 () Real)
(declare-fun Used_1Mask@0 () T@PolymorphicMapType_6000)
(declare-fun b_2_1@1 () Bool)
(declare-fun b_2_1@2 () Bool)
(declare-fun Ops_1Mask@3 () T@PolymorphicMapType_6000)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_1_1@6 () Bool)
(declare-fun b_1_1@5 () Bool)
(declare-fun b_2_1 () Bool)
(declare-fun b_1_1@4 () Bool)
(declare-fun b_1_1@3 () Bool)
(declare-fun Ops_1Mask@1 () T@PolymorphicMapType_6000)
(declare-fun b_1_1@0 () Bool)
(declare-fun perm@0 () Real)
(declare-fun b_1_1@1 () Bool)
(declare-fun Ops_1Mask@0 () T@PolymorphicMapType_6000)
(declare-fun b_1_1@2 () Bool)
(declare-fun Heap@@31 () T@PolymorphicMapType_5979)
(declare-fun Mask@0 () T@PolymorphicMapType_6000)
(declare-fun Heap@0 () T@PolymorphicMapType_5979)
(declare-fun b_1_1 () Bool)
(declare-fun b_2@0 () Bool)
(declare-fun b_2 () Bool)
(declare-fun UsedHeap@0 () T@PolymorphicMapType_5979)
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
 (=> (= (ControlFlow 0 0) 58) (let ((anon33_correct  (=> (= Mask@8 (PolymorphicMapType_6000 (store (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@7) x f_7 (- (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@7) x f_7) perm@1)) (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@7) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Mask@7) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Mask@7) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Mask@7) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Mask@7) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Mask@7) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Mask@7) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Mask@7) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Mask@7))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (= (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@5) x f_7) 1)) (=> (= (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@5) x f_7) 1) (=> (and (state Heap@5 Mask@8) (= perm@2 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (and (=> (> perm@2 NoPerm) (not (= x null))) (= Mask@9 (PolymorphicMapType_6000 (store (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@8) x f_7 (+ (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@8) x f_7) perm@2)) (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@8) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Mask@8) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Mask@8) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Mask@8) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Mask@8) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Mask@8) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Mask@8) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Mask@8) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Mask@8)))) (=> (and (and (and (state Heap@5 Mask@9) (not (= x null))) (and (= Mask@10 (PolymorphicMapType_6000 (store (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@9) x g (+ (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@9) x g) FullPerm)) (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@9) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Mask@9) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Mask@9) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Mask@9) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Mask@9) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Mask@9) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Mask@9) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Mask@9) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Mask@9))) (state Heap@5 Mask@10))) (and (and (state Heap@5 Mask@10) (IdenticalOnKnownLocations Heap@5 ExhaleHeap@0 Mask@10)) (and (state ExhaleHeap@0 Mask@10) (state ExhaleHeap@0 Mask@10)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_3515_1736 Mask@10 x f_7)) (=> (HasDirectPerm_3515_1736 Mask@10 x f_7) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| ExhaleHeap@0) x f_7) 1)) (=> (= (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| ExhaleHeap@0) x f_7) 1) (=> (state ExhaleHeap@0 Mask@10) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_3515_1736 Mask@10 x g)) (=> (HasDirectPerm_3515_1736 Mask@10 x g) (=> (= (ControlFlow 0 2) (- 0 1)) (= (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| ExhaleHeap@0) x g) 1)))))))))))))))))))
(let ((anon50_Else_correct  (=> (and (= perm@1 NoPerm) (= (ControlFlow 0 10) 2)) anon33_correct)))
(let ((anon50_Then_correct  (=> (not (= perm@1 NoPerm)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (<= perm@1 (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@7) x f_7))) (=> (<= perm@1 (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@7) x f_7)) (=> (= (ControlFlow 0 8) 2) anon33_correct))))))
(let ((anon31_correct  (and (=> (= (ControlFlow 0 11) (- 0 14)) (=> (and (and b_1_1@8 b_1_1@8) b_2_1@12) (and (= neededTransfer@8 0.0) (= (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Used_1Mask@7) x g) initNeededTransfer@1)))) (=> (=> (and (and b_1_1@8 b_1_1@8) b_2_1@12) (and (= neededTransfer@8 0.0) (= (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Used_1Mask@7) x g) initNeededTransfer@1))) (=> (and (= b_4@0  (and b_1_1@8 b_2_1@12)) (= b_4@1  (and b_4@0 (state Result_1Heap Result_1Mask)))) (=> (and (and (and (= b_4@2  (and b_4@1 (sumMask Result_1Mask Ops_1Mask Used_1Mask@7))) (= b_4@3  (and (and b_4@2 (IdenticalOnKnownLocations Ops_1Heap@0 Result_1Heap Ops_1Mask)) (IdenticalOnKnownLocations Used_1Heap@0 Result_1Heap Used_1Mask@7)))) (and (= b_4@4  (and b_4@3 (state Result_1Heap Result_1Mask))) (= b_1_1@9  (and b_1_1@8 b_4@4)))) (and (and (= Mask@6 (PolymorphicMapType_6000 (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@5) (store (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@5) null (wand x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm) (+ (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@5) null (wand x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm)) FullPerm)) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Mask@5) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Mask@5) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Mask@5) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Mask@5) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Mask@5) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Mask@5) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Mask@5) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Mask@5))) (state Heap@5 Mask@6)) (and (state Heap@5 Mask@6) (state Heap@5 Mask@6)))) (and (=> (= (ControlFlow 0 11) (- 0 13)) (<= FullPerm (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@6) null (wand x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm)))) (=> (<= FullPerm (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@6) null (wand x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (=> (= Mask@7 (PolymorphicMapType_6000 (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@6) (store (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@6) null (wand x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm) (- (select (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@6) null (wand x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm)) FullPerm)) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Mask@6) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Mask@6) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Mask@6) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Mask@6) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Mask@6) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Mask@6) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Mask@6) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Mask@6))) (=> (and (state Heap@5 Mask@7) (= perm@1 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (and (=> (= (ControlFlow 0 11) 8) anon50_Then_correct) (=> (= (ControlFlow 0 11) 10) anon50_Else_correct))))))))))))))
(let ((anon49_Else_correct  (=> (>= 0.0 takeTransfer@3) (=> (and (= neededTransfer@8 neededTransfer@6) (= b_2_1@12 b_2_1@9)) (=> (and (and (= Heap@5 Heap@3) (= Mask@5 Mask@3)) (and (= Used_1Mask@7 Used_1Mask@5) (= (ControlFlow 0 17) 11))) anon31_correct)))))
(let ((anon49_Then_correct  (=> (> takeTransfer@3 0.0) (=> (and (and (= neededTransfer@7 (- neededTransfer@6 takeTransfer@3)) (= Used_1Mask@6 (PolymorphicMapType_6000 (store (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Used_1Mask@5) x g (+ (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Used_1Mask@5) x g) takeTransfer@3)) (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Used_1Mask@5) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Used_1Mask@5) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Used_1Mask@5) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Used_1Mask@5) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Used_1Mask@5) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Used_1Mask@5) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Used_1Mask@5) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Used_1Mask@5) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Used_1Mask@5)))) (and (= b_2_1@10  (and b_2_1@9 (state Used_1Heap@0 Used_1Mask@6))) (= b_2_1@11  (and b_2_1@10 (= (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@3) x g) (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Used_1Heap@0) x g)))))) (=> (and (and (and (= Mask@4 (PolymorphicMapType_6000 (store (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@3) x g (- (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@3) x g) takeTransfer@3)) (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@3) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Mask@3) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Mask@3) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Mask@3) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Mask@3) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Mask@3) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Mask@3) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Mask@3) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Mask@3))) (= Heap@4 (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@3) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@3) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@3) (store (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@3) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm) (PolymorphicMapType_6528 (store (|PolymorphicMapType_6528_3515_1736#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@3) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) x g true) (|PolymorphicMapType_6528_3515_53#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@3) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_3515_6053#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@3) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_3515_20774#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@3) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_3515_9403#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@3) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_9369_1736#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@3) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_9369_53#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@3) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_9369_6053#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@3) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_9369_21822#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@3) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_9369_9403#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@3) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))))) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@3) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@3) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@3) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@3) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@3) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@3)))) (and (= neededTransfer@8 neededTransfer@7) (= b_2_1@12 b_2_1@11))) (and (and (= Heap@5 Heap@4) (= Mask@5 Mask@4)) (and (= Used_1Mask@7 Used_1Mask@6) (= (ControlFlow 0 16) 11)))) anon31_correct)))))
(let ((anon48_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@6) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 19) 16) anon49_Then_correct) (=> (= (ControlFlow 0 19) 17) anon49_Else_correct)))))
(let ((anon48_Then_correct  (=> (and (<= neededTransfer@6 maskTransfer@3) (= takeTransfer@3 neededTransfer@6)) (and (=> (= (ControlFlow 0 18) 16) anon49_Then_correct) (=> (= (ControlFlow 0 18) 17) anon49_Else_correct)))))
(let ((anon47_Then_correct  (=> (and (and (and (and (and b_1_1@8 b_1_1@8) b_2_1@9) true) (> neededTransfer@6 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@3) x g))) (and (=> (= (ControlFlow 0 20) 18) anon48_Then_correct) (=> (= (ControlFlow 0 20) 19) anon48_Else_correct)))))
(let ((anon47_Else_correct  (=> (not (and (and (and (and b_1_1@8 b_1_1@8) b_2_1@9) true) (> neededTransfer@6 0.0))) (=> (and (= neededTransfer@8 neededTransfer@6) (= b_2_1@12 b_2_1@9)) (=> (and (and (= Heap@5 Heap@3) (= Mask@5 Mask@3)) (and (= Used_1Mask@7 Used_1Mask@5) (= (ControlFlow 0 15) 11))) anon31_correct)))))
(let ((anon46_Else_correct  (=> (and (and (>= 0.0 takeTransfer@2) (= Used_1Mask@5 Used_1Mask@3)) (and (= b_2_1@9 b_2_1@6) (= neededTransfer@6 FullPerm))) (and (=> (= (ControlFlow 0 23) 20) anon47_Then_correct) (=> (= (ControlFlow 0 23) 15) anon47_Else_correct)))))
(let ((anon46_Then_correct  (=> (> takeTransfer@2 0.0) (=> (and (and (and (= neededTransfer@5 (- FullPerm takeTransfer@2)) (= Used_1Mask@4 (PolymorphicMapType_6000 (store (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Used_1Mask@3) x g (+ (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Used_1Mask@3) x g) takeTransfer@2)) (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Used_1Mask@3) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Used_1Mask@3) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Used_1Mask@3) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Used_1Mask@3) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Used_1Mask@3) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Used_1Mask@3) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Used_1Mask@3) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Used_1Mask@3) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Used_1Mask@3)))) (and (= b_2_1@7  (and b_2_1@6 (state Used_1Heap@0 Used_1Mask@4))) (= b_2_1@8  (and b_2_1@7 (= (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Ops_1Heap@0) x g) (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Used_1Heap@0) x g)))))) (and (and (= Ops_1Mask@5 (PolymorphicMapType_6000 (store (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Ops_1Mask@4) x g (- (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Ops_1Mask@4) x g) takeTransfer@2)) (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Ops_1Mask@4) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Ops_1Mask@4) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Ops_1Mask@4) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Ops_1Mask@4) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Ops_1Mask@4) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Ops_1Mask@4) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Ops_1Mask@4) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Ops_1Mask@4) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Ops_1Mask@4))) (= Used_1Mask@5 Used_1Mask@4)) (and (= b_2_1@9 b_2_1@8) (= neededTransfer@6 neededTransfer@5)))) (and (=> (= (ControlFlow 0 22) 20) anon47_Then_correct) (=> (= (ControlFlow 0 22) 15) anon47_Else_correct))))))
(let ((anon45_Else_correct  (=> (and (< maskTransfer@2 FullPerm) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 25) 22) anon46_Then_correct) (=> (= (ControlFlow 0 25) 23) anon46_Else_correct)))))
(let ((anon45_Then_correct  (=> (and (<= FullPerm maskTransfer@2) (= takeTransfer@2 FullPerm)) (and (=> (= (ControlFlow 0 24) 22) anon46_Then_correct) (=> (= (ControlFlow 0 24) 23) anon46_Else_correct)))))
(let ((anon44_Then_correct  (=> (and (and (and (and (and b_1_1@8 b_1_1@8) b_2_1@6) true) (> FullPerm 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Ops_1Mask@4) x g))) (and (=> (= (ControlFlow 0 26) 24) anon45_Then_correct) (=> (= (ControlFlow 0 26) 25) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (and (not (and (and (and (and b_1_1@8 b_1_1@8) b_2_1@6) true) (> FullPerm 0.0))) (= Used_1Mask@5 Used_1Mask@3)) (and (= b_2_1@9 b_2_1@6) (= neededTransfer@6 FullPerm))) (and (=> (= (ControlFlow 0 21) 20) anon47_Then_correct) (=> (= (ControlFlow 0 21) 15) anon47_Else_correct)))))
(let ((anon19_correct  (and (=> (= (ControlFlow 0 27) (- 0 29)) (=> (and (and b_1_1@7 b_1_1@7) b_2_1@6) (and (= neededTransfer@4 0.0) (= (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Used_1Mask@3) x f_7) initNeededTransfer@0)))) (=> (=> (and (and b_1_1@7 b_1_1@7) b_2_1@6) (and (= neededTransfer@4 0.0) (= (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Used_1Mask@3) x f_7) initNeededTransfer@0))) (=> (= b_3@0  (and b_1_1@7 b_2_1@6)) (=> (and (= b_3@1  (and b_3@0 (state ResultHeap ResultMask@@9))) (= b_3@2  (and b_3@1 (sumMask ResultMask@@9 Ops_1Mask@4 Used_1Mask@3)))) (=> (and (and (= b_3@3  (and (and b_3@2 (IdenticalOnKnownLocations Ops_1Heap@0 ResultHeap Ops_1Mask@4)) (IdenticalOnKnownLocations Used_1Heap@0 ResultHeap Used_1Mask@3))) (= b_3@4  (and b_3@3 (state ResultHeap ResultMask@@9)))) (and (= b_1_1@8  (and b_1_1@7 b_3@4)) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Used_1Mask@3) x g) FullPerm)))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 27) 26) anon44_Then_correct) (=> (= (ControlFlow 0 27) 21) anon44_Else_correct)))))))))))
(let ((anon43_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@3 Mask@1) (= Heap@3 Heap@1)) (=> (and (and (= neededTransfer@4 neededTransfer@2) (= b_2_1@6 b_2_1@3)) (and (= Used_1Mask@3 Used_1Mask@1) (= (ControlFlow 0 32) 27))) anon19_correct)))))
(let ((anon43_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (and (= neededTransfer@3 (- neededTransfer@2 takeTransfer@1)) (= Used_1Mask@2 (PolymorphicMapType_6000 (store (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Used_1Mask@1) x f_7 (+ (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Used_1Mask@1) x f_7) takeTransfer@1)) (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Used_1Mask@1) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Used_1Mask@1) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Used_1Mask@1) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Used_1Mask@1) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Used_1Mask@1) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Used_1Mask@1) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Used_1Mask@1) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Used_1Mask@1) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Used_1Mask@1)))) (and (= b_2_1@4  (and b_2_1@3 (state Used_1Heap@0 Used_1Mask@2))) (= b_2_1@5  (and b_2_1@4 (= (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@1) x f_7) (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Used_1Heap@0) x f_7)))))) (=> (and (and (and (= Mask@2 (PolymorphicMapType_6000 (store (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@1) x f_7 (- (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@1) x f_7) takeTransfer@1)) (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@1) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Mask@1) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Mask@1) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Mask@1) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Mask@1) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Mask@1) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Mask@1) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Mask@1) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Mask@1))) (= Heap@2 (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@1) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@1) (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@1) (store (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@1) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm) (PolymorphicMapType_6528 (store (|PolymorphicMapType_6528_3515_1736#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@1) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) x f_7 true) (|PolymorphicMapType_6528_3515_53#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@1) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_3515_6053#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@1) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_3515_20774#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@1) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_3515_9403#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@1) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_9369_1736#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@1) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_9369_53#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@1) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_9369_6053#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@1) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_9369_21822#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@1) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))) (|PolymorphicMapType_6528_9369_9403#PolymorphicMapType_6528| (select (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@1) null (|wand#sm| x (/ (to_real 1) (to_real 2)) x 1 x (/ (to_real 1) (to_real 2)) x FullPerm))))) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@1) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@1) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@1) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@1) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@1) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@1)))) (and (= Mask@3 Mask@2) (= Heap@3 Heap@2))) (and (and (= neededTransfer@4 neededTransfer@3) (= b_2_1@6 b_2_1@5)) (and (= Used_1Mask@3 Used_1Mask@2) (= (ControlFlow 0 31) 27)))) anon19_correct)))))
(let ((anon42_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@2) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 34) 31) anon43_Then_correct) (=> (= (ControlFlow 0 34) 32) anon43_Else_correct)))))
(let ((anon42_Then_correct  (=> (and (<= neededTransfer@2 maskTransfer@1) (= takeTransfer@1 neededTransfer@2)) (and (=> (= (ControlFlow 0 33) 31) anon43_Then_correct) (=> (= (ControlFlow 0 33) 32) anon43_Else_correct)))))
(let ((anon41_Then_correct  (=> (and (and (and (and (and b_1_1@7 b_1_1@7) b_2_1@3) true) (> neededTransfer@2 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@1) x f_7))) (and (=> (= (ControlFlow 0 35) 33) anon42_Then_correct) (=> (= (ControlFlow 0 35) 34) anon42_Else_correct)))))
(let ((anon41_Else_correct  (=> (not (and (and (and (and b_1_1@7 b_1_1@7) b_2_1@3) true) (> neededTransfer@2 0.0))) (=> (and (= Mask@3 Mask@1) (= Heap@3 Heap@1)) (=> (and (and (= neededTransfer@4 neededTransfer@2) (= b_2_1@6 b_2_1@3)) (and (= Used_1Mask@3 Used_1Mask@1) (= (ControlFlow 0 30) 27))) anon19_correct)))))
(let ((anon40_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_1Mask@4 Ops_1Mask@2) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@2 neededTransfer@0))) (and (=> (= (ControlFlow 0 38) 35) anon41_Then_correct) (=> (= (ControlFlow 0 38) 30) anon41_Else_correct))))))
(let ((anon40_Then_correct  (=> (and (> takeTransfer@0 0.0) (= neededTransfer@1 (- neededTransfer@0 takeTransfer@0))) (=> (and (and (and (= Used_1Mask@0 (PolymorphicMapType_6000 (store (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| ZeroMask) x f_7) takeTransfer@0)) (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| ZeroMask))) (= b_2_1@1  (and b_2_1@0 (state Used_1Heap@0 Used_1Mask@0)))) (and (= b_2_1@2  (and b_2_1@1 (= (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Ops_1Heap@0) x f_7) (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Used_1Heap@0) x f_7)))) (= Ops_1Mask@3 (PolymorphicMapType_6000 (store (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Ops_1Mask@2) x f_7 (- (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Ops_1Mask@2) x f_7) takeTransfer@0)) (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Ops_1Mask@2) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Ops_1Mask@2) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Ops_1Mask@2) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Ops_1Mask@2) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Ops_1Mask@2) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Ops_1Mask@2) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Ops_1Mask@2) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Ops_1Mask@2) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Ops_1Mask@2))))) (and (and (= Ops_1Mask@4 Ops_1Mask@3) (= Used_1Mask@1 Used_1Mask@0)) (and (= b_2_1@3 b_2_1@2) (= neededTransfer@2 neededTransfer@1)))) (and (=> (= (ControlFlow 0 37) 35) anon41_Then_correct) (=> (= (ControlFlow 0 37) 30) anon41_Else_correct))))))
(let ((anon39_Else_correct  (=> (and (< maskTransfer@0 neededTransfer@0) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 40) 37) anon40_Then_correct) (=> (= (ControlFlow 0 40) 38) anon40_Else_correct)))))
(let ((anon39_Then_correct  (=> (and (<= neededTransfer@0 maskTransfer@0) (= takeTransfer@0 neededTransfer@0)) (and (=> (= (ControlFlow 0 39) 37) anon40_Then_correct) (=> (= (ControlFlow 0 39) 38) anon40_Else_correct)))))
(let ((anon38_Then_correct  (=> (and (and (and (and (and b_1_1@7 b_1_1@7) b_2_1@0) true) (> neededTransfer@0 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Ops_1Mask@2) x f_7))) (and (=> (= (ControlFlow 0 41) 39) anon39_Then_correct) (=> (= (ControlFlow 0 41) 40) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (not (and (and (and (and b_1_1@7 b_1_1@7) b_2_1@0) true) (> neededTransfer@0 0.0))) (=> (and (and (= Ops_1Mask@4 Ops_1Mask@2) (= Used_1Mask@1 ZeroMask)) (and (= b_2_1@3 b_2_1@0) (= neededTransfer@2 neededTransfer@0))) (and (=> (= (ControlFlow 0 36) 35) anon41_Then_correct) (=> (= (ControlFlow 0 36) 30) anon41_Else_correct))))))
(let ((anon7_correct  (=> (= b_1_1@6  (and b_1_1@5 (state Ops_1Heap@0 Ops_1Mask@2))) (=> (and (and (= b_1_1@7  (and b_1_1@6 (state Ops_1Heap@0 Ops_1Mask@2))) (= b_2_1@0  (and b_2_1 (state Used_1Heap@0 ZeroMask)))) (and (= neededTransfer@0 (/ (to_real 1) (to_real 2))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| ZeroMask) x f_7) neededTransfer@0)))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (>= neededTransfer@0 0.0)) (=> (>= neededTransfer@0 0.0) (and (=> (= (ControlFlow 0 42) 41) anon38_Then_correct) (=> (= (ControlFlow 0 42) 36) anon38_Else_correct))))))))
(let ((anon6_correct  (=> (and (and (= b_1_1@4  (and b_1_1@3 (= (select (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Ops_1Heap@0) x f_7) 1))) (= b_1_1@5 b_1_1@4)) (and (= Ops_1Mask@2 Ops_1Mask@1) (= (ControlFlow 0 46) 42))) anon7_correct)))
(let ((anon37_Else_correct  (=> (and (not b_1_1@3) (= (ControlFlow 0 49) 46)) anon6_correct)))
(let ((anon37_Then_correct  (=> b_1_1@3 (and (=> (= (ControlFlow 0 47) (- 0 48)) (HasDirectPerm_3515_1736 Ops_1Mask@1 x f_7)) (=> (HasDirectPerm_3515_1736 Ops_1Mask@1 x f_7) (=> (= (ControlFlow 0 47) 46) anon6_correct))))))
(let ((anon36_Then_correct  (=> b_1_1@3 (and (=> (= (ControlFlow 0 50) 47) anon37_Then_correct) (=> (= (ControlFlow 0 50) 49) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (and (not b_1_1@3) (= b_1_1@5 b_1_1@3)) (and (= Ops_1Mask@2 Ops_1Mask@1) (= (ControlFlow 0 45) 42))) anon7_correct)))
(let ((anon35_Else_correct  (=> (not b_1_1@0) (=> (and (= Ops_1Mask@1 ZeroMask) (= b_1_1@3 b_1_1@0)) (and (=> (= (ControlFlow 0 53) 50) anon36_Then_correct) (=> (= (ControlFlow 0 53) 45) anon36_Else_correct))))))
(let ((anon35_Then_correct  (=> (and b_1_1@0 (= perm@0 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 51) (- 0 52)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (= b_1_1@1  (and b_1_1@0 (=> (> perm@0 NoPerm) (not (= x null))))) (=> (and (and (= Ops_1Mask@0 (PolymorphicMapType_6000 (store (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| ZeroMask) x f_7 (+ (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| ZeroMask) x f_7) perm@0)) (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| ZeroMask))) (= b_1_1@2  (and b_1_1@1 (state Ops_1Heap@0 Ops_1Mask@0)))) (and (= Ops_1Mask@1 Ops_1Mask@0) (= b_1_1@3 b_1_1@2))) (and (=> (= (ControlFlow 0 51) 50) anon36_Then_correct) (=> (= (ControlFlow 0 51) 45) anon36_Else_correct)))))))))
(let ((anon34_Then_correct  (=> b_1_1@0 (and (=> (= (ControlFlow 0 54) 51) anon35_Then_correct) (=> (= (ControlFlow 0 54) 53) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (and (and (not b_1_1@0) (= b_1_1@5 b_1_1@0)) (and (= Ops_1Mask@2 ZeroMask) (= (ControlFlow 0 44) 42))) anon7_correct)))
(let ((anon0_correct  (=> (state Heap@@31 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@31) x $allocated)) (=> (and (and (and (not (= x null)) (= Mask@0 (PolymorphicMapType_6000 (store (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| ZeroMask) x g (+ (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| ZeroMask) x g) FullPerm)) (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| ZeroMask) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| ZeroMask)))) (and (state Heap@@31 Mask@0) (not (= x null)))) (and (and (= Mask@1 (PolymorphicMapType_6000 (store (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@0) x f_7 (+ (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@0) x f_7) FullPerm)) (|PolymorphicMapType_6000_3437_1219#PolymorphicMapType_6000| Mask@0) (|PolymorphicMapType_6000_3517_53#PolymorphicMapType_6000| Mask@0) (|PolymorphicMapType_6000_3517_6053#PolymorphicMapType_6000| Mask@0) (|PolymorphicMapType_6000_3517_27305#PolymorphicMapType_6000| Mask@0) (|PolymorphicMapType_6000_3517_9403#PolymorphicMapType_6000| Mask@0) (|PolymorphicMapType_6000_3437_53#PolymorphicMapType_6000| Mask@0) (|PolymorphicMapType_6000_3437_6053#PolymorphicMapType_6000| Mask@0) (|PolymorphicMapType_6000_3437_27719#PolymorphicMapType_6000| Mask@0) (|PolymorphicMapType_6000_3437_9403#PolymorphicMapType_6000| Mask@0))) (state Heap@@31 Mask@1)) (and (state Heap@@31 Mask@1) (state Heap@@31 Mask@1)))) (and (=> (= (ControlFlow 0 55) (- 0 57)) (= FullPerm (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@1) x f_7))) (=> (= FullPerm (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@1) x f_7)) (=> (and (= Heap@0 (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@@31) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@@31) (store (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@@31) x f_7 1) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@@31) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@@31) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@@31) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@@31) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@@31) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@@31) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@@31))) (state Heap@0 Mask@1)) (and (=> (= (ControlFlow 0 55) (- 0 56)) (= FullPerm (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@1) x g))) (=> (= FullPerm (select (|PolymorphicMapType_6000_3517_1751#PolymorphicMapType_6000| Mask@1) x g)) (=> (and (and (= Heap@1 (PolymorphicMapType_5979 (|PolymorphicMapType_5979_3302_53#PolymorphicMapType_5979| Heap@0) (|PolymorphicMapType_5979_3305_3306#PolymorphicMapType_5979| Heap@0) (store (|PolymorphicMapType_5979_3515_1736#PolymorphicMapType_5979| Heap@0) x g 1) (|PolymorphicMapType_5979_3446_13195#PolymorphicMapType_5979| Heap@0) (|PolymorphicMapType_5979_3515_17872#PolymorphicMapType_5979| Heap@0) (|PolymorphicMapType_5979_3515_9403#PolymorphicMapType_5979| Heap@0) (|PolymorphicMapType_5979_9369_1736#PolymorphicMapType_5979| Heap@0) (|PolymorphicMapType_5979_9369_53#PolymorphicMapType_5979| Heap@0) (|PolymorphicMapType_5979_9369_6053#PolymorphicMapType_5979| Heap@0) (|PolymorphicMapType_5979_9369_9403#PolymorphicMapType_5979| Heap@0))) (state Heap@1 Mask@1)) (and (= b_1_1@0  (and b_1_1 (state Ops_1Heap@0 ZeroMask))) (= b_2@0  (and b_2 (state UsedHeap@0 ZeroMask))))) (and (=> (= (ControlFlow 0 55) 54) anon34_Then_correct) (=> (= (ControlFlow 0 55) 44) anon34_Else_correct)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 58) 55) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
