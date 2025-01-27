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
(declare-sort T@Field_6802_53 0)
(declare-sort T@Field_6815_6816 0)
(declare-sort T@Field_6802_18774 0)
(declare-sort T@Field_6802_18641 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6763 0)) (((PolymorphicMapType_6763 (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| (Array T@Ref T@Field_6802_53 Real)) (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| (Array T@Ref T@Field_6815_6816 Real)) (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| (Array T@Ref T@Field_6802_18641 Real)) (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| (Array T@Ref T@Field_6802_18774 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7291 0)) (((PolymorphicMapType_7291 (|PolymorphicMapType_7291_6802_53#PolymorphicMapType_7291| (Array T@Ref T@Field_6802_53 Bool)) (|PolymorphicMapType_7291_6802_6816#PolymorphicMapType_7291| (Array T@Ref T@Field_6815_6816 Bool)) (|PolymorphicMapType_7291_6802_18641#PolymorphicMapType_7291| (Array T@Ref T@Field_6802_18641 Bool)) (|PolymorphicMapType_7291_6802_19754#PolymorphicMapType_7291| (Array T@Ref T@Field_6802_18774 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6742 0)) (((PolymorphicMapType_6742 (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| (Array T@Ref T@Field_6802_53 Bool)) (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| (Array T@Ref T@Field_6815_6816 T@Ref)) (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| (Array T@Ref T@Field_6802_18774 T@PolymorphicMapType_7291)) (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| (Array T@Ref T@Field_6802_18641 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_6742 T@PolymorphicMapType_6742) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6742 T@PolymorphicMapType_6742) Bool)
(declare-fun state (T@PolymorphicMapType_6742 T@PolymorphicMapType_6763) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6763) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7291)
(declare-fun |fun1'| (T@PolymorphicMapType_6742 Int) Int)
(declare-fun dummyFunction_1437 (Int) Bool)
(declare-fun |fun1#triggerStateless| (Int) Int)
(declare-fun |fun2'| (T@PolymorphicMapType_6742 Int) Int)
(declare-fun |fun2#triggerStateless| (Int) Int)
(declare-fun |fun3'| (T@PolymorphicMapType_6742 Int) Int)
(declare-fun |fun3#triggerStateless| (Int) Int)
(declare-fun |fun4'| (T@PolymorphicMapType_6742 Int) Int)
(declare-fun |fun4#triggerStateless| (Int) Int)
(declare-fun |fun5'| (T@PolymorphicMapType_6742 Int) Int)
(declare-fun |fun5#triggerStateless| (Int) Int)
(declare-fun |fun6'| (T@PolymorphicMapType_6742 Int) Int)
(declare-fun |fun6#triggerStateless| (Int) Int)
(declare-fun fun1 (T@PolymorphicMapType_6742 Int) Int)
(declare-fun fun2 (T@PolymorphicMapType_6742 Int) Int)
(declare-fun fun3 (T@PolymorphicMapType_6742 Int) Int)
(declare-fun fun4 (T@PolymorphicMapType_6742 Int) Int)
(declare-fun fun5 (T@PolymorphicMapType_6742 Int) Int)
(declare-fun fun6 (T@PolymorphicMapType_6742 Int) Int)
(declare-fun decreasing_1189 (Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6742 T@PolymorphicMapType_6742 T@PolymorphicMapType_6763) Bool)
(declare-fun IsPredicateField_6802_18732 (T@Field_6802_18641) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6802 (T@Field_6802_18641) T@Field_6802_18774)
(declare-fun HasDirectPerm_6802_18705 (T@PolymorphicMapType_6763 T@Ref T@Field_6802_18641) Bool)
(declare-fun IsWandField_6802_20281 (T@Field_6802_18641) Bool)
(declare-fun WandMaskField_6802 (T@Field_6802_18641) T@Field_6802_18774)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_6742)
(declare-fun ZeroMask () T@PolymorphicMapType_6763)
(declare-fun $allocated () T@Field_6802_53)
(declare-fun InsidePredicate_6802_6802 (T@Field_6802_18641 T@FrameType T@Field_6802_18641 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6802_23244 (T@Field_6802_18774) Bool)
(declare-fun IsWandField_6802_23260 (T@Field_6802_18774) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6802_6816 (T@Field_6815_6816) Bool)
(declare-fun IsWandField_6802_6816 (T@Field_6815_6816) Bool)
(declare-fun IsPredicateField_6802_53 (T@Field_6802_53) Bool)
(declare-fun IsWandField_6802_53 (T@Field_6802_53) Bool)
(declare-fun HasDirectPerm_6802_23615 (T@PolymorphicMapType_6763 T@Ref T@Field_6802_18774) Bool)
(declare-fun HasDirectPerm_6802_6816 (T@PolymorphicMapType_6763 T@Ref T@Field_6815_6816) Bool)
(declare-fun HasDirectPerm_6802_53 (T@PolymorphicMapType_6763 T@Ref T@Field_6802_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6763 T@PolymorphicMapType_6763 T@PolymorphicMapType_6763) Bool)
(declare-fun bounded_1214 (Int) Bool)
(declare-fun |fun1#frame| (T@FrameType Int) Int)
(declare-fun |fun2#frame| (T@FrameType Int) Int)
(declare-fun |fun3#frame| (T@FrameType Int) Int)
(declare-fun |fun4#frame| (T@FrameType Int) Int)
(declare-fun |fun5#frame| (T@FrameType Int) Int)
(declare-fun |fun6#frame| (T@FrameType Int) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_6742) (Heap1 T@PolymorphicMapType_6742) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6742) (Mask T@PolymorphicMapType_6763) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6742) (Heap1@@0 T@PolymorphicMapType_6742) (Heap2 T@PolymorphicMapType_6742) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6802_18774) ) (!  (not (select (|PolymorphicMapType_7291_6802_19754#PolymorphicMapType_7291| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7291_6802_19754#PolymorphicMapType_7291| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6802_18641) ) (!  (not (select (|PolymorphicMapType_7291_6802_18641#PolymorphicMapType_7291| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7291_6802_18641#PolymorphicMapType_7291| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6815_6816) ) (!  (not (select (|PolymorphicMapType_7291_6802_6816#PolymorphicMapType_7291| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7291_6802_6816#PolymorphicMapType_7291| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6802_53) ) (!  (not (select (|PolymorphicMapType_7291_6802_53#PolymorphicMapType_7291| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7291_6802_53#PolymorphicMapType_7291| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6742) (x Int) ) (! (dummyFunction_1437 (|fun1#triggerStateless| x))
 :qid |stdinbpl.227:15|
 :skolemid |25|
 :pattern ( (|fun1'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6742) (x@@0 Int) ) (! (dummyFunction_1437 (|fun2#triggerStateless| x@@0))
 :qid |stdinbpl.305:15|
 :skolemid |29|
 :pattern ( (|fun2'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6742) (x@@1 Int) ) (! (dummyFunction_1437 (|fun3#triggerStateless| x@@1))
 :qid |stdinbpl.383:15|
 :skolemid |33|
 :pattern ( (|fun3'| Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6742) (x@@2 Int) ) (! (dummyFunction_1437 (|fun4#triggerStateless| x@@2))
 :qid |stdinbpl.461:15|
 :skolemid |37|
 :pattern ( (|fun4'| Heap@@3 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6742) (x@@3 Int) ) (! (dummyFunction_1437 (|fun5#triggerStateless| x@@3))
 :qid |stdinbpl.539:15|
 :skolemid |41|
 :pattern ( (|fun5'| Heap@@4 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6742) (x@@4 Int) ) (! (dummyFunction_1437 (|fun6#triggerStateless| x@@4))
 :qid |stdinbpl.617:15|
 :skolemid |45|
 :pattern ( (|fun6'| Heap@@5 x@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6742) (x@@5 Int) ) (!  (and (= (fun1 Heap@@6 x@@5) (|fun1'| Heap@@6 x@@5)) (dummyFunction_1437 (|fun1#triggerStateless| x@@5)))
 :qid |stdinbpl.223:15|
 :skolemid |24|
 :pattern ( (fun1 Heap@@6 x@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6742) (x@@6 Int) ) (!  (and (= (fun2 Heap@@7 x@@6) (|fun2'| Heap@@7 x@@6)) (dummyFunction_1437 (|fun2#triggerStateless| x@@6)))
 :qid |stdinbpl.301:15|
 :skolemid |28|
 :pattern ( (fun2 Heap@@7 x@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6742) (x@@7 Int) ) (!  (and (= (fun3 Heap@@8 x@@7) (|fun3'| Heap@@8 x@@7)) (dummyFunction_1437 (|fun3#triggerStateless| x@@7)))
 :qid |stdinbpl.379:15|
 :skolemid |32|
 :pattern ( (fun3 Heap@@8 x@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6742) (x@@8 Int) ) (!  (and (= (fun4 Heap@@9 x@@8) (|fun4'| Heap@@9 x@@8)) (dummyFunction_1437 (|fun4#triggerStateless| x@@8)))
 :qid |stdinbpl.457:15|
 :skolemid |36|
 :pattern ( (fun4 Heap@@9 x@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6742) (x@@9 Int) ) (!  (and (= (fun5 Heap@@10 x@@9) (|fun5'| Heap@@10 x@@9)) (dummyFunction_1437 (|fun5#triggerStateless| x@@9)))
 :qid |stdinbpl.535:15|
 :skolemid |40|
 :pattern ( (fun5 Heap@@10 x@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6742) (x@@10 Int) ) (!  (and (= (fun6 Heap@@11 x@@10) (|fun6'| Heap@@11 x@@10)) (dummyFunction_1437 (|fun6#triggerStateless| x@@10)))
 :qid |stdinbpl.613:15|
 :skolemid |44|
 :pattern ( (fun6 Heap@@11 x@@10))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_1189 int1 int2))
 :qid |stdinbpl.192:15|
 :skolemid |22|
 :pattern ( (decreasing_1189 int1 int2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6742) (ExhaleHeap T@PolymorphicMapType_6742) (Mask@@0 T@PolymorphicMapType_6763) (pm_f T@Field_6802_18641) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6802_18705 Mask@@0 null pm_f) (IsPredicateField_6802_18732 pm_f)) (= (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@12) null (PredicateMaskField_6802 pm_f)) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap) null (PredicateMaskField_6802 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@0) (IsPredicateField_6802_18732 pm_f) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap) null (PredicateMaskField_6802 pm_f)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6742) (ExhaleHeap@@0 T@PolymorphicMapType_6742) (Mask@@1 T@PolymorphicMapType_6763) (pm_f@@0 T@Field_6802_18641) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6802_18705 Mask@@1 null pm_f@@0) (IsWandField_6802_20281 pm_f@@0)) (= (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@13) null (WandMaskField_6802 pm_f@@0)) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@0) null (WandMaskField_6802 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@1) (IsWandField_6802_20281 pm_f@@0) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@0) null (WandMaskField_6802 pm_f@@0)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6742) (ExhaleHeap@@1 T@PolymorphicMapType_6742) (Mask@@2 T@PolymorphicMapType_6763) (pm_f@@1 T@Field_6802_18641) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6802_18705 Mask@@2 null pm_f@@1) (IsPredicateField_6802_18732 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6802_53) ) (!  (=> (select (|PolymorphicMapType_7291_6802_53#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@14) null (PredicateMaskField_6802 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@14) o2 f_2) (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6815_6816) ) (!  (=> (select (|PolymorphicMapType_7291_6802_6816#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@14) null (PredicateMaskField_6802 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@14) o2@@0 f_2@@0) (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6802_18641) ) (!  (=> (select (|PolymorphicMapType_7291_6802_18641#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@14) null (PredicateMaskField_6802 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@14) o2@@1 f_2@@1) (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6802_18774) ) (!  (=> (select (|PolymorphicMapType_7291_6802_19754#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@14) null (PredicateMaskField_6802 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@14) o2@@2 f_2@@2) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@2) (IsPredicateField_6802_18732 pm_f@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6742) (ExhaleHeap@@2 T@PolymorphicMapType_6742) (Mask@@3 T@PolymorphicMapType_6763) (pm_f@@2 T@Field_6802_18641) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6802_18705 Mask@@3 null pm_f@@2) (IsWandField_6802_20281 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6802_53) ) (!  (=> (select (|PolymorphicMapType_7291_6802_53#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@15) null (WandMaskField_6802 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@15) o2@@3 f_2@@3) (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6815_6816) ) (!  (=> (select (|PolymorphicMapType_7291_6802_6816#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@15) null (WandMaskField_6802 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@15) o2@@4 f_2@@4) (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6802_18641) ) (!  (=> (select (|PolymorphicMapType_7291_6802_18641#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@15) null (WandMaskField_6802 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@15) o2@@5 f_2@@5) (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_6802_18774) ) (!  (=> (select (|PolymorphicMapType_7291_6802_19754#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@15) null (WandMaskField_6802 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@15) o2@@6 f_2@@6) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@3) (IsWandField_6802_20281 pm_f@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6742) (Mask@@4 T@PolymorphicMapType_6763) (x@@11 Int) ) (!  (=> (and (state Heap@@16 Mask@@4) (< AssumeFunctionsAbove 0)) (= (fun4 Heap@@16 x@@11) (ite (> x@@11 (- 0 10)) (|fun4'| Heap@@16 (- x@@11 1)) 6)))
 :qid |stdinbpl.467:15|
 :skolemid |38|
 :pattern ( (state Heap@@16 Mask@@4) (fun4 Heap@@16 x@@11))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6742) (Mask@@5 T@PolymorphicMapType_6763) (x@@12 Int) ) (!  (=> (and (state Heap@@17 Mask@@5) (< AssumeFunctionsAbove 1)) (= (fun3 Heap@@17 x@@12) (ite (> x@@12 (- 0 10)) (|fun3'| Heap@@17 (- x@@12 1)) 6)))
 :qid |stdinbpl.389:15|
 :skolemid |34|
 :pattern ( (state Heap@@17 Mask@@5) (fun3 Heap@@17 x@@12))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6742) (Mask@@6 T@PolymorphicMapType_6763) (x@@13 Int) ) (!  (=> (and (state Heap@@18 Mask@@6) (< AssumeFunctionsAbove 2)) (= (fun6 Heap@@18 x@@13) (ite (> x@@13 (- 0 10)) (|fun6'| Heap@@18 (- x@@13 1)) 6)))
 :qid |stdinbpl.623:15|
 :skolemid |46|
 :pattern ( (state Heap@@18 Mask@@6) (fun6 Heap@@18 x@@13))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6742) (Mask@@7 T@PolymorphicMapType_6763) (x@@14 Int) ) (!  (=> (and (state Heap@@19 Mask@@7) (< AssumeFunctionsAbove 3)) (= (fun2 Heap@@19 x@@14) (ite (> x@@14 (- 0 10)) (|fun2'| Heap@@19 (- x@@14 1)) 6)))
 :qid |stdinbpl.311:15|
 :skolemid |30|
 :pattern ( (state Heap@@19 Mask@@7) (fun2 Heap@@19 x@@14))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6742) (Mask@@8 T@PolymorphicMapType_6763) (x@@15 Int) ) (!  (=> (and (state Heap@@20 Mask@@8) (< AssumeFunctionsAbove 4)) (= (fun1 Heap@@20 x@@15) (ite (> x@@15 (- 0 10)) (|fun1'| Heap@@20 (- x@@15 1)) 6)))
 :qid |stdinbpl.233:15|
 :skolemid |26|
 :pattern ( (state Heap@@20 Mask@@8) (fun1 Heap@@20 x@@15))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6742) (Mask@@9 T@PolymorphicMapType_6763) (x@@16 Int) ) (!  (=> (and (state Heap@@21 Mask@@9) (< AssumeFunctionsAbove 5)) (= (fun5 Heap@@21 x@@16) (ite (> x@@16 (- 0 10)) (|fun5'| Heap@@21 (- x@@16 1)) 6)))
 :qid |stdinbpl.545:15|
 :skolemid |42|
 :pattern ( (state Heap@@21 Mask@@9) (fun5 Heap@@21 x@@16))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6742) (ExhaleHeap@@3 T@PolymorphicMapType_6742) (Mask@@10 T@PolymorphicMapType_6763) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@3 Mask@@10) (=> (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@22) o_1 $allocated) (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@3 Mask@@10) (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_6802_18641) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6802_6802 p v_1 p w))
 :qid |stdinbpl.179:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6802_6802 p v_1 p w))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6742) (ExhaleHeap@@4 T@PolymorphicMapType_6742) (Mask@@11 T@PolymorphicMapType_6763) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@4 Mask@@11) (succHeap Heap@@23 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@4 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6763) (o_2@@3 T@Ref) (f_4@@3 T@Field_6802_18774) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| Mask@@12) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6802_23244 f_4@@3))) (not (IsWandField_6802_23260 f_4@@3))) (<= (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| Mask@@12) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| Mask@@12) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6763) (o_2@@4 T@Ref) (f_4@@4 T@Field_6802_18641) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| Mask@@13) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6802_18732 f_4@@4))) (not (IsWandField_6802_20281 f_4@@4))) (<= (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| Mask@@13) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| Mask@@13) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6763) (o_2@@5 T@Ref) (f_4@@5 T@Field_6815_6816) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| Mask@@14) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6802_6816 f_4@@5))) (not (IsWandField_6802_6816 f_4@@5))) (<= (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| Mask@@14) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| Mask@@14) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6763) (o_2@@6 T@Ref) (f_4@@6 T@Field_6802_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| Mask@@15) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6802_53 f_4@@6))) (not (IsWandField_6802_53 f_4@@6))) (<= (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| Mask@@15) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| Mask@@15) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6763) (o_2@@7 T@Ref) (f_4@@7 T@Field_6802_18774) ) (! (= (HasDirectPerm_6802_23615 Mask@@16 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| Mask@@16) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6802_23615 Mask@@16 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6763) (o_2@@8 T@Ref) (f_4@@8 T@Field_6802_18641) ) (! (= (HasDirectPerm_6802_18705 Mask@@17 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| Mask@@17) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6802_18705 Mask@@17 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6763) (o_2@@9 T@Ref) (f_4@@9 T@Field_6815_6816) ) (! (= (HasDirectPerm_6802_6816 Mask@@18 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| Mask@@18) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6802_6816 Mask@@18 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6763) (o_2@@10 T@Ref) (f_4@@10 T@Field_6802_53) ) (! (= (HasDirectPerm_6802_53 Mask@@19 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| Mask@@19) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6802_53 Mask@@19 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.167:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6742) (ExhaleHeap@@5 T@PolymorphicMapType_6742) (Mask@@20 T@PolymorphicMapType_6763) (o_1@@0 T@Ref) (f_2@@7 T@Field_6802_18774) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_6802_23615 Mask@@20 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@24) o_1@@0 f_2@@7) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6742) (ExhaleHeap@@6 T@PolymorphicMapType_6742) (Mask@@21 T@PolymorphicMapType_6763) (o_1@@1 T@Ref) (f_2@@8 T@Field_6802_18641) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_6802_18705 Mask@@21 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@25) o_1@@1 f_2@@8) (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6742) (ExhaleHeap@@7 T@PolymorphicMapType_6742) (Mask@@22 T@PolymorphicMapType_6763) (o_1@@2 T@Ref) (f_2@@9 T@Field_6815_6816) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_6802_6816 Mask@@22 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@26) o_1@@2 f_2@@9) (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6742) (ExhaleHeap@@8 T@PolymorphicMapType_6742) (Mask@@23 T@PolymorphicMapType_6763) (o_1@@3 T@Ref) (f_2@@10 T@Field_6802_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_6802_53 Mask@@23 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@27) o_1@@3 f_2@@10) (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6802_18774) ) (! (= (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6802_18641) ) (! (= (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6815_6816) ) (! (= (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6802_53) ) (! (= (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6763) (SummandMask1 T@PolymorphicMapType_6763) (SummandMask2 T@PolymorphicMapType_6763) (o_2@@15 T@Ref) (f_4@@15 T@Field_6802_18774) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6763) (SummandMask1@@0 T@PolymorphicMapType_6763) (SummandMask2@@0 T@PolymorphicMapType_6763) (o_2@@16 T@Ref) (f_4@@16 T@Field_6802_18641) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6763) (SummandMask1@@1 T@PolymorphicMapType_6763) (SummandMask2@@1 T@PolymorphicMapType_6763) (o_2@@17 T@Ref) (f_4@@17 T@Field_6815_6816) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6763) (SummandMask1@@2 T@PolymorphicMapType_6763) (SummandMask2@@2 T@PolymorphicMapType_6763) (o_2@@18 T@Ref) (f_4@@18 T@Field_6802_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_1214 int1@@0))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (bounded_1214 int1@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6742) (Mask@@24 T@PolymorphicMapType_6763) (x@@17 Int) ) (!  (=> (state Heap@@28 Mask@@24) (= (|fun1'| Heap@@28 x@@17) (|fun1#frame| EmptyFrame x@@17)))
 :qid |stdinbpl.240:15|
 :skolemid |27|
 :pattern ( (state Heap@@28 Mask@@24) (|fun1'| Heap@@28 x@@17))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6742) (Mask@@25 T@PolymorphicMapType_6763) (x@@18 Int) ) (!  (=> (state Heap@@29 Mask@@25) (= (|fun2'| Heap@@29 x@@18) (|fun2#frame| EmptyFrame x@@18)))
 :qid |stdinbpl.318:15|
 :skolemid |31|
 :pattern ( (state Heap@@29 Mask@@25) (|fun2'| Heap@@29 x@@18))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6742) (Mask@@26 T@PolymorphicMapType_6763) (x@@19 Int) ) (!  (=> (state Heap@@30 Mask@@26) (= (|fun3'| Heap@@30 x@@19) (|fun3#frame| EmptyFrame x@@19)))
 :qid |stdinbpl.396:15|
 :skolemid |35|
 :pattern ( (state Heap@@30 Mask@@26) (|fun3'| Heap@@30 x@@19))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6742) (Mask@@27 T@PolymorphicMapType_6763) (x@@20 Int) ) (!  (=> (state Heap@@31 Mask@@27) (= (|fun4'| Heap@@31 x@@20) (|fun4#frame| EmptyFrame x@@20)))
 :qid |stdinbpl.474:15|
 :skolemid |39|
 :pattern ( (state Heap@@31 Mask@@27) (|fun4'| Heap@@31 x@@20))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6742) (Mask@@28 T@PolymorphicMapType_6763) (x@@21 Int) ) (!  (=> (state Heap@@32 Mask@@28) (= (|fun5'| Heap@@32 x@@21) (|fun5#frame| EmptyFrame x@@21)))
 :qid |stdinbpl.552:15|
 :skolemid |43|
 :pattern ( (state Heap@@32 Mask@@28) (|fun5'| Heap@@32 x@@21))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6742) (Mask@@29 T@PolymorphicMapType_6763) (x@@22 Int) ) (!  (=> (state Heap@@33 Mask@@29) (= (|fun6'| Heap@@33 x@@22) (|fun6#frame| EmptyFrame x@@22)))
 :qid |stdinbpl.630:15|
 :skolemid |47|
 :pattern ( (state Heap@@33 Mask@@29) (|fun6'| Heap@@33 x@@22))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6742) (o T@Ref) (f_3 T@Field_6802_18641) (v T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_6742 (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@34) (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@34) (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@34) (store (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@34) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6742 (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@34) (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@34) (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@34) (store (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@34) o f_3 v)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6742) (o@@0 T@Ref) (f_3@@0 T@Field_6802_18774) (v@@0 T@PolymorphicMapType_7291) ) (! (succHeap Heap@@35 (PolymorphicMapType_6742 (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@35) (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@35) (store (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@35) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6742 (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@35) (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@35) (store (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@35) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_6742) (o@@1 T@Ref) (f_3@@1 T@Field_6815_6816) (v@@1 T@Ref) ) (! (succHeap Heap@@36 (PolymorphicMapType_6742 (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@36) (store (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@36) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@36) (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6742 (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@36) (store (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@36) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@36) (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_6742) (o@@2 T@Ref) (f_3@@2 T@Field_6802_53) (v@@2 Bool) ) (! (succHeap Heap@@37 (PolymorphicMapType_6742 (store (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@37) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@37) (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@37) (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6742 (store (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@37) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@37) (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@37) (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@37)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_6815_6816) (Heap@@38 T@PolymorphicMapType_6742) ) (!  (=> (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@38) o@@3 $allocated) (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@38) (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@38) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@38) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_6802_18641) (v_1@@0 T@FrameType) (q T@Field_6802_18641) (w@@0 T@FrameType) (r T@Field_6802_18641) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6802_6802 p@@1 v_1@@0 q w@@0) (InsidePredicate_6802_6802 q w@@0 r u)) (InsidePredicate_6802_6802 p@@1 v_1@@0 r u))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6802_6802 p@@1 v_1@@0 q w@@0) (InsidePredicate_6802_6802 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |fun6#definedness|)
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
 (=> (= (ControlFlow 0 0) 7) true)
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
(declare-sort T@Field_6802_53 0)
(declare-sort T@Field_6815_6816 0)
(declare-sort T@Field_6802_18774 0)
(declare-sort T@Field_6802_18641 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6763 0)) (((PolymorphicMapType_6763 (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| (Array T@Ref T@Field_6802_53 Real)) (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| (Array T@Ref T@Field_6815_6816 Real)) (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| (Array T@Ref T@Field_6802_18641 Real)) (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| (Array T@Ref T@Field_6802_18774 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7291 0)) (((PolymorphicMapType_7291 (|PolymorphicMapType_7291_6802_53#PolymorphicMapType_7291| (Array T@Ref T@Field_6802_53 Bool)) (|PolymorphicMapType_7291_6802_6816#PolymorphicMapType_7291| (Array T@Ref T@Field_6815_6816 Bool)) (|PolymorphicMapType_7291_6802_18641#PolymorphicMapType_7291| (Array T@Ref T@Field_6802_18641 Bool)) (|PolymorphicMapType_7291_6802_19754#PolymorphicMapType_7291| (Array T@Ref T@Field_6802_18774 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6742 0)) (((PolymorphicMapType_6742 (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| (Array T@Ref T@Field_6802_53 Bool)) (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| (Array T@Ref T@Field_6815_6816 T@Ref)) (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| (Array T@Ref T@Field_6802_18774 T@PolymorphicMapType_7291)) (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| (Array T@Ref T@Field_6802_18641 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_6742 T@PolymorphicMapType_6742) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6742 T@PolymorphicMapType_6742) Bool)
(declare-fun state (T@PolymorphicMapType_6742 T@PolymorphicMapType_6763) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6763) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7291)
(declare-fun |fun1'| (T@PolymorphicMapType_6742 Int) Int)
(declare-fun dummyFunction_1437 (Int) Bool)
(declare-fun |fun1#triggerStateless| (Int) Int)
(declare-fun |fun2'| (T@PolymorphicMapType_6742 Int) Int)
(declare-fun |fun2#triggerStateless| (Int) Int)
(declare-fun |fun3'| (T@PolymorphicMapType_6742 Int) Int)
(declare-fun |fun3#triggerStateless| (Int) Int)
(declare-fun |fun4'| (T@PolymorphicMapType_6742 Int) Int)
(declare-fun |fun4#triggerStateless| (Int) Int)
(declare-fun |fun5'| (T@PolymorphicMapType_6742 Int) Int)
(declare-fun |fun5#triggerStateless| (Int) Int)
(declare-fun |fun6'| (T@PolymorphicMapType_6742 Int) Int)
(declare-fun |fun6#triggerStateless| (Int) Int)
(declare-fun fun1 (T@PolymorphicMapType_6742 Int) Int)
(declare-fun fun2 (T@PolymorphicMapType_6742 Int) Int)
(declare-fun fun3 (T@PolymorphicMapType_6742 Int) Int)
(declare-fun fun4 (T@PolymorphicMapType_6742 Int) Int)
(declare-fun fun5 (T@PolymorphicMapType_6742 Int) Int)
(declare-fun fun6 (T@PolymorphicMapType_6742 Int) Int)
(declare-fun decreasing_1189 (Int Int) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6742 T@PolymorphicMapType_6742 T@PolymorphicMapType_6763) Bool)
(declare-fun IsPredicateField_6802_18732 (T@Field_6802_18641) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6802 (T@Field_6802_18641) T@Field_6802_18774)
(declare-fun HasDirectPerm_6802_18705 (T@PolymorphicMapType_6763 T@Ref T@Field_6802_18641) Bool)
(declare-fun IsWandField_6802_20281 (T@Field_6802_18641) Bool)
(declare-fun WandMaskField_6802 (T@Field_6802_18641) T@Field_6802_18774)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun dummyHeap () T@PolymorphicMapType_6742)
(declare-fun ZeroMask () T@PolymorphicMapType_6763)
(declare-fun $allocated () T@Field_6802_53)
(declare-fun InsidePredicate_6802_6802 (T@Field_6802_18641 T@FrameType T@Field_6802_18641 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6802_23244 (T@Field_6802_18774) Bool)
(declare-fun IsWandField_6802_23260 (T@Field_6802_18774) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6802_6816 (T@Field_6815_6816) Bool)
(declare-fun IsWandField_6802_6816 (T@Field_6815_6816) Bool)
(declare-fun IsPredicateField_6802_53 (T@Field_6802_53) Bool)
(declare-fun IsWandField_6802_53 (T@Field_6802_53) Bool)
(declare-fun HasDirectPerm_6802_23615 (T@PolymorphicMapType_6763 T@Ref T@Field_6802_18774) Bool)
(declare-fun HasDirectPerm_6802_6816 (T@PolymorphicMapType_6763 T@Ref T@Field_6815_6816) Bool)
(declare-fun HasDirectPerm_6802_53 (T@PolymorphicMapType_6763 T@Ref T@Field_6802_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6763 T@PolymorphicMapType_6763 T@PolymorphicMapType_6763) Bool)
(declare-fun bounded_1214 (Int) Bool)
(declare-fun |fun1#frame| (T@FrameType Int) Int)
(declare-fun |fun2#frame| (T@FrameType Int) Int)
(declare-fun |fun3#frame| (T@FrameType Int) Int)
(declare-fun |fun4#frame| (T@FrameType Int) Int)
(declare-fun |fun5#frame| (T@FrameType Int) Int)
(declare-fun |fun6#frame| (T@FrameType Int) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_6742) (Heap1 T@PolymorphicMapType_6742) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6742) (Mask T@PolymorphicMapType_6763) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6742) (Heap1@@0 T@PolymorphicMapType_6742) (Heap2 T@PolymorphicMapType_6742) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6802_18774) ) (!  (not (select (|PolymorphicMapType_7291_6802_19754#PolymorphicMapType_7291| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7291_6802_19754#PolymorphicMapType_7291| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6802_18641) ) (!  (not (select (|PolymorphicMapType_7291_6802_18641#PolymorphicMapType_7291| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7291_6802_18641#PolymorphicMapType_7291| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6815_6816) ) (!  (not (select (|PolymorphicMapType_7291_6802_6816#PolymorphicMapType_7291| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7291_6802_6816#PolymorphicMapType_7291| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6802_53) ) (!  (not (select (|PolymorphicMapType_7291_6802_53#PolymorphicMapType_7291| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7291_6802_53#PolymorphicMapType_7291| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6742) (x Int) ) (! (dummyFunction_1437 (|fun1#triggerStateless| x))
 :qid |stdinbpl.227:15|
 :skolemid |25|
 :pattern ( (|fun1'| Heap@@0 x))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6742) (x@@0 Int) ) (! (dummyFunction_1437 (|fun2#triggerStateless| x@@0))
 :qid |stdinbpl.305:15|
 :skolemid |29|
 :pattern ( (|fun2'| Heap@@1 x@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6742) (x@@1 Int) ) (! (dummyFunction_1437 (|fun3#triggerStateless| x@@1))
 :qid |stdinbpl.383:15|
 :skolemid |33|
 :pattern ( (|fun3'| Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6742) (x@@2 Int) ) (! (dummyFunction_1437 (|fun4#triggerStateless| x@@2))
 :qid |stdinbpl.461:15|
 :skolemid |37|
 :pattern ( (|fun4'| Heap@@3 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6742) (x@@3 Int) ) (! (dummyFunction_1437 (|fun5#triggerStateless| x@@3))
 :qid |stdinbpl.539:15|
 :skolemid |41|
 :pattern ( (|fun5'| Heap@@4 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6742) (x@@4 Int) ) (! (dummyFunction_1437 (|fun6#triggerStateless| x@@4))
 :qid |stdinbpl.617:15|
 :skolemid |45|
 :pattern ( (|fun6'| Heap@@5 x@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6742) (x@@5 Int) ) (!  (and (= (fun1 Heap@@6 x@@5) (|fun1'| Heap@@6 x@@5)) (dummyFunction_1437 (|fun1#triggerStateless| x@@5)))
 :qid |stdinbpl.223:15|
 :skolemid |24|
 :pattern ( (fun1 Heap@@6 x@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6742) (x@@6 Int) ) (!  (and (= (fun2 Heap@@7 x@@6) (|fun2'| Heap@@7 x@@6)) (dummyFunction_1437 (|fun2#triggerStateless| x@@6)))
 :qid |stdinbpl.301:15|
 :skolemid |28|
 :pattern ( (fun2 Heap@@7 x@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6742) (x@@7 Int) ) (!  (and (= (fun3 Heap@@8 x@@7) (|fun3'| Heap@@8 x@@7)) (dummyFunction_1437 (|fun3#triggerStateless| x@@7)))
 :qid |stdinbpl.379:15|
 :skolemid |32|
 :pattern ( (fun3 Heap@@8 x@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6742) (x@@8 Int) ) (!  (and (= (fun4 Heap@@9 x@@8) (|fun4'| Heap@@9 x@@8)) (dummyFunction_1437 (|fun4#triggerStateless| x@@8)))
 :qid |stdinbpl.457:15|
 :skolemid |36|
 :pattern ( (fun4 Heap@@9 x@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6742) (x@@9 Int) ) (!  (and (= (fun5 Heap@@10 x@@9) (|fun5'| Heap@@10 x@@9)) (dummyFunction_1437 (|fun5#triggerStateless| x@@9)))
 :qid |stdinbpl.535:15|
 :skolemid |40|
 :pattern ( (fun5 Heap@@10 x@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6742) (x@@10 Int) ) (!  (and (= (fun6 Heap@@11 x@@10) (|fun6'| Heap@@11 x@@10)) (dummyFunction_1437 (|fun6#triggerStateless| x@@10)))
 :qid |stdinbpl.613:15|
 :skolemid |44|
 :pattern ( (fun6 Heap@@11 x@@10))
)))
(assert (forall ((int1 Int) (int2 Int) ) (!  (=> (< int1 int2) (decreasing_1189 int1 int2))
 :qid |stdinbpl.192:15|
 :skolemid |22|
 :pattern ( (decreasing_1189 int1 int2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6742) (ExhaleHeap T@PolymorphicMapType_6742) (Mask@@0 T@PolymorphicMapType_6763) (pm_f T@Field_6802_18641) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6802_18705 Mask@@0 null pm_f) (IsPredicateField_6802_18732 pm_f)) (= (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@12) null (PredicateMaskField_6802 pm_f)) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap) null (PredicateMaskField_6802 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@0) (IsPredicateField_6802_18732 pm_f) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap) null (PredicateMaskField_6802 pm_f)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6742) (ExhaleHeap@@0 T@PolymorphicMapType_6742) (Mask@@1 T@PolymorphicMapType_6763) (pm_f@@0 T@Field_6802_18641) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6802_18705 Mask@@1 null pm_f@@0) (IsWandField_6802_20281 pm_f@@0)) (= (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@13) null (WandMaskField_6802 pm_f@@0)) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@0) null (WandMaskField_6802 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@1) (IsWandField_6802_20281 pm_f@@0) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@0) null (WandMaskField_6802 pm_f@@0)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6742) (ExhaleHeap@@1 T@PolymorphicMapType_6742) (Mask@@2 T@PolymorphicMapType_6763) (pm_f@@1 T@Field_6802_18641) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6802_18705 Mask@@2 null pm_f@@1) (IsPredicateField_6802_18732 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6802_53) ) (!  (=> (select (|PolymorphicMapType_7291_6802_53#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@14) null (PredicateMaskField_6802 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@14) o2 f_2) (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6815_6816) ) (!  (=> (select (|PolymorphicMapType_7291_6802_6816#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@14) null (PredicateMaskField_6802 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@14) o2@@0 f_2@@0) (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_6802_18641) ) (!  (=> (select (|PolymorphicMapType_7291_6802_18641#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@14) null (PredicateMaskField_6802 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@14) o2@@1 f_2@@1) (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6802_18774) ) (!  (=> (select (|PolymorphicMapType_7291_6802_19754#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@14) null (PredicateMaskField_6802 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@14) o2@@2 f_2@@2) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@1 Mask@@2) (IsPredicateField_6802_18732 pm_f@@1))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6742) (ExhaleHeap@@2 T@PolymorphicMapType_6742) (Mask@@3 T@PolymorphicMapType_6763) (pm_f@@2 T@Field_6802_18641) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6802_18705 Mask@@3 null pm_f@@2) (IsWandField_6802_20281 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6802_53) ) (!  (=> (select (|PolymorphicMapType_7291_6802_53#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@15) null (WandMaskField_6802 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@15) o2@@3 f_2@@3) (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6815_6816) ) (!  (=> (select (|PolymorphicMapType_7291_6802_6816#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@15) null (WandMaskField_6802 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@15) o2@@4 f_2@@4) (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6802_18641) ) (!  (=> (select (|PolymorphicMapType_7291_6802_18641#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@15) null (WandMaskField_6802 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@15) o2@@5 f_2@@5) (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_6802_18774) ) (!  (=> (select (|PolymorphicMapType_7291_6802_19754#PolymorphicMapType_7291| (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@15) null (WandMaskField_6802 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@15) o2@@6 f_2@@6) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@2 Mask@@3) (IsWandField_6802_20281 pm_f@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6742) (Mask@@4 T@PolymorphicMapType_6763) (x@@11 Int) ) (!  (=> (and (state Heap@@16 Mask@@4) (< AssumeFunctionsAbove 0)) (= (fun4 Heap@@16 x@@11) (ite (> x@@11 (- 0 10)) (|fun4'| Heap@@16 (- x@@11 1)) 6)))
 :qid |stdinbpl.467:15|
 :skolemid |38|
 :pattern ( (state Heap@@16 Mask@@4) (fun4 Heap@@16 x@@11))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6742) (Mask@@5 T@PolymorphicMapType_6763) (x@@12 Int) ) (!  (=> (and (state Heap@@17 Mask@@5) (< AssumeFunctionsAbove 1)) (= (fun3 Heap@@17 x@@12) (ite (> x@@12 (- 0 10)) (|fun3'| Heap@@17 (- x@@12 1)) 6)))
 :qid |stdinbpl.389:15|
 :skolemid |34|
 :pattern ( (state Heap@@17 Mask@@5) (fun3 Heap@@17 x@@12))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6742) (Mask@@6 T@PolymorphicMapType_6763) (x@@13 Int) ) (!  (=> (and (state Heap@@18 Mask@@6) (< AssumeFunctionsAbove 2)) (= (fun6 Heap@@18 x@@13) (ite (> x@@13 (- 0 10)) (|fun6'| Heap@@18 (- x@@13 1)) 6)))
 :qid |stdinbpl.623:15|
 :skolemid |46|
 :pattern ( (state Heap@@18 Mask@@6) (fun6 Heap@@18 x@@13))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6742) (Mask@@7 T@PolymorphicMapType_6763) (x@@14 Int) ) (!  (=> (and (state Heap@@19 Mask@@7) (< AssumeFunctionsAbove 3)) (= (fun2 Heap@@19 x@@14) (ite (> x@@14 (- 0 10)) (|fun2'| Heap@@19 (- x@@14 1)) 6)))
 :qid |stdinbpl.311:15|
 :skolemid |30|
 :pattern ( (state Heap@@19 Mask@@7) (fun2 Heap@@19 x@@14))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6742) (Mask@@8 T@PolymorphicMapType_6763) (x@@15 Int) ) (!  (=> (and (state Heap@@20 Mask@@8) (< AssumeFunctionsAbove 4)) (= (fun1 Heap@@20 x@@15) (ite (> x@@15 (- 0 10)) (|fun1'| Heap@@20 (- x@@15 1)) 6)))
 :qid |stdinbpl.233:15|
 :skolemid |26|
 :pattern ( (state Heap@@20 Mask@@8) (fun1 Heap@@20 x@@15))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6742) (Mask@@9 T@PolymorphicMapType_6763) (x@@16 Int) ) (!  (=> (and (state Heap@@21 Mask@@9) (< AssumeFunctionsAbove 5)) (= (fun5 Heap@@21 x@@16) (ite (> x@@16 (- 0 10)) (|fun5'| Heap@@21 (- x@@16 1)) 6)))
 :qid |stdinbpl.545:15|
 :skolemid |42|
 :pattern ( (state Heap@@21 Mask@@9) (fun5 Heap@@21 x@@16))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6742) (ExhaleHeap@@3 T@PolymorphicMapType_6742) (Mask@@10 T@PolymorphicMapType_6763) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@3 Mask@@10) (=> (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@22) o_1 $allocated) (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@3 Mask@@10) (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_6802_18641) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6802_6802 p v_1 p w))
 :qid |stdinbpl.179:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6802_6802 p v_1 p w))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6742) (ExhaleHeap@@4 T@PolymorphicMapType_6742) (Mask@@11 T@PolymorphicMapType_6763) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@4 Mask@@11) (succHeap Heap@@23 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@4 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6763) (o_2@@3 T@Ref) (f_4@@3 T@Field_6802_18774) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| Mask@@12) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6802_23244 f_4@@3))) (not (IsWandField_6802_23260 f_4@@3))) (<= (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| Mask@@12) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| Mask@@12) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6763) (o_2@@4 T@Ref) (f_4@@4 T@Field_6802_18641) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| Mask@@13) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6802_18732 f_4@@4))) (not (IsWandField_6802_20281 f_4@@4))) (<= (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| Mask@@13) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| Mask@@13) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6763) (o_2@@5 T@Ref) (f_4@@5 T@Field_6815_6816) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| Mask@@14) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6802_6816 f_4@@5))) (not (IsWandField_6802_6816 f_4@@5))) (<= (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| Mask@@14) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| Mask@@14) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6763) (o_2@@6 T@Ref) (f_4@@6 T@Field_6802_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| Mask@@15) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6802_53 f_4@@6))) (not (IsWandField_6802_53 f_4@@6))) (<= (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| Mask@@15) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| Mask@@15) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6763) (o_2@@7 T@Ref) (f_4@@7 T@Field_6802_18774) ) (! (= (HasDirectPerm_6802_23615 Mask@@16 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| Mask@@16) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6802_23615 Mask@@16 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6763) (o_2@@8 T@Ref) (f_4@@8 T@Field_6802_18641) ) (! (= (HasDirectPerm_6802_18705 Mask@@17 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| Mask@@17) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6802_18705 Mask@@17 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6763) (o_2@@9 T@Ref) (f_4@@9 T@Field_6815_6816) ) (! (= (HasDirectPerm_6802_6816 Mask@@18 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| Mask@@18) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6802_6816 Mask@@18 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6763) (o_2@@10 T@Ref) (f_4@@10 T@Field_6802_53) ) (! (= (HasDirectPerm_6802_53 Mask@@19 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| Mask@@19) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6802_53 Mask@@19 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.167:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6742) (ExhaleHeap@@5 T@PolymorphicMapType_6742) (Mask@@20 T@PolymorphicMapType_6763) (o_1@@0 T@Ref) (f_2@@7 T@Field_6802_18774) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@5 Mask@@20) (=> (HasDirectPerm_6802_23615 Mask@@20 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@24) o_1@@0 f_2@@7) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@5 Mask@@20) (select (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6742) (ExhaleHeap@@6 T@PolymorphicMapType_6742) (Mask@@21 T@PolymorphicMapType_6763) (o_1@@1 T@Ref) (f_2@@8 T@Field_6802_18641) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@6 Mask@@21) (=> (HasDirectPerm_6802_18705 Mask@@21 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@25) o_1@@1 f_2@@8) (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@6 Mask@@21) (select (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6742) (ExhaleHeap@@7 T@PolymorphicMapType_6742) (Mask@@22 T@PolymorphicMapType_6763) (o_1@@2 T@Ref) (f_2@@9 T@Field_6815_6816) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@7 Mask@@22) (=> (HasDirectPerm_6802_6816 Mask@@22 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@26) o_1@@2 f_2@@9) (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@7 Mask@@22) (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6742) (ExhaleHeap@@8 T@PolymorphicMapType_6742) (Mask@@23 T@PolymorphicMapType_6763) (o_1@@3 T@Ref) (f_2@@10 T@Field_6802_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@8 Mask@@23) (=> (HasDirectPerm_6802_53 Mask@@23 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@27) o_1@@3 f_2@@10) (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@8 Mask@@23) (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_6802_18774) ) (! (= (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_6802_18641) ) (! (= (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_6815_6816) ) (! (= (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6802_53) ) (! (= (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6763) (SummandMask1 T@PolymorphicMapType_6763) (SummandMask2 T@PolymorphicMapType_6763) (o_2@@15 T@Ref) (f_4@@15 T@Field_6802_18774) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6763_6802_22335#PolymorphicMapType_6763| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6763) (SummandMask1@@0 T@PolymorphicMapType_6763) (SummandMask2@@0 T@PolymorphicMapType_6763) (o_2@@16 T@Ref) (f_4@@16 T@Field_6802_18641) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6763_6802_18641#PolymorphicMapType_6763| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6763) (SummandMask1@@1 T@PolymorphicMapType_6763) (SummandMask2@@1 T@PolymorphicMapType_6763) (o_2@@17 T@Ref) (f_4@@17 T@Field_6815_6816) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6763_6802_6816#PolymorphicMapType_6763| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6763) (SummandMask1@@2 T@PolymorphicMapType_6763) (SummandMask2@@2 T@PolymorphicMapType_6763) (o_2@@18 T@Ref) (f_4@@18 T@Field_6802_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6763_6802_53#PolymorphicMapType_6763| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((int1@@0 Int) ) (!  (=> (>= int1@@0 0) (bounded_1214 int1@@0))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (bounded_1214 int1@@0))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6742) (Mask@@24 T@PolymorphicMapType_6763) (x@@17 Int) ) (!  (=> (state Heap@@28 Mask@@24) (= (|fun1'| Heap@@28 x@@17) (|fun1#frame| EmptyFrame x@@17)))
 :qid |stdinbpl.240:15|
 :skolemid |27|
 :pattern ( (state Heap@@28 Mask@@24) (|fun1'| Heap@@28 x@@17))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6742) (Mask@@25 T@PolymorphicMapType_6763) (x@@18 Int) ) (!  (=> (state Heap@@29 Mask@@25) (= (|fun2'| Heap@@29 x@@18) (|fun2#frame| EmptyFrame x@@18)))
 :qid |stdinbpl.318:15|
 :skolemid |31|
 :pattern ( (state Heap@@29 Mask@@25) (|fun2'| Heap@@29 x@@18))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6742) (Mask@@26 T@PolymorphicMapType_6763) (x@@19 Int) ) (!  (=> (state Heap@@30 Mask@@26) (= (|fun3'| Heap@@30 x@@19) (|fun3#frame| EmptyFrame x@@19)))
 :qid |stdinbpl.396:15|
 :skolemid |35|
 :pattern ( (state Heap@@30 Mask@@26) (|fun3'| Heap@@30 x@@19))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6742) (Mask@@27 T@PolymorphicMapType_6763) (x@@20 Int) ) (!  (=> (state Heap@@31 Mask@@27) (= (|fun4'| Heap@@31 x@@20) (|fun4#frame| EmptyFrame x@@20)))
 :qid |stdinbpl.474:15|
 :skolemid |39|
 :pattern ( (state Heap@@31 Mask@@27) (|fun4'| Heap@@31 x@@20))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6742) (Mask@@28 T@PolymorphicMapType_6763) (x@@21 Int) ) (!  (=> (state Heap@@32 Mask@@28) (= (|fun5'| Heap@@32 x@@21) (|fun5#frame| EmptyFrame x@@21)))
 :qid |stdinbpl.552:15|
 :skolemid |43|
 :pattern ( (state Heap@@32 Mask@@28) (|fun5'| Heap@@32 x@@21))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6742) (Mask@@29 T@PolymorphicMapType_6763) (x@@22 Int) ) (!  (=> (state Heap@@33 Mask@@29) (= (|fun6'| Heap@@33 x@@22) (|fun6#frame| EmptyFrame x@@22)))
 :qid |stdinbpl.630:15|
 :skolemid |47|
 :pattern ( (state Heap@@33 Mask@@29) (|fun6'| Heap@@33 x@@22))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6742) (o T@Ref) (f_3 T@Field_6802_18641) (v T@FrameType) ) (! (succHeap Heap@@34 (PolymorphicMapType_6742 (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@34) (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@34) (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@34) (store (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@34) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6742 (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@34) (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@34) (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@34) (store (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@34) o f_3 v)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6742) (o@@0 T@Ref) (f_3@@0 T@Field_6802_18774) (v@@0 T@PolymorphicMapType_7291) ) (! (succHeap Heap@@35 (PolymorphicMapType_6742 (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@35) (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@35) (store (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@35) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6742 (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@35) (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@35) (store (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@35) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_6742) (o@@1 T@Ref) (f_3@@1 T@Field_6815_6816) (v@@1 T@Ref) ) (! (succHeap Heap@@36 (PolymorphicMapType_6742 (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@36) (store (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@36) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@36) (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6742 (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@36) (store (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@36) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@36) (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_6742) (o@@2 T@Ref) (f_3@@2 T@Field_6802_53) (v@@2 Bool) ) (! (succHeap Heap@@37 (PolymorphicMapType_6742 (store (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@37) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@37) (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@37) (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6742 (store (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@37) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@37) (|PolymorphicMapType_6742_6802_18818#PolymorphicMapType_6742| Heap@@37) (|PolymorphicMapType_6742_6802_18641#PolymorphicMapType_6742| Heap@@37)))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_6815_6816) (Heap@@38 T@PolymorphicMapType_6742) ) (!  (=> (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@38) o@@3 $allocated) (select (|PolymorphicMapType_6742_3704_53#PolymorphicMapType_6742| Heap@@38) (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@38) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6742_3707_3708#PolymorphicMapType_6742| Heap@@38) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_6802_18641) (v_1@@0 T@FrameType) (q T@Field_6802_18641) (w@@0 T@FrameType) (r T@Field_6802_18641) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6802_6802 p@@1 v_1@@0 q w@@0) (InsidePredicate_6802_6802 q w@@0 r u)) (InsidePredicate_6802_6802 p@@1 v_1@@0 r u))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6802_6802 p@@1 v_1@@0 q w@@0) (InsidePredicate_6802_6802 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

