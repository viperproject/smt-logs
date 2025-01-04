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
(declare-sort T@Field_10127_53 0)
(declare-sort T@Field_10140_10141 0)
(declare-sort T@Field_13454_1189 0)
(declare-sort T@Field_5240_30612 0)
(declare-sort T@Field_5240_30479 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10088 0)) (((PolymorphicMapType_10088 (|PolymorphicMapType_10088_5238_1189#PolymorphicMapType_10088| (Array T@Ref T@Field_13454_1189 Real)) (|PolymorphicMapType_10088_5240_5241#PolymorphicMapType_10088| (Array T@Ref T@Field_10140_10141 Real)) (|PolymorphicMapType_10088_5238_53#PolymorphicMapType_10088| (Array T@Ref T@Field_10127_53 Real)) (|PolymorphicMapType_10088_5238_30479#PolymorphicMapType_10088| (Array T@Ref T@Field_5240_30479 Real)) (|PolymorphicMapType_10088_5238_34719#PolymorphicMapType_10088| (Array T@Ref T@Field_5240_30612 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10616 0)) (((PolymorphicMapType_10616 (|PolymorphicMapType_10616_10127_53#PolymorphicMapType_10616| (Array T@Ref T@Field_10127_53 Bool)) (|PolymorphicMapType_10616_10127_10141#PolymorphicMapType_10616| (Array T@Ref T@Field_10140_10141 Bool)) (|PolymorphicMapType_10616_10127_1189#PolymorphicMapType_10616| (Array T@Ref T@Field_13454_1189 Bool)) (|PolymorphicMapType_10616_10127_30479#PolymorphicMapType_10616| (Array T@Ref T@Field_5240_30479 Bool)) (|PolymorphicMapType_10616_10127_31790#PolymorphicMapType_10616| (Array T@Ref T@Field_5240_30612 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10067 0)) (((PolymorphicMapType_10067 (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| (Array T@Ref T@Field_10127_53 Bool)) (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| (Array T@Ref T@Field_10140_10141 T@Ref)) (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| (Array T@Ref T@Field_13454_1189 Int)) (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| (Array T@Ref T@Field_5240_30612 T@PolymorphicMapType_10616)) (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| (Array T@Ref T@Field_5240_30479 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10127_53)
(declare-fun f_7 () T@Field_13454_1189)
(declare-fun g () T@Field_10140_10141)
(declare-fun state (T@PolymorphicMapType_10067 T@PolymorphicMapType_10088) Bool)
(declare-fun |fun4'| (T@PolymorphicMapType_10067 Bool T@Ref T@Ref) Int)
(declare-fun |fun4#frame| (T@FrameType Bool T@Ref T@Ref) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun FrameFragment_5241 (T@Ref) T@FrameType)
(declare-fun FrameFragment_7629 (T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_10067 T@PolymorphicMapType_10067) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10067 T@PolymorphicMapType_10067) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10088) Bool)
(declare-fun dummyFunction_1403 (Int) Bool)
(declare-fun |fun4#triggerStateless| (Bool T@Ref T@Ref) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_10616)
(declare-fun fun2 (T@PolymorphicMapType_10067 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |fun3'| (T@PolymorphicMapType_10067 T@Ref) Int)
(declare-fun |fun3#triggerStateless| (T@Ref) Int)
(declare-fun |fun1'| (T@PolymorphicMapType_10067 T@Ref) Int)
(declare-fun |fun1#triggerStateless| (T@Ref) Int)
(declare-fun |fun2'| (T@PolymorphicMapType_10067 T@Ref) Int)
(declare-fun |fun2#triggerStateless| (T@Ref) Int)
(declare-fun |fun5'| (T@PolymorphicMapType_10067 T@Ref) Int)
(declare-fun |fun5#triggerStateless| (T@Ref) Int)
(declare-fun |fun6'| (T@PolymorphicMapType_10067 T@Ref) Int)
(declare-fun |fun6#triggerStateless| (T@Ref) Int)
(declare-fun |fun7'| (T@PolymorphicMapType_10067 T@Ref) Int)
(declare-fun |fun7#triggerStateless| (T@Ref) Int)
(declare-fun fun3 (T@PolymorphicMapType_10067 T@Ref) Int)
(declare-fun fun1 (T@PolymorphicMapType_10067 T@Ref) Int)
(declare-fun fun5 (T@PolymorphicMapType_10067 T@Ref) Int)
(declare-fun fun6 (T@PolymorphicMapType_10067 T@Ref) Int)
(declare-fun fun7 (T@PolymorphicMapType_10067 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10067 T@PolymorphicMapType_10067 T@PolymorphicMapType_10088) Bool)
(declare-fun IsPredicateField_5240_30570 (T@Field_5240_30479) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5240 (T@Field_5240_30479) T@Field_5240_30612)
(declare-fun HasDirectPerm_5240_30543 (T@PolymorphicMapType_10088 T@Ref T@Field_5240_30479) Bool)
(declare-fun IsWandField_5240_32317 (T@Field_5240_30479) Bool)
(declare-fun WandMaskField_5240 (T@Field_5240_30479) T@Field_5240_30612)
(declare-fun dummyHeap () T@PolymorphicMapType_10067)
(declare-fun ZeroMask () T@PolymorphicMapType_10088)
(declare-fun |fun3#frame| (T@FrameType T@Ref) Int)
(declare-fun fun4 (T@PolymorphicMapType_10067 Bool T@Ref T@Ref) Int)
(declare-fun InsidePredicate_10127_10127 (T@Field_5240_30479 T@FrameType T@Field_5240_30479 T@FrameType) Bool)
(declare-fun IsPredicateField_5238_1189 (T@Field_13454_1189) Bool)
(declare-fun IsWandField_5238_1189 (T@Field_13454_1189) Bool)
(declare-fun IsPredicateField_5240_5241 (T@Field_10140_10141) Bool)
(declare-fun IsWandField_5240_5241 (T@Field_10140_10141) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5238_35834 (T@Field_5240_30612) Bool)
(declare-fun IsWandField_5238_35850 (T@Field_5240_30612) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5238_53 (T@Field_10127_53) Bool)
(declare-fun IsWandField_5238_53 (T@Field_10127_53) Bool)
(declare-fun HasDirectPerm_5240_36288 (T@PolymorphicMapType_10088 T@Ref T@Field_5240_30612) Bool)
(declare-fun HasDirectPerm_5240_53 (T@PolymorphicMapType_10088 T@Ref T@Field_10127_53) Bool)
(declare-fun HasDirectPerm_5238_1189 (T@PolymorphicMapType_10088 T@Ref T@Field_13454_1189) Bool)
(declare-fun HasDirectPerm_5240_5241 (T@PolymorphicMapType_10088 T@Ref T@Field_10140_10141) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10088 T@PolymorphicMapType_10088 T@PolymorphicMapType_10088) Bool)
(declare-fun |fun1#frame| (T@FrameType T@Ref) Int)
(declare-fun |fun2#frame| (T@FrameType T@Ref) Int)
(declare-fun |fun5#frame| (T@FrameType T@Ref) Int)
(declare-fun |fun6#frame| (T@FrameType T@Ref) Int)
(declare-fun |fun7#frame| (T@FrameType T@Ref) Int)
(declare-fun |fun6#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |fun7#trigger| (T@FrameType T@Ref) Bool)
(assert (forall ((Heap T@PolymorphicMapType_10067) (Mask T@PolymorphicMapType_10088) (b_24 Bool) (x T@Ref) (y T@Ref) ) (!  (=> (state Heap Mask) (= (|fun4'| Heap b_24 x y) (|fun4#frame| (CombineFrames (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap) x f_7)) (FrameFragment_5241 (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap) x g))) (FrameFragment_7629 (ite b_24 (FrameFragment_1189 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap) (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap) x g) f_7)) EmptyFrame))) b_24 x y)))
 :qid |stdinbpl.466:15|
 :skolemid |37|
 :pattern ( (state Heap Mask) (|fun4'| Heap b_24 x y))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10067) (Heap1 T@PolymorphicMapType_10067) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10067) (Mask@@0 T@PolymorphicMapType_10088) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10067) (Heap1@@0 T@PolymorphicMapType_10067) (Heap2 T@PolymorphicMapType_10067) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10067) (b_24@@0 Bool) (x@@0 T@Ref) (y@@0 T@Ref) ) (! (dummyFunction_1403 (|fun4#triggerStateless| b_24@@0 x@@0 y@@0))
 :qid |stdinbpl.453:15|
 :skolemid |35|
 :pattern ( (|fun4'| Heap@@1 b_24@@0 x@@0 y@@0))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5240_30612) ) (!  (not (select (|PolymorphicMapType_10616_10127_31790#PolymorphicMapType_10616| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10616_10127_31790#PolymorphicMapType_10616| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5240_30479) ) (!  (not (select (|PolymorphicMapType_10616_10127_30479#PolymorphicMapType_10616| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10616_10127_30479#PolymorphicMapType_10616| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_13454_1189) ) (!  (not (select (|PolymorphicMapType_10616_10127_1189#PolymorphicMapType_10616| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10616_10127_1189#PolymorphicMapType_10616| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10140_10141) ) (!  (not (select (|PolymorphicMapType_10616_10127_10141#PolymorphicMapType_10616| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10616_10127_10141#PolymorphicMapType_10616| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10127_53) ) (!  (not (select (|PolymorphicMapType_10616_10127_53#PolymorphicMapType_10616| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_10616_10127_53#PolymorphicMapType_10616| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10067) (Mask@@1 T@PolymorphicMapType_10088) (x@@1 T@Ref) ) (!  (=> (and (state Heap@@2 Mask@@1) (< AssumeFunctionsAbove 6)) (= (fun2 Heap@@2 x@@1) (- 0 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@2) x@@1 f_7))))
 :qid |stdinbpl.394:15|
 :skolemid |32|
 :pattern ( (state Heap@@2 Mask@@1) (fun2 Heap@@2 x@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10067) (x@@2 T@Ref) ) (! (dummyFunction_1403 (|fun3#triggerStateless| x@@2))
 :qid |stdinbpl.207:15|
 :skolemid |23|
 :pattern ( (|fun3'| Heap@@3 x@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10067) (x@@3 T@Ref) ) (! (dummyFunction_1403 (|fun1#triggerStateless| x@@3))
 :qid |stdinbpl.291:15|
 :skolemid |27|
 :pattern ( (|fun1'| Heap@@4 x@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10067) (x@@4 T@Ref) ) (! (dummyFunction_1403 (|fun2#triggerStateless| x@@4))
 :qid |stdinbpl.388:15|
 :skolemid |31|
 :pattern ( (|fun2'| Heap@@5 x@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10067) (x@@5 T@Ref) ) (! (dummyFunction_1403 (|fun5#triggerStateless| x@@5))
 :qid |stdinbpl.580:15|
 :skolemid |39|
 :pattern ( (|fun5'| Heap@@6 x@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10067) (x@@6 T@Ref) ) (! (dummyFunction_1403 (|fun6#triggerStateless| x@@6))
 :qid |stdinbpl.663:15|
 :skolemid |43|
 :pattern ( (|fun6'| Heap@@7 x@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10067) (x@@7 T@Ref) ) (! (dummyFunction_1403 (|fun7#triggerStateless| x@@7))
 :qid |stdinbpl.755:15|
 :skolemid |48|
 :pattern ( (|fun7'| Heap@@8 x@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10067) (x@@8 T@Ref) ) (!  (and (= (fun3 Heap@@9 x@@8) (|fun3'| Heap@@9 x@@8)) (dummyFunction_1403 (|fun3#triggerStateless| x@@8)))
 :qid |stdinbpl.203:15|
 :skolemid |22|
 :pattern ( (fun3 Heap@@9 x@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10067) (x@@9 T@Ref) ) (!  (and (= (fun1 Heap@@10 x@@9) (|fun1'| Heap@@10 x@@9)) (dummyFunction_1403 (|fun1#triggerStateless| x@@9)))
 :qid |stdinbpl.287:15|
 :skolemid |26|
 :pattern ( (fun1 Heap@@10 x@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10067) (x@@10 T@Ref) ) (!  (and (= (fun2 Heap@@11 x@@10) (|fun2'| Heap@@11 x@@10)) (dummyFunction_1403 (|fun2#triggerStateless| x@@10)))
 :qid |stdinbpl.384:15|
 :skolemid |30|
 :pattern ( (fun2 Heap@@11 x@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10067) (x@@11 T@Ref) ) (!  (and (= (fun5 Heap@@12 x@@11) (|fun5'| Heap@@12 x@@11)) (dummyFunction_1403 (|fun5#triggerStateless| x@@11)))
 :qid |stdinbpl.576:15|
 :skolemid |38|
 :pattern ( (fun5 Heap@@12 x@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10067) (x@@12 T@Ref) ) (!  (and (= (fun6 Heap@@13 x@@12) (|fun6'| Heap@@13 x@@12)) (dummyFunction_1403 (|fun6#triggerStateless| x@@12)))
 :qid |stdinbpl.659:15|
 :skolemid |42|
 :pattern ( (fun6 Heap@@13 x@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10067) (x@@13 T@Ref) ) (!  (and (= (fun7 Heap@@14 x@@13) (|fun7'| Heap@@14 x@@13)) (dummyFunction_1403 (|fun7#triggerStateless| x@@13)))
 :qid |stdinbpl.751:15|
 :skolemid |47|
 :pattern ( (fun7 Heap@@14 x@@13))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10067) (Mask@@2 T@PolymorphicMapType_10088) (x@@14 T@Ref) ) (!  (=> (and (state Heap@@15 Mask@@2) (< AssumeFunctionsAbove 3)) (= (fun7 Heap@@15 x@@14) (ite (< (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@15) x@@14 f_7) 0) (- 0 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@15) x@@14 f_7)) (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@15) x@@14 f_7))))
 :qid |stdinbpl.761:15|
 :skolemid |49|
 :pattern ( (state Heap@@15 Mask@@2) (fun7 Heap@@15 x@@14))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10067) (ExhaleHeap T@PolymorphicMapType_10067) (Mask@@3 T@PolymorphicMapType_10088) (pm_f T@Field_5240_30479) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_5240_30543 Mask@@3 null pm_f) (IsPredicateField_5240_30570 pm_f)) (= (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@16) null (PredicateMaskField_5240 pm_f)) (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| ExhaleHeap) null (PredicateMaskField_5240 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap Mask@@3) (IsPredicateField_5240_30570 pm_f) (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| ExhaleHeap) null (PredicateMaskField_5240 pm_f)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10067) (ExhaleHeap@@0 T@PolymorphicMapType_10067) (Mask@@4 T@PolymorphicMapType_10088) (pm_f@@0 T@Field_5240_30479) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_5240_30543 Mask@@4 null pm_f@@0) (IsWandField_5240_32317 pm_f@@0)) (= (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@17) null (WandMaskField_5240 pm_f@@0)) (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| ExhaleHeap@@0) null (WandMaskField_5240 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@0 Mask@@4) (IsWandField_5240_32317 pm_f@@0) (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| ExhaleHeap@@0) null (WandMaskField_5240 pm_f@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10067) (Mask@@5 T@PolymorphicMapType_10088) (x@@15 T@Ref) ) (!  (=> (state Heap@@18 Mask@@5) (= (|fun3'| Heap@@18 x@@15) (|fun3#frame| (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@18) x@@15 f_7)) (FrameFragment_5241 (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@18) x@@15 g))) x@@15)))
 :qid |stdinbpl.220:15|
 :skolemid |25|
 :pattern ( (state Heap@@18 Mask@@5) (|fun3'| Heap@@18 x@@15))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10067) (ExhaleHeap@@1 T@PolymorphicMapType_10067) (Mask@@6 T@PolymorphicMapType_10088) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@1 Mask@@6) (=> (select (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@19) o_1 $allocated) (select (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@1 Mask@@6) (select (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10067) (Mask@@7 T@PolymorphicMapType_10088) (b_24@@1 Bool) (x@@16 T@Ref) (y@@1 T@Ref) ) (!  (=> (and (state Heap@@20 Mask@@7) (< AssumeFunctionsAbove 1)) (=> (= x@@16 y@@1) (= (fun4 Heap@@20 b_24@@1 x@@16 y@@1) (+ (- 7 (ite  (not b_24@@1) (fun2 Heap@@20 y@@1) (fun1 Heap@@20 y@@1))) (ite b_24@@1 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@20) (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@20) y@@1 g) f_7) 99)))))
 :qid |stdinbpl.459:15|
 :skolemid |36|
 :pattern ( (state Heap@@20 Mask@@7) (fun4 Heap@@20 b_24@@1 x@@16 y@@1))
)))
(assert (forall ((p T@Field_5240_30479) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10127_10127 p v_1 p w))
 :qid |stdinbpl.180:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10127_10127 p v_1 p w))
)))
(assert  (not (IsPredicateField_5238_1189 f_7)))
(assert  (not (IsWandField_5238_1189 f_7)))
(assert  (not (IsPredicateField_5240_5241 g)))
(assert  (not (IsWandField_5240_5241 g)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10067) (ExhaleHeap@@2 T@PolymorphicMapType_10067) (Mask@@8 T@PolymorphicMapType_10088) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@2 Mask@@8) (succHeap Heap@@21 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@2 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10088) (o_2@@4 T@Ref) (f_4@@4 T@Field_5240_30612) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_10088_5238_34719#PolymorphicMapType_10088| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5238_35834 f_4@@4))) (not (IsWandField_5238_35850 f_4@@4))) (<= (select (|PolymorphicMapType_10088_5238_34719#PolymorphicMapType_10088| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_10088_5238_34719#PolymorphicMapType_10088| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10088) (o_2@@5 T@Ref) (f_4@@5 T@Field_5240_30479) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_10088_5238_30479#PolymorphicMapType_10088| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_5240_30570 f_4@@5))) (not (IsWandField_5240_32317 f_4@@5))) (<= (select (|PolymorphicMapType_10088_5238_30479#PolymorphicMapType_10088| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_10088_5238_30479#PolymorphicMapType_10088| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10088) (o_2@@6 T@Ref) (f_4@@6 T@Field_10127_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_10088_5238_53#PolymorphicMapType_10088| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_5238_53 f_4@@6))) (not (IsWandField_5238_53 f_4@@6))) (<= (select (|PolymorphicMapType_10088_5238_53#PolymorphicMapType_10088| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_10088_5238_53#PolymorphicMapType_10088| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10088) (o_2@@7 T@Ref) (f_4@@7 T@Field_10140_10141) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_10088_5240_5241#PolymorphicMapType_10088| Mask@@12) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_5240_5241 f_4@@7))) (not (IsWandField_5240_5241 f_4@@7))) (<= (select (|PolymorphicMapType_10088_5240_5241#PolymorphicMapType_10088| Mask@@12) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_10088_5240_5241#PolymorphicMapType_10088| Mask@@12) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10088) (o_2@@8 T@Ref) (f_4@@8 T@Field_13454_1189) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_10088_5238_1189#PolymorphicMapType_10088| Mask@@13) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_5238_1189 f_4@@8))) (not (IsWandField_5238_1189 f_4@@8))) (<= (select (|PolymorphicMapType_10088_5238_1189#PolymorphicMapType_10088| Mask@@13) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_10088_5238_1189#PolymorphicMapType_10088| Mask@@13) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_10088) (o_2@@9 T@Ref) (f_4@@9 T@Field_5240_30612) ) (! (= (HasDirectPerm_5240_36288 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10088_5238_34719#PolymorphicMapType_10088| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5240_36288 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_10088) (o_2@@10 T@Ref) (f_4@@10 T@Field_5240_30479) ) (! (= (HasDirectPerm_5240_30543 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10088_5238_30479#PolymorphicMapType_10088| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5240_30543 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_10088) (o_2@@11 T@Ref) (f_4@@11 T@Field_10127_53) ) (! (= (HasDirectPerm_5240_53 Mask@@16 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_10088_5238_53#PolymorphicMapType_10088| Mask@@16) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5240_53 Mask@@16 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_10088) (o_2@@12 T@Ref) (f_4@@12 T@Field_13454_1189) ) (! (= (HasDirectPerm_5238_1189 Mask@@17 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_10088_5238_1189#PolymorphicMapType_10088| Mask@@17) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5238_1189 Mask@@17 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_10088) (o_2@@13 T@Ref) (f_4@@13 T@Field_10140_10141) ) (! (= (HasDirectPerm_5240_5241 Mask@@18 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_10088_5240_5241#PolymorphicMapType_10088| Mask@@18) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5240_5241 Mask@@18 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10067) (ExhaleHeap@@3 T@PolymorphicMapType_10067) (Mask@@19 T@PolymorphicMapType_10088) (pm_f@@1 T@Field_5240_30479) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@3 Mask@@19) (=> (and (HasDirectPerm_5240_30543 Mask@@19 null pm_f@@1) (IsPredicateField_5240_30570 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_10127_53) ) (!  (=> (select (|PolymorphicMapType_10616_10127_53#PolymorphicMapType_10616| (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@22) null (PredicateMaskField_5240 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@22) o2 f_2) (select (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_10140_10141) ) (!  (=> (select (|PolymorphicMapType_10616_10127_10141#PolymorphicMapType_10616| (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@22) null (PredicateMaskField_5240 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@22) o2@@0 f_2@@0) (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_13454_1189) ) (!  (=> (select (|PolymorphicMapType_10616_10127_1189#PolymorphicMapType_10616| (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@22) null (PredicateMaskField_5240 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@22) o2@@1 f_2@@1) (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_5240_30479) ) (!  (=> (select (|PolymorphicMapType_10616_10127_30479#PolymorphicMapType_10616| (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@22) null (PredicateMaskField_5240 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| Heap@@22) o2@@2 f_2@@2) (select (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_5240_30612) ) (!  (=> (select (|PolymorphicMapType_10616_10127_31790#PolymorphicMapType_10616| (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@22) null (PredicateMaskField_5240 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@22) o2@@3 f_2@@3) (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@3 Mask@@19) (IsPredicateField_5240_30570 pm_f@@1))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10067) (ExhaleHeap@@4 T@PolymorphicMapType_10067) (Mask@@20 T@PolymorphicMapType_10088) (pm_f@@2 T@Field_5240_30479) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@4 Mask@@20) (=> (and (HasDirectPerm_5240_30543 Mask@@20 null pm_f@@2) (IsWandField_5240_32317 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_10127_53) ) (!  (=> (select (|PolymorphicMapType_10616_10127_53#PolymorphicMapType_10616| (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@23) null (WandMaskField_5240 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@23) o2@@4 f_2@@4) (select (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_10140_10141) ) (!  (=> (select (|PolymorphicMapType_10616_10127_10141#PolymorphicMapType_10616| (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@23) null (WandMaskField_5240 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@23) o2@@5 f_2@@5) (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_13454_1189) ) (!  (=> (select (|PolymorphicMapType_10616_10127_1189#PolymorphicMapType_10616| (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@23) null (WandMaskField_5240 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@23) o2@@6 f_2@@6) (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_5240_30479) ) (!  (=> (select (|PolymorphicMapType_10616_10127_30479#PolymorphicMapType_10616| (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@23) null (WandMaskField_5240 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| Heap@@23) o2@@7 f_2@@7) (select (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_5240_30612) ) (!  (=> (select (|PolymorphicMapType_10616_10127_31790#PolymorphicMapType_10616| (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@23) null (WandMaskField_5240 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@23) o2@@8 f_2@@8) (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@4 Mask@@20) (IsWandField_5240_32317 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.168:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10067) (ExhaleHeap@@5 T@PolymorphicMapType_10067) (Mask@@21 T@PolymorphicMapType_10088) (o_1@@0 T@Ref) (f_2@@9 T@Field_5240_30612) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_5240_36288 Mask@@21 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@24) o_1@@0 f_2@@9) (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10067) (ExhaleHeap@@6 T@PolymorphicMapType_10067) (Mask@@22 T@PolymorphicMapType_10088) (o_1@@1 T@Ref) (f_2@@10 T@Field_5240_30479) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_5240_30543 Mask@@22 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| Heap@@25) o_1@@1 f_2@@10) (select (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10067) (ExhaleHeap@@7 T@PolymorphicMapType_10067) (Mask@@23 T@PolymorphicMapType_10088) (o_1@@2 T@Ref) (f_2@@11 T@Field_10127_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_5240_53 Mask@@23 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@26) o_1@@2 f_2@@11) (select (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10067) (ExhaleHeap@@8 T@PolymorphicMapType_10067) (Mask@@24 T@PolymorphicMapType_10088) (o_1@@3 T@Ref) (f_2@@12 T@Field_13454_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_5238_1189 Mask@@24 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@27) o_1@@3 f_2@@12) (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10067) (ExhaleHeap@@9 T@PolymorphicMapType_10067) (Mask@@25 T@PolymorphicMapType_10088) (o_1@@4 T@Ref) (f_2@@13 T@Field_10140_10141) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@9 Mask@@25) (=> (HasDirectPerm_5240_5241 Mask@@25 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@28) o_1@@4 f_2@@13) (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@9 Mask@@25) (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5240_30612) ) (! (= (select (|PolymorphicMapType_10088_5238_34719#PolymorphicMapType_10088| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10088_5238_34719#PolymorphicMapType_10088| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5240_30479) ) (! (= (select (|PolymorphicMapType_10088_5238_30479#PolymorphicMapType_10088| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10088_5238_30479#PolymorphicMapType_10088| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_10127_53) ) (! (= (select (|PolymorphicMapType_10088_5238_53#PolymorphicMapType_10088| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10088_5238_53#PolymorphicMapType_10088| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_10140_10141) ) (! (= (select (|PolymorphicMapType_10088_5240_5241#PolymorphicMapType_10088| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10088_5240_5241#PolymorphicMapType_10088| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_13454_1189) ) (! (= (select (|PolymorphicMapType_10088_5238_1189#PolymorphicMapType_10088| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10088_5238_1189#PolymorphicMapType_10088| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10088) (SummandMask1 T@PolymorphicMapType_10088) (SummandMask2 T@PolymorphicMapType_10088) (o_2@@19 T@Ref) (f_4@@19 T@Field_5240_30612) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10088_5238_34719#PolymorphicMapType_10088| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_10088_5238_34719#PolymorphicMapType_10088| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_10088_5238_34719#PolymorphicMapType_10088| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10088_5238_34719#PolymorphicMapType_10088| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10088_5238_34719#PolymorphicMapType_10088| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10088_5238_34719#PolymorphicMapType_10088| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10088) (SummandMask1@@0 T@PolymorphicMapType_10088) (SummandMask2@@0 T@PolymorphicMapType_10088) (o_2@@20 T@Ref) (f_4@@20 T@Field_5240_30479) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10088_5238_30479#PolymorphicMapType_10088| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_10088_5238_30479#PolymorphicMapType_10088| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_10088_5238_30479#PolymorphicMapType_10088| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10088_5238_30479#PolymorphicMapType_10088| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10088_5238_30479#PolymorphicMapType_10088| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10088_5238_30479#PolymorphicMapType_10088| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10088) (SummandMask1@@1 T@PolymorphicMapType_10088) (SummandMask2@@1 T@PolymorphicMapType_10088) (o_2@@21 T@Ref) (f_4@@21 T@Field_10127_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10088_5238_53#PolymorphicMapType_10088| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_10088_5238_53#PolymorphicMapType_10088| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_10088_5238_53#PolymorphicMapType_10088| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10088_5238_53#PolymorphicMapType_10088| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10088_5238_53#PolymorphicMapType_10088| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10088_5238_53#PolymorphicMapType_10088| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10088) (SummandMask1@@2 T@PolymorphicMapType_10088) (SummandMask2@@2 T@PolymorphicMapType_10088) (o_2@@22 T@Ref) (f_4@@22 T@Field_10140_10141) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10088_5240_5241#PolymorphicMapType_10088| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_10088_5240_5241#PolymorphicMapType_10088| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_10088_5240_5241#PolymorphicMapType_10088| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10088_5240_5241#PolymorphicMapType_10088| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10088_5240_5241#PolymorphicMapType_10088| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10088_5240_5241#PolymorphicMapType_10088| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_10088) (SummandMask1@@3 T@PolymorphicMapType_10088) (SummandMask2@@3 T@PolymorphicMapType_10088) (o_2@@23 T@Ref) (f_4@@23 T@Field_13454_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_10088_5238_1189#PolymorphicMapType_10088| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_10088_5238_1189#PolymorphicMapType_10088| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_10088_5238_1189#PolymorphicMapType_10088| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10088_5238_1189#PolymorphicMapType_10088| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10088_5238_1189#PolymorphicMapType_10088| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_10088_5238_1189#PolymorphicMapType_10088| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10067) (Mask@@26 T@PolymorphicMapType_10088) (x@@17 T@Ref) ) (!  (=> (and (state Heap@@29 Mask@@26) (< AssumeFunctionsAbove 5)) (= (fun3 Heap@@29 x@@17) (+ 1 (fun2 Heap@@29 x@@17))))
 :qid |stdinbpl.213:15|
 :skolemid |24|
 :pattern ( (state Heap@@29 Mask@@26) (fun3 Heap@@29 x@@17))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10067) (Mask@@27 T@PolymorphicMapType_10088) (x@@18 T@Ref) ) (!  (=> (state Heap@@30 Mask@@27) (= (|fun1'| Heap@@30 x@@18) (|fun1#frame| (CombineFrames (CombineFrames (FrameFragment_1189 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@30) x@@18 f_7)) (FrameFragment_5241 (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@30) x@@18 g))) (FrameFragment_1189 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@30) (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@30) x@@18 g) f_7))) x@@18)))
 :qid |stdinbpl.304:15|
 :skolemid |29|
 :pattern ( (state Heap@@30 Mask@@27) (|fun1'| Heap@@30 x@@18))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_10067) (Mask@@28 T@PolymorphicMapType_10088) (x@@19 T@Ref) ) (!  (=> (and (state Heap@@31 Mask@@28) (< AssumeFunctionsAbove 4)) (= (fun1 Heap@@31 x@@19) (+ (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@31) x@@19 f_7) (fun2 Heap@@31 (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@31) x@@19 g)))))
 :qid |stdinbpl.297:15|
 :skolemid |28|
 :pattern ( (state Heap@@31 Mask@@28) (fun1 Heap@@31 x@@19))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_10067) (b_24@@2 Bool) (x@@20 T@Ref) (y@@2 T@Ref) ) (!  (and (= (fun4 Heap@@32 b_24@@2 x@@20 y@@2) (|fun4'| Heap@@32 b_24@@2 x@@20 y@@2)) (dummyFunction_1403 (|fun4#triggerStateless| b_24@@2 x@@20 y@@2)))
 :qid |stdinbpl.449:15|
 :skolemid |34|
 :pattern ( (fun4 Heap@@32 b_24@@2 x@@20 y@@2))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_10067) (Mask@@29 T@PolymorphicMapType_10088) (x@@21 T@Ref) ) (!  (=> (state Heap@@33 Mask@@29) (= (|fun2'| Heap@@33 x@@21) (|fun2#frame| (FrameFragment_1189 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@33) x@@21 f_7)) x@@21)))
 :qid |stdinbpl.401:15|
 :skolemid |33|
 :pattern ( (state Heap@@33 Mask@@29) (|fun2'| Heap@@33 x@@21))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_10067) (Mask@@30 T@PolymorphicMapType_10088) (x@@22 T@Ref) ) (!  (=> (state Heap@@34 Mask@@30) (= (|fun5'| Heap@@34 x@@22) (|fun5#frame| (FrameFragment_1189 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@34) x@@22 f_7)) x@@22)))
 :qid |stdinbpl.593:15|
 :skolemid |41|
 :pattern ( (state Heap@@34 Mask@@30) (|fun5'| Heap@@34 x@@22))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_10067) (Mask@@31 T@PolymorphicMapType_10088) (x@@23 T@Ref) ) (!  (=> (state Heap@@35 Mask@@31) (= (|fun6'| Heap@@35 x@@23) (|fun6#frame| (FrameFragment_1189 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@35) x@@23 f_7)) x@@23)))
 :qid |stdinbpl.676:15|
 :skolemid |45|
 :pattern ( (state Heap@@35 Mask@@31) (|fun6'| Heap@@35 x@@23))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_10067) (Mask@@32 T@PolymorphicMapType_10088) (x@@24 T@Ref) ) (!  (=> (state Heap@@36 Mask@@32) (= (|fun7'| Heap@@36 x@@24) (|fun7#frame| (FrameFragment_1189 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@36) x@@24 f_7)) x@@24)))
 :qid |stdinbpl.768:15|
 :skolemid |50|
 :pattern ( (state Heap@@36 Mask@@32) (|fun7'| Heap@@36 x@@24))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_10067) (Mask@@33 T@PolymorphicMapType_10088) (x@@25 T@Ref) ) (!  (=> (and (state Heap@@37 Mask@@33) (or (< AssumeFunctionsAbove 0) (|fun6#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@37) x@@25 f_7)) x@@25))) (>= (|fun6'| Heap@@37 x@@25) 0))
 :qid |stdinbpl.682:15|
 :skolemid |46|
 :pattern ( (state Heap@@37 Mask@@33) (|fun6'| Heap@@37 x@@25))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_10067) (Mask@@34 T@PolymorphicMapType_10088) (x@@26 T@Ref) ) (!  (=> (and (state Heap@@38 Mask@@34) (or (< AssumeFunctionsAbove 3) (|fun7#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@38) x@@26 f_7)) x@@26))) (>= (|fun7'| Heap@@38 x@@26) 0))
 :qid |stdinbpl.774:15|
 :skolemid |51|
 :pattern ( (state Heap@@38 Mask@@34) (|fun7'| Heap@@38 x@@26))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_10067) (o T@Ref) (f_3 T@Field_5240_30479) (v T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_10067 (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@39) (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@39) (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@39) (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@39) (store (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| Heap@@39) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10067 (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@39) (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@39) (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@39) (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@39) (store (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| Heap@@39) o f_3 v)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_10067) (o@@0 T@Ref) (f_3@@0 T@Field_5240_30612) (v@@0 T@PolymorphicMapType_10616) ) (! (succHeap Heap@@40 (PolymorphicMapType_10067 (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@40) (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@40) (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@40) (store (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@40) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10067 (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@40) (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@40) (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@40) (store (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@40) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_10067) (o@@1 T@Ref) (f_3@@1 T@Field_13454_1189) (v@@1 Int) ) (! (succHeap Heap@@41 (PolymorphicMapType_10067 (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@41) (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@41) (store (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@41) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@41) (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10067 (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@41) (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@41) (store (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@41) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@41) (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_10067) (o@@2 T@Ref) (f_3@@2 T@Field_10140_10141) (v@@2 T@Ref) ) (! (succHeap Heap@@42 (PolymorphicMapType_10067 (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@42) (store (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@42) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@42) (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@42) (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10067 (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@42) (store (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@42) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@42) (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@42) (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_10067) (o@@3 T@Ref) (f_3@@3 T@Field_10127_53) (v@@3 Bool) ) (! (succHeap Heap@@43 (PolymorphicMapType_10067 (store (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@43) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@43) (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@43) (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@43) (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10067 (store (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@43) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@43) (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@43) (|PolymorphicMapType_10067_5240_30656#PolymorphicMapType_10067| Heap@@43) (|PolymorphicMapType_10067_10127_30479#PolymorphicMapType_10067| Heap@@43)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_10140_10141) (Heap@@44 T@PolymorphicMapType_10067) ) (!  (=> (select (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@44) o@@4 $allocated) (select (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@44) (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@44) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10067_5113_5114#PolymorphicMapType_10067| Heap@@44) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_5240_30479) (v_1@@0 T@FrameType) (q T@Field_5240_30479) (w@@0 T@FrameType) (r T@Field_5240_30479) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10127_10127 p@@1 v_1@@0 q w@@0) (InsidePredicate_10127_10127 q w@@0 r u)) (InsidePredicate_10127_10127 p@@1 v_1@@0 r u))
 :qid |stdinbpl.175:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10127_10127 p@@1 v_1@@0 q w@@0) (InsidePredicate_10127_10127 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@45 T@PolymorphicMapType_10067) (Mask@@35 T@PolymorphicMapType_10088) (x@@27 T@Ref) ) (!  (=> (and (state Heap@@45 Mask@@35) (< AssumeFunctionsAbove 0)) (= (fun6 Heap@@45 x@@27) (fun7 Heap@@45 x@@27)))
 :qid |stdinbpl.669:15|
 :skolemid |44|
 :pattern ( (state Heap@@45 Mask@@35) (fun6 Heap@@45 x@@27))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_10067) (Mask@@36 T@PolymorphicMapType_10088) (x@@28 T@Ref) ) (!  (=> (and (state Heap@@46 Mask@@36) (< AssumeFunctionsAbove 2)) (= (fun5 Heap@@46 x@@28) (fun3 Heap@@46 x@@28)))
 :qid |stdinbpl.586:15|
 :skolemid |40|
 :pattern ( (state Heap@@46 Mask@@36) (fun5 Heap@@46 x@@28))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Result@0 () Int)
(declare-fun Heap@@47 () T@PolymorphicMapType_10067)
(declare-fun x@@29 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_10088)
(set-info :boogie-vc-id |fun7#definedness|)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon3_correct  (=> (and (= Result@0 (ite (< (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@47) x@@29 f_7) 0) (- 0 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@47) x@@29 f_7)) (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@47) x@@29 f_7))) (= (ControlFlow 0 2) (- 0 1))) (>= Result@0 0))))
(let ((anon4_Else_correct  (=> (<= 0 (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@47) x@@29 f_7)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (HasDirectPerm_5238_1189 Mask@0 x@@29 f_7)) (=> (HasDirectPerm_5238_1189 Mask@0 x@@29 f_7) (=> (= (ControlFlow 0 5) 2) anon3_correct))))))
(let ((anon4_Then_correct  (=> (< (select (|PolymorphicMapType_10067_5238_1189#PolymorphicMapType_10067| Heap@@47) x@@29 f_7) 0) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_5238_1189 Mask@0 x@@29 f_7)) (=> (HasDirectPerm_5238_1189 Mask@0 x@@29 f_7) (=> (= (ControlFlow 0 3) 2) anon3_correct))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@47 ZeroMask) (not AssumePermUpperBound)) (and (select (|PolymorphicMapType_10067_5110_53#PolymorphicMapType_10067| Heap@@47) x@@29 $allocated) (= AssumeFunctionsAbove 3))) (and (and (not (= x@@29 null)) (= Mask@0 (PolymorphicMapType_10088 (store (|PolymorphicMapType_10088_5238_1189#PolymorphicMapType_10088| ZeroMask) x@@29 f_7 (+ (select (|PolymorphicMapType_10088_5238_1189#PolymorphicMapType_10088| ZeroMask) x@@29 f_7) FullPerm)) (|PolymorphicMapType_10088_5240_5241#PolymorphicMapType_10088| ZeroMask) (|PolymorphicMapType_10088_5238_53#PolymorphicMapType_10088| ZeroMask) (|PolymorphicMapType_10088_5238_30479#PolymorphicMapType_10088| ZeroMask) (|PolymorphicMapType_10088_5238_34719#PolymorphicMapType_10088| ZeroMask)))) (and (state Heap@@47 Mask@0) (state Heap@@47 Mask@0)))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_5238_1189 Mask@0 x@@29 f_7)) (=> (HasDirectPerm_5238_1189 Mask@0 x@@29 f_7) (and (=> (= (ControlFlow 0 7) 3) anon4_Then_correct) (=> (= (ControlFlow 0 7) 5) anon4_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 9) 7) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
