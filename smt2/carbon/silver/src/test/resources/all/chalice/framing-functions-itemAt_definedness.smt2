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
(declare-sort T@Field_6333_53 0)
(declare-sort T@Field_6346_6347 0)
(declare-sort T@Field_9660_1189 0)
(declare-sort T@Field_10167_10168 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_12970_12975 0)
(declare-sort T@Field_3308_10168 0)
(declare-sort T@Field_3308_12975 0)
(declare-sort T@Field_10167_3309 0)
(declare-sort T@Field_10167_1189 0)
(declare-sort T@Field_10167_53 0)
(declare-datatypes ((T@PolymorphicMapType_6294 0)) (((PolymorphicMapType_6294 (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| (Array T@Ref T@Field_10167_10168 Real)) (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| (Array T@Ref T@Field_9660_1189 Real)) (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| (Array T@Ref T@Field_6346_6347 Real)) (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| (Array T@Ref T@Field_10167_1189 Real)) (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| (Array T@Ref T@Field_10167_3309 Real)) (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| (Array T@Ref T@Field_10167_53 Real)) (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| (Array T@Ref T@Field_12970_12975 Real)) (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| (Array T@Ref T@Field_3308_10168 Real)) (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| (Array T@Ref T@Field_6333_53 Real)) (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| (Array T@Ref T@Field_3308_12975 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6822 0)) (((PolymorphicMapType_6822 (|PolymorphicMapType_6822_3306_1189#PolymorphicMapType_6822| (Array T@Ref T@Field_9660_1189 Bool)) (|PolymorphicMapType_6822_3308_3309#PolymorphicMapType_6822| (Array T@Ref T@Field_6346_6347 Bool)) (|PolymorphicMapType_6822_3306_53#PolymorphicMapType_6822| (Array T@Ref T@Field_6333_53 Bool)) (|PolymorphicMapType_6822_3306_10168#PolymorphicMapType_6822| (Array T@Ref T@Field_3308_10168 Bool)) (|PolymorphicMapType_6822_3306_23150#PolymorphicMapType_6822| (Array T@Ref T@Field_3308_12975 Bool)) (|PolymorphicMapType_6822_10167_1189#PolymorphicMapType_6822| (Array T@Ref T@Field_10167_1189 Bool)) (|PolymorphicMapType_6822_10167_3309#PolymorphicMapType_6822| (Array T@Ref T@Field_10167_3309 Bool)) (|PolymorphicMapType_6822_10167_53#PolymorphicMapType_6822| (Array T@Ref T@Field_10167_53 Bool)) (|PolymorphicMapType_6822_10167_10168#PolymorphicMapType_6822| (Array T@Ref T@Field_10167_10168 Bool)) (|PolymorphicMapType_6822_10167_24198#PolymorphicMapType_6822| (Array T@Ref T@Field_12970_12975 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6273 0)) (((PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| (Array T@Ref T@Field_6333_53 Bool)) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| (Array T@Ref T@Field_6346_6347 T@Ref)) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| (Array T@Ref T@Field_9660_1189 Int)) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| (Array T@Ref T@Field_10167_10168 T@FrameType)) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| (Array T@Ref T@Field_12970_12975 T@PolymorphicMapType_6822)) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| (Array T@Ref T@Field_3308_10168 T@FrameType)) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| (Array T@Ref T@Field_3308_12975 T@PolymorphicMapType_6822)) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| (Array T@Ref T@Field_10167_3309 T@Ref)) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| (Array T@Ref T@Field_10167_1189 Int)) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| (Array T@Ref T@Field_10167_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_6333_53)
(declare-fun value () T@Field_9660_1189)
(declare-fun next () T@Field_6346_6347)
(declare-fun succHeap (T@PolymorphicMapType_6273 T@PolymorphicMapType_6273) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6273 T@PolymorphicMapType_6273) Bool)
(declare-fun state (T@PolymorphicMapType_6273 T@PolymorphicMapType_6294) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6294) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6822)
(declare-fun |itemAt'| (T@PolymorphicMapType_6273 T@Ref Int) Int)
(declare-fun dummyFunction_1491 (Int) Bool)
(declare-fun |itemAt#triggerStateless| (T@Ref Int) Int)
(declare-fun valid (T@Ref) T@Field_10167_10168)
(declare-fun IsPredicateField_3342_3343 (T@Field_10167_10168) Bool)
(declare-fun |valid#trigger_3342| (T@PolymorphicMapType_6273 T@Field_10167_10168) Bool)
(declare-fun |valid#everUsed_3342| (T@Field_10167_10168) Bool)
(declare-fun itemAt (T@PolymorphicMapType_6273 T@Ref Int) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun null () T@Ref)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6273 T@PolymorphicMapType_6273 T@PolymorphicMapType_6294) Bool)
(declare-fun PredicateMaskField_3342 (T@Field_10167_10168) T@Field_12970_12975)
(declare-fun HasDirectPerm_10167_10168 (T@PolymorphicMapType_6294 T@Ref T@Field_10167_10168) Bool)
(declare-fun IsPredicateField_3308_21693 (T@Field_3308_10168) Bool)
(declare-fun PredicateMaskField_3308 (T@Field_3308_10168) T@Field_3308_12975)
(declare-fun HasDirectPerm_3308_10168 (T@PolymorphicMapType_6294 T@Ref T@Field_3308_10168) Bool)
(declare-fun IsWandField_10167_25363 (T@Field_10167_10168) Bool)
(declare-fun WandMaskField_10167 (T@Field_10167_10168) T@Field_12970_12975)
(declare-fun IsWandField_3308_25006 (T@Field_3308_10168) Bool)
(declare-fun WandMaskField_3308 (T@Field_3308_10168) T@Field_3308_12975)
(declare-fun |valid#sm| (T@Ref) T@Field_12970_12975)
(declare-fun dummyHeap () T@PolymorphicMapType_6273)
(declare-fun ZeroMask () T@PolymorphicMapType_6294)
(declare-fun InsidePredicate_6333_6333 (T@Field_3308_10168 T@FrameType T@Field_3308_10168 T@FrameType) Bool)
(declare-fun InsidePredicate_3342_3342 (T@Field_10167_10168 T@FrameType T@Field_10167_10168 T@FrameType) Bool)
(declare-fun IsPredicateField_3306_1189 (T@Field_9660_1189) Bool)
(declare-fun IsWandField_3306_1189 (T@Field_9660_1189) Bool)
(declare-fun IsPredicateField_3308_3309 (T@Field_6346_6347) Bool)
(declare-fun IsWandField_3308_3309 (T@Field_6346_6347) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_3306_32266 (T@Field_3308_12975) Bool)
(declare-fun IsWandField_3306_32282 (T@Field_3308_12975) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_3306_53 (T@Field_6333_53) Bool)
(declare-fun IsWandField_3306_53 (T@Field_6333_53) Bool)
(declare-fun IsPredicateField_3342_31463 (T@Field_12970_12975) Bool)
(declare-fun IsWandField_3342_31479 (T@Field_12970_12975) Bool)
(declare-fun IsPredicateField_3342_53 (T@Field_10167_53) Bool)
(declare-fun IsWandField_3342_53 (T@Field_10167_53) Bool)
(declare-fun IsPredicateField_3342_3309 (T@Field_10167_3309) Bool)
(declare-fun IsWandField_3342_3309 (T@Field_10167_3309) Bool)
(declare-fun IsPredicateField_3342_1189 (T@Field_10167_1189) Bool)
(declare-fun IsWandField_3342_1189 (T@Field_10167_1189) Bool)
(declare-fun HasDirectPerm_10167_21448 (T@PolymorphicMapType_6294 T@Ref T@Field_12970_12975) Bool)
(declare-fun HasDirectPerm_10167_53 (T@PolymorphicMapType_6294 T@Ref T@Field_10167_53) Bool)
(declare-fun HasDirectPerm_10167_1189 (T@PolymorphicMapType_6294 T@Ref T@Field_10167_1189) Bool)
(declare-fun HasDirectPerm_10167_3309 (T@PolymorphicMapType_6294 T@Ref T@Field_10167_3309) Bool)
(declare-fun HasDirectPerm_3308_20287 (T@PolymorphicMapType_6294 T@Ref T@Field_3308_12975) Bool)
(declare-fun HasDirectPerm_3308_53 (T@PolymorphicMapType_6294 T@Ref T@Field_6333_53) Bool)
(declare-fun HasDirectPerm_3306_1189 (T@PolymorphicMapType_6294 T@Ref T@Field_9660_1189) Bool)
(declare-fun HasDirectPerm_3308_3309 (T@PolymorphicMapType_6294 T@Ref T@Field_6346_6347) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6294 T@PolymorphicMapType_6294 T@PolymorphicMapType_6294) Bool)
(declare-fun |itemAt#frame| (T@FrameType T@Ref Int) Int)
(declare-fun getPredWandId_3342_3343 (T@Field_10167_10168) Int)
(declare-fun InsidePredicate_6333_3342 (T@Field_3308_10168 T@FrameType T@Field_10167_10168 T@FrameType) Bool)
(declare-fun InsidePredicate_3342_6333 (T@Field_10167_10168 T@FrameType T@Field_3308_10168 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_6273) (Heap1 T@PolymorphicMapType_6273) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6273) (Mask T@PolymorphicMapType_6294) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6273) (Heap1@@0 T@PolymorphicMapType_6273) (Heap2 T@PolymorphicMapType_6273) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12970_12975) ) (!  (not (select (|PolymorphicMapType_6822_10167_24198#PolymorphicMapType_6822| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6822_10167_24198#PolymorphicMapType_6822| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10167_10168) ) (!  (not (select (|PolymorphicMapType_6822_10167_10168#PolymorphicMapType_6822| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6822_10167_10168#PolymorphicMapType_6822| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10167_53) ) (!  (not (select (|PolymorphicMapType_6822_10167_53#PolymorphicMapType_6822| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6822_10167_53#PolymorphicMapType_6822| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10167_3309) ) (!  (not (select (|PolymorphicMapType_6822_10167_3309#PolymorphicMapType_6822| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6822_10167_3309#PolymorphicMapType_6822| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10167_1189) ) (!  (not (select (|PolymorphicMapType_6822_10167_1189#PolymorphicMapType_6822| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6822_10167_1189#PolymorphicMapType_6822| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_3308_12975) ) (!  (not (select (|PolymorphicMapType_6822_3306_23150#PolymorphicMapType_6822| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6822_3306_23150#PolymorphicMapType_6822| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_3308_10168) ) (!  (not (select (|PolymorphicMapType_6822_3306_10168#PolymorphicMapType_6822| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6822_3306_10168#PolymorphicMapType_6822| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_6333_53) ) (!  (not (select (|PolymorphicMapType_6822_3306_53#PolymorphicMapType_6822| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6822_3306_53#PolymorphicMapType_6822| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_6346_6347) ) (!  (not (select (|PolymorphicMapType_6822_3308_3309#PolymorphicMapType_6822| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6822_3308_3309#PolymorphicMapType_6822| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_9660_1189) ) (!  (not (select (|PolymorphicMapType_6822_3306_1189#PolymorphicMapType_6822| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6822_3306_1189#PolymorphicMapType_6822| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6273) (this T@Ref) (i Int) ) (! (dummyFunction_1491 (|itemAt#triggerStateless| this i))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|itemAt'| Heap@@0 this i))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_3342_3343 (valid this@@0))
 :qid |stdinbpl.339:15|
 :skolemid |28|
 :pattern ( (valid this@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6273) (this@@1 T@Ref) ) (! (|valid#everUsed_3342| (valid this@@1))
 :qid |stdinbpl.358:15|
 :skolemid |32|
 :pattern ( (|valid#trigger_3342| Heap@@1 (valid this@@1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6273) (Mask@@0 T@PolymorphicMapType_6294) (this@@2 T@Ref) (i@@0 Int) ) (!  (=> (and (state Heap@@2 Mask@@0) (< AssumeFunctionsAbove 0)) (=> (<= 0 i@@0) (= (itemAt Heap@@2 this@@2 i@@0) (ite  (or (= i@@0 0) (= (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@2) this@@2 next) null)) (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@2) this@@2 value) (|itemAt'| Heap@@2 (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@2) this@@2 next) (- i@@0 1))))))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (state Heap@@2 Mask@@0) (itemAt Heap@@2 this@@2 i@@0))
 :pattern ( (state Heap@@2 Mask@@0) (|itemAt#triggerStateless| this@@2 i@@0) (|valid#trigger_3342| Heap@@2 (valid this@@2)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6273) (ExhaleHeap T@PolymorphicMapType_6273) (Mask@@1 T@PolymorphicMapType_6294) (pm_f_5 T@Field_10167_10168) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_10167_10168 Mask@@1 null pm_f_5) (IsPredicateField_3342_3343 pm_f_5)) (= (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@3) null (PredicateMaskField_3342 pm_f_5)) (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| ExhaleHeap) null (PredicateMaskField_3342 pm_f_5)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (IsPredicateField_3342_3343 pm_f_5) (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| ExhaleHeap) null (PredicateMaskField_3342 pm_f_5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6273) (ExhaleHeap@@0 T@PolymorphicMapType_6273) (Mask@@2 T@PolymorphicMapType_6294) (pm_f_5@@0 T@Field_3308_10168) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_3308_10168 Mask@@2 null pm_f_5@@0) (IsPredicateField_3308_21693 pm_f_5@@0)) (= (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@4) null (PredicateMaskField_3308 pm_f_5@@0)) (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| ExhaleHeap@@0) null (PredicateMaskField_3308 pm_f_5@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (IsPredicateField_3308_21693 pm_f_5@@0) (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| ExhaleHeap@@0) null (PredicateMaskField_3308 pm_f_5@@0)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6273) (ExhaleHeap@@1 T@PolymorphicMapType_6273) (Mask@@3 T@PolymorphicMapType_6294) (pm_f_5@@1 T@Field_10167_10168) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_10167_10168 Mask@@3 null pm_f_5@@1) (IsWandField_10167_25363 pm_f_5@@1)) (= (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@5) null (WandMaskField_10167 pm_f_5@@1)) (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| ExhaleHeap@@1) null (WandMaskField_10167 pm_f_5@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (IsWandField_10167_25363 pm_f_5@@1) (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| ExhaleHeap@@1) null (WandMaskField_10167 pm_f_5@@1)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6273) (ExhaleHeap@@2 T@PolymorphicMapType_6273) (Mask@@4 T@PolymorphicMapType_6294) (pm_f_5@@2 T@Field_3308_10168) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_3308_10168 Mask@@4 null pm_f_5@@2) (IsWandField_3308_25006 pm_f_5@@2)) (= (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@6) null (WandMaskField_3308 pm_f_5@@2)) (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| ExhaleHeap@@2) null (WandMaskField_3308 pm_f_5@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (IsWandField_3308_25006 pm_f_5@@2) (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| ExhaleHeap@@2) null (WandMaskField_3308 pm_f_5@@2)))
)))
(assert (forall ((this@@3 T@Ref) (this2 T@Ref) ) (!  (=> (= (valid this@@3) (valid this2)) (= this@@3 this2))
 :qid |stdinbpl.349:15|
 :skolemid |30|
 :pattern ( (valid this@@3) (valid this2))
)))
(assert (forall ((this@@4 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|valid#sm| this@@4) (|valid#sm| this2@@0)) (= this@@4 this2@@0))
 :qid |stdinbpl.353:15|
 :skolemid |31|
 :pattern ( (|valid#sm| this@@4) (|valid#sm| this2@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6273) (ExhaleHeap@@3 T@PolymorphicMapType_6273) (Mask@@5 T@PolymorphicMapType_6294) (pm_f_5@@3 T@Field_10167_10168) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_10167_10168 Mask@@5 null pm_f_5@@3) (IsPredicateField_3342_3343 pm_f_5@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_5 T@Ref) (f_16 T@Field_9660_1189) ) (!  (=> (select (|PolymorphicMapType_6822_3306_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@7) null (PredicateMaskField_3342 pm_f_5@@3))) o2_5 f_16) (= (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@7) o2_5 f_16) (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5 f_16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5 f_16))
)) (forall ((o2_5@@0 T@Ref) (f_16@@0 T@Field_6346_6347) ) (!  (=> (select (|PolymorphicMapType_6822_3308_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@7) null (PredicateMaskField_3342 pm_f_5@@3))) o2_5@@0 f_16@@0) (= (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@7) o2_5@@0 f_16@@0) (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@0 f_16@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@0 f_16@@0))
))) (forall ((o2_5@@1 T@Ref) (f_16@@1 T@Field_6333_53) ) (!  (=> (select (|PolymorphicMapType_6822_3306_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@7) null (PredicateMaskField_3342 pm_f_5@@3))) o2_5@@1 f_16@@1) (= (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@7) o2_5@@1 f_16@@1) (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@1 f_16@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@1 f_16@@1))
))) (forall ((o2_5@@2 T@Ref) (f_16@@2 T@Field_3308_10168) ) (!  (=> (select (|PolymorphicMapType_6822_3306_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@7) null (PredicateMaskField_3342 pm_f_5@@3))) o2_5@@2 f_16@@2) (= (select (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@7) o2_5@@2 f_16@@2) (select (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@2 f_16@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@2 f_16@@2))
))) (forall ((o2_5@@3 T@Ref) (f_16@@3 T@Field_3308_12975) ) (!  (=> (select (|PolymorphicMapType_6822_3306_23150#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@7) null (PredicateMaskField_3342 pm_f_5@@3))) o2_5@@3 f_16@@3) (= (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@7) o2_5@@3 f_16@@3) (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@3 f_16@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@3 f_16@@3))
))) (forall ((o2_5@@4 T@Ref) (f_16@@4 T@Field_10167_1189) ) (!  (=> (select (|PolymorphicMapType_6822_10167_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@7) null (PredicateMaskField_3342 pm_f_5@@3))) o2_5@@4 f_16@@4) (= (select (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@7) o2_5@@4 f_16@@4) (select (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@4 f_16@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@4 f_16@@4))
))) (forall ((o2_5@@5 T@Ref) (f_16@@5 T@Field_10167_3309) ) (!  (=> (select (|PolymorphicMapType_6822_10167_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@7) null (PredicateMaskField_3342 pm_f_5@@3))) o2_5@@5 f_16@@5) (= (select (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@7) o2_5@@5 f_16@@5) (select (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@5 f_16@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@5 f_16@@5))
))) (forall ((o2_5@@6 T@Ref) (f_16@@6 T@Field_10167_53) ) (!  (=> (select (|PolymorphicMapType_6822_10167_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@7) null (PredicateMaskField_3342 pm_f_5@@3))) o2_5@@6 f_16@@6) (= (select (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@7) o2_5@@6 f_16@@6) (select (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@6 f_16@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@6 f_16@@6))
))) (forall ((o2_5@@7 T@Ref) (f_16@@7 T@Field_10167_10168) ) (!  (=> (select (|PolymorphicMapType_6822_10167_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@7) null (PredicateMaskField_3342 pm_f_5@@3))) o2_5@@7 f_16@@7) (= (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@7) o2_5@@7 f_16@@7) (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@7 f_16@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@7 f_16@@7))
))) (forall ((o2_5@@8 T@Ref) (f_16@@8 T@Field_12970_12975) ) (!  (=> (select (|PolymorphicMapType_6822_10167_24198#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@7) null (PredicateMaskField_3342 pm_f_5@@3))) o2_5@@8 f_16@@8) (= (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@7) o2_5@@8 f_16@@8) (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@8 f_16@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| ExhaleHeap@@3) o2_5@@8 f_16@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@5) (IsPredicateField_3342_3343 pm_f_5@@3))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6273) (ExhaleHeap@@4 T@PolymorphicMapType_6273) (Mask@@6 T@PolymorphicMapType_6294) (pm_f_5@@4 T@Field_3308_10168) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_3308_10168 Mask@@6 null pm_f_5@@4) (IsPredicateField_3308_21693 pm_f_5@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@9 T@Ref) (f_16@@9 T@Field_9660_1189) ) (!  (=> (select (|PolymorphicMapType_6822_3306_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@8) null (PredicateMaskField_3308 pm_f_5@@4))) o2_5@@9 f_16@@9) (= (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@8) o2_5@@9 f_16@@9) (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@9 f_16@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@9 f_16@@9))
)) (forall ((o2_5@@10 T@Ref) (f_16@@10 T@Field_6346_6347) ) (!  (=> (select (|PolymorphicMapType_6822_3308_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@8) null (PredicateMaskField_3308 pm_f_5@@4))) o2_5@@10 f_16@@10) (= (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@8) o2_5@@10 f_16@@10) (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@10 f_16@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@10 f_16@@10))
))) (forall ((o2_5@@11 T@Ref) (f_16@@11 T@Field_6333_53) ) (!  (=> (select (|PolymorphicMapType_6822_3306_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@8) null (PredicateMaskField_3308 pm_f_5@@4))) o2_5@@11 f_16@@11) (= (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@8) o2_5@@11 f_16@@11) (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@11 f_16@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@11 f_16@@11))
))) (forall ((o2_5@@12 T@Ref) (f_16@@12 T@Field_3308_10168) ) (!  (=> (select (|PolymorphicMapType_6822_3306_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@8) null (PredicateMaskField_3308 pm_f_5@@4))) o2_5@@12 f_16@@12) (= (select (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@8) o2_5@@12 f_16@@12) (select (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@12 f_16@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@12 f_16@@12))
))) (forall ((o2_5@@13 T@Ref) (f_16@@13 T@Field_3308_12975) ) (!  (=> (select (|PolymorphicMapType_6822_3306_23150#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@8) null (PredicateMaskField_3308 pm_f_5@@4))) o2_5@@13 f_16@@13) (= (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@8) o2_5@@13 f_16@@13) (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@13 f_16@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@13 f_16@@13))
))) (forall ((o2_5@@14 T@Ref) (f_16@@14 T@Field_10167_1189) ) (!  (=> (select (|PolymorphicMapType_6822_10167_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@8) null (PredicateMaskField_3308 pm_f_5@@4))) o2_5@@14 f_16@@14) (= (select (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@8) o2_5@@14 f_16@@14) (select (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@14 f_16@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@14 f_16@@14))
))) (forall ((o2_5@@15 T@Ref) (f_16@@15 T@Field_10167_3309) ) (!  (=> (select (|PolymorphicMapType_6822_10167_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@8) null (PredicateMaskField_3308 pm_f_5@@4))) o2_5@@15 f_16@@15) (= (select (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@8) o2_5@@15 f_16@@15) (select (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@15 f_16@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@15 f_16@@15))
))) (forall ((o2_5@@16 T@Ref) (f_16@@16 T@Field_10167_53) ) (!  (=> (select (|PolymorphicMapType_6822_10167_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@8) null (PredicateMaskField_3308 pm_f_5@@4))) o2_5@@16 f_16@@16) (= (select (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@8) o2_5@@16 f_16@@16) (select (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@16 f_16@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@16 f_16@@16))
))) (forall ((o2_5@@17 T@Ref) (f_16@@17 T@Field_10167_10168) ) (!  (=> (select (|PolymorphicMapType_6822_10167_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@8) null (PredicateMaskField_3308 pm_f_5@@4))) o2_5@@17 f_16@@17) (= (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@8) o2_5@@17 f_16@@17) (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@17 f_16@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@17 f_16@@17))
))) (forall ((o2_5@@18 T@Ref) (f_16@@18 T@Field_12970_12975) ) (!  (=> (select (|PolymorphicMapType_6822_10167_24198#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@8) null (PredicateMaskField_3308 pm_f_5@@4))) o2_5@@18 f_16@@18) (= (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@8) o2_5@@18 f_16@@18) (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@18 f_16@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| ExhaleHeap@@4) o2_5@@18 f_16@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@6) (IsPredicateField_3308_21693 pm_f_5@@4))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6273) (ExhaleHeap@@5 T@PolymorphicMapType_6273) (Mask@@7 T@PolymorphicMapType_6294) (pm_f_5@@5 T@Field_10167_10168) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_10167_10168 Mask@@7 null pm_f_5@@5) (IsWandField_10167_25363 pm_f_5@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@19 T@Ref) (f_16@@19 T@Field_9660_1189) ) (!  (=> (select (|PolymorphicMapType_6822_3306_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@9) null (WandMaskField_10167 pm_f_5@@5))) o2_5@@19 f_16@@19) (= (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@9) o2_5@@19 f_16@@19) (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@19 f_16@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@19 f_16@@19))
)) (forall ((o2_5@@20 T@Ref) (f_16@@20 T@Field_6346_6347) ) (!  (=> (select (|PolymorphicMapType_6822_3308_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@9) null (WandMaskField_10167 pm_f_5@@5))) o2_5@@20 f_16@@20) (= (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@9) o2_5@@20 f_16@@20) (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@20 f_16@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@20 f_16@@20))
))) (forall ((o2_5@@21 T@Ref) (f_16@@21 T@Field_6333_53) ) (!  (=> (select (|PolymorphicMapType_6822_3306_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@9) null (WandMaskField_10167 pm_f_5@@5))) o2_5@@21 f_16@@21) (= (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@9) o2_5@@21 f_16@@21) (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@21 f_16@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@21 f_16@@21))
))) (forall ((o2_5@@22 T@Ref) (f_16@@22 T@Field_3308_10168) ) (!  (=> (select (|PolymorphicMapType_6822_3306_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@9) null (WandMaskField_10167 pm_f_5@@5))) o2_5@@22 f_16@@22) (= (select (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@9) o2_5@@22 f_16@@22) (select (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@22 f_16@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@22 f_16@@22))
))) (forall ((o2_5@@23 T@Ref) (f_16@@23 T@Field_3308_12975) ) (!  (=> (select (|PolymorphicMapType_6822_3306_23150#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@9) null (WandMaskField_10167 pm_f_5@@5))) o2_5@@23 f_16@@23) (= (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@9) o2_5@@23 f_16@@23) (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@23 f_16@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@23 f_16@@23))
))) (forall ((o2_5@@24 T@Ref) (f_16@@24 T@Field_10167_1189) ) (!  (=> (select (|PolymorphicMapType_6822_10167_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@9) null (WandMaskField_10167 pm_f_5@@5))) o2_5@@24 f_16@@24) (= (select (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@9) o2_5@@24 f_16@@24) (select (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@24 f_16@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@24 f_16@@24))
))) (forall ((o2_5@@25 T@Ref) (f_16@@25 T@Field_10167_3309) ) (!  (=> (select (|PolymorphicMapType_6822_10167_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@9) null (WandMaskField_10167 pm_f_5@@5))) o2_5@@25 f_16@@25) (= (select (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@9) o2_5@@25 f_16@@25) (select (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@25 f_16@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@25 f_16@@25))
))) (forall ((o2_5@@26 T@Ref) (f_16@@26 T@Field_10167_53) ) (!  (=> (select (|PolymorphicMapType_6822_10167_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@9) null (WandMaskField_10167 pm_f_5@@5))) o2_5@@26 f_16@@26) (= (select (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@9) o2_5@@26 f_16@@26) (select (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@26 f_16@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@26 f_16@@26))
))) (forall ((o2_5@@27 T@Ref) (f_16@@27 T@Field_10167_10168) ) (!  (=> (select (|PolymorphicMapType_6822_10167_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@9) null (WandMaskField_10167 pm_f_5@@5))) o2_5@@27 f_16@@27) (= (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@9) o2_5@@27 f_16@@27) (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@27 f_16@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@27 f_16@@27))
))) (forall ((o2_5@@28 T@Ref) (f_16@@28 T@Field_12970_12975) ) (!  (=> (select (|PolymorphicMapType_6822_10167_24198#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@9) null (WandMaskField_10167 pm_f_5@@5))) o2_5@@28 f_16@@28) (= (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@9) o2_5@@28 f_16@@28) (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@28 f_16@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| ExhaleHeap@@5) o2_5@@28 f_16@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@7) (IsWandField_10167_25363 pm_f_5@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6273) (ExhaleHeap@@6 T@PolymorphicMapType_6273) (Mask@@8 T@PolymorphicMapType_6294) (pm_f_5@@6 T@Field_3308_10168) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_3308_10168 Mask@@8 null pm_f_5@@6) (IsWandField_3308_25006 pm_f_5@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_5@@29 T@Ref) (f_16@@29 T@Field_9660_1189) ) (!  (=> (select (|PolymorphicMapType_6822_3306_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@10) null (WandMaskField_3308 pm_f_5@@6))) o2_5@@29 f_16@@29) (= (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@10) o2_5@@29 f_16@@29) (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@29 f_16@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@29 f_16@@29))
)) (forall ((o2_5@@30 T@Ref) (f_16@@30 T@Field_6346_6347) ) (!  (=> (select (|PolymorphicMapType_6822_3308_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@10) null (WandMaskField_3308 pm_f_5@@6))) o2_5@@30 f_16@@30) (= (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@10) o2_5@@30 f_16@@30) (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@30 f_16@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@30 f_16@@30))
))) (forall ((o2_5@@31 T@Ref) (f_16@@31 T@Field_6333_53) ) (!  (=> (select (|PolymorphicMapType_6822_3306_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@10) null (WandMaskField_3308 pm_f_5@@6))) o2_5@@31 f_16@@31) (= (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@10) o2_5@@31 f_16@@31) (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@31 f_16@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@31 f_16@@31))
))) (forall ((o2_5@@32 T@Ref) (f_16@@32 T@Field_3308_10168) ) (!  (=> (select (|PolymorphicMapType_6822_3306_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@10) null (WandMaskField_3308 pm_f_5@@6))) o2_5@@32 f_16@@32) (= (select (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@10) o2_5@@32 f_16@@32) (select (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@32 f_16@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@32 f_16@@32))
))) (forall ((o2_5@@33 T@Ref) (f_16@@33 T@Field_3308_12975) ) (!  (=> (select (|PolymorphicMapType_6822_3306_23150#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@10) null (WandMaskField_3308 pm_f_5@@6))) o2_5@@33 f_16@@33) (= (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@10) o2_5@@33 f_16@@33) (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@33 f_16@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@33 f_16@@33))
))) (forall ((o2_5@@34 T@Ref) (f_16@@34 T@Field_10167_1189) ) (!  (=> (select (|PolymorphicMapType_6822_10167_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@10) null (WandMaskField_3308 pm_f_5@@6))) o2_5@@34 f_16@@34) (= (select (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@10) o2_5@@34 f_16@@34) (select (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@34 f_16@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@34 f_16@@34))
))) (forall ((o2_5@@35 T@Ref) (f_16@@35 T@Field_10167_3309) ) (!  (=> (select (|PolymorphicMapType_6822_10167_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@10) null (WandMaskField_3308 pm_f_5@@6))) o2_5@@35 f_16@@35) (= (select (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@10) o2_5@@35 f_16@@35) (select (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@35 f_16@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@35 f_16@@35))
))) (forall ((o2_5@@36 T@Ref) (f_16@@36 T@Field_10167_53) ) (!  (=> (select (|PolymorphicMapType_6822_10167_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@10) null (WandMaskField_3308 pm_f_5@@6))) o2_5@@36 f_16@@36) (= (select (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@10) o2_5@@36 f_16@@36) (select (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@36 f_16@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@36 f_16@@36))
))) (forall ((o2_5@@37 T@Ref) (f_16@@37 T@Field_10167_10168) ) (!  (=> (select (|PolymorphicMapType_6822_10167_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@10) null (WandMaskField_3308 pm_f_5@@6))) o2_5@@37 f_16@@37) (= (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@10) o2_5@@37 f_16@@37) (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@37 f_16@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@37 f_16@@37))
))) (forall ((o2_5@@38 T@Ref) (f_16@@38 T@Field_12970_12975) ) (!  (=> (select (|PolymorphicMapType_6822_10167_24198#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@10) null (WandMaskField_3308 pm_f_5@@6))) o2_5@@38 f_16@@38) (= (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@10) o2_5@@38 f_16@@38) (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@38 f_16@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| ExhaleHeap@@6) o2_5@@38 f_16@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@8) (IsWandField_3308_25006 pm_f_5@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6273) (ExhaleHeap@@7 T@PolymorphicMapType_6273) (Mask@@9 T@PolymorphicMapType_6294) (o_12 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (=> (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@11) o_12 $allocated) (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| ExhaleHeap@@7) o_12 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@9) (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| ExhaleHeap@@7) o_12 $allocated))
)))
(assert (forall ((p T@Field_3308_10168) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6333_6333 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6333_6333 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_10167_10168) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_3342_3342 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_3342_3342 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_3306_1189 value)))
(assert  (not (IsWandField_3306_1189 value)))
(assert  (not (IsPredicateField_3308_3309 next)))
(assert  (not (IsWandField_3308_3309 next)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6273) (ExhaleHeap@@8 T@PolymorphicMapType_6273) (Mask@@10 T@PolymorphicMapType_6294) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10) (succHeap Heap@@12 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6294) (o_2@@9 T@Ref) (f_4@@9 T@Field_3308_12975) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| Mask@@11) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3306_32266 f_4@@9))) (not (IsWandField_3306_32282 f_4@@9))) (<= (select (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| Mask@@11) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| Mask@@11) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6294) (o_2@@10 T@Ref) (f_4@@10 T@Field_6333_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| Mask@@12) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_3306_53 f_4@@10))) (not (IsWandField_3306_53 f_4@@10))) (<= (select (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| Mask@@12) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| Mask@@12) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6294) (o_2@@11 T@Ref) (f_4@@11 T@Field_6346_6347) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| Mask@@13) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3308_3309 f_4@@11))) (not (IsWandField_3308_3309 f_4@@11))) (<= (select (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| Mask@@13) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| Mask@@13) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6294) (o_2@@12 T@Ref) (f_4@@12 T@Field_9660_1189) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| Mask@@14) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_3306_1189 f_4@@12))) (not (IsWandField_3306_1189 f_4@@12))) (<= (select (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| Mask@@14) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| Mask@@14) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6294) (o_2@@13 T@Ref) (f_4@@13 T@Field_3308_10168) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| Mask@@15) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_3308_21693 f_4@@13))) (not (IsWandField_3308_25006 f_4@@13))) (<= (select (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| Mask@@15) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| Mask@@15) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6294) (o_2@@14 T@Ref) (f_4@@14 T@Field_12970_12975) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| Mask@@16) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_3342_31463 f_4@@14))) (not (IsWandField_3342_31479 f_4@@14))) (<= (select (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| Mask@@16) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| Mask@@16) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6294) (o_2@@15 T@Ref) (f_4@@15 T@Field_10167_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| Mask@@17) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_3342_53 f_4@@15))) (not (IsWandField_3342_53 f_4@@15))) (<= (select (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| Mask@@17) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| Mask@@17) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6294) (o_2@@16 T@Ref) (f_4@@16 T@Field_10167_3309) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| Mask@@18) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_3342_3309 f_4@@16))) (not (IsWandField_3342_3309 f_4@@16))) (<= (select (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| Mask@@18) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| Mask@@18) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6294) (o_2@@17 T@Ref) (f_4@@17 T@Field_10167_1189) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| Mask@@19) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_3342_1189 f_4@@17))) (not (IsWandField_3342_1189 f_4@@17))) (<= (select (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| Mask@@19) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| Mask@@19) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6294) (o_2@@18 T@Ref) (f_4@@18 T@Field_10167_10168) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| Mask@@20) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_3342_3343 f_4@@18))) (not (IsWandField_10167_25363 f_4@@18))) (<= (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| Mask@@20) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| Mask@@20) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_6294) (o_2@@19 T@Ref) (f_4@@19 T@Field_12970_12975) ) (! (= (HasDirectPerm_10167_21448 Mask@@21 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| Mask@@21) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10167_21448 Mask@@21 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_6294) (o_2@@20 T@Ref) (f_4@@20 T@Field_10167_10168) ) (! (= (HasDirectPerm_10167_10168 Mask@@22 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| Mask@@22) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10167_10168 Mask@@22 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_6294) (o_2@@21 T@Ref) (f_4@@21 T@Field_10167_53) ) (! (= (HasDirectPerm_10167_53 Mask@@23 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| Mask@@23) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10167_53 Mask@@23 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_6294) (o_2@@22 T@Ref) (f_4@@22 T@Field_10167_1189) ) (! (= (HasDirectPerm_10167_1189 Mask@@24 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| Mask@@24) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10167_1189 Mask@@24 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_6294) (o_2@@23 T@Ref) (f_4@@23 T@Field_10167_3309) ) (! (= (HasDirectPerm_10167_3309 Mask@@25 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| Mask@@25) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10167_3309 Mask@@25 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_6294) (o_2@@24 T@Ref) (f_4@@24 T@Field_3308_12975) ) (! (= (HasDirectPerm_3308_20287 Mask@@26 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| Mask@@26) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3308_20287 Mask@@26 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_6294) (o_2@@25 T@Ref) (f_4@@25 T@Field_3308_10168) ) (! (= (HasDirectPerm_3308_10168 Mask@@27 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| Mask@@27) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3308_10168 Mask@@27 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_6294) (o_2@@26 T@Ref) (f_4@@26 T@Field_6333_53) ) (! (= (HasDirectPerm_3308_53 Mask@@28 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| Mask@@28) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3308_53 Mask@@28 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_6294) (o_2@@27 T@Ref) (f_4@@27 T@Field_9660_1189) ) (! (= (HasDirectPerm_3306_1189 Mask@@29 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| Mask@@29) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3306_1189 Mask@@29 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_6294) (o_2@@28 T@Ref) (f_4@@28 T@Field_6346_6347) ) (! (= (HasDirectPerm_3308_3309 Mask@@30 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| Mask@@30) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3308_3309 Mask@@30 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6273) (ExhaleHeap@@9 T@PolymorphicMapType_6273) (Mask@@31 T@PolymorphicMapType_6294) (o_12@@0 T@Ref) (f_16@@39 T@Field_12970_12975) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@31) (=> (HasDirectPerm_10167_21448 Mask@@31 o_12@@0 f_16@@39) (= (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@13) o_12@@0 f_16@@39) (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| ExhaleHeap@@9) o_12@@0 f_16@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@31) (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| ExhaleHeap@@9) o_12@@0 f_16@@39))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6273) (ExhaleHeap@@10 T@PolymorphicMapType_6273) (Mask@@32 T@PolymorphicMapType_6294) (o_12@@1 T@Ref) (f_16@@40 T@Field_10167_10168) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@32) (=> (HasDirectPerm_10167_10168 Mask@@32 o_12@@1 f_16@@40) (= (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@14) o_12@@1 f_16@@40) (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| ExhaleHeap@@10) o_12@@1 f_16@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@32) (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| ExhaleHeap@@10) o_12@@1 f_16@@40))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6273) (ExhaleHeap@@11 T@PolymorphicMapType_6273) (Mask@@33 T@PolymorphicMapType_6294) (o_12@@2 T@Ref) (f_16@@41 T@Field_10167_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@33) (=> (HasDirectPerm_10167_53 Mask@@33 o_12@@2 f_16@@41) (= (select (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@15) o_12@@2 f_16@@41) (select (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| ExhaleHeap@@11) o_12@@2 f_16@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@11 Mask@@33) (select (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| ExhaleHeap@@11) o_12@@2 f_16@@41))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6273) (ExhaleHeap@@12 T@PolymorphicMapType_6273) (Mask@@34 T@PolymorphicMapType_6294) (o_12@@3 T@Ref) (f_16@@42 T@Field_10167_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@34) (=> (HasDirectPerm_10167_1189 Mask@@34 o_12@@3 f_16@@42) (= (select (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@16) o_12@@3 f_16@@42) (select (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| ExhaleHeap@@12) o_12@@3 f_16@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@12 Mask@@34) (select (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| ExhaleHeap@@12) o_12@@3 f_16@@42))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6273) (ExhaleHeap@@13 T@PolymorphicMapType_6273) (Mask@@35 T@PolymorphicMapType_6294) (o_12@@4 T@Ref) (f_16@@43 T@Field_10167_3309) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@35) (=> (HasDirectPerm_10167_3309 Mask@@35 o_12@@4 f_16@@43) (= (select (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@17) o_12@@4 f_16@@43) (select (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| ExhaleHeap@@13) o_12@@4 f_16@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@13 Mask@@35) (select (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| ExhaleHeap@@13) o_12@@4 f_16@@43))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6273) (ExhaleHeap@@14 T@PolymorphicMapType_6273) (Mask@@36 T@PolymorphicMapType_6294) (o_12@@5 T@Ref) (f_16@@44 T@Field_3308_12975) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@36) (=> (HasDirectPerm_3308_20287 Mask@@36 o_12@@5 f_16@@44) (= (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@18) o_12@@5 f_16@@44) (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| ExhaleHeap@@14) o_12@@5 f_16@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@14 Mask@@36) (select (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| ExhaleHeap@@14) o_12@@5 f_16@@44))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6273) (ExhaleHeap@@15 T@PolymorphicMapType_6273) (Mask@@37 T@PolymorphicMapType_6294) (o_12@@6 T@Ref) (f_16@@45 T@Field_3308_10168) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@37) (=> (HasDirectPerm_3308_10168 Mask@@37 o_12@@6 f_16@@45) (= (select (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@19) o_12@@6 f_16@@45) (select (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| ExhaleHeap@@15) o_12@@6 f_16@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@15 Mask@@37) (select (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| ExhaleHeap@@15) o_12@@6 f_16@@45))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6273) (ExhaleHeap@@16 T@PolymorphicMapType_6273) (Mask@@38 T@PolymorphicMapType_6294) (o_12@@7 T@Ref) (f_16@@46 T@Field_6333_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@38) (=> (HasDirectPerm_3308_53 Mask@@38 o_12@@7 f_16@@46) (= (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@20) o_12@@7 f_16@@46) (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| ExhaleHeap@@16) o_12@@7 f_16@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@16 Mask@@38) (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| ExhaleHeap@@16) o_12@@7 f_16@@46))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6273) (ExhaleHeap@@17 T@PolymorphicMapType_6273) (Mask@@39 T@PolymorphicMapType_6294) (o_12@@8 T@Ref) (f_16@@47 T@Field_9660_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@39) (=> (HasDirectPerm_3306_1189 Mask@@39 o_12@@8 f_16@@47) (= (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@21) o_12@@8 f_16@@47) (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| ExhaleHeap@@17) o_12@@8 f_16@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@17 Mask@@39) (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| ExhaleHeap@@17) o_12@@8 f_16@@47))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6273) (ExhaleHeap@@18 T@PolymorphicMapType_6273) (Mask@@40 T@PolymorphicMapType_6294) (o_12@@9 T@Ref) (f_16@@48 T@Field_6346_6347) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@40) (=> (HasDirectPerm_3308_3309 Mask@@40 o_12@@9 f_16@@48) (= (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@22) o_12@@9 f_16@@48) (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| ExhaleHeap@@18) o_12@@9 f_16@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@18 Mask@@40) (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| ExhaleHeap@@18) o_12@@9 f_16@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_3308_12975) ) (! (= (select (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_6333_53) ) (! (= (select (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_6346_6347) ) (! (= (select (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_9660_1189) ) (! (= (select (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_3308_10168) ) (! (= (select (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_12970_12975) ) (! (= (select (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_10167_53) ) (! (= (select (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_10167_3309) ) (! (= (select (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_10167_1189) ) (! (= (select (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_10167_10168) ) (! (= (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6273) (this@@5 T@Ref) (i@@1 Int) ) (!  (and (= (itemAt Heap@@23 this@@5 i@@1) (|itemAt'| Heap@@23 this@@5 i@@1)) (dummyFunction_1491 (|itemAt#triggerStateless| this@@5 i@@1)))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (itemAt Heap@@23 this@@5 i@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6294) (SummandMask1 T@PolymorphicMapType_6294) (SummandMask2 T@PolymorphicMapType_6294) (o_2@@39 T@Ref) (f_4@@39 T@Field_3308_12975) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6294) (SummandMask1@@0 T@PolymorphicMapType_6294) (SummandMask2@@0 T@PolymorphicMapType_6294) (o_2@@40 T@Ref) (f_4@@40 T@Field_6333_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6294) (SummandMask1@@1 T@PolymorphicMapType_6294) (SummandMask2@@1 T@PolymorphicMapType_6294) (o_2@@41 T@Ref) (f_4@@41 T@Field_6346_6347) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6294) (SummandMask1@@2 T@PolymorphicMapType_6294) (SummandMask2@@2 T@PolymorphicMapType_6294) (o_2@@42 T@Ref) (f_4@@42 T@Field_9660_1189) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6294) (SummandMask1@@3 T@PolymorphicMapType_6294) (SummandMask2@@3 T@PolymorphicMapType_6294) (o_2@@43 T@Ref) (f_4@@43 T@Field_3308_10168) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_6294) (SummandMask1@@4 T@PolymorphicMapType_6294) (SummandMask2@@4 T@PolymorphicMapType_6294) (o_2@@44 T@Ref) (f_4@@44 T@Field_12970_12975) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_6294) (SummandMask1@@5 T@PolymorphicMapType_6294) (SummandMask2@@5 T@PolymorphicMapType_6294) (o_2@@45 T@Ref) (f_4@@45 T@Field_10167_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_6294) (SummandMask1@@6 T@PolymorphicMapType_6294) (SummandMask2@@6 T@PolymorphicMapType_6294) (o_2@@46 T@Ref) (f_4@@46 T@Field_10167_3309) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_6294) (SummandMask1@@7 T@PolymorphicMapType_6294) (SummandMask2@@7 T@PolymorphicMapType_6294) (o_2@@47 T@Ref) (f_4@@47 T@Field_10167_1189) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_6294) (SummandMask1@@8 T@PolymorphicMapType_6294) (SummandMask2@@8 T@PolymorphicMapType_6294) (o_2@@48 T@Ref) (f_4@@48 T@Field_10167_10168) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6273) (Mask@@41 T@PolymorphicMapType_6294) (this@@6 T@Ref) (i@@2 Int) ) (!  (=> (state Heap@@24 Mask@@41) (= (|itemAt'| Heap@@24 this@@6 i@@2) (|itemAt#frame| (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@24) null (valid this@@6)) this@@6 i@@2)))
 :qid |stdinbpl.214:15|
 :skolemid |25|
 :pattern ( (state Heap@@24 Mask@@41) (|itemAt'| Heap@@24 this@@6 i@@2))
 :pattern ( (state Heap@@24 Mask@@41) (|itemAt#triggerStateless| this@@6 i@@2) (|valid#trigger_3342| Heap@@24 (valid this@@6)))
)))
(assert (forall ((this@@7 T@Ref) ) (! (= (getPredWandId_3342_3343 (valid this@@7)) 0)
 :qid |stdinbpl.343:15|
 :skolemid |29|
 :pattern ( (valid this@@7))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6273) (o_11 T@Ref) (f_17 T@Field_12970_12975) (v T@PolymorphicMapType_6822) ) (! (succHeap Heap@@25 (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@25) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@25) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@25) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@25) (store (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@25) o_11 f_17 v) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@25) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@25) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@25) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@25) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@25) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@25) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@25) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@25) (store (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@25) o_11 f_17 v) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@25) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@25) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@25) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@25) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6273) (o_11@@0 T@Ref) (f_17@@0 T@Field_10167_10168) (v@@0 T@FrameType) ) (! (succHeap Heap@@26 (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@26) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@26) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@26) (store (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@26) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@26) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@26) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@26) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@26) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@26) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@26) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@26) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@26) (store (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@26) o_11@@0 f_17@@0 v@@0) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@26) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@26) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@26) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@26) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@26) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6273) (o_11@@1 T@Ref) (f_17@@1 T@Field_10167_1189) (v@@1 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@27) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@27) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@27) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@27) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@27) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@27) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@27) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@27) (store (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@27) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@27) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@27) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@27) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@27) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@27) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@27) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@27) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@27) (store (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@27) o_11@@1 f_17@@1 v@@1) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6273) (o_11@@2 T@Ref) (f_17@@2 T@Field_10167_3309) (v@@2 T@Ref) ) (! (succHeap Heap@@28 (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@28) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@28) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@28) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@28) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@28) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@28) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@28) (store (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@28) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@28) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@28) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@28) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@28) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@28) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@28) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@28) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@28) (store (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@28) o_11@@2 f_17@@2 v@@2) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@28) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6273) (o_11@@3 T@Ref) (f_17@@3 T@Field_10167_53) (v@@3 Bool) ) (! (succHeap Heap@@29 (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@29) (store (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@29) o_11@@3 f_17@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@29) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@29) (store (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@29) o_11@@3 f_17@@3 v@@3)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6273) (o_11@@4 T@Ref) (f_17@@4 T@Field_3308_12975) (v@@4 T@PolymorphicMapType_6822) ) (! (succHeap Heap@@30 (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@30) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@30) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@30) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@30) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@30) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@30) (store (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@30) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@30) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@30) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@30) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@30) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@30) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@30) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@30) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@30) (store (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@30) o_11@@4 f_17@@4 v@@4) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@30) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@30) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@30)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6273) (o_11@@5 T@Ref) (f_17@@5 T@Field_3308_10168) (v@@5 T@FrameType) ) (! (succHeap Heap@@31 (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@31) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@31) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@31) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@31) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@31) (store (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@31) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@31) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@31) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@31) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@31) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@31) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@31) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@31) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@31) (store (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@31) o_11@@5 f_17@@5 v@@5) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@31) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@31) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@31) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6273) (o_11@@6 T@Ref) (f_17@@6 T@Field_9660_1189) (v@@6 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@32) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@32) (store (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@32) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@32) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@32) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@32) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@32) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@32) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@32) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@32) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@32) (store (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@32) o_11@@6 f_17@@6 v@@6) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@32) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@32) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@32) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@32) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@32) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@32) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6273) (o_11@@7 T@Ref) (f_17@@7 T@Field_6346_6347) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@33) (store (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@33) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@33) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@33) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@33) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@33) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@33) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@33) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@33) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@33) (store (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@33) o_11@@7 f_17@@7 v@@7) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@33) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@33) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@33) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@33) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@33) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@33) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@33) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6273) (o_11@@8 T@Ref) (f_17@@8 T@Field_6333_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_6273 (store (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@34) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6273 (store (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@34) o_11@@8 f_17@@8 v@@8) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@34) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@34)))
)))
(assert (forall ((this@@8 T@Ref) ) (! (= (PredicateMaskField_3342 (valid this@@8)) (|valid#sm| this@@8))
 :qid |stdinbpl.335:15|
 :skolemid |27|
 :pattern ( (PredicateMaskField_3342 (valid this@@8)))
)))
(assert (forall ((o_11@@9 T@Ref) (f_10 T@Field_6346_6347) (Heap@@35 T@PolymorphicMapType_6273) ) (!  (=> (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@35) o_11@@9 $allocated) (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@35) (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@35) o_11@@9 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@35) o_11@@9 f_10))
)))
(assert (forall ((p@@2 T@Field_3308_10168) (v_1@@1 T@FrameType) (q T@Field_3308_10168) (w@@1 T@FrameType) (r T@Field_3308_10168) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6333_6333 p@@2 v_1@@1 q w@@1) (InsidePredicate_6333_6333 q w@@1 r u)) (InsidePredicate_6333_6333 p@@2 v_1@@1 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6333_6333 p@@2 v_1@@1 q w@@1) (InsidePredicate_6333_6333 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_3308_10168) (v_1@@2 T@FrameType) (q@@0 T@Field_3308_10168) (w@@2 T@FrameType) (r@@0 T@Field_10167_10168) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_6333_6333 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6333_3342 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_6333_3342 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6333_6333 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_6333_3342 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_3308_10168) (v_1@@3 T@FrameType) (q@@1 T@Field_10167_10168) (w@@3 T@FrameType) (r@@1 T@Field_3308_10168) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_6333_3342 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3342_6333 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_6333_6333 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6333_3342 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_3342_6333 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_3308_10168) (v_1@@4 T@FrameType) (q@@2 T@Field_10167_10168) (w@@4 T@FrameType) (r@@2 T@Field_10167_10168) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_6333_3342 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3342_3342 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_6333_3342 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6333_3342 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_3342_3342 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_10167_10168) (v_1@@5 T@FrameType) (q@@3 T@Field_3308_10168) (w@@5 T@FrameType) (r@@3 T@Field_3308_10168) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_3342_6333 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6333_6333 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_3342_6333 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3342_6333 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_6333_6333 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_10167_10168) (v_1@@6 T@FrameType) (q@@4 T@Field_3308_10168) (w@@6 T@FrameType) (r@@4 T@Field_10167_10168) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_3342_6333 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6333_3342 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_3342_3342 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3342_6333 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_6333_3342 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_10167_10168) (v_1@@7 T@FrameType) (q@@5 T@Field_10167_10168) (w@@7 T@FrameType) (r@@5 T@Field_3308_10168) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_3342_3342 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3342_6333 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_3342_6333 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3342_3342 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_3342_6333 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_10167_10168) (v_1@@8 T@FrameType) (q@@6 T@Field_10167_10168) (w@@8 T@FrameType) (r@@6 T@Field_10167_10168) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_3342_3342 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3342_3342 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_3342_3342 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_3342_3342 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_3342_3342 q@@6 w@@8 r@@6 u@@6))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@1 () T@PolymorphicMapType_6273)
(declare-fun this@@9 () T@Ref)
(declare-fun Heap@3 () T@PolymorphicMapType_6273)
(declare-fun newPMask@0 () T@PolymorphicMapType_6822)
(declare-fun Heap@2 () T@PolymorphicMapType_6273)
(declare-fun Heap@0 () T@PolymorphicMapType_6273)
(declare-fun Heap@@36 () T@PolymorphicMapType_6273)
(declare-fun |itemAt#trigger| (T@FrameType T@Ref Int) Bool)
(declare-fun i@@3 () Int)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_6294)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_6294)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_6294)
(declare-fun Mask@0 () T@PolymorphicMapType_6294)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun FrameFragment_3309 (T@Ref) T@FrameType)
(declare-fun FrameFragment_3343 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_6294)
(set-info :boogie-vc-id |itemAt#definedness|)
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
 (=> (= (ControlFlow 0 0) 21) (let ((anon11_correct true))
(let ((anon16_Else_correct  (=> (= (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@1) this@@9 next) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 6) 4)) anon11_correct))))
(let ((anon16_Then_correct  (=> (not (= (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@1) this@@9 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_15 T@Ref) (f_20 T@Field_9660_1189) ) (!  (=> (or (select (|PolymorphicMapType_6822_3306_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| this@@9))) o_15 f_20) (select (|PolymorphicMapType_6822_3306_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@1) this@@9 next)))) o_15 f_20)) (select (|PolymorphicMapType_6822_3306_1189#PolymorphicMapType_6822| newPMask@0) o_15 f_20))
 :qid |stdinbpl.316:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_6822_3306_1189#PolymorphicMapType_6822| newPMask@0) o_15 f_20))
)) (forall ((o_15@@0 T@Ref) (f_20@@0 T@Field_6346_6347) ) (!  (=> (or (select (|PolymorphicMapType_6822_3308_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| this@@9))) o_15@@0 f_20@@0) (select (|PolymorphicMapType_6822_3308_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@1) this@@9 next)))) o_15@@0 f_20@@0)) (select (|PolymorphicMapType_6822_3308_3309#PolymorphicMapType_6822| newPMask@0) o_15@@0 f_20@@0))
 :qid |stdinbpl.316:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_6822_3308_3309#PolymorphicMapType_6822| newPMask@0) o_15@@0 f_20@@0))
))) (forall ((o_15@@1 T@Ref) (f_20@@1 T@Field_6333_53) ) (!  (=> (or (select (|PolymorphicMapType_6822_3306_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| this@@9))) o_15@@1 f_20@@1) (select (|PolymorphicMapType_6822_3306_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@1) this@@9 next)))) o_15@@1 f_20@@1)) (select (|PolymorphicMapType_6822_3306_53#PolymorphicMapType_6822| newPMask@0) o_15@@1 f_20@@1))
 :qid |stdinbpl.316:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_6822_3306_53#PolymorphicMapType_6822| newPMask@0) o_15@@1 f_20@@1))
))) (forall ((o_15@@2 T@Ref) (f_20@@2 T@Field_3308_10168) ) (!  (=> (or (select (|PolymorphicMapType_6822_3306_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| this@@9))) o_15@@2 f_20@@2) (select (|PolymorphicMapType_6822_3306_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@1) this@@9 next)))) o_15@@2 f_20@@2)) (select (|PolymorphicMapType_6822_3306_10168#PolymorphicMapType_6822| newPMask@0) o_15@@2 f_20@@2))
 :qid |stdinbpl.316:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_6822_3306_10168#PolymorphicMapType_6822| newPMask@0) o_15@@2 f_20@@2))
))) (forall ((o_15@@3 T@Ref) (f_20@@3 T@Field_3308_12975) ) (!  (=> (or (select (|PolymorphicMapType_6822_3306_23150#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| this@@9))) o_15@@3 f_20@@3) (select (|PolymorphicMapType_6822_3306_23150#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@1) this@@9 next)))) o_15@@3 f_20@@3)) (select (|PolymorphicMapType_6822_3306_23150#PolymorphicMapType_6822| newPMask@0) o_15@@3 f_20@@3))
 :qid |stdinbpl.316:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_6822_3306_23150#PolymorphicMapType_6822| newPMask@0) o_15@@3 f_20@@3))
))) (forall ((o_15@@4 T@Ref) (f_20@@4 T@Field_10167_1189) ) (!  (=> (or (select (|PolymorphicMapType_6822_10167_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| this@@9))) o_15@@4 f_20@@4) (select (|PolymorphicMapType_6822_10167_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@1) this@@9 next)))) o_15@@4 f_20@@4)) (select (|PolymorphicMapType_6822_10167_1189#PolymorphicMapType_6822| newPMask@0) o_15@@4 f_20@@4))
 :qid |stdinbpl.316:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_6822_10167_1189#PolymorphicMapType_6822| newPMask@0) o_15@@4 f_20@@4))
))) (forall ((o_15@@5 T@Ref) (f_20@@5 T@Field_10167_3309) ) (!  (=> (or (select (|PolymorphicMapType_6822_10167_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| this@@9))) o_15@@5 f_20@@5) (select (|PolymorphicMapType_6822_10167_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@1) this@@9 next)))) o_15@@5 f_20@@5)) (select (|PolymorphicMapType_6822_10167_3309#PolymorphicMapType_6822| newPMask@0) o_15@@5 f_20@@5))
 :qid |stdinbpl.316:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_6822_10167_3309#PolymorphicMapType_6822| newPMask@0) o_15@@5 f_20@@5))
))) (forall ((o_15@@6 T@Ref) (f_20@@6 T@Field_10167_53) ) (!  (=> (or (select (|PolymorphicMapType_6822_10167_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| this@@9))) o_15@@6 f_20@@6) (select (|PolymorphicMapType_6822_10167_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@1) this@@9 next)))) o_15@@6 f_20@@6)) (select (|PolymorphicMapType_6822_10167_53#PolymorphicMapType_6822| newPMask@0) o_15@@6 f_20@@6))
 :qid |stdinbpl.316:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_6822_10167_53#PolymorphicMapType_6822| newPMask@0) o_15@@6 f_20@@6))
))) (forall ((o_15@@7 T@Ref) (f_20@@7 T@Field_10167_10168) ) (!  (=> (or (select (|PolymorphicMapType_6822_10167_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| this@@9))) o_15@@7 f_20@@7) (select (|PolymorphicMapType_6822_10167_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@1) this@@9 next)))) o_15@@7 f_20@@7)) (select (|PolymorphicMapType_6822_10167_10168#PolymorphicMapType_6822| newPMask@0) o_15@@7 f_20@@7))
 :qid |stdinbpl.316:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_6822_10167_10168#PolymorphicMapType_6822| newPMask@0) o_15@@7 f_20@@7))
))) (forall ((o_15@@8 T@Ref) (f_20@@8 T@Field_12970_12975) ) (!  (=> (or (select (|PolymorphicMapType_6822_10167_24198#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| this@@9))) o_15@@8 f_20@@8) (select (|PolymorphicMapType_6822_10167_24198#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@1) this@@9 next)))) o_15@@8 f_20@@8)) (select (|PolymorphicMapType_6822_10167_24198#PolymorphicMapType_6822| newPMask@0) o_15@@8 f_20@@8))
 :qid |stdinbpl.316:33|
 :skolemid |26|
 :pattern ( (select (|PolymorphicMapType_6822_10167_24198#PolymorphicMapType_6822| newPMask@0) o_15@@8 f_20@@8))
))) (= Heap@2 (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@1) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@1) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@1) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@1) (store (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@1) null (|valid#sm| this@@9) newPMask@0) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@1) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@1) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@1) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@1) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 5) 4))) anon11_correct))))
(let ((anon9_correct  (=> (and (= Heap@0 (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@36) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@36) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@36) (store (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@36) null (|valid#sm| this@@9) (PolymorphicMapType_6822 (store (|PolymorphicMapType_6822_3306_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@36) null (|valid#sm| this@@9))) this@@9 value true) (|PolymorphicMapType_6822_3308_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_6822_3306_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_6822_3306_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_6822_3306_23150#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_6822_10167_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_6822_10167_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_6822_10167_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_6822_10167_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@36) null (|valid#sm| this@@9))) (|PolymorphicMapType_6822_10167_24198#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@@36) null (|valid#sm| this@@9))))) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@@36) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@@36) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@@36) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@@36) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@@36))) (= Heap@1 (PolymorphicMapType_6273 (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@0) (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@0) (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@0) (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@0) (store (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@0) null (|valid#sm| this@@9) (PolymorphicMapType_6822 (|PolymorphicMapType_6822_3306_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@0) null (|valid#sm| this@@9))) (store (|PolymorphicMapType_6822_3308_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@0) null (|valid#sm| this@@9))) this@@9 next true) (|PolymorphicMapType_6822_3306_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@0) null (|valid#sm| this@@9))) (|PolymorphicMapType_6822_3306_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@0) null (|valid#sm| this@@9))) (|PolymorphicMapType_6822_3306_23150#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@0) null (|valid#sm| this@@9))) (|PolymorphicMapType_6822_10167_1189#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@0) null (|valid#sm| this@@9))) (|PolymorphicMapType_6822_10167_3309#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@0) null (|valid#sm| this@@9))) (|PolymorphicMapType_6822_10167_53#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@0) null (|valid#sm| this@@9))) (|PolymorphicMapType_6822_10167_10168#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@0) null (|valid#sm| this@@9))) (|PolymorphicMapType_6822_10167_24198#PolymorphicMapType_6822| (select (|PolymorphicMapType_6273_3346_13062#PolymorphicMapType_6273| Heap@0) null (|valid#sm| this@@9))))) (|PolymorphicMapType_6273_3308_10168#PolymorphicMapType_6273| Heap@0) (|PolymorphicMapType_6273_3308_20329#PolymorphicMapType_6273| Heap@0) (|PolymorphicMapType_6273_10167_3309#PolymorphicMapType_6273| Heap@0) (|PolymorphicMapType_6273_10167_1189#PolymorphicMapType_6273| Heap@0) (|PolymorphicMapType_6273_10167_53#PolymorphicMapType_6273| Heap@0)))) (and (=> (= (ControlFlow 0 7) 5) anon16_Then_correct) (=> (= (ControlFlow 0 7) 6) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (|itemAt#trigger| (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@36) null (valid (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) this@@9 next))) (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) this@@9 next) (- i@@3 1)) (= (ControlFlow 0 10) 7)) anon9_correct)))
(let ((anon14_Then_correct  (=> (or (= i@@3 0) (= (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) this@@9 next) null)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_3306_1189 UnfoldingMask@3 this@@9 value)) (=> (HasDirectPerm_3306_1189 UnfoldingMask@3 this@@9 value) (=> (= (ControlFlow 0 8) 7) anon9_correct))))))
(let ((anon15_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| UnfoldingMask@3) null (valid (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) this@@9 next)))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| UnfoldingMask@3) null (valid (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) this@@9 next))))) (=> (= (ControlFlow 0 2) (- 0 1)) (<= 0 (- i@@3 1)))))))
(let ((anon14_Else_correct  (=> (not (or (= i@@3 0) (= (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) this@@9 next) null))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_3308_3309 UnfoldingMask@3 this@@9 next)) (=> (HasDirectPerm_3308_3309 UnfoldingMask@3 this@@9 next) (and (=> (= (ControlFlow 0 11) 2) anon15_Then_correct) (=> (= (ControlFlow 0 11) 10) anon15_Else_correct)))))))
(let ((anon13_Else_correct  (=> (= i@@3 0) (and (=> (= (ControlFlow 0 15) 8) anon14_Then_correct) (=> (= (ControlFlow 0 15) 11) anon14_Else_correct)))))
(let ((anon13_Then_correct  (=> (not (= i@@3 0)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (HasDirectPerm_3308_3309 UnfoldingMask@3 this@@9 next)) (=> (HasDirectPerm_3308_3309 UnfoldingMask@3 this@@9 next) (and (=> (= (ControlFlow 0 13) 8) anon14_Then_correct) (=> (= (ControlFlow 0 13) 11) anon14_Else_correct)))))))
(let ((anon2_correct  (=> (state Heap@@36 UnfoldingMask@3) (and (=> (= (ControlFlow 0 16) 13) anon13_Then_correct) (=> (= (ControlFlow 0 16) 15) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (= (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) this@@9 next) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 18) 16)) anon2_correct))))
(let ((anon12_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) this@@9 next) null)) (= UnfoldingMask@2 (PolymorphicMapType_6294 (store (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| UnfoldingMask@1) null (valid (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) this@@9 next)) (+ (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| UnfoldingMask@1) null (valid (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) this@@9 next))) FullPerm)) (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| UnfoldingMask@1) (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| UnfoldingMask@1) (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| UnfoldingMask@1) (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| UnfoldingMask@1) (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| UnfoldingMask@1) (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| UnfoldingMask@1) (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| UnfoldingMask@1) (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| UnfoldingMask@1) (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_3342_3342 (valid this@@9) (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@36) null (valid this@@9)) (valid (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) this@@9 next)) (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@36) null (valid (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) this@@9 next)))) (state Heap@@36 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 17) 16))) anon2_correct))))
(let ((anon0_correct  (=> (and (state Heap@@36 ZeroMask) (not AssumePermUpperBound)) (=> (and (and (and (select (|PolymorphicMapType_6273_3178_53#PolymorphicMapType_6273| Heap@@36) this@@9 $allocated) (= AssumeFunctionsAbove 0)) (and (= Mask@0 (PolymorphicMapType_6294 (store (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| ZeroMask) null (valid this@@9) (+ (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| ZeroMask) null (valid this@@9)) FullPerm)) (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| ZeroMask) (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| ZeroMask) (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| ZeroMask) (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| ZeroMask) (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| ZeroMask) (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| ZeroMask) (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| ZeroMask) (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| ZeroMask) (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| ZeroMask))) (state Heap@@36 Mask@0))) (and (and (<= 0 i@@3) (state Heap@@36 Mask@0)) (and (|valid#trigger_3342| Heap@@36 (valid this@@9)) (= (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@36) null (valid this@@9)) (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_6273_3306_1189#PolymorphicMapType_6273| Heap@@36) this@@9 value)) (CombineFrames (FrameFragment_3309 (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) this@@9 next)) (FrameFragment_3343 (ite (not (= (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) this@@9 next) null)) (select (|PolymorphicMapType_6273_3342_3343#PolymorphicMapType_6273| Heap@@36) null (valid (select (|PolymorphicMapType_6273_3181_3182#PolymorphicMapType_6273| Heap@@36) this@@9 next))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| Mask@0) null (valid this@@9))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| Mask@0) null (valid this@@9)))) (=> (and (not (= this@@9 null)) (= UnfoldingMask@0 (PolymorphicMapType_6294 (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| Mask@0) (store (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| Mask@0) this@@9 value (+ (select (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| Mask@0) this@@9 value) FullPerm)) (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| Mask@0) (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| Mask@0) (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| Mask@0) (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| Mask@0) (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| Mask@0) (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| Mask@0) (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| Mask@0) (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| Mask@0)))) (=> (and (and (state Heap@@36 UnfoldingMask@0) (not (= this@@9 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_6294 (|PolymorphicMapType_6294_3342_3343#PolymorphicMapType_6294| UnfoldingMask@0) (|PolymorphicMapType_6294_3306_1189#PolymorphicMapType_6294| UnfoldingMask@0) (store (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| UnfoldingMask@0) this@@9 next (+ (select (|PolymorphicMapType_6294_3308_3309#PolymorphicMapType_6294| UnfoldingMask@0) this@@9 next) FullPerm)) (|PolymorphicMapType_6294_3342_1189#PolymorphicMapType_6294| UnfoldingMask@0) (|PolymorphicMapType_6294_3342_3309#PolymorphicMapType_6294| UnfoldingMask@0) (|PolymorphicMapType_6294_3342_53#PolymorphicMapType_6294| UnfoldingMask@0) (|PolymorphicMapType_6294_3342_29589#PolymorphicMapType_6294| UnfoldingMask@0) (|PolymorphicMapType_6294_3306_3343#PolymorphicMapType_6294| UnfoldingMask@0) (|PolymorphicMapType_6294_3306_53#PolymorphicMapType_6294| UnfoldingMask@0) (|PolymorphicMapType_6294_3306_29988#PolymorphicMapType_6294| UnfoldingMask@0))) (state Heap@@36 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 19) 17) anon12_Then_correct) (=> (= (ControlFlow 0 19) 18) anon12_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 21) 19) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
