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
(declare-sort T@Field_6668_53 0)
(declare-sort T@Field_6681_6682 0)
(declare-sort T@Field_9995_1189 0)
(declare-sort T@Field_3674_17714 0)
(declare-sort T@Field_3674_17581 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6629 0)) (((PolymorphicMapType_6629 (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| (Array T@Ref T@Field_6668_53 Real)) (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| (Array T@Ref T@Field_6681_6682 Real)) (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| (Array T@Ref T@Field_9995_1189 Real)) (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| (Array T@Ref T@Field_3674_17581 Real)) (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| (Array T@Ref T@Field_3674_17714 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7157 0)) (((PolymorphicMapType_7157 (|PolymorphicMapType_7157_6668_53#PolymorphicMapType_7157| (Array T@Ref T@Field_6668_53 Bool)) (|PolymorphicMapType_7157_6668_6682#PolymorphicMapType_7157| (Array T@Ref T@Field_6681_6682 Bool)) (|PolymorphicMapType_7157_6668_1189#PolymorphicMapType_7157| (Array T@Ref T@Field_9995_1189 Bool)) (|PolymorphicMapType_7157_6668_17581#PolymorphicMapType_7157| (Array T@Ref T@Field_3674_17581 Bool)) (|PolymorphicMapType_7157_6668_18892#PolymorphicMapType_7157| (Array T@Ref T@Field_3674_17714 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6608 0)) (((PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| (Array T@Ref T@Field_6668_53 Bool)) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| (Array T@Ref T@Field_6681_6682 T@Ref)) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| (Array T@Ref T@Field_9995_1189 Int)) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| (Array T@Ref T@Field_3674_17714 T@PolymorphicMapType_7157)) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| (Array T@Ref T@Field_3674_17581 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6668_53)
(declare-fun x_36 () T@Field_9995_1189)
(declare-fun succHeap (T@PolymorphicMapType_6608 T@PolymorphicMapType_6608) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6608 T@PolymorphicMapType_6608) Bool)
(declare-fun state (T@PolymorphicMapType_6608 T@PolymorphicMapType_6629) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6629) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7157)
(declare-fun |pre'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun dummyFunction_1381 (Int) Bool)
(declare-fun |pre#triggerStateless| (T@Ref) Int)
(declare-fun |body'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |body#triggerStateless| (T@Ref) Int)
(declare-fun |pre1'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |pre1#triggerStateless| (T@Ref) Int)
(declare-fun |pre1Abstract'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |pre1Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |pre2'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |pre2#triggerStateless| (T@Ref) Int)
(declare-fun |pre2Abstract'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |pre2Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |pre3'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |pre3#triggerStateless| (T@Ref) Int)
(declare-fun |pre3Abstract'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |pre3Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |post1Abstract'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |post1Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |post2Abstract'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |post2Abstract#triggerStateless| (T@Ref) Int)
(declare-fun pre_1 (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun body (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun pre1 (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun pre1Abstract (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun pre2 (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun pre2Abstract (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun pre3 (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun pre3Abstract (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun post1Abstract (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun post2Abstract (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6608 T@PolymorphicMapType_6608 T@PolymorphicMapType_6629) Bool)
(declare-fun IsPredicateField_3674_17672 (T@Field_3674_17581) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3674 (T@Field_3674_17581) T@Field_3674_17714)
(declare-fun HasDirectPerm_3674_17645 (T@PolymorphicMapType_6629 T@Ref T@Field_3674_17581) Bool)
(declare-fun IsWandField_3674_19419 (T@Field_3674_17581) Bool)
(declare-fun WandMaskField_3674 (T@Field_3674_17581) T@Field_3674_17714)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |post2Abstract#trigger| (T@FrameType T@Ref) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun dummyHeap () T@PolymorphicMapType_6608)
(declare-fun ZeroMask () T@PolymorphicMapType_6629)
(declare-fun InsidePredicate_6668_6668 (T@Field_3674_17581 T@FrameType T@Field_3674_17581 T@FrameType) Bool)
(declare-fun IsPredicateField_3674_1189 (T@Field_9995_1189) Bool)
(declare-fun IsWandField_3674_1189 (T@Field_9995_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6668_22977 (T@Field_3674_17714) Bool)
(declare-fun IsWandField_6668_22993 (T@Field_3674_17714) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6668_6682 (T@Field_6681_6682) Bool)
(declare-fun IsWandField_6668_6682 (T@Field_6681_6682) Bool)
(declare-fun IsPredicateField_6668_53 (T@Field_6668_53) Bool)
(declare-fun IsWandField_6668_53 (T@Field_6668_53) Bool)
(declare-fun HasDirectPerm_3674_23431 (T@PolymorphicMapType_6629 T@Ref T@Field_3674_17714) Bool)
(declare-fun HasDirectPerm_3674_6682 (T@PolymorphicMapType_6629 T@Ref T@Field_6681_6682) Bool)
(declare-fun HasDirectPerm_3674_53 (T@PolymorphicMapType_6629 T@Ref T@Field_6668_53) Bool)
(declare-fun HasDirectPerm_3674_1189 (T@PolymorphicMapType_6629 T@Ref T@Field_9995_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6629 T@PolymorphicMapType_6629 T@PolymorphicMapType_6629) Bool)
(declare-fun |post1Abstract#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |pre#frame| (T@FrameType T@Ref) Int)
(declare-fun |body#frame| (T@FrameType T@Ref) Int)
(declare-fun |pre1#frame| (T@FrameType T@Ref) Int)
(declare-fun |pre1Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |pre2#frame| (T@FrameType T@Ref) Int)
(declare-fun |pre2Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |pre3#frame| (T@FrameType T@Ref) Int)
(declare-fun |pre3Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |post1Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |post2Abstract#frame| (T@FrameType T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_6608) (Heap1 T@PolymorphicMapType_6608) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6608) (Mask T@PolymorphicMapType_6629) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6608) (Heap1@@0 T@PolymorphicMapType_6608) (Heap2 T@PolymorphicMapType_6608) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3674_17714) ) (!  (not (select (|PolymorphicMapType_7157_6668_18892#PolymorphicMapType_7157| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7157_6668_18892#PolymorphicMapType_7157| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3674_17581) ) (!  (not (select (|PolymorphicMapType_7157_6668_17581#PolymorphicMapType_7157| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7157_6668_17581#PolymorphicMapType_7157| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9995_1189) ) (!  (not (select (|PolymorphicMapType_7157_6668_1189#PolymorphicMapType_7157| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7157_6668_1189#PolymorphicMapType_7157| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6681_6682) ) (!  (not (select (|PolymorphicMapType_7157_6668_6682#PolymorphicMapType_7157| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7157_6668_6682#PolymorphicMapType_7157| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6668_53) ) (!  (not (select (|PolymorphicMapType_7157_6668_53#PolymorphicMapType_7157| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7157_6668_53#PolymorphicMapType_7157| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6608) (this T@Ref) ) (! (dummyFunction_1381 (|pre#triggerStateless| this))
 :qid |stdinbpl.207:15|
 :skolemid |23|
 :pattern ( (|pre'| Heap@@0 this))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6608) (this@@0 T@Ref) ) (! (dummyFunction_1381 (|body#triggerStateless| this@@0))
 :qid |stdinbpl.267:15|
 :skolemid |27|
 :pattern ( (|body'| Heap@@1 this@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6608) (this@@1 T@Ref) ) (! (dummyFunction_1381 (|pre1#triggerStateless| this@@1))
 :qid |stdinbpl.328:15|
 :skolemid |31|
 :pattern ( (|pre1'| Heap@@2 this@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6608) (this@@2 T@Ref) ) (! (dummyFunction_1381 (|pre1Abstract#triggerStateless| this@@2))
 :qid |stdinbpl.388:15|
 :skolemid |35|
 :pattern ( (|pre1Abstract'| Heap@@3 this@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6608) (this@@3 T@Ref) ) (! (dummyFunction_1381 (|pre2#triggerStateless| this@@3))
 :qid |stdinbpl.439:15|
 :skolemid |38|
 :pattern ( (|pre2'| Heap@@4 this@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6608) (this@@4 T@Ref) ) (! (dummyFunction_1381 (|pre2Abstract#triggerStateless| this@@4))
 :qid |stdinbpl.499:15|
 :skolemid |42|
 :pattern ( (|pre2Abstract'| Heap@@5 this@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6608) (this@@5 T@Ref) ) (! (dummyFunction_1381 (|pre3#triggerStateless| this@@5))
 :qid |stdinbpl.550:15|
 :skolemid |45|
 :pattern ( (|pre3'| Heap@@6 this@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6608) (this@@6 T@Ref) ) (! (dummyFunction_1381 (|pre3Abstract#triggerStateless| this@@6))
 :qid |stdinbpl.611:15|
 :skolemid |49|
 :pattern ( (|pre3Abstract'| Heap@@7 this@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6608) (this@@7 T@Ref) ) (! (dummyFunction_1381 (|post1Abstract#triggerStateless| this@@7))
 :qid |stdinbpl.663:15|
 :skolemid |52|
 :pattern ( (|post1Abstract'| Heap@@8 this@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6608) (this@@8 T@Ref) ) (! (dummyFunction_1381 (|post2Abstract#triggerStateless| this@@8))
 :qid |stdinbpl.723:15|
 :skolemid |56|
 :pattern ( (|post2Abstract'| Heap@@9 this@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6608) (this@@9 T@Ref) ) (!  (and (= (pre_1 Heap@@10 this@@9) (|pre'| Heap@@10 this@@9)) (dummyFunction_1381 (|pre#triggerStateless| this@@9)))
 :qid |stdinbpl.203:15|
 :skolemid |22|
 :pattern ( (pre_1 Heap@@10 this@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6608) (this@@10 T@Ref) ) (!  (and (= (body Heap@@11 this@@10) (|body'| Heap@@11 this@@10)) (dummyFunction_1381 (|body#triggerStateless| this@@10)))
 :qid |stdinbpl.263:15|
 :skolemid |26|
 :pattern ( (body Heap@@11 this@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6608) (this@@11 T@Ref) ) (!  (and (= (pre1 Heap@@12 this@@11) (|pre1'| Heap@@12 this@@11)) (dummyFunction_1381 (|pre1#triggerStateless| this@@11)))
 :qid |stdinbpl.324:15|
 :skolemid |30|
 :pattern ( (pre1 Heap@@12 this@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6608) (this@@12 T@Ref) ) (!  (and (= (pre1Abstract Heap@@13 this@@12) (|pre1Abstract'| Heap@@13 this@@12)) (dummyFunction_1381 (|pre1Abstract#triggerStateless| this@@12)))
 :qid |stdinbpl.384:15|
 :skolemid |34|
 :pattern ( (pre1Abstract Heap@@13 this@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6608) (this@@13 T@Ref) ) (!  (and (= (pre2 Heap@@14 this@@13) (|pre2'| Heap@@14 this@@13)) (dummyFunction_1381 (|pre2#triggerStateless| this@@13)))
 :qid |stdinbpl.435:15|
 :skolemid |37|
 :pattern ( (pre2 Heap@@14 this@@13))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6608) (this@@14 T@Ref) ) (!  (and (= (pre2Abstract Heap@@15 this@@14) (|pre2Abstract'| Heap@@15 this@@14)) (dummyFunction_1381 (|pre2Abstract#triggerStateless| this@@14)))
 :qid |stdinbpl.495:15|
 :skolemid |41|
 :pattern ( (pre2Abstract Heap@@15 this@@14))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6608) (this@@15 T@Ref) ) (!  (and (= (pre3 Heap@@16 this@@15) (|pre3'| Heap@@16 this@@15)) (dummyFunction_1381 (|pre3#triggerStateless| this@@15)))
 :qid |stdinbpl.546:15|
 :skolemid |44|
 :pattern ( (pre3 Heap@@16 this@@15))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6608) (this@@16 T@Ref) ) (!  (and (= (pre3Abstract Heap@@17 this@@16) (|pre3Abstract'| Heap@@17 this@@16)) (dummyFunction_1381 (|pre3Abstract#triggerStateless| this@@16)))
 :qid |stdinbpl.607:15|
 :skolemid |48|
 :pattern ( (pre3Abstract Heap@@17 this@@16))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6608) (this@@17 T@Ref) ) (!  (and (= (post1Abstract Heap@@18 this@@17) (|post1Abstract'| Heap@@18 this@@17)) (dummyFunction_1381 (|post1Abstract#triggerStateless| this@@17)))
 :qid |stdinbpl.659:15|
 :skolemid |51|
 :pattern ( (post1Abstract Heap@@18 this@@17))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6608) (this@@18 T@Ref) ) (!  (and (= (post2Abstract Heap@@19 this@@18) (|post2Abstract'| Heap@@19 this@@18)) (dummyFunction_1381 (|post2Abstract#triggerStateless| this@@18)))
 :qid |stdinbpl.719:15|
 :skolemid |55|
 :pattern ( (post2Abstract Heap@@19 this@@18))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6608) (ExhaleHeap T@PolymorphicMapType_6608) (Mask@@0 T@PolymorphicMapType_6629) (pm_f T@Field_3674_17581) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3674_17645 Mask@@0 null pm_f) (IsPredicateField_3674_17672 pm_f)) (= (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@20) null (PredicateMaskField_3674 pm_f)) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap) null (PredicateMaskField_3674 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap Mask@@0) (IsPredicateField_3674_17672 pm_f) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap) null (PredicateMaskField_3674 pm_f)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6608) (ExhaleHeap@@0 T@PolymorphicMapType_6608) (Mask@@1 T@PolymorphicMapType_6629) (pm_f@@0 T@Field_3674_17581) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3674_17645 Mask@@1 null pm_f@@0) (IsWandField_3674_19419 pm_f@@0)) (= (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@21) null (WandMaskField_3674 pm_f@@0)) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@0) null (WandMaskField_3674 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@0 Mask@@1) (IsWandField_3674_19419 pm_f@@0) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@0) null (WandMaskField_3674 pm_f@@0)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6608) (Mask@@2 T@PolymorphicMapType_6629) (this@@19 T@Ref) ) (!  (=> (and (state Heap@@22 Mask@@2) (or (< AssumeFunctionsAbove 2) (|post2Abstract#trigger| EmptyFrame this@@19))) (=> (not (= this@@19 null)) (and (not (= this@@19 null)) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@22) this@@19 x_36) 0))))
 :qid |stdinbpl.736:15|
 :skolemid |58|
 :pattern ( (state Heap@@22 Mask@@2) (|post2Abstract'| Heap@@22 this@@19))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6608) (Mask@@3 T@PolymorphicMapType_6629) (this@@20 T@Ref) ) (!  (=> (and (state Heap@@23 Mask@@3) (< AssumeFunctionsAbove 0)) (=> (and (not (= this@@20 null)) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@23) this@@20 x_36) 0)) (= (pre3 Heap@@23 this@@20) 1)))
 :qid |stdinbpl.556:15|
 :skolemid |46|
 :pattern ( (state Heap@@23 Mask@@3) (pre3 Heap@@23 this@@20))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6608) (Mask@@4 T@PolymorphicMapType_6629) (this@@21 T@Ref) ) (!  (=> (and (state Heap@@24 Mask@@4) (< AssumeFunctionsAbove 1)) (=> (and (not (= this@@21 null)) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@24) this@@21 x_36) 0)) (= (pre2 Heap@@24 this@@21) 1)))
 :qid |stdinbpl.445:15|
 :skolemid |39|
 :pattern ( (state Heap@@24 Mask@@4) (pre2 Heap@@24 this@@21))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6608) (Mask@@5 T@PolymorphicMapType_6629) (this@@22 T@Ref) ) (!  (=> (and (state Heap@@25 Mask@@5) (< AssumeFunctionsAbove 6)) (=> (and (not (= this@@22 null)) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@25) this@@22 x_36) 0)) (= (pre1 Heap@@25 this@@22) 1)))
 :qid |stdinbpl.334:15|
 :skolemid |32|
 :pattern ( (state Heap@@25 Mask@@5) (pre1 Heap@@25 this@@22))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6608) (Mask@@6 T@PolymorphicMapType_6629) (this@@23 T@Ref) ) (!  (=> (and (state Heap@@26 Mask@@6) (< AssumeFunctionsAbove 8)) (=> (and (not (= this@@23 null)) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@26) this@@23 x_36) 0)) (= (pre_1 Heap@@26 this@@23) 1)))
 :qid |stdinbpl.213:15|
 :skolemid |24|
 :pattern ( (state Heap@@26 Mask@@6) (pre_1 Heap@@26 this@@23))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6608) (ExhaleHeap@@1 T@PolymorphicMapType_6608) (Mask@@7 T@PolymorphicMapType_6629) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@1 Mask@@7) (=> (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@27) o_1 $allocated) (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@1 Mask@@7) (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_3674_17581) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6668_6668 p v_1 p w))
 :qid |stdinbpl.183:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6668_6668 p v_1 p w))
)))
(assert  (not (IsPredicateField_3674_1189 x_36)))
(assert  (not (IsWandField_3674_1189 x_36)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6608) (ExhaleHeap@@2 T@PolymorphicMapType_6608) (Mask@@8 T@PolymorphicMapType_6629) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@2 Mask@@8) (succHeap Heap@@28 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@2 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6629) (o_2@@4 T@Ref) (f_4@@4 T@Field_3674_17714) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6668_22977 f_4@@4))) (not (IsWandField_6668_22993 f_4@@4))) (<= (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6629) (o_2@@5 T@Ref) (f_4@@5 T@Field_3674_17581) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3674_17672 f_4@@5))) (not (IsWandField_3674_19419 f_4@@5))) (<= (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6629) (o_2@@6 T@Ref) (f_4@@6 T@Field_9995_1189) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3674_1189 f_4@@6))) (not (IsWandField_3674_1189 f_4@@6))) (<= (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6629) (o_2@@7 T@Ref) (f_4@@7 T@Field_6681_6682) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| Mask@@12) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6668_6682 f_4@@7))) (not (IsWandField_6668_6682 f_4@@7))) (<= (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| Mask@@12) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| Mask@@12) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6629) (o_2@@8 T@Ref) (f_4@@8 T@Field_6668_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| Mask@@13) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6668_53 f_4@@8))) (not (IsWandField_6668_53 f_4@@8))) (<= (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| Mask@@13) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| Mask@@13) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6629) (o_2@@9 T@Ref) (f_4@@9 T@Field_3674_17714) ) (! (= (HasDirectPerm_3674_23431 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3674_23431 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6629) (o_2@@10 T@Ref) (f_4@@10 T@Field_3674_17581) ) (! (= (HasDirectPerm_3674_17645 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3674_17645 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6629) (o_2@@11 T@Ref) (f_4@@11 T@Field_6681_6682) ) (! (= (HasDirectPerm_3674_6682 Mask@@16 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| Mask@@16) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3674_6682 Mask@@16 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6629) (o_2@@12 T@Ref) (f_4@@12 T@Field_6668_53) ) (! (= (HasDirectPerm_3674_53 Mask@@17 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| Mask@@17) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3674_53 Mask@@17 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6629) (o_2@@13 T@Ref) (f_4@@13 T@Field_9995_1189) ) (! (= (HasDirectPerm_3674_1189 Mask@@18 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| Mask@@18) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3674_1189 Mask@@18 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6608) (ExhaleHeap@@3 T@PolymorphicMapType_6608) (Mask@@19 T@PolymorphicMapType_6629) (pm_f@@1 T@Field_3674_17581) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@3 Mask@@19) (=> (and (HasDirectPerm_3674_17645 Mask@@19 null pm_f@@1) (IsPredicateField_3674_17672 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6668_53) ) (!  (=> (select (|PolymorphicMapType_7157_6668_53#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@29) null (PredicateMaskField_3674 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@29) o2 f_2) (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6681_6682) ) (!  (=> (select (|PolymorphicMapType_7157_6668_6682#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@29) null (PredicateMaskField_3674 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@29) o2@@0 f_2@@0) (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_9995_1189) ) (!  (=> (select (|PolymorphicMapType_7157_6668_1189#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@29) null (PredicateMaskField_3674 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@29) o2@@1 f_2@@1) (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3674_17581) ) (!  (=> (select (|PolymorphicMapType_7157_6668_17581#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@29) null (PredicateMaskField_3674 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@29) o2@@2 f_2@@2) (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3674_17714) ) (!  (=> (select (|PolymorphicMapType_7157_6668_18892#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@29) null (PredicateMaskField_3674 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@29) o2@@3 f_2@@3) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@3 Mask@@19) (IsPredicateField_3674_17672 pm_f@@1))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6608) (ExhaleHeap@@4 T@PolymorphicMapType_6608) (Mask@@20 T@PolymorphicMapType_6629) (pm_f@@2 T@Field_3674_17581) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@4 Mask@@20) (=> (and (HasDirectPerm_3674_17645 Mask@@20 null pm_f@@2) (IsWandField_3674_19419 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6668_53) ) (!  (=> (select (|PolymorphicMapType_7157_6668_53#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@30) null (WandMaskField_3674 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@30) o2@@4 f_2@@4) (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6681_6682) ) (!  (=> (select (|PolymorphicMapType_7157_6668_6682#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@30) null (WandMaskField_3674 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@30) o2@@5 f_2@@5) (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9995_1189) ) (!  (=> (select (|PolymorphicMapType_7157_6668_1189#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@30) null (WandMaskField_3674 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@30) o2@@6 f_2@@6) (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_3674_17581) ) (!  (=> (select (|PolymorphicMapType_7157_6668_17581#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@30) null (WandMaskField_3674 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@30) o2@@7 f_2@@7) (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_3674_17714) ) (!  (=> (select (|PolymorphicMapType_7157_6668_18892#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@30) null (WandMaskField_3674 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@30) o2@@8 f_2@@8) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@4 Mask@@20) (IsWandField_3674_19419 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.171:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6608) (ExhaleHeap@@5 T@PolymorphicMapType_6608) (Mask@@21 T@PolymorphicMapType_6629) (o_1@@0 T@Ref) (f_2@@9 T@Field_3674_17714) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_3674_23431 Mask@@21 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@31) o_1@@0 f_2@@9) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6608) (ExhaleHeap@@6 T@PolymorphicMapType_6608) (Mask@@22 T@PolymorphicMapType_6629) (o_1@@1 T@Ref) (f_2@@10 T@Field_3674_17581) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_3674_17645 Mask@@22 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@32) o_1@@1 f_2@@10) (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6608) (ExhaleHeap@@7 T@PolymorphicMapType_6608) (Mask@@23 T@PolymorphicMapType_6629) (o_1@@2 T@Ref) (f_2@@11 T@Field_6681_6682) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_3674_6682 Mask@@23 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@33) o_1@@2 f_2@@11) (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6608) (ExhaleHeap@@8 T@PolymorphicMapType_6608) (Mask@@24 T@PolymorphicMapType_6629) (o_1@@3 T@Ref) (f_2@@12 T@Field_6668_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_3674_53 Mask@@24 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@34) o_1@@3 f_2@@12) (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6608) (ExhaleHeap@@9 T@PolymorphicMapType_6608) (Mask@@25 T@PolymorphicMapType_6629) (o_1@@4 T@Ref) (f_2@@13 T@Field_9995_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@9 Mask@@25) (=> (HasDirectPerm_3674_1189 Mask@@25 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@35) o_1@@4 f_2@@13) (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@9 Mask@@25) (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3674_17714) ) (! (= (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3674_17581) ) (! (= (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_9995_1189) ) (! (= (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6681_6682) ) (! (= (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_6668_53) ) (! (= (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6629) (SummandMask1 T@PolymorphicMapType_6629) (SummandMask2 T@PolymorphicMapType_6629) (o_2@@19 T@Ref) (f_4@@19 T@Field_3674_17714) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6629) (SummandMask1@@0 T@PolymorphicMapType_6629) (SummandMask2@@0 T@PolymorphicMapType_6629) (o_2@@20 T@Ref) (f_4@@20 T@Field_3674_17581) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6629) (SummandMask1@@1 T@PolymorphicMapType_6629) (SummandMask2@@1 T@PolymorphicMapType_6629) (o_2@@21 T@Ref) (f_4@@21 T@Field_9995_1189) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6629) (SummandMask1@@2 T@PolymorphicMapType_6629) (SummandMask2@@2 T@PolymorphicMapType_6629) (o_2@@22 T@Ref) (f_4@@22 T@Field_6681_6682) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6629) (SummandMask1@@3 T@PolymorphicMapType_6629) (SummandMask2@@3 T@PolymorphicMapType_6629) (o_2@@23 T@Ref) (f_4@@23 T@Field_6668_53) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_6608) (Mask@@26 T@PolymorphicMapType_6629) (this@@24 T@Ref) ) (!  (=> (and (state Heap@@36 Mask@@26) (< AssumeFunctionsAbove 9)) (=> (not (= this@@24 null)) (= (body Heap@@36 this@@24) (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@36) this@@24 x_36))))
 :qid |stdinbpl.273:15|
 :skolemid |28|
 :pattern ( (state Heap@@36 Mask@@26) (body Heap@@36 this@@24))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_6608) (Mask@@27 T@PolymorphicMapType_6629) (this@@25 T@Ref) ) (!  (=> (and (state Heap@@37 Mask@@27) (or (< AssumeFunctionsAbove 5) (|post1Abstract#trigger| EmptyFrame this@@25))) (=> (not (= this@@25 null)) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@37) this@@25 x_36) 0)))
 :qid |stdinbpl.676:15|
 :skolemid |54|
 :pattern ( (state Heap@@37 Mask@@27) (|post1Abstract'| Heap@@37 this@@25))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_6608) (Mask@@28 T@PolymorphicMapType_6629) (this@@26 T@Ref) ) (!  (=> (state Heap@@38 Mask@@28) (= (|pre'| Heap@@38 this@@26) (|pre#frame| EmptyFrame this@@26)))
 :qid |stdinbpl.220:15|
 :skolemid |25|
 :pattern ( (state Heap@@38 Mask@@28) (|pre'| Heap@@38 this@@26))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_6608) (Mask@@29 T@PolymorphicMapType_6629) (this@@27 T@Ref) ) (!  (=> (state Heap@@39 Mask@@29) (= (|body'| Heap@@39 this@@27) (|body#frame| EmptyFrame this@@27)))
 :qid |stdinbpl.280:15|
 :skolemid |29|
 :pattern ( (state Heap@@39 Mask@@29) (|body'| Heap@@39 this@@27))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_6608) (Mask@@30 T@PolymorphicMapType_6629) (this@@28 T@Ref) ) (!  (=> (state Heap@@40 Mask@@30) (= (|pre1'| Heap@@40 this@@28) (|pre1#frame| EmptyFrame this@@28)))
 :qid |stdinbpl.341:15|
 :skolemid |33|
 :pattern ( (state Heap@@40 Mask@@30) (|pre1'| Heap@@40 this@@28))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_6608) (Mask@@31 T@PolymorphicMapType_6629) (this@@29 T@Ref) ) (!  (=> (state Heap@@41 Mask@@31) (= (|pre1Abstract'| Heap@@41 this@@29) (|pre1Abstract#frame| EmptyFrame this@@29)))
 :qid |stdinbpl.395:15|
 :skolemid |36|
 :pattern ( (state Heap@@41 Mask@@31) (|pre1Abstract'| Heap@@41 this@@29))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_6608) (Mask@@32 T@PolymorphicMapType_6629) (this@@30 T@Ref) ) (!  (=> (state Heap@@42 Mask@@32) (= (|pre2'| Heap@@42 this@@30) (|pre2#frame| EmptyFrame this@@30)))
 :qid |stdinbpl.452:15|
 :skolemid |40|
 :pattern ( (state Heap@@42 Mask@@32) (|pre2'| Heap@@42 this@@30))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_6608) (Mask@@33 T@PolymorphicMapType_6629) (this@@31 T@Ref) ) (!  (=> (state Heap@@43 Mask@@33) (= (|pre2Abstract'| Heap@@43 this@@31) (|pre2Abstract#frame| EmptyFrame this@@31)))
 :qid |stdinbpl.506:15|
 :skolemid |43|
 :pattern ( (state Heap@@43 Mask@@33) (|pre2Abstract'| Heap@@43 this@@31))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_6608) (Mask@@34 T@PolymorphicMapType_6629) (this@@32 T@Ref) ) (!  (=> (state Heap@@44 Mask@@34) (= (|pre3'| Heap@@44 this@@32) (|pre3#frame| EmptyFrame this@@32)))
 :qid |stdinbpl.563:15|
 :skolemid |47|
 :pattern ( (state Heap@@44 Mask@@34) (|pre3'| Heap@@44 this@@32))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_6608) (Mask@@35 T@PolymorphicMapType_6629) (this@@33 T@Ref) ) (!  (=> (state Heap@@45 Mask@@35) (= (|pre3Abstract'| Heap@@45 this@@33) (|pre3Abstract#frame| EmptyFrame this@@33)))
 :qid |stdinbpl.618:15|
 :skolemid |50|
 :pattern ( (state Heap@@45 Mask@@35) (|pre3Abstract'| Heap@@45 this@@33))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_6608) (Mask@@36 T@PolymorphicMapType_6629) (this@@34 T@Ref) ) (!  (=> (state Heap@@46 Mask@@36) (= (|post1Abstract'| Heap@@46 this@@34) (|post1Abstract#frame| EmptyFrame this@@34)))
 :qid |stdinbpl.670:15|
 :skolemid |53|
 :pattern ( (state Heap@@46 Mask@@36) (|post1Abstract'| Heap@@46 this@@34))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_6608) (Mask@@37 T@PolymorphicMapType_6629) (this@@35 T@Ref) ) (!  (=> (state Heap@@47 Mask@@37) (= (|post2Abstract'| Heap@@47 this@@35) (|post2Abstract#frame| EmptyFrame this@@35)))
 :qid |stdinbpl.730:15|
 :skolemid |57|
 :pattern ( (state Heap@@47 Mask@@37) (|post2Abstract'| Heap@@47 this@@35))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_6608) (o T@Ref) (f_3 T@Field_3674_17581) (v T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@48) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@48) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@48) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@48) (store (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@48) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@48) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@48) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@48) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@48) (store (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@48) o f_3 v)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_6608) (o@@0 T@Ref) (f_3@@0 T@Field_3674_17714) (v@@0 T@PolymorphicMapType_7157) ) (! (succHeap Heap@@49 (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@49) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@49) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@49) (store (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@49) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@49) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@49) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@49) (store (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@49) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_6608) (o@@1 T@Ref) (f_3@@1 T@Field_9995_1189) (v@@1 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@50) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@50) (store (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@50) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@50) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@50) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@50) (store (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@50) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@50) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_6608) (o@@2 T@Ref) (f_3@@2 T@Field_6681_6682) (v@@2 T@Ref) ) (! (succHeap Heap@@51 (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@51) (store (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@51) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@51) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@51) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@51) (store (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@51) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@51) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@51) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_6608) (o@@3 T@Ref) (f_3@@3 T@Field_6668_53) (v@@3 Bool) ) (! (succHeap Heap@@52 (PolymorphicMapType_6608 (store (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@52) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@52) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@52) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@52) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6608 (store (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@52) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@52) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@52) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@52) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@52)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_6681_6682) (Heap@@53 T@PolymorphicMapType_6608) ) (!  (=> (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@53) o@@4 $allocated) (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@53) (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@53) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@53) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_3674_17581) (v_1@@0 T@FrameType) (q T@Field_3674_17581) (w@@0 T@FrameType) (r T@Field_3674_17581) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6668_6668 p@@1 v_1@@0 q w@@0) (InsidePredicate_6668_6668 q w@@0 r u)) (InsidePredicate_6668_6668 p@@1 v_1@@0 r u))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6668_6668 p@@1 v_1@@0 q w@@0) (InsidePredicate_6668_6668 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@54 () T@PolymorphicMapType_6608)
(declare-fun this@@36 () T@Ref)
(set-info :boogie-vc-id |pre3#definedness|)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (state Heap@@54 ZeroMask) (=> (and (not AssumePermUpperBound) (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@54) this@@36 $allocated)) (=> (and (and (= AssumeFunctionsAbove 0) (not (= this@@36 null))) (and (state Heap@@54 ZeroMask) (= (ControlFlow 0 2) (- 0 1)))) (HasDirectPerm_3674_1189 ZeroMask this@@36 x_36))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 3) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
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
(declare-sort T@Field_6668_53 0)
(declare-sort T@Field_6681_6682 0)
(declare-sort T@Field_9995_1189 0)
(declare-sort T@Field_3674_17714 0)
(declare-sort T@Field_3674_17581 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6629 0)) (((PolymorphicMapType_6629 (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| (Array T@Ref T@Field_6668_53 Real)) (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| (Array T@Ref T@Field_6681_6682 Real)) (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| (Array T@Ref T@Field_9995_1189 Real)) (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| (Array T@Ref T@Field_3674_17581 Real)) (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| (Array T@Ref T@Field_3674_17714 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7157 0)) (((PolymorphicMapType_7157 (|PolymorphicMapType_7157_6668_53#PolymorphicMapType_7157| (Array T@Ref T@Field_6668_53 Bool)) (|PolymorphicMapType_7157_6668_6682#PolymorphicMapType_7157| (Array T@Ref T@Field_6681_6682 Bool)) (|PolymorphicMapType_7157_6668_1189#PolymorphicMapType_7157| (Array T@Ref T@Field_9995_1189 Bool)) (|PolymorphicMapType_7157_6668_17581#PolymorphicMapType_7157| (Array T@Ref T@Field_3674_17581 Bool)) (|PolymorphicMapType_7157_6668_18892#PolymorphicMapType_7157| (Array T@Ref T@Field_3674_17714 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6608 0)) (((PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| (Array T@Ref T@Field_6668_53 Bool)) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| (Array T@Ref T@Field_6681_6682 T@Ref)) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| (Array T@Ref T@Field_9995_1189 Int)) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| (Array T@Ref T@Field_3674_17714 T@PolymorphicMapType_7157)) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| (Array T@Ref T@Field_3674_17581 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6668_53)
(declare-fun x_36 () T@Field_9995_1189)
(declare-fun succHeap (T@PolymorphicMapType_6608 T@PolymorphicMapType_6608) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6608 T@PolymorphicMapType_6608) Bool)
(declare-fun state (T@PolymorphicMapType_6608 T@PolymorphicMapType_6629) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_6629) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7157)
(declare-fun |pre'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun dummyFunction_1381 (Int) Bool)
(declare-fun |pre#triggerStateless| (T@Ref) Int)
(declare-fun |body'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |body#triggerStateless| (T@Ref) Int)
(declare-fun |pre1'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |pre1#triggerStateless| (T@Ref) Int)
(declare-fun |pre1Abstract'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |pre1Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |pre2'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |pre2#triggerStateless| (T@Ref) Int)
(declare-fun |pre2Abstract'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |pre2Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |pre3'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |pre3#triggerStateless| (T@Ref) Int)
(declare-fun |pre3Abstract'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |pre3Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |post1Abstract'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |post1Abstract#triggerStateless| (T@Ref) Int)
(declare-fun |post2Abstract'| (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun |post2Abstract#triggerStateless| (T@Ref) Int)
(declare-fun pre_1 (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun body (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun pre1 (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun pre1Abstract (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun pre2 (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun pre2Abstract (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun pre3 (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun pre3Abstract (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun post1Abstract (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun post2Abstract (T@PolymorphicMapType_6608 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6608 T@PolymorphicMapType_6608 T@PolymorphicMapType_6629) Bool)
(declare-fun IsPredicateField_3674_17672 (T@Field_3674_17581) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_3674 (T@Field_3674_17581) T@Field_3674_17714)
(declare-fun HasDirectPerm_3674_17645 (T@PolymorphicMapType_6629 T@Ref T@Field_3674_17581) Bool)
(declare-fun IsWandField_3674_19419 (T@Field_3674_17581) Bool)
(declare-fun WandMaskField_3674 (T@Field_3674_17581) T@Field_3674_17714)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |post2Abstract#trigger| (T@FrameType T@Ref) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun dummyHeap () T@PolymorphicMapType_6608)
(declare-fun ZeroMask () T@PolymorphicMapType_6629)
(declare-fun InsidePredicate_6668_6668 (T@Field_3674_17581 T@FrameType T@Field_3674_17581 T@FrameType) Bool)
(declare-fun IsPredicateField_3674_1189 (T@Field_9995_1189) Bool)
(declare-fun IsWandField_3674_1189 (T@Field_9995_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6668_22977 (T@Field_3674_17714) Bool)
(declare-fun IsWandField_6668_22993 (T@Field_3674_17714) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6668_6682 (T@Field_6681_6682) Bool)
(declare-fun IsWandField_6668_6682 (T@Field_6681_6682) Bool)
(declare-fun IsPredicateField_6668_53 (T@Field_6668_53) Bool)
(declare-fun IsWandField_6668_53 (T@Field_6668_53) Bool)
(declare-fun HasDirectPerm_3674_23431 (T@PolymorphicMapType_6629 T@Ref T@Field_3674_17714) Bool)
(declare-fun HasDirectPerm_3674_6682 (T@PolymorphicMapType_6629 T@Ref T@Field_6681_6682) Bool)
(declare-fun HasDirectPerm_3674_53 (T@PolymorphicMapType_6629 T@Ref T@Field_6668_53) Bool)
(declare-fun HasDirectPerm_3674_1189 (T@PolymorphicMapType_6629 T@Ref T@Field_9995_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_6629 T@PolymorphicMapType_6629 T@PolymorphicMapType_6629) Bool)
(declare-fun |post1Abstract#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |pre#frame| (T@FrameType T@Ref) Int)
(declare-fun |body#frame| (T@FrameType T@Ref) Int)
(declare-fun |pre1#frame| (T@FrameType T@Ref) Int)
(declare-fun |pre1Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |pre2#frame| (T@FrameType T@Ref) Int)
(declare-fun |pre2Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |pre3#frame| (T@FrameType T@Ref) Int)
(declare-fun |pre3Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |post1Abstract#frame| (T@FrameType T@Ref) Int)
(declare-fun |post2Abstract#frame| (T@FrameType T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_6608) (Heap1 T@PolymorphicMapType_6608) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6608) (Mask T@PolymorphicMapType_6629) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6608) (Heap1@@0 T@PolymorphicMapType_6608) (Heap2 T@PolymorphicMapType_6608) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_3674_17714) ) (!  (not (select (|PolymorphicMapType_7157_6668_18892#PolymorphicMapType_7157| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7157_6668_18892#PolymorphicMapType_7157| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_3674_17581) ) (!  (not (select (|PolymorphicMapType_7157_6668_17581#PolymorphicMapType_7157| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7157_6668_17581#PolymorphicMapType_7157| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_9995_1189) ) (!  (not (select (|PolymorphicMapType_7157_6668_1189#PolymorphicMapType_7157| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7157_6668_1189#PolymorphicMapType_7157| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6681_6682) ) (!  (not (select (|PolymorphicMapType_7157_6668_6682#PolymorphicMapType_7157| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7157_6668_6682#PolymorphicMapType_7157| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6668_53) ) (!  (not (select (|PolymorphicMapType_7157_6668_53#PolymorphicMapType_7157| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7157_6668_53#PolymorphicMapType_7157| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6608) (this T@Ref) ) (! (dummyFunction_1381 (|pre#triggerStateless| this))
 :qid |stdinbpl.207:15|
 :skolemid |23|
 :pattern ( (|pre'| Heap@@0 this))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6608) (this@@0 T@Ref) ) (! (dummyFunction_1381 (|body#triggerStateless| this@@0))
 :qid |stdinbpl.267:15|
 :skolemid |27|
 :pattern ( (|body'| Heap@@1 this@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6608) (this@@1 T@Ref) ) (! (dummyFunction_1381 (|pre1#triggerStateless| this@@1))
 :qid |stdinbpl.328:15|
 :skolemid |31|
 :pattern ( (|pre1'| Heap@@2 this@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6608) (this@@2 T@Ref) ) (! (dummyFunction_1381 (|pre1Abstract#triggerStateless| this@@2))
 :qid |stdinbpl.388:15|
 :skolemid |35|
 :pattern ( (|pre1Abstract'| Heap@@3 this@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6608) (this@@3 T@Ref) ) (! (dummyFunction_1381 (|pre2#triggerStateless| this@@3))
 :qid |stdinbpl.439:15|
 :skolemid |38|
 :pattern ( (|pre2'| Heap@@4 this@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6608) (this@@4 T@Ref) ) (! (dummyFunction_1381 (|pre2Abstract#triggerStateless| this@@4))
 :qid |stdinbpl.499:15|
 :skolemid |42|
 :pattern ( (|pre2Abstract'| Heap@@5 this@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6608) (this@@5 T@Ref) ) (! (dummyFunction_1381 (|pre3#triggerStateless| this@@5))
 :qid |stdinbpl.550:15|
 :skolemid |45|
 :pattern ( (|pre3'| Heap@@6 this@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6608) (this@@6 T@Ref) ) (! (dummyFunction_1381 (|pre3Abstract#triggerStateless| this@@6))
 :qid |stdinbpl.611:15|
 :skolemid |49|
 :pattern ( (|pre3Abstract'| Heap@@7 this@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6608) (this@@7 T@Ref) ) (! (dummyFunction_1381 (|post1Abstract#triggerStateless| this@@7))
 :qid |stdinbpl.663:15|
 :skolemid |52|
 :pattern ( (|post1Abstract'| Heap@@8 this@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6608) (this@@8 T@Ref) ) (! (dummyFunction_1381 (|post2Abstract#triggerStateless| this@@8))
 :qid |stdinbpl.723:15|
 :skolemid |56|
 :pattern ( (|post2Abstract'| Heap@@9 this@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6608) (this@@9 T@Ref) ) (!  (and (= (pre_1 Heap@@10 this@@9) (|pre'| Heap@@10 this@@9)) (dummyFunction_1381 (|pre#triggerStateless| this@@9)))
 :qid |stdinbpl.203:15|
 :skolemid |22|
 :pattern ( (pre_1 Heap@@10 this@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6608) (this@@10 T@Ref) ) (!  (and (= (body Heap@@11 this@@10) (|body'| Heap@@11 this@@10)) (dummyFunction_1381 (|body#triggerStateless| this@@10)))
 :qid |stdinbpl.263:15|
 :skolemid |26|
 :pattern ( (body Heap@@11 this@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6608) (this@@11 T@Ref) ) (!  (and (= (pre1 Heap@@12 this@@11) (|pre1'| Heap@@12 this@@11)) (dummyFunction_1381 (|pre1#triggerStateless| this@@11)))
 :qid |stdinbpl.324:15|
 :skolemid |30|
 :pattern ( (pre1 Heap@@12 this@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6608) (this@@12 T@Ref) ) (!  (and (= (pre1Abstract Heap@@13 this@@12) (|pre1Abstract'| Heap@@13 this@@12)) (dummyFunction_1381 (|pre1Abstract#triggerStateless| this@@12)))
 :qid |stdinbpl.384:15|
 :skolemid |34|
 :pattern ( (pre1Abstract Heap@@13 this@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6608) (this@@13 T@Ref) ) (!  (and (= (pre2 Heap@@14 this@@13) (|pre2'| Heap@@14 this@@13)) (dummyFunction_1381 (|pre2#triggerStateless| this@@13)))
 :qid |stdinbpl.435:15|
 :skolemid |37|
 :pattern ( (pre2 Heap@@14 this@@13))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6608) (this@@14 T@Ref) ) (!  (and (= (pre2Abstract Heap@@15 this@@14) (|pre2Abstract'| Heap@@15 this@@14)) (dummyFunction_1381 (|pre2Abstract#triggerStateless| this@@14)))
 :qid |stdinbpl.495:15|
 :skolemid |41|
 :pattern ( (pre2Abstract Heap@@15 this@@14))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6608) (this@@15 T@Ref) ) (!  (and (= (pre3 Heap@@16 this@@15) (|pre3'| Heap@@16 this@@15)) (dummyFunction_1381 (|pre3#triggerStateless| this@@15)))
 :qid |stdinbpl.546:15|
 :skolemid |44|
 :pattern ( (pre3 Heap@@16 this@@15))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6608) (this@@16 T@Ref) ) (!  (and (= (pre3Abstract Heap@@17 this@@16) (|pre3Abstract'| Heap@@17 this@@16)) (dummyFunction_1381 (|pre3Abstract#triggerStateless| this@@16)))
 :qid |stdinbpl.607:15|
 :skolemid |48|
 :pattern ( (pre3Abstract Heap@@17 this@@16))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6608) (this@@17 T@Ref) ) (!  (and (= (post1Abstract Heap@@18 this@@17) (|post1Abstract'| Heap@@18 this@@17)) (dummyFunction_1381 (|post1Abstract#triggerStateless| this@@17)))
 :qid |stdinbpl.659:15|
 :skolemid |51|
 :pattern ( (post1Abstract Heap@@18 this@@17))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6608) (this@@18 T@Ref) ) (!  (and (= (post2Abstract Heap@@19 this@@18) (|post2Abstract'| Heap@@19 this@@18)) (dummyFunction_1381 (|post2Abstract#triggerStateless| this@@18)))
 :qid |stdinbpl.719:15|
 :skolemid |55|
 :pattern ( (post2Abstract Heap@@19 this@@18))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6608) (ExhaleHeap T@PolymorphicMapType_6608) (Mask@@0 T@PolymorphicMapType_6629) (pm_f T@Field_3674_17581) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_3674_17645 Mask@@0 null pm_f) (IsPredicateField_3674_17672 pm_f)) (= (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@20) null (PredicateMaskField_3674 pm_f)) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap) null (PredicateMaskField_3674 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap Mask@@0) (IsPredicateField_3674_17672 pm_f) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap) null (PredicateMaskField_3674 pm_f)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6608) (ExhaleHeap@@0 T@PolymorphicMapType_6608) (Mask@@1 T@PolymorphicMapType_6629) (pm_f@@0 T@Field_3674_17581) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_3674_17645 Mask@@1 null pm_f@@0) (IsWandField_3674_19419 pm_f@@0)) (= (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@21) null (WandMaskField_3674 pm_f@@0)) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@0) null (WandMaskField_3674 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@0 Mask@@1) (IsWandField_3674_19419 pm_f@@0) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@0) null (WandMaskField_3674 pm_f@@0)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6608) (Mask@@2 T@PolymorphicMapType_6629) (this@@19 T@Ref) ) (!  (=> (and (state Heap@@22 Mask@@2) (or (< AssumeFunctionsAbove 2) (|post2Abstract#trigger| EmptyFrame this@@19))) (=> (not (= this@@19 null)) (and (not (= this@@19 null)) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@22) this@@19 x_36) 0))))
 :qid |stdinbpl.736:15|
 :skolemid |58|
 :pattern ( (state Heap@@22 Mask@@2) (|post2Abstract'| Heap@@22 this@@19))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6608) (Mask@@3 T@PolymorphicMapType_6629) (this@@20 T@Ref) ) (!  (=> (and (state Heap@@23 Mask@@3) (< AssumeFunctionsAbove 0)) (=> (and (not (= this@@20 null)) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@23) this@@20 x_36) 0)) (= (pre3 Heap@@23 this@@20) 1)))
 :qid |stdinbpl.556:15|
 :skolemid |46|
 :pattern ( (state Heap@@23 Mask@@3) (pre3 Heap@@23 this@@20))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6608) (Mask@@4 T@PolymorphicMapType_6629) (this@@21 T@Ref) ) (!  (=> (and (state Heap@@24 Mask@@4) (< AssumeFunctionsAbove 1)) (=> (and (not (= this@@21 null)) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@24) this@@21 x_36) 0)) (= (pre2 Heap@@24 this@@21) 1)))
 :qid |stdinbpl.445:15|
 :skolemid |39|
 :pattern ( (state Heap@@24 Mask@@4) (pre2 Heap@@24 this@@21))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6608) (Mask@@5 T@PolymorphicMapType_6629) (this@@22 T@Ref) ) (!  (=> (and (state Heap@@25 Mask@@5) (< AssumeFunctionsAbove 6)) (=> (and (not (= this@@22 null)) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@25) this@@22 x_36) 0)) (= (pre1 Heap@@25 this@@22) 1)))
 :qid |stdinbpl.334:15|
 :skolemid |32|
 :pattern ( (state Heap@@25 Mask@@5) (pre1 Heap@@25 this@@22))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6608) (Mask@@6 T@PolymorphicMapType_6629) (this@@23 T@Ref) ) (!  (=> (and (state Heap@@26 Mask@@6) (< AssumeFunctionsAbove 8)) (=> (and (not (= this@@23 null)) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@26) this@@23 x_36) 0)) (= (pre_1 Heap@@26 this@@23) 1)))
 :qid |stdinbpl.213:15|
 :skolemid |24|
 :pattern ( (state Heap@@26 Mask@@6) (pre_1 Heap@@26 this@@23))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6608) (ExhaleHeap@@1 T@PolymorphicMapType_6608) (Mask@@7 T@PolymorphicMapType_6629) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@1 Mask@@7) (=> (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@27) o_1 $allocated) (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@1 Mask@@7) (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_3674_17581) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6668_6668 p v_1 p w))
 :qid |stdinbpl.183:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6668_6668 p v_1 p w))
)))
(assert  (not (IsPredicateField_3674_1189 x_36)))
(assert  (not (IsWandField_3674_1189 x_36)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6608) (ExhaleHeap@@2 T@PolymorphicMapType_6608) (Mask@@8 T@PolymorphicMapType_6629) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@2 Mask@@8) (succHeap Heap@@28 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@2 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_6629) (o_2@@4 T@Ref) (f_4@@4 T@Field_3674_17714) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6668_22977 f_4@@4))) (not (IsWandField_6668_22993 f_4@@4))) (<= (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_6629) (o_2@@5 T@Ref) (f_4@@5 T@Field_3674_17581) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_3674_17672 f_4@@5))) (not (IsWandField_3674_19419 f_4@@5))) (<= (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6629) (o_2@@6 T@Ref) (f_4@@6 T@Field_9995_1189) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_3674_1189 f_4@@6))) (not (IsWandField_3674_1189 f_4@@6))) (<= (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6629) (o_2@@7 T@Ref) (f_4@@7 T@Field_6681_6682) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| Mask@@12) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6668_6682 f_4@@7))) (not (IsWandField_6668_6682 f_4@@7))) (<= (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| Mask@@12) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| Mask@@12) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6629) (o_2@@8 T@Ref) (f_4@@8 T@Field_6668_53) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| Mask@@13) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6668_53 f_4@@8))) (not (IsWandField_6668_53 f_4@@8))) (<= (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| Mask@@13) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| Mask@@13) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6629) (o_2@@9 T@Ref) (f_4@@9 T@Field_3674_17714) ) (! (= (HasDirectPerm_3674_23431 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3674_23431 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6629) (o_2@@10 T@Ref) (f_4@@10 T@Field_3674_17581) ) (! (= (HasDirectPerm_3674_17645 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3674_17645 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6629) (o_2@@11 T@Ref) (f_4@@11 T@Field_6681_6682) ) (! (= (HasDirectPerm_3674_6682 Mask@@16 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| Mask@@16) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3674_6682 Mask@@16 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6629) (o_2@@12 T@Ref) (f_4@@12 T@Field_6668_53) ) (! (= (HasDirectPerm_3674_53 Mask@@17 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| Mask@@17) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3674_53 Mask@@17 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6629) (o_2@@13 T@Ref) (f_4@@13 T@Field_9995_1189) ) (! (= (HasDirectPerm_3674_1189 Mask@@18 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| Mask@@18) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_3674_1189 Mask@@18 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6608) (ExhaleHeap@@3 T@PolymorphicMapType_6608) (Mask@@19 T@PolymorphicMapType_6629) (pm_f@@1 T@Field_3674_17581) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@3 Mask@@19) (=> (and (HasDirectPerm_3674_17645 Mask@@19 null pm_f@@1) (IsPredicateField_3674_17672 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6668_53) ) (!  (=> (select (|PolymorphicMapType_7157_6668_53#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@29) null (PredicateMaskField_3674 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@29) o2 f_2) (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6681_6682) ) (!  (=> (select (|PolymorphicMapType_7157_6668_6682#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@29) null (PredicateMaskField_3674 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@29) o2@@0 f_2@@0) (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_9995_1189) ) (!  (=> (select (|PolymorphicMapType_7157_6668_1189#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@29) null (PredicateMaskField_3674 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@29) o2@@1 f_2@@1) (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_3674_17581) ) (!  (=> (select (|PolymorphicMapType_7157_6668_17581#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@29) null (PredicateMaskField_3674 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@29) o2@@2 f_2@@2) (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_3674_17714) ) (!  (=> (select (|PolymorphicMapType_7157_6668_18892#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@29) null (PredicateMaskField_3674 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@29) o2@@3 f_2@@3) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@3 Mask@@19) (IsPredicateField_3674_17672 pm_f@@1))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6608) (ExhaleHeap@@4 T@PolymorphicMapType_6608) (Mask@@20 T@PolymorphicMapType_6629) (pm_f@@2 T@Field_3674_17581) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@4 Mask@@20) (=> (and (HasDirectPerm_3674_17645 Mask@@20 null pm_f@@2) (IsWandField_3674_19419 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6668_53) ) (!  (=> (select (|PolymorphicMapType_7157_6668_53#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@30) null (WandMaskField_3674 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@30) o2@@4 f_2@@4) (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6681_6682) ) (!  (=> (select (|PolymorphicMapType_7157_6668_6682#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@30) null (WandMaskField_3674 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@30) o2@@5 f_2@@5) (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_9995_1189) ) (!  (=> (select (|PolymorphicMapType_7157_6668_1189#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@30) null (WandMaskField_3674 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@30) o2@@6 f_2@@6) (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_3674_17581) ) (!  (=> (select (|PolymorphicMapType_7157_6668_17581#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@30) null (WandMaskField_3674 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@30) o2@@7 f_2@@7) (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_3674_17714) ) (!  (=> (select (|PolymorphicMapType_7157_6668_18892#PolymorphicMapType_7157| (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@30) null (WandMaskField_3674 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@30) o2@@8 f_2@@8) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@4 Mask@@20) (IsWandField_3674_19419 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.171:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6608) (ExhaleHeap@@5 T@PolymorphicMapType_6608) (Mask@@21 T@PolymorphicMapType_6629) (o_1@@0 T@Ref) (f_2@@9 T@Field_3674_17714) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_3674_23431 Mask@@21 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@31) o_1@@0 f_2@@9) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6608) (ExhaleHeap@@6 T@PolymorphicMapType_6608) (Mask@@22 T@PolymorphicMapType_6629) (o_1@@1 T@Ref) (f_2@@10 T@Field_3674_17581) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_3674_17645 Mask@@22 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@32) o_1@@1 f_2@@10) (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6608) (ExhaleHeap@@7 T@PolymorphicMapType_6608) (Mask@@23 T@PolymorphicMapType_6629) (o_1@@2 T@Ref) (f_2@@11 T@Field_6681_6682) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_3674_6682 Mask@@23 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@33) o_1@@2 f_2@@11) (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6608) (ExhaleHeap@@8 T@PolymorphicMapType_6608) (Mask@@24 T@PolymorphicMapType_6629) (o_1@@3 T@Ref) (f_2@@12 T@Field_6668_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_3674_53 Mask@@24 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@34) o_1@@3 f_2@@12) (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6608) (ExhaleHeap@@9 T@PolymorphicMapType_6608) (Mask@@25 T@PolymorphicMapType_6629) (o_1@@4 T@Ref) (f_2@@13 T@Field_9995_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@9 Mask@@25) (=> (HasDirectPerm_3674_1189 Mask@@25 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@35) o_1@@4 f_2@@13) (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@9 Mask@@25) (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_3674_17714) ) (! (= (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_3674_17581) ) (! (= (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_9995_1189) ) (! (= (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6681_6682) ) (! (= (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_6668_53) ) (! (= (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6629) (SummandMask1 T@PolymorphicMapType_6629) (SummandMask2 T@PolymorphicMapType_6629) (o_2@@19 T@Ref) (f_4@@19 T@Field_3674_17714) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6629_6668_21848#PolymorphicMapType_6629| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6629) (SummandMask1@@0 T@PolymorphicMapType_6629) (SummandMask2@@0 T@PolymorphicMapType_6629) (o_2@@20 T@Ref) (f_4@@20 T@Field_3674_17581) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6629_6668_17581#PolymorphicMapType_6629| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6629) (SummandMask1@@1 T@PolymorphicMapType_6629) (SummandMask2@@1 T@PolymorphicMapType_6629) (o_2@@21 T@Ref) (f_4@@21 T@Field_9995_1189) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6629_6668_1189#PolymorphicMapType_6629| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6629) (SummandMask1@@2 T@PolymorphicMapType_6629) (SummandMask2@@2 T@PolymorphicMapType_6629) (o_2@@22 T@Ref) (f_4@@22 T@Field_6681_6682) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6629_6668_6682#PolymorphicMapType_6629| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6629) (SummandMask1@@3 T@PolymorphicMapType_6629) (SummandMask2@@3 T@PolymorphicMapType_6629) (o_2@@23 T@Ref) (f_4@@23 T@Field_6668_53) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6629_6668_53#PolymorphicMapType_6629| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_6608) (Mask@@26 T@PolymorphicMapType_6629) (this@@24 T@Ref) ) (!  (=> (and (state Heap@@36 Mask@@26) (< AssumeFunctionsAbove 9)) (=> (not (= this@@24 null)) (= (body Heap@@36 this@@24) (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@36) this@@24 x_36))))
 :qid |stdinbpl.273:15|
 :skolemid |28|
 :pattern ( (state Heap@@36 Mask@@26) (body Heap@@36 this@@24))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_6608) (Mask@@27 T@PolymorphicMapType_6629) (this@@25 T@Ref) ) (!  (=> (and (state Heap@@37 Mask@@27) (or (< AssumeFunctionsAbove 5) (|post1Abstract#trigger| EmptyFrame this@@25))) (=> (not (= this@@25 null)) (= (select (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@37) this@@25 x_36) 0)))
 :qid |stdinbpl.676:15|
 :skolemid |54|
 :pattern ( (state Heap@@37 Mask@@27) (|post1Abstract'| Heap@@37 this@@25))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_6608) (Mask@@28 T@PolymorphicMapType_6629) (this@@26 T@Ref) ) (!  (=> (state Heap@@38 Mask@@28) (= (|pre'| Heap@@38 this@@26) (|pre#frame| EmptyFrame this@@26)))
 :qid |stdinbpl.220:15|
 :skolemid |25|
 :pattern ( (state Heap@@38 Mask@@28) (|pre'| Heap@@38 this@@26))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_6608) (Mask@@29 T@PolymorphicMapType_6629) (this@@27 T@Ref) ) (!  (=> (state Heap@@39 Mask@@29) (= (|body'| Heap@@39 this@@27) (|body#frame| EmptyFrame this@@27)))
 :qid |stdinbpl.280:15|
 :skolemid |29|
 :pattern ( (state Heap@@39 Mask@@29) (|body'| Heap@@39 this@@27))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_6608) (Mask@@30 T@PolymorphicMapType_6629) (this@@28 T@Ref) ) (!  (=> (state Heap@@40 Mask@@30) (= (|pre1'| Heap@@40 this@@28) (|pre1#frame| EmptyFrame this@@28)))
 :qid |stdinbpl.341:15|
 :skolemid |33|
 :pattern ( (state Heap@@40 Mask@@30) (|pre1'| Heap@@40 this@@28))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_6608) (Mask@@31 T@PolymorphicMapType_6629) (this@@29 T@Ref) ) (!  (=> (state Heap@@41 Mask@@31) (= (|pre1Abstract'| Heap@@41 this@@29) (|pre1Abstract#frame| EmptyFrame this@@29)))
 :qid |stdinbpl.395:15|
 :skolemid |36|
 :pattern ( (state Heap@@41 Mask@@31) (|pre1Abstract'| Heap@@41 this@@29))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_6608) (Mask@@32 T@PolymorphicMapType_6629) (this@@30 T@Ref) ) (!  (=> (state Heap@@42 Mask@@32) (= (|pre2'| Heap@@42 this@@30) (|pre2#frame| EmptyFrame this@@30)))
 :qid |stdinbpl.452:15|
 :skolemid |40|
 :pattern ( (state Heap@@42 Mask@@32) (|pre2'| Heap@@42 this@@30))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_6608) (Mask@@33 T@PolymorphicMapType_6629) (this@@31 T@Ref) ) (!  (=> (state Heap@@43 Mask@@33) (= (|pre2Abstract'| Heap@@43 this@@31) (|pre2Abstract#frame| EmptyFrame this@@31)))
 :qid |stdinbpl.506:15|
 :skolemid |43|
 :pattern ( (state Heap@@43 Mask@@33) (|pre2Abstract'| Heap@@43 this@@31))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_6608) (Mask@@34 T@PolymorphicMapType_6629) (this@@32 T@Ref) ) (!  (=> (state Heap@@44 Mask@@34) (= (|pre3'| Heap@@44 this@@32) (|pre3#frame| EmptyFrame this@@32)))
 :qid |stdinbpl.563:15|
 :skolemid |47|
 :pattern ( (state Heap@@44 Mask@@34) (|pre3'| Heap@@44 this@@32))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_6608) (Mask@@35 T@PolymorphicMapType_6629) (this@@33 T@Ref) ) (!  (=> (state Heap@@45 Mask@@35) (= (|pre3Abstract'| Heap@@45 this@@33) (|pre3Abstract#frame| EmptyFrame this@@33)))
 :qid |stdinbpl.618:15|
 :skolemid |50|
 :pattern ( (state Heap@@45 Mask@@35) (|pre3Abstract'| Heap@@45 this@@33))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_6608) (Mask@@36 T@PolymorphicMapType_6629) (this@@34 T@Ref) ) (!  (=> (state Heap@@46 Mask@@36) (= (|post1Abstract'| Heap@@46 this@@34) (|post1Abstract#frame| EmptyFrame this@@34)))
 :qid |stdinbpl.670:15|
 :skolemid |53|
 :pattern ( (state Heap@@46 Mask@@36) (|post1Abstract'| Heap@@46 this@@34))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_6608) (Mask@@37 T@PolymorphicMapType_6629) (this@@35 T@Ref) ) (!  (=> (state Heap@@47 Mask@@37) (= (|post2Abstract'| Heap@@47 this@@35) (|post2Abstract#frame| EmptyFrame this@@35)))
 :qid |stdinbpl.730:15|
 :skolemid |57|
 :pattern ( (state Heap@@47 Mask@@37) (|post2Abstract'| Heap@@47 this@@35))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_6608) (o T@Ref) (f_3 T@Field_3674_17581) (v T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@48) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@48) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@48) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@48) (store (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@48) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@48) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@48) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@48) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@48) (store (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@48) o f_3 v)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_6608) (o@@0 T@Ref) (f_3@@0 T@Field_3674_17714) (v@@0 T@PolymorphicMapType_7157) ) (! (succHeap Heap@@49 (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@49) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@49) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@49) (store (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@49) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@49) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@49) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@49) (store (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@49) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_6608) (o@@1 T@Ref) (f_3@@1 T@Field_9995_1189) (v@@1 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@50) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@50) (store (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@50) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@50) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@50) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@50) (store (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@50) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@50) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_6608) (o@@2 T@Ref) (f_3@@2 T@Field_6681_6682) (v@@2 T@Ref) ) (! (succHeap Heap@@51 (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@51) (store (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@51) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@51) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@51) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6608 (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@51) (store (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@51) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@51) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@51) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_6608) (o@@3 T@Ref) (f_3@@3 T@Field_6668_53) (v@@3 Bool) ) (! (succHeap Heap@@52 (PolymorphicMapType_6608 (store (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@52) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@52) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@52) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@52) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6608 (store (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@52) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@52) (|PolymorphicMapType_6608_3674_1189#PolymorphicMapType_6608| Heap@@52) (|PolymorphicMapType_6608_3674_17758#PolymorphicMapType_6608| Heap@@52) (|PolymorphicMapType_6608_6668_17581#PolymorphicMapType_6608| Heap@@52)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_6681_6682) (Heap@@53 T@PolymorphicMapType_6608) ) (!  (=> (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@53) o@@4 $allocated) (select (|PolymorphicMapType_6608_3546_53#PolymorphicMapType_6608| Heap@@53) (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@53) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6608_3549_3550#PolymorphicMapType_6608| Heap@@53) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_3674_17581) (v_1@@0 T@FrameType) (q T@Field_3674_17581) (w@@0 T@FrameType) (r T@Field_3674_17581) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6668_6668 p@@1 v_1@@0 q w@@0) (InsidePredicate_6668_6668 q w@@0 r u)) (InsidePredicate_6668_6668 p@@1 v_1@@0 r u))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6668_6668 p@@1 v_1@@0 q w@@0) (InsidePredicate_6668_6668 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Invalid

