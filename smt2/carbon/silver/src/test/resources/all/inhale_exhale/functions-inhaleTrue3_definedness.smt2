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
(declare-sort T@Field_12449_53 0)
(declare-sort T@Field_12462_12463 0)
(declare-sort T@Field_15776_1189 0)
(declare-sort T@Field_6386_35657 0)
(declare-sort T@Field_6386_35524 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12410 0)) (((PolymorphicMapType_12410 (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| (Array T@Ref T@Field_15776_1189 Real)) (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| (Array T@Ref T@Field_12449_53 Real)) (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| (Array T@Ref T@Field_12462_12463 Real)) (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| (Array T@Ref T@Field_6386_35524 Real)) (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| (Array T@Ref T@Field_6386_35657 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12938 0)) (((PolymorphicMapType_12938 (|PolymorphicMapType_12938_12449_53#PolymorphicMapType_12938| (Array T@Ref T@Field_12449_53 Bool)) (|PolymorphicMapType_12938_12449_12463#PolymorphicMapType_12938| (Array T@Ref T@Field_12462_12463 Bool)) (|PolymorphicMapType_12938_12449_1189#PolymorphicMapType_12938| (Array T@Ref T@Field_15776_1189 Bool)) (|PolymorphicMapType_12938_12449_35524#PolymorphicMapType_12938| (Array T@Ref T@Field_6386_35524 Bool)) (|PolymorphicMapType_12938_12449_36835#PolymorphicMapType_12938| (Array T@Ref T@Field_6386_35657 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12389 0)) (((PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| (Array T@Ref T@Field_12449_53 Bool)) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| (Array T@Ref T@Field_12462_12463 T@Ref)) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| (Array T@Ref T@Field_15776_1189 Int)) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| (Array T@Ref T@Field_6386_35657 T@PolymorphicMapType_12938)) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| (Array T@Ref T@Field_6386_35524 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12449_53)
(declare-fun x_42 () T@Field_15776_1189)
(declare-fun succHeap (T@PolymorphicMapType_12389 T@PolymorphicMapType_12389) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12389 T@PolymorphicMapType_12389) Bool)
(declare-fun state (T@PolymorphicMapType_12389 T@PolymorphicMapType_12410) Bool)
(declare-fun inhaleExpression3_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun inhaleExpression1_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun inhaleExpression2_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun GoodMask (T@PolymorphicMapType_12410) Bool)
(declare-fun inhaleTrue3_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun inhaleTrue2_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun inhaleTrue1_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_12938)
(declare-fun |inhaleTrue1'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun dummyFunction_1382 (Int) Bool)
(declare-fun |inhaleTrue1#triggerStateless| (T@Ref) Int)
(declare-fun |inhaleTrue2'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |inhaleTrue2#triggerStateless| (T@Ref) Int)
(declare-fun |inhaleTrue3'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |inhaleTrue3#triggerStateless| (T@Ref) Int)
(declare-fun |inhaleExpression1'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |inhaleExpression1#triggerStateless| (T@Ref) Int)
(declare-fun |inhaleExpression2'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |inhaleExpression2#triggerStateless| (T@Ref) Int)
(declare-fun |inhaleExpression3'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |inhaleExpression3#triggerStateless| (T@Ref) Int)
(declare-fun |exhaleTrue1'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |exhaleTrue1#triggerStateless| (T@Ref) Int)
(declare-fun |exhaleTrue2'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |exhaleTrue2#triggerStateless| (T@Ref) Int)
(declare-fun |exhaleTrue3'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |exhaleTrue3#triggerStateless| (T@Ref) Int)
(declare-fun |exhaleExpression1WithRequires'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |exhaleExpression1WithRequires#triggerStateless| (T@Ref) Int)
(declare-fun |exhaleExpression2WithRequires'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |exhaleExpression2WithRequires#triggerStateless| (T@Ref) Int)
(declare-fun |exhaleExpression3WithRequires'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |exhaleExpression3WithRequires#triggerStateless| (T@Ref) Int)
(declare-fun exhaleExpression1WithRequires_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun exhaleExpression2WithRequires_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun exhaleExpression3WithRequires_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |inhaleExpression3#trigger| (T@FrameType T@Ref) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |inhaleExpression1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |inhaleExpression2#trigger| (T@FrameType T@Ref) Bool)
(declare-fun exhaleTrue1_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun exhaleTrue2_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun exhaleTrue3_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12389 T@PolymorphicMapType_12389 T@PolymorphicMapType_12410) Bool)
(declare-fun IsPredicateField_6386_35615 (T@Field_6386_35524) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6386 (T@Field_6386_35524) T@Field_6386_35657)
(declare-fun HasDirectPerm_6386_35588 (T@PolymorphicMapType_12410 T@Ref T@Field_6386_35524) Bool)
(declare-fun IsWandField_6386_37362 (T@Field_6386_35524) Bool)
(declare-fun WandMaskField_6386 (T@Field_6386_35524) T@Field_6386_35657)
(declare-fun |exhaleTrue2#trigger| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun dummyHeap () T@PolymorphicMapType_12389)
(declare-fun ZeroMask () T@PolymorphicMapType_12410)
(declare-fun InsidePredicate_12449_12449 (T@Field_6386_35524 T@FrameType T@Field_6386_35524 T@FrameType) Bool)
(declare-fun IsPredicateField_6386_1189 (T@Field_15776_1189) Bool)
(declare-fun IsWandField_6386_1189 (T@Field_15776_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6386_40908 (T@Field_6386_35657) Bool)
(declare-fun IsWandField_6386_40924 (T@Field_6386_35657) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6386_12463 (T@Field_12462_12463) Bool)
(declare-fun IsWandField_6386_12463 (T@Field_12462_12463) Bool)
(declare-fun IsPredicateField_6386_53 (T@Field_12449_53) Bool)
(declare-fun IsWandField_6386_53 (T@Field_12449_53) Bool)
(declare-fun HasDirectPerm_6386_41362 (T@PolymorphicMapType_12410 T@Ref T@Field_6386_35657) Bool)
(declare-fun HasDirectPerm_6386_12463 (T@PolymorphicMapType_12410 T@Ref T@Field_12462_12463) Bool)
(declare-fun HasDirectPerm_6386_53 (T@PolymorphicMapType_12410 T@Ref T@Field_12449_53) Bool)
(declare-fun HasDirectPerm_6386_1189 (T@PolymorphicMapType_12410 T@Ref T@Field_15776_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12410 T@PolymorphicMapType_12410 T@PolymorphicMapType_12410) Bool)
(declare-fun |exhaleTrue1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |exhaleTrue3#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |inhaleTrue1#frame| (T@FrameType T@Ref) Int)
(declare-fun |inhaleTrue2#frame| (T@FrameType T@Ref) Int)
(declare-fun |inhaleTrue3#frame| (T@FrameType T@Ref) Int)
(declare-fun |exhaleTrue1#frame| (T@FrameType T@Ref) Int)
(declare-fun |exhaleTrue2#frame| (T@FrameType T@Ref) Int)
(declare-fun |exhaleTrue3#frame| (T@FrameType T@Ref) Int)
(declare-fun |exhaleExpression1WithRequires#frame| (T@FrameType T@Ref) Int)
(declare-fun |exhaleExpression2WithRequires#frame| (T@FrameType T@Ref) Int)
(declare-fun |exhaleExpression3WithRequires#frame| (T@FrameType T@Ref) Int)
(declare-fun |inhaleExpression1#frame| (T@FrameType T@Ref) Int)
(declare-fun |inhaleExpression2#frame| (T@FrameType T@Ref) Int)
(declare-fun |inhaleExpression3#frame| (T@FrameType T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_12389) (Heap1 T@PolymorphicMapType_12389) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12389) (Mask T@PolymorphicMapType_12410) (this T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (inhaleExpression3_1 Heap this) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap) this x_42)))
 :qid |stdinbpl.617:15|
 :skolemid |46|
 :pattern ( (state Heap Mask) (inhaleExpression3_1 Heap this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12389) (Mask@@0 T@PolymorphicMapType_12410) (this@@0 T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 7)) (= (inhaleExpression1_1 Heap@@0 this@@0) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@0) this@@0 x_42)))
 :qid |stdinbpl.433:15|
 :skolemid |36|
 :pattern ( (state Heap@@0 Mask@@0) (inhaleExpression1_1 Heap@@0 this@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12389) (Mask@@1 T@PolymorphicMapType_12410) (this@@1 T@Ref) ) (!  (=> (and (state Heap@@1 Mask@@1) (< AssumeFunctionsAbove 8)) (= (inhaleExpression2_1 Heap@@1 this@@1) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@1) this@@1 x_42)))
 :qid |stdinbpl.525:15|
 :skolemid |41|
 :pattern ( (state Heap@@1 Mask@@1) (inhaleExpression2_1 Heap@@1 this@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12389) (Mask@@2 T@PolymorphicMapType_12410) ) (!  (=> (state Heap@@2 Mask@@2) (GoodMask Mask@@2))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@2 Mask@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12389) (Heap1@@0 T@PolymorphicMapType_12389) (Heap2 T@PolymorphicMapType_12389) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12389) (Mask@@3 T@PolymorphicMapType_12410) (this@@2 T@Ref) ) (!  (=> (and (state Heap@@3 Mask@@3) (< AssumeFunctionsAbove 4)) (=> (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@3) this@@2 x_42) 1) (= (inhaleTrue3_1 Heap@@3 this@@2) 0)))
 :qid |stdinbpl.359:15|
 :skolemid |32|
 :pattern ( (state Heap@@3 Mask@@3) (inhaleTrue3_1 Heap@@3 this@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12389) (Mask@@4 T@PolymorphicMapType_12410) (this@@3 T@Ref) ) (!  (=> (and (state Heap@@4 Mask@@4) (< AssumeFunctionsAbove 6)) (=> (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@4) this@@3 x_42) 1) (= (inhaleTrue2_1 Heap@@4 this@@3) 0)))
 :qid |stdinbpl.287:15|
 :skolemid |28|
 :pattern ( (state Heap@@4 Mask@@4) (inhaleTrue2_1 Heap@@4 this@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12389) (Mask@@5 T@PolymorphicMapType_12410) (this@@4 T@Ref) ) (!  (=> (and (state Heap@@5 Mask@@5) (< AssumeFunctionsAbove 10)) (=> (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@5) this@@4 x_42) 1) (= (inhaleTrue1_1 Heap@@5 this@@4) 0)))
 :qid |stdinbpl.215:15|
 :skolemid |24|
 :pattern ( (state Heap@@5 Mask@@5) (inhaleTrue1_1 Heap@@5 this@@4))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6386_35657) ) (!  (not (select (|PolymorphicMapType_12938_12449_36835#PolymorphicMapType_12938| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12938_12449_36835#PolymorphicMapType_12938| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6386_35524) ) (!  (not (select (|PolymorphicMapType_12938_12449_35524#PolymorphicMapType_12938| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12938_12449_35524#PolymorphicMapType_12938| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_15776_1189) ) (!  (not (select (|PolymorphicMapType_12938_12449_1189#PolymorphicMapType_12938| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12938_12449_1189#PolymorphicMapType_12938| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12462_12463) ) (!  (not (select (|PolymorphicMapType_12938_12449_12463#PolymorphicMapType_12938| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12938_12449_12463#PolymorphicMapType_12938| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12449_53) ) (!  (not (select (|PolymorphicMapType_12938_12449_53#PolymorphicMapType_12938| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12938_12449_53#PolymorphicMapType_12938| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12389) (this@@5 T@Ref) ) (! (dummyFunction_1382 (|inhaleTrue1#triggerStateless| this@@5))
 :qid |stdinbpl.209:15|
 :skolemid |23|
 :pattern ( (|inhaleTrue1'| Heap@@6 this@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12389) (this@@6 T@Ref) ) (! (dummyFunction_1382 (|inhaleTrue2#triggerStateless| this@@6))
 :qid |stdinbpl.281:15|
 :skolemid |27|
 :pattern ( (|inhaleTrue2'| Heap@@7 this@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12389) (this@@7 T@Ref) ) (! (dummyFunction_1382 (|inhaleTrue3#triggerStateless| this@@7))
 :qid |stdinbpl.353:15|
 :skolemid |31|
 :pattern ( (|inhaleTrue3'| Heap@@8 this@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12389) (this@@8 T@Ref) ) (! (dummyFunction_1382 (|inhaleExpression1#triggerStateless| this@@8))
 :qid |stdinbpl.427:15|
 :skolemid |35|
 :pattern ( (|inhaleExpression1'| Heap@@9 this@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12389) (this@@9 T@Ref) ) (! (dummyFunction_1382 (|inhaleExpression2#triggerStateless| this@@9))
 :qid |stdinbpl.519:15|
 :skolemid |40|
 :pattern ( (|inhaleExpression2'| Heap@@10 this@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12389) (this@@10 T@Ref) ) (! (dummyFunction_1382 (|inhaleExpression3#triggerStateless| this@@10))
 :qid |stdinbpl.611:15|
 :skolemid |45|
 :pattern ( (|inhaleExpression3'| Heap@@11 this@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12389) (this@@11 T@Ref) ) (! (dummyFunction_1382 (|exhaleTrue1#triggerStateless| this@@11))
 :qid |stdinbpl.705:15|
 :skolemid |50|
 :pattern ( (|exhaleTrue1'| Heap@@12 this@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12389) (this@@12 T@Ref) ) (! (dummyFunction_1382 (|exhaleTrue2#triggerStateless| this@@12))
 :qid |stdinbpl.789:15|
 :skolemid |55|
 :pattern ( (|exhaleTrue2'| Heap@@13 this@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12389) (this@@13 T@Ref) ) (! (dummyFunction_1382 (|exhaleTrue3#triggerStateless| this@@13))
 :qid |stdinbpl.874:15|
 :skolemid |60|
 :pattern ( (|exhaleTrue3'| Heap@@14 this@@13))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12389) (this@@14 T@Ref) ) (! (dummyFunction_1382 (|exhaleExpression1WithRequires#triggerStateless| this@@14))
 :qid |stdinbpl.964:15|
 :skolemid |66|
 :pattern ( (|exhaleExpression1WithRequires'| Heap@@15 this@@14))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12389) (this@@15 T@Ref) ) (! (dummyFunction_1382 (|exhaleExpression2WithRequires#triggerStateless| this@@15))
 :qid |stdinbpl.1057:15|
 :skolemid |70|
 :pattern ( (|exhaleExpression2WithRequires'| Heap@@16 this@@15))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12389) (this@@16 T@Ref) ) (! (dummyFunction_1382 (|exhaleExpression3WithRequires#triggerStateless| this@@16))
 :qid |stdinbpl.1152:15|
 :skolemid |74|
 :pattern ( (|exhaleExpression3WithRequires'| Heap@@17 this@@16))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12389) (Mask@@6 T@PolymorphicMapType_12410) (this@@17 T@Ref) ) (!  (=> (and (state Heap@@18 Mask@@6) (< AssumeFunctionsAbove 1)) (=> (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@18) this@@17 x_42) 1) (= (exhaleExpression1WithRequires_1 Heap@@18 this@@17) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@18) this@@17 x_42))))
 :qid |stdinbpl.970:15|
 :skolemid |67|
 :pattern ( (state Heap@@18 Mask@@6) (exhaleExpression1WithRequires_1 Heap@@18 this@@17))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12389) (Mask@@7 T@PolymorphicMapType_12410) (this@@18 T@Ref) ) (!  (=> (and (state Heap@@19 Mask@@7) (< AssumeFunctionsAbove 2)) (=> (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@19) this@@18 x_42) 1) (= (exhaleExpression2WithRequires_1 Heap@@19 this@@18) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@19) this@@18 x_42))))
 :qid |stdinbpl.1063:15|
 :skolemid |71|
 :pattern ( (state Heap@@19 Mask@@7) (exhaleExpression2WithRequires_1 Heap@@19 this@@18))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12389) (Mask@@8 T@PolymorphicMapType_12410) (this@@19 T@Ref) ) (!  (=> (and (state Heap@@20 Mask@@8) (< AssumeFunctionsAbove 5)) (=> (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@20) this@@19 x_42) 1) (= (exhaleExpression3WithRequires_1 Heap@@20 this@@19) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@20) this@@19 x_42))))
 :qid |stdinbpl.1158:15|
 :skolemid |75|
 :pattern ( (state Heap@@20 Mask@@8) (exhaleExpression3WithRequires_1 Heap@@20 this@@19))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12389) (Mask@@9 T@PolymorphicMapType_12410) (this@@20 T@Ref) ) (!  (=> (and (state Heap@@21 Mask@@9) (or (< AssumeFunctionsAbove 0) (|inhaleExpression3#trigger| EmptyFrame this@@20))) (= (|inhaleExpression3'| Heap@@21 this@@20) 1))
 :qid |stdinbpl.630:15|
 :skolemid |48|
 :pattern ( (state Heap@@21 Mask@@9) (|inhaleExpression3'| Heap@@21 this@@20))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12389) (Mask@@10 T@PolymorphicMapType_12410) (this@@21 T@Ref) ) (!  (=> (and (state Heap@@22 Mask@@10) (or (< AssumeFunctionsAbove 7) (|inhaleExpression1#trigger| EmptyFrame this@@21))) (= (|inhaleExpression1'| Heap@@22 this@@21) 1))
 :qid |stdinbpl.446:15|
 :skolemid |38|
 :pattern ( (state Heap@@22 Mask@@10) (|inhaleExpression1'| Heap@@22 this@@21))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12389) (Mask@@11 T@PolymorphicMapType_12410) (this@@22 T@Ref) ) (!  (=> (and (state Heap@@23 Mask@@11) (or (< AssumeFunctionsAbove 8) (|inhaleExpression2#trigger| EmptyFrame this@@22))) (= (|inhaleExpression2'| Heap@@23 this@@22) 1))
 :qid |stdinbpl.538:15|
 :skolemid |43|
 :pattern ( (state Heap@@23 Mask@@11) (|inhaleExpression2'| Heap@@23 this@@22))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12389) (this@@23 T@Ref) ) (!  (and (= (inhaleTrue1_1 Heap@@24 this@@23) (|inhaleTrue1'| Heap@@24 this@@23)) (dummyFunction_1382 (|inhaleTrue1#triggerStateless| this@@23)))
 :qid |stdinbpl.205:15|
 :skolemid |22|
 :pattern ( (inhaleTrue1_1 Heap@@24 this@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12389) (this@@24 T@Ref) ) (!  (and (= (inhaleTrue2_1 Heap@@25 this@@24) (|inhaleTrue2'| Heap@@25 this@@24)) (dummyFunction_1382 (|inhaleTrue2#triggerStateless| this@@24)))
 :qid |stdinbpl.277:15|
 :skolemid |26|
 :pattern ( (inhaleTrue2_1 Heap@@25 this@@24))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12389) (this@@25 T@Ref) ) (!  (and (= (inhaleTrue3_1 Heap@@26 this@@25) (|inhaleTrue3'| Heap@@26 this@@25)) (dummyFunction_1382 (|inhaleTrue3#triggerStateless| this@@25)))
 :qid |stdinbpl.349:15|
 :skolemid |30|
 :pattern ( (inhaleTrue3_1 Heap@@26 this@@25))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12389) (this@@26 T@Ref) ) (!  (and (= (inhaleExpression1_1 Heap@@27 this@@26) (|inhaleExpression1'| Heap@@27 this@@26)) (dummyFunction_1382 (|inhaleExpression1#triggerStateless| this@@26)))
 :qid |stdinbpl.423:15|
 :skolemid |34|
 :pattern ( (inhaleExpression1_1 Heap@@27 this@@26))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12389) (this@@27 T@Ref) ) (!  (and (= (inhaleExpression2_1 Heap@@28 this@@27) (|inhaleExpression2'| Heap@@28 this@@27)) (dummyFunction_1382 (|inhaleExpression2#triggerStateless| this@@27)))
 :qid |stdinbpl.515:15|
 :skolemid |39|
 :pattern ( (inhaleExpression2_1 Heap@@28 this@@27))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12389) (this@@28 T@Ref) ) (!  (and (= (inhaleExpression3_1 Heap@@29 this@@28) (|inhaleExpression3'| Heap@@29 this@@28)) (dummyFunction_1382 (|inhaleExpression3#triggerStateless| this@@28)))
 :qid |stdinbpl.607:15|
 :skolemid |44|
 :pattern ( (inhaleExpression3_1 Heap@@29 this@@28))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12389) (this@@29 T@Ref) ) (!  (and (= (exhaleTrue1_1 Heap@@30 this@@29) (|exhaleTrue1'| Heap@@30 this@@29)) (dummyFunction_1382 (|exhaleTrue1#triggerStateless| this@@29)))
 :qid |stdinbpl.701:15|
 :skolemid |49|
 :pattern ( (exhaleTrue1_1 Heap@@30 this@@29))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_12389) (this@@30 T@Ref) ) (!  (and (= (exhaleTrue2_1 Heap@@31 this@@30) (|exhaleTrue2'| Heap@@31 this@@30)) (dummyFunction_1382 (|exhaleTrue2#triggerStateless| this@@30)))
 :qid |stdinbpl.785:15|
 :skolemid |54|
 :pattern ( (exhaleTrue2_1 Heap@@31 this@@30))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_12389) (this@@31 T@Ref) ) (!  (and (= (exhaleTrue3_1 Heap@@32 this@@31) (|exhaleTrue3'| Heap@@32 this@@31)) (dummyFunction_1382 (|exhaleTrue3#triggerStateless| this@@31)))
 :qid |stdinbpl.870:15|
 :skolemid |59|
 :pattern ( (exhaleTrue3_1 Heap@@32 this@@31))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_12389) (this@@32 T@Ref) ) (!  (and (= (exhaleExpression1WithRequires_1 Heap@@33 this@@32) (|exhaleExpression1WithRequires'| Heap@@33 this@@32)) (dummyFunction_1382 (|exhaleExpression1WithRequires#triggerStateless| this@@32)))
 :qid |stdinbpl.960:15|
 :skolemid |65|
 :pattern ( (exhaleExpression1WithRequires_1 Heap@@33 this@@32))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_12389) (this@@33 T@Ref) ) (!  (and (= (exhaleExpression2WithRequires_1 Heap@@34 this@@33) (|exhaleExpression2WithRequires'| Heap@@34 this@@33)) (dummyFunction_1382 (|exhaleExpression2WithRequires#triggerStateless| this@@33)))
 :qid |stdinbpl.1053:15|
 :skolemid |69|
 :pattern ( (exhaleExpression2WithRequires_1 Heap@@34 this@@33))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_12389) (this@@34 T@Ref) ) (!  (and (= (exhaleExpression3WithRequires_1 Heap@@35 this@@34) (|exhaleExpression3WithRequires'| Heap@@35 this@@34)) (dummyFunction_1382 (|exhaleExpression3WithRequires#triggerStateless| this@@34)))
 :qid |stdinbpl.1148:15|
 :skolemid |73|
 :pattern ( (exhaleExpression3WithRequires_1 Heap@@35 this@@34))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_12389) (ExhaleHeap T@PolymorphicMapType_12389) (Mask@@12 T@PolymorphicMapType_12410) (pm_f T@Field_6386_35524) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap Mask@@12) (=> (and (HasDirectPerm_6386_35588 Mask@@12 null pm_f) (IsPredicateField_6386_35615 pm_f)) (= (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@36) null (PredicateMaskField_6386 pm_f)) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap) null (PredicateMaskField_6386 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap Mask@@12) (IsPredicateField_6386_35615 pm_f) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap) null (PredicateMaskField_6386 pm_f)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_12389) (ExhaleHeap@@0 T@PolymorphicMapType_12389) (Mask@@13 T@PolymorphicMapType_12410) (pm_f@@0 T@Field_6386_35524) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@0 Mask@@13) (=> (and (HasDirectPerm_6386_35588 Mask@@13 null pm_f@@0) (IsWandField_6386_37362 pm_f@@0)) (= (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@37) null (WandMaskField_6386 pm_f@@0)) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@0) null (WandMaskField_6386 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@0 Mask@@13) (IsWandField_6386_37362 pm_f@@0) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@0) null (WandMaskField_6386 pm_f@@0)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_12389) (Mask@@14 T@PolymorphicMapType_12410) (this@@35 T@Ref) ) (!  (=> (and (state Heap@@38 Mask@@14) (or (< AssumeFunctionsAbove 11) (|exhaleTrue2#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@38) this@@35 x_42)) this@@35))) (and (not (= this@@35 null)) (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@38) this@@35 x_42) 1)))
 :qid |stdinbpl.808:15|
 :skolemid |58|
 :pattern ( (state Heap@@38 Mask@@14) (|exhaleTrue2'| Heap@@38 this@@35))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@39 T@PolymorphicMapType_12389) (ExhaleHeap@@1 T@PolymorphicMapType_12389) (Mask@@15 T@PolymorphicMapType_12410) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@1 Mask@@15) (=> (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@39) o_1 $allocated) (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@1 Mask@@15) (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_6386_35524) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12449_12449 p v_1 p w))
 :qid |stdinbpl.185:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12449_12449 p v_1 p w))
)))
(assert  (not (IsPredicateField_6386_1189 x_42)))
(assert  (not (IsWandField_6386_1189 x_42)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_12389) (ExhaleHeap@@2 T@PolymorphicMapType_12389) (Mask@@16 T@PolymorphicMapType_12410) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@2 Mask@@16) (succHeap Heap@@40 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@2 Mask@@16))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_12410) (o_2@@4 T@Ref) (f_4@@4 T@Field_6386_35657) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| Mask@@17) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6386_40908 f_4@@4))) (not (IsWandField_6386_40924 f_4@@4))) (<= (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| Mask@@17) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| Mask@@17) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_12410) (o_2@@5 T@Ref) (f_4@@5 T@Field_6386_35524) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| Mask@@18) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6386_35615 f_4@@5))) (not (IsWandField_6386_37362 f_4@@5))) (<= (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| Mask@@18) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| Mask@@18) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_12410) (o_2@@6 T@Ref) (f_4@@6 T@Field_12462_12463) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| Mask@@19) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6386_12463 f_4@@6))) (not (IsWandField_6386_12463 f_4@@6))) (<= (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| Mask@@19) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| Mask@@19) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_12410) (o_2@@7 T@Ref) (f_4@@7 T@Field_12449_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| Mask@@20) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_6386_53 f_4@@7))) (not (IsWandField_6386_53 f_4@@7))) (<= (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| Mask@@20) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| Mask@@20) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_12410) (o_2@@8 T@Ref) (f_4@@8 T@Field_15776_1189) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| Mask@@21) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_6386_1189 f_4@@8))) (not (IsWandField_6386_1189 f_4@@8))) (<= (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| Mask@@21) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| Mask@@21) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_12410) (o_2@@9 T@Ref) (f_4@@9 T@Field_6386_35657) ) (! (= (HasDirectPerm_6386_41362 Mask@@22 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| Mask@@22) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6386_41362 Mask@@22 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_12410) (o_2@@10 T@Ref) (f_4@@10 T@Field_6386_35524) ) (! (= (HasDirectPerm_6386_35588 Mask@@23 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| Mask@@23) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6386_35588 Mask@@23 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_12410) (o_2@@11 T@Ref) (f_4@@11 T@Field_12462_12463) ) (! (= (HasDirectPerm_6386_12463 Mask@@24 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| Mask@@24) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6386_12463 Mask@@24 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_12410) (o_2@@12 T@Ref) (f_4@@12 T@Field_12449_53) ) (! (= (HasDirectPerm_6386_53 Mask@@25 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| Mask@@25) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6386_53 Mask@@25 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_12410) (o_2@@13 T@Ref) (f_4@@13 T@Field_15776_1189) ) (! (= (HasDirectPerm_6386_1189 Mask@@26 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| Mask@@26) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6386_1189 Mask@@26 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_12389) (ExhaleHeap@@3 T@PolymorphicMapType_12389) (Mask@@27 T@PolymorphicMapType_12410) (pm_f@@1 T@Field_6386_35524) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@3 Mask@@27) (=> (and (HasDirectPerm_6386_35588 Mask@@27 null pm_f@@1) (IsPredicateField_6386_35615 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_12449_53) ) (!  (=> (select (|PolymorphicMapType_12938_12449_53#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@41) null (PredicateMaskField_6386 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@41) o2 f_2) (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_12462_12463) ) (!  (=> (select (|PolymorphicMapType_12938_12449_12463#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@41) null (PredicateMaskField_6386 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@41) o2@@0 f_2@@0) (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_15776_1189) ) (!  (=> (select (|PolymorphicMapType_12938_12449_1189#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@41) null (PredicateMaskField_6386 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@41) o2@@1 f_2@@1) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6386_35524) ) (!  (=> (select (|PolymorphicMapType_12938_12449_35524#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@41) null (PredicateMaskField_6386 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@41) o2@@2 f_2@@2) (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6386_35657) ) (!  (=> (select (|PolymorphicMapType_12938_12449_36835#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@41) null (PredicateMaskField_6386 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@41) o2@@3 f_2@@3) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@3 Mask@@27) (IsPredicateField_6386_35615 pm_f@@1))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_12389) (ExhaleHeap@@4 T@PolymorphicMapType_12389) (Mask@@28 T@PolymorphicMapType_12410) (pm_f@@2 T@Field_6386_35524) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@4 Mask@@28) (=> (and (HasDirectPerm_6386_35588 Mask@@28 null pm_f@@2) (IsWandField_6386_37362 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_12449_53) ) (!  (=> (select (|PolymorphicMapType_12938_12449_53#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@42) null (WandMaskField_6386 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@42) o2@@4 f_2@@4) (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_12462_12463) ) (!  (=> (select (|PolymorphicMapType_12938_12449_12463#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@42) null (WandMaskField_6386 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@42) o2@@5 f_2@@5) (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_15776_1189) ) (!  (=> (select (|PolymorphicMapType_12938_12449_1189#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@42) null (WandMaskField_6386 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@42) o2@@6 f_2@@6) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_6386_35524) ) (!  (=> (select (|PolymorphicMapType_12938_12449_35524#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@42) null (WandMaskField_6386 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@42) o2@@7 f_2@@7) (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_6386_35657) ) (!  (=> (select (|PolymorphicMapType_12938_12449_36835#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@42) null (WandMaskField_6386 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@42) o2@@8 f_2@@8) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@4 Mask@@28) (IsWandField_6386_37362 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.173:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_12389) (ExhaleHeap@@5 T@PolymorphicMapType_12389) (Mask@@29 T@PolymorphicMapType_12410) (o_1@@0 T@Ref) (f_2@@9 T@Field_6386_35657) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@5 Mask@@29) (=> (HasDirectPerm_6386_41362 Mask@@29 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@43) o_1@@0 f_2@@9) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@5 Mask@@29) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_12389) (ExhaleHeap@@6 T@PolymorphicMapType_12389) (Mask@@30 T@PolymorphicMapType_12410) (o_1@@1 T@Ref) (f_2@@10 T@Field_6386_35524) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@6 Mask@@30) (=> (HasDirectPerm_6386_35588 Mask@@30 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@44) o_1@@1 f_2@@10) (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@6 Mask@@30) (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_12389) (ExhaleHeap@@7 T@PolymorphicMapType_12389) (Mask@@31 T@PolymorphicMapType_12410) (o_1@@2 T@Ref) (f_2@@11 T@Field_12462_12463) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@7 Mask@@31) (=> (HasDirectPerm_6386_12463 Mask@@31 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@45) o_1@@2 f_2@@11) (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@7 Mask@@31) (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_12389) (ExhaleHeap@@8 T@PolymorphicMapType_12389) (Mask@@32 T@PolymorphicMapType_12410) (o_1@@3 T@Ref) (f_2@@12 T@Field_12449_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@8 Mask@@32) (=> (HasDirectPerm_6386_53 Mask@@32 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@46) o_1@@3 f_2@@12) (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@8 Mask@@32) (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_12389) (ExhaleHeap@@9 T@PolymorphicMapType_12389) (Mask@@33 T@PolymorphicMapType_12410) (o_1@@4 T@Ref) (f_2@@13 T@Field_15776_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@9 Mask@@33) (=> (HasDirectPerm_6386_1189 Mask@@33 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@47) o_1@@4 f_2@@13) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@9 Mask@@33) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6386_35657) ) (! (= (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6386_35524) ) (! (= (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_12462_12463) ) (! (= (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12449_53) ) (! (= (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_15776_1189) ) (! (= (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12410) (SummandMask1 T@PolymorphicMapType_12410) (SummandMask2 T@PolymorphicMapType_12410) (o_2@@19 T@Ref) (f_4@@19 T@Field_6386_35657) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12410) (SummandMask1@@0 T@PolymorphicMapType_12410) (SummandMask2@@0 T@PolymorphicMapType_12410) (o_2@@20 T@Ref) (f_4@@20 T@Field_6386_35524) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12410) (SummandMask1@@1 T@PolymorphicMapType_12410) (SummandMask2@@1 T@PolymorphicMapType_12410) (o_2@@21 T@Ref) (f_4@@21 T@Field_12462_12463) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12410) (SummandMask1@@2 T@PolymorphicMapType_12410) (SummandMask2@@2 T@PolymorphicMapType_12410) (o_2@@22 T@Ref) (f_4@@22 T@Field_12449_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12410) (SummandMask1@@3 T@PolymorphicMapType_12410) (SummandMask2@@3 T@PolymorphicMapType_12410) (o_2@@23 T@Ref) (f_4@@23 T@Field_15776_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_12389) (Mask@@34 T@PolymorphicMapType_12410) (this@@36 T@Ref) ) (!  (=> (and (state Heap@@48 Mask@@34) (or (< AssumeFunctionsAbove 3) (|exhaleTrue1#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@48) this@@36 x_42)) this@@36))) (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@48) this@@36 x_42) 1))
 :qid |stdinbpl.724:15|
 :skolemid |53|
 :pattern ( (state Heap@@48 Mask@@34) (|exhaleTrue1'| Heap@@48 this@@36))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_12389) (Mask@@35 T@PolymorphicMapType_12410) (this@@37 T@Ref) ) (!  (=> (and (state Heap@@49 Mask@@35) (or (< AssumeFunctionsAbove 9) (|exhaleTrue3#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@49) this@@37 x_42)) this@@37))) (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@49) this@@37 x_42) 1))
 :qid |stdinbpl.897:15|
 :skolemid |64|
 :pattern ( (state Heap@@49 Mask@@35) (|exhaleTrue3'| Heap@@49 this@@37))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_12389) (Mask@@36 T@PolymorphicMapType_12410) (this@@38 T@Ref) ) (!  (=> (state Heap@@50 Mask@@36) (= (|inhaleTrue1'| Heap@@50 this@@38) (|inhaleTrue1#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@50) this@@38 x_42)) this@@38)))
 :qid |stdinbpl.222:15|
 :skolemid |25|
 :pattern ( (state Heap@@50 Mask@@36) (|inhaleTrue1'| Heap@@50 this@@38))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_12389) (Mask@@37 T@PolymorphicMapType_12410) (this@@39 T@Ref) ) (!  (=> (state Heap@@51 Mask@@37) (= (|inhaleTrue2'| Heap@@51 this@@39) (|inhaleTrue2#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@51) this@@39 x_42)) this@@39)))
 :qid |stdinbpl.294:15|
 :skolemid |29|
 :pattern ( (state Heap@@51 Mask@@37) (|inhaleTrue2'| Heap@@51 this@@39))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_12389) (Mask@@38 T@PolymorphicMapType_12410) (this@@40 T@Ref) ) (!  (=> (state Heap@@52 Mask@@38) (= (|inhaleTrue3'| Heap@@52 this@@40) (|inhaleTrue3#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@52) this@@40 x_42)) this@@40)))
 :qid |stdinbpl.366:15|
 :skolemid |33|
 :pattern ( (state Heap@@52 Mask@@38) (|inhaleTrue3'| Heap@@52 this@@40))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_12389) (Mask@@39 T@PolymorphicMapType_12410) (this@@41 T@Ref) ) (!  (=> (state Heap@@53 Mask@@39) (= (|exhaleTrue1'| Heap@@53 this@@41) (|exhaleTrue1#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@53) this@@41 x_42)) this@@41)))
 :qid |stdinbpl.718:15|
 :skolemid |52|
 :pattern ( (state Heap@@53 Mask@@39) (|exhaleTrue1'| Heap@@53 this@@41))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_12389) (Mask@@40 T@PolymorphicMapType_12410) (this@@42 T@Ref) ) (!  (=> (state Heap@@54 Mask@@40) (= (|exhaleTrue2'| Heap@@54 this@@42) (|exhaleTrue2#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@54) this@@42 x_42)) this@@42)))
 :qid |stdinbpl.802:15|
 :skolemid |57|
 :pattern ( (state Heap@@54 Mask@@40) (|exhaleTrue2'| Heap@@54 this@@42))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_12389) (Mask@@41 T@PolymorphicMapType_12410) (this@@43 T@Ref) ) (!  (=> (state Heap@@55 Mask@@41) (= (|exhaleTrue3'| Heap@@55 this@@43) (|exhaleTrue3#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@55) this@@43 x_42)) this@@43)))
 :qid |stdinbpl.887:15|
 :skolemid |62|
 :pattern ( (state Heap@@55 Mask@@41) (|exhaleTrue3'| Heap@@55 this@@43))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_12389) (Mask@@42 T@PolymorphicMapType_12410) (this@@44 T@Ref) ) (!  (=> (state Heap@@56 Mask@@42) (= (|exhaleExpression1WithRequires'| Heap@@56 this@@44) (|exhaleExpression1WithRequires#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@56) this@@44 x_42)) this@@44)))
 :qid |stdinbpl.977:15|
 :skolemid |68|
 :pattern ( (state Heap@@56 Mask@@42) (|exhaleExpression1WithRequires'| Heap@@56 this@@44))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_12389) (Mask@@43 T@PolymorphicMapType_12410) (this@@45 T@Ref) ) (!  (=> (state Heap@@57 Mask@@43) (= (|exhaleExpression2WithRequires'| Heap@@57 this@@45) (|exhaleExpression2WithRequires#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@57) this@@45 x_42)) this@@45)))
 :qid |stdinbpl.1070:15|
 :skolemid |72|
 :pattern ( (state Heap@@57 Mask@@43) (|exhaleExpression2WithRequires'| Heap@@57 this@@45))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_12389) (Mask@@44 T@PolymorphicMapType_12410) (this@@46 T@Ref) ) (!  (=> (state Heap@@58 Mask@@44) (= (|exhaleExpression3WithRequires'| Heap@@58 this@@46) (|exhaleExpression3WithRequires#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@58) this@@46 x_42)) this@@46)))
 :qid |stdinbpl.1165:15|
 :skolemid |76|
 :pattern ( (state Heap@@58 Mask@@44) (|exhaleExpression3WithRequires'| Heap@@58 this@@46))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_12389) (Mask@@45 T@PolymorphicMapType_12410) (this@@47 T@Ref) ) (!  (=> (state Heap@@59 Mask@@45) (= (|inhaleExpression1'| Heap@@59 this@@47) (|inhaleExpression1#frame| EmptyFrame this@@47)))
 :qid |stdinbpl.440:15|
 :skolemid |37|
 :pattern ( (state Heap@@59 Mask@@45) (|inhaleExpression1'| Heap@@59 this@@47))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_12389) (Mask@@46 T@PolymorphicMapType_12410) (this@@48 T@Ref) ) (!  (=> (state Heap@@60 Mask@@46) (= (|inhaleExpression2'| Heap@@60 this@@48) (|inhaleExpression2#frame| EmptyFrame this@@48)))
 :qid |stdinbpl.532:15|
 :skolemid |42|
 :pattern ( (state Heap@@60 Mask@@46) (|inhaleExpression2'| Heap@@60 this@@48))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_12389) (Mask@@47 T@PolymorphicMapType_12410) (this@@49 T@Ref) ) (!  (=> (state Heap@@61 Mask@@47) (= (|inhaleExpression3'| Heap@@61 this@@49) (|inhaleExpression3#frame| EmptyFrame this@@49)))
 :qid |stdinbpl.624:15|
 :skolemid |47|
 :pattern ( (state Heap@@61 Mask@@47) (|inhaleExpression3'| Heap@@61 this@@49))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_12389) (Mask@@48 T@PolymorphicMapType_12410) (this@@50 T@Ref) ) (!  (=> (and (state Heap@@62 Mask@@48) (or (< AssumeFunctionsAbove 9) (|exhaleTrue3#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@62) this@@50 x_42)) this@@50))) (not (= this@@50 null)))
 :qid |stdinbpl.893:15|
 :skolemid |63|
 :pattern ( (state Heap@@62 Mask@@48) (|exhaleTrue3'| Heap@@62 this@@50))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_12389) (o T@Ref) (f_3 T@Field_6386_35524) (v T@FrameType) ) (! (succHeap Heap@@63 (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@63) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@63) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@63) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@63) (store (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@63) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@63) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@63) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@63) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@63) (store (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@63) o f_3 v)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_12389) (o@@0 T@Ref) (f_3@@0 T@Field_6386_35657) (v@@0 T@PolymorphicMapType_12938) ) (! (succHeap Heap@@64 (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@64) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@64) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@64) (store (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@64) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@64) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@64) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@64) (store (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@64) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_12389) (o@@1 T@Ref) (f_3@@1 T@Field_15776_1189) (v@@1 Int) ) (! (succHeap Heap@@65 (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@65) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@65) (store (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@65) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@65) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@65) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@65) (store (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@65) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@65) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_12389) (o@@2 T@Ref) (f_3@@2 T@Field_12462_12463) (v@@2 T@Ref) ) (! (succHeap Heap@@66 (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@66) (store (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@66) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@66) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@66) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@66) (store (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@66) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@66) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@66) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_12389) (o@@3 T@Ref) (f_3@@3 T@Field_12449_53) (v@@3 Bool) ) (! (succHeap Heap@@67 (PolymorphicMapType_12389 (store (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@67) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@67) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@67) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@67) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12389 (store (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@67) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@67) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@67) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@67) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@67)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_12462_12463) (Heap@@68 T@PolymorphicMapType_12389) ) (!  (=> (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@68) o@@4 $allocated) (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@68) (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@68) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@68) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_6386_35524) (v_1@@0 T@FrameType) (q T@Field_6386_35524) (w@@0 T@FrameType) (r T@Field_6386_35524) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12449_12449 p@@1 v_1@@0 q w@@0) (InsidePredicate_12449_12449 q w@@0 r u)) (InsidePredicate_12449_12449 p@@1 v_1@@0 r u))
 :qid |stdinbpl.180:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12449_12449 p@@1 v_1@@0 q w@@0) (InsidePredicate_12449_12449 q w@@0 r u))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_12389) (Mask@@49 T@PolymorphicMapType_12410) (this@@51 T@Ref) ) (!  (=> (and (state Heap@@69 Mask@@49) (< AssumeFunctionsAbove 3)) (= (exhaleTrue1_1 Heap@@69 this@@51) 0))
 :qid |stdinbpl.711:15|
 :skolemid |51|
 :pattern ( (state Heap@@69 Mask@@49) (exhaleTrue1_1 Heap@@69 this@@51))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_12389) (Mask@@50 T@PolymorphicMapType_12410) (this@@52 T@Ref) ) (!  (=> (and (state Heap@@70 Mask@@50) (< AssumeFunctionsAbove 9)) (= (exhaleTrue3_1 Heap@@70 this@@52) 0))
 :qid |stdinbpl.880:15|
 :skolemid |61|
 :pattern ( (state Heap@@70 Mask@@50) (exhaleTrue3_1 Heap@@70 this@@52))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_12389) (Mask@@51 T@PolymorphicMapType_12410) (this@@53 T@Ref) ) (!  (=> (and (state Heap@@71 Mask@@51) (< AssumeFunctionsAbove 11)) (= (exhaleTrue2_1 Heap@@71 this@@53) 0))
 :qid |stdinbpl.795:15|
 :skolemid |56|
 :pattern ( (state Heap@@71 Mask@@51) (exhaleTrue2_1 Heap@@71 this@@53))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@54 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_12410)
(declare-fun Heap@@72 () T@PolymorphicMapType_12389)
(set-info :boogie-vc-id |inhaleTrue3#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct  (=> (not (= this@@54 null)) (=> (and (and (= Mask@0 (PolymorphicMapType_12410 (store (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| ZeroMask) this@@54 x_42 (+ (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| ZeroMask) this@@54 x_42) FullPerm)) (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| ZeroMask) (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| ZeroMask) (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| ZeroMask) (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| ZeroMask))) (state Heap@@72 Mask@0)) (and (state Heap@@72 Mask@0) (= (ControlFlow 0 2) (- 0 1)))) (HasDirectPerm_6386_1189 Mask@0 this@@54 x_42)))))
(let ((anon0_correct  (=> (and (and (state Heap@@72 ZeroMask) (not AssumePermUpperBound)) (and (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@72) this@@54 $allocated) (= AssumeFunctionsAbove 4))) (and (=> (= (ControlFlow 0 4) 2) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(declare-sort T@Field_12449_53 0)
(declare-sort T@Field_12462_12463 0)
(declare-sort T@Field_15776_1189 0)
(declare-sort T@Field_6386_35657 0)
(declare-sort T@Field_6386_35524 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12410 0)) (((PolymorphicMapType_12410 (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| (Array T@Ref T@Field_15776_1189 Real)) (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| (Array T@Ref T@Field_12449_53 Real)) (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| (Array T@Ref T@Field_12462_12463 Real)) (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| (Array T@Ref T@Field_6386_35524 Real)) (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| (Array T@Ref T@Field_6386_35657 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12938 0)) (((PolymorphicMapType_12938 (|PolymorphicMapType_12938_12449_53#PolymorphicMapType_12938| (Array T@Ref T@Field_12449_53 Bool)) (|PolymorphicMapType_12938_12449_12463#PolymorphicMapType_12938| (Array T@Ref T@Field_12462_12463 Bool)) (|PolymorphicMapType_12938_12449_1189#PolymorphicMapType_12938| (Array T@Ref T@Field_15776_1189 Bool)) (|PolymorphicMapType_12938_12449_35524#PolymorphicMapType_12938| (Array T@Ref T@Field_6386_35524 Bool)) (|PolymorphicMapType_12938_12449_36835#PolymorphicMapType_12938| (Array T@Ref T@Field_6386_35657 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12389 0)) (((PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| (Array T@Ref T@Field_12449_53 Bool)) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| (Array T@Ref T@Field_12462_12463 T@Ref)) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| (Array T@Ref T@Field_15776_1189 Int)) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| (Array T@Ref T@Field_6386_35657 T@PolymorphicMapType_12938)) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| (Array T@Ref T@Field_6386_35524 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12449_53)
(declare-fun x_42 () T@Field_15776_1189)
(declare-fun succHeap (T@PolymorphicMapType_12389 T@PolymorphicMapType_12389) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12389 T@PolymorphicMapType_12389) Bool)
(declare-fun state (T@PolymorphicMapType_12389 T@PolymorphicMapType_12410) Bool)
(declare-fun inhaleExpression3_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun inhaleExpression1_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun inhaleExpression2_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun GoodMask (T@PolymorphicMapType_12410) Bool)
(declare-fun inhaleTrue3_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun inhaleTrue2_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun inhaleTrue1_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_12938)
(declare-fun |inhaleTrue1'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun dummyFunction_1382 (Int) Bool)
(declare-fun |inhaleTrue1#triggerStateless| (T@Ref) Int)
(declare-fun |inhaleTrue2'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |inhaleTrue2#triggerStateless| (T@Ref) Int)
(declare-fun |inhaleTrue3'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |inhaleTrue3#triggerStateless| (T@Ref) Int)
(declare-fun |inhaleExpression1'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |inhaleExpression1#triggerStateless| (T@Ref) Int)
(declare-fun |inhaleExpression2'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |inhaleExpression2#triggerStateless| (T@Ref) Int)
(declare-fun |inhaleExpression3'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |inhaleExpression3#triggerStateless| (T@Ref) Int)
(declare-fun |exhaleTrue1'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |exhaleTrue1#triggerStateless| (T@Ref) Int)
(declare-fun |exhaleTrue2'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |exhaleTrue2#triggerStateless| (T@Ref) Int)
(declare-fun |exhaleTrue3'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |exhaleTrue3#triggerStateless| (T@Ref) Int)
(declare-fun |exhaleExpression1WithRequires'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |exhaleExpression1WithRequires#triggerStateless| (T@Ref) Int)
(declare-fun |exhaleExpression2WithRequires'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |exhaleExpression2WithRequires#triggerStateless| (T@Ref) Int)
(declare-fun |exhaleExpression3WithRequires'| (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |exhaleExpression3WithRequires#triggerStateless| (T@Ref) Int)
(declare-fun exhaleExpression1WithRequires_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun exhaleExpression2WithRequires_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun exhaleExpression3WithRequires_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun |inhaleExpression3#trigger| (T@FrameType T@Ref) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |inhaleExpression1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |inhaleExpression2#trigger| (T@FrameType T@Ref) Bool)
(declare-fun exhaleTrue1_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun exhaleTrue2_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun exhaleTrue3_1 (T@PolymorphicMapType_12389 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12389 T@PolymorphicMapType_12389 T@PolymorphicMapType_12410) Bool)
(declare-fun IsPredicateField_6386_35615 (T@Field_6386_35524) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6386 (T@Field_6386_35524) T@Field_6386_35657)
(declare-fun HasDirectPerm_6386_35588 (T@PolymorphicMapType_12410 T@Ref T@Field_6386_35524) Bool)
(declare-fun IsWandField_6386_37362 (T@Field_6386_35524) Bool)
(declare-fun WandMaskField_6386 (T@Field_6386_35524) T@Field_6386_35657)
(declare-fun |exhaleTrue2#trigger| (T@FrameType T@Ref) Bool)
(declare-fun FrameFragment_1189 (Int) T@FrameType)
(declare-fun dummyHeap () T@PolymorphicMapType_12389)
(declare-fun ZeroMask () T@PolymorphicMapType_12410)
(declare-fun InsidePredicate_12449_12449 (T@Field_6386_35524 T@FrameType T@Field_6386_35524 T@FrameType) Bool)
(declare-fun IsPredicateField_6386_1189 (T@Field_15776_1189) Bool)
(declare-fun IsWandField_6386_1189 (T@Field_15776_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6386_40908 (T@Field_6386_35657) Bool)
(declare-fun IsWandField_6386_40924 (T@Field_6386_35657) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6386_12463 (T@Field_12462_12463) Bool)
(declare-fun IsWandField_6386_12463 (T@Field_12462_12463) Bool)
(declare-fun IsPredicateField_6386_53 (T@Field_12449_53) Bool)
(declare-fun IsWandField_6386_53 (T@Field_12449_53) Bool)
(declare-fun HasDirectPerm_6386_41362 (T@PolymorphicMapType_12410 T@Ref T@Field_6386_35657) Bool)
(declare-fun HasDirectPerm_6386_12463 (T@PolymorphicMapType_12410 T@Ref T@Field_12462_12463) Bool)
(declare-fun HasDirectPerm_6386_53 (T@PolymorphicMapType_12410 T@Ref T@Field_12449_53) Bool)
(declare-fun HasDirectPerm_6386_1189 (T@PolymorphicMapType_12410 T@Ref T@Field_15776_1189) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12410 T@PolymorphicMapType_12410 T@PolymorphicMapType_12410) Bool)
(declare-fun |exhaleTrue1#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |exhaleTrue3#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |inhaleTrue1#frame| (T@FrameType T@Ref) Int)
(declare-fun |inhaleTrue2#frame| (T@FrameType T@Ref) Int)
(declare-fun |inhaleTrue3#frame| (T@FrameType T@Ref) Int)
(declare-fun |exhaleTrue1#frame| (T@FrameType T@Ref) Int)
(declare-fun |exhaleTrue2#frame| (T@FrameType T@Ref) Int)
(declare-fun |exhaleTrue3#frame| (T@FrameType T@Ref) Int)
(declare-fun |exhaleExpression1WithRequires#frame| (T@FrameType T@Ref) Int)
(declare-fun |exhaleExpression2WithRequires#frame| (T@FrameType T@Ref) Int)
(declare-fun |exhaleExpression3WithRequires#frame| (T@FrameType T@Ref) Int)
(declare-fun |inhaleExpression1#frame| (T@FrameType T@Ref) Int)
(declare-fun |inhaleExpression2#frame| (T@FrameType T@Ref) Int)
(declare-fun |inhaleExpression3#frame| (T@FrameType T@Ref) Int)
(assert (forall ((Heap0 T@PolymorphicMapType_12389) (Heap1 T@PolymorphicMapType_12389) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12389) (Mask T@PolymorphicMapType_12410) (this T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (inhaleExpression3_1 Heap this) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap) this x_42)))
 :qid |stdinbpl.617:15|
 :skolemid |46|
 :pattern ( (state Heap Mask) (inhaleExpression3_1 Heap this))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12389) (Mask@@0 T@PolymorphicMapType_12410) (this@@0 T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 7)) (= (inhaleExpression1_1 Heap@@0 this@@0) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@0) this@@0 x_42)))
 :qid |stdinbpl.433:15|
 :skolemid |36|
 :pattern ( (state Heap@@0 Mask@@0) (inhaleExpression1_1 Heap@@0 this@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12389) (Mask@@1 T@PolymorphicMapType_12410) (this@@1 T@Ref) ) (!  (=> (and (state Heap@@1 Mask@@1) (< AssumeFunctionsAbove 8)) (= (inhaleExpression2_1 Heap@@1 this@@1) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@1) this@@1 x_42)))
 :qid |stdinbpl.525:15|
 :skolemid |41|
 :pattern ( (state Heap@@1 Mask@@1) (inhaleExpression2_1 Heap@@1 this@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12389) (Mask@@2 T@PolymorphicMapType_12410) ) (!  (=> (state Heap@@2 Mask@@2) (GoodMask Mask@@2))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@2 Mask@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12389) (Heap1@@0 T@PolymorphicMapType_12389) (Heap2 T@PolymorphicMapType_12389) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12389) (Mask@@3 T@PolymorphicMapType_12410) (this@@2 T@Ref) ) (!  (=> (and (state Heap@@3 Mask@@3) (< AssumeFunctionsAbove 4)) (=> (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@3) this@@2 x_42) 1) (= (inhaleTrue3_1 Heap@@3 this@@2) 0)))
 :qid |stdinbpl.359:15|
 :skolemid |32|
 :pattern ( (state Heap@@3 Mask@@3) (inhaleTrue3_1 Heap@@3 this@@2))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12389) (Mask@@4 T@PolymorphicMapType_12410) (this@@3 T@Ref) ) (!  (=> (and (state Heap@@4 Mask@@4) (< AssumeFunctionsAbove 6)) (=> (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@4) this@@3 x_42) 1) (= (inhaleTrue2_1 Heap@@4 this@@3) 0)))
 :qid |stdinbpl.287:15|
 :skolemid |28|
 :pattern ( (state Heap@@4 Mask@@4) (inhaleTrue2_1 Heap@@4 this@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12389) (Mask@@5 T@PolymorphicMapType_12410) (this@@4 T@Ref) ) (!  (=> (and (state Heap@@5 Mask@@5) (< AssumeFunctionsAbove 10)) (=> (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@5) this@@4 x_42) 1) (= (inhaleTrue1_1 Heap@@5 this@@4) 0)))
 :qid |stdinbpl.215:15|
 :skolemid |24|
 :pattern ( (state Heap@@5 Mask@@5) (inhaleTrue1_1 Heap@@5 this@@4))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6386_35657) ) (!  (not (select (|PolymorphicMapType_12938_12449_36835#PolymorphicMapType_12938| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12938_12449_36835#PolymorphicMapType_12938| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6386_35524) ) (!  (not (select (|PolymorphicMapType_12938_12449_35524#PolymorphicMapType_12938| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12938_12449_35524#PolymorphicMapType_12938| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_15776_1189) ) (!  (not (select (|PolymorphicMapType_12938_12449_1189#PolymorphicMapType_12938| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12938_12449_1189#PolymorphicMapType_12938| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12462_12463) ) (!  (not (select (|PolymorphicMapType_12938_12449_12463#PolymorphicMapType_12938| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12938_12449_12463#PolymorphicMapType_12938| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12449_53) ) (!  (not (select (|PolymorphicMapType_12938_12449_53#PolymorphicMapType_12938| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12938_12449_53#PolymorphicMapType_12938| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12389) (this@@5 T@Ref) ) (! (dummyFunction_1382 (|inhaleTrue1#triggerStateless| this@@5))
 :qid |stdinbpl.209:15|
 :skolemid |23|
 :pattern ( (|inhaleTrue1'| Heap@@6 this@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12389) (this@@6 T@Ref) ) (! (dummyFunction_1382 (|inhaleTrue2#triggerStateless| this@@6))
 :qid |stdinbpl.281:15|
 :skolemid |27|
 :pattern ( (|inhaleTrue2'| Heap@@7 this@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12389) (this@@7 T@Ref) ) (! (dummyFunction_1382 (|inhaleTrue3#triggerStateless| this@@7))
 :qid |stdinbpl.353:15|
 :skolemid |31|
 :pattern ( (|inhaleTrue3'| Heap@@8 this@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12389) (this@@8 T@Ref) ) (! (dummyFunction_1382 (|inhaleExpression1#triggerStateless| this@@8))
 :qid |stdinbpl.427:15|
 :skolemid |35|
 :pattern ( (|inhaleExpression1'| Heap@@9 this@@8))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12389) (this@@9 T@Ref) ) (! (dummyFunction_1382 (|inhaleExpression2#triggerStateless| this@@9))
 :qid |stdinbpl.519:15|
 :skolemid |40|
 :pattern ( (|inhaleExpression2'| Heap@@10 this@@9))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12389) (this@@10 T@Ref) ) (! (dummyFunction_1382 (|inhaleExpression3#triggerStateless| this@@10))
 :qid |stdinbpl.611:15|
 :skolemid |45|
 :pattern ( (|inhaleExpression3'| Heap@@11 this@@10))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12389) (this@@11 T@Ref) ) (! (dummyFunction_1382 (|exhaleTrue1#triggerStateless| this@@11))
 :qid |stdinbpl.705:15|
 :skolemid |50|
 :pattern ( (|exhaleTrue1'| Heap@@12 this@@11))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12389) (this@@12 T@Ref) ) (! (dummyFunction_1382 (|exhaleTrue2#triggerStateless| this@@12))
 :qid |stdinbpl.789:15|
 :skolemid |55|
 :pattern ( (|exhaleTrue2'| Heap@@13 this@@12))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12389) (this@@13 T@Ref) ) (! (dummyFunction_1382 (|exhaleTrue3#triggerStateless| this@@13))
 :qid |stdinbpl.874:15|
 :skolemid |60|
 :pattern ( (|exhaleTrue3'| Heap@@14 this@@13))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12389) (this@@14 T@Ref) ) (! (dummyFunction_1382 (|exhaleExpression1WithRequires#triggerStateless| this@@14))
 :qid |stdinbpl.964:15|
 :skolemid |66|
 :pattern ( (|exhaleExpression1WithRequires'| Heap@@15 this@@14))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12389) (this@@15 T@Ref) ) (! (dummyFunction_1382 (|exhaleExpression2WithRequires#triggerStateless| this@@15))
 :qid |stdinbpl.1057:15|
 :skolemid |70|
 :pattern ( (|exhaleExpression2WithRequires'| Heap@@16 this@@15))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12389) (this@@16 T@Ref) ) (! (dummyFunction_1382 (|exhaleExpression3WithRequires#triggerStateless| this@@16))
 :qid |stdinbpl.1152:15|
 :skolemid |74|
 :pattern ( (|exhaleExpression3WithRequires'| Heap@@17 this@@16))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12389) (Mask@@6 T@PolymorphicMapType_12410) (this@@17 T@Ref) ) (!  (=> (and (state Heap@@18 Mask@@6) (< AssumeFunctionsAbove 1)) (=> (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@18) this@@17 x_42) 1) (= (exhaleExpression1WithRequires_1 Heap@@18 this@@17) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@18) this@@17 x_42))))
 :qid |stdinbpl.970:15|
 :skolemid |67|
 :pattern ( (state Heap@@18 Mask@@6) (exhaleExpression1WithRequires_1 Heap@@18 this@@17))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12389) (Mask@@7 T@PolymorphicMapType_12410) (this@@18 T@Ref) ) (!  (=> (and (state Heap@@19 Mask@@7) (< AssumeFunctionsAbove 2)) (=> (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@19) this@@18 x_42) 1) (= (exhaleExpression2WithRequires_1 Heap@@19 this@@18) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@19) this@@18 x_42))))
 :qid |stdinbpl.1063:15|
 :skolemid |71|
 :pattern ( (state Heap@@19 Mask@@7) (exhaleExpression2WithRequires_1 Heap@@19 this@@18))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12389) (Mask@@8 T@PolymorphicMapType_12410) (this@@19 T@Ref) ) (!  (=> (and (state Heap@@20 Mask@@8) (< AssumeFunctionsAbove 5)) (=> (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@20) this@@19 x_42) 1) (= (exhaleExpression3WithRequires_1 Heap@@20 this@@19) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@20) this@@19 x_42))))
 :qid |stdinbpl.1158:15|
 :skolemid |75|
 :pattern ( (state Heap@@20 Mask@@8) (exhaleExpression3WithRequires_1 Heap@@20 this@@19))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12389) (Mask@@9 T@PolymorphicMapType_12410) (this@@20 T@Ref) ) (!  (=> (and (state Heap@@21 Mask@@9) (or (< AssumeFunctionsAbove 0) (|inhaleExpression3#trigger| EmptyFrame this@@20))) (= (|inhaleExpression3'| Heap@@21 this@@20) 1))
 :qid |stdinbpl.630:15|
 :skolemid |48|
 :pattern ( (state Heap@@21 Mask@@9) (|inhaleExpression3'| Heap@@21 this@@20))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12389) (Mask@@10 T@PolymorphicMapType_12410) (this@@21 T@Ref) ) (!  (=> (and (state Heap@@22 Mask@@10) (or (< AssumeFunctionsAbove 7) (|inhaleExpression1#trigger| EmptyFrame this@@21))) (= (|inhaleExpression1'| Heap@@22 this@@21) 1))
 :qid |stdinbpl.446:15|
 :skolemid |38|
 :pattern ( (state Heap@@22 Mask@@10) (|inhaleExpression1'| Heap@@22 this@@21))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12389) (Mask@@11 T@PolymorphicMapType_12410) (this@@22 T@Ref) ) (!  (=> (and (state Heap@@23 Mask@@11) (or (< AssumeFunctionsAbove 8) (|inhaleExpression2#trigger| EmptyFrame this@@22))) (= (|inhaleExpression2'| Heap@@23 this@@22) 1))
 :qid |stdinbpl.538:15|
 :skolemid |43|
 :pattern ( (state Heap@@23 Mask@@11) (|inhaleExpression2'| Heap@@23 this@@22))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12389) (this@@23 T@Ref) ) (!  (and (= (inhaleTrue1_1 Heap@@24 this@@23) (|inhaleTrue1'| Heap@@24 this@@23)) (dummyFunction_1382 (|inhaleTrue1#triggerStateless| this@@23)))
 :qid |stdinbpl.205:15|
 :skolemid |22|
 :pattern ( (inhaleTrue1_1 Heap@@24 this@@23))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12389) (this@@24 T@Ref) ) (!  (and (= (inhaleTrue2_1 Heap@@25 this@@24) (|inhaleTrue2'| Heap@@25 this@@24)) (dummyFunction_1382 (|inhaleTrue2#triggerStateless| this@@24)))
 :qid |stdinbpl.277:15|
 :skolemid |26|
 :pattern ( (inhaleTrue2_1 Heap@@25 this@@24))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12389) (this@@25 T@Ref) ) (!  (and (= (inhaleTrue3_1 Heap@@26 this@@25) (|inhaleTrue3'| Heap@@26 this@@25)) (dummyFunction_1382 (|inhaleTrue3#triggerStateless| this@@25)))
 :qid |stdinbpl.349:15|
 :skolemid |30|
 :pattern ( (inhaleTrue3_1 Heap@@26 this@@25))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12389) (this@@26 T@Ref) ) (!  (and (= (inhaleExpression1_1 Heap@@27 this@@26) (|inhaleExpression1'| Heap@@27 this@@26)) (dummyFunction_1382 (|inhaleExpression1#triggerStateless| this@@26)))
 :qid |stdinbpl.423:15|
 :skolemid |34|
 :pattern ( (inhaleExpression1_1 Heap@@27 this@@26))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12389) (this@@27 T@Ref) ) (!  (and (= (inhaleExpression2_1 Heap@@28 this@@27) (|inhaleExpression2'| Heap@@28 this@@27)) (dummyFunction_1382 (|inhaleExpression2#triggerStateless| this@@27)))
 :qid |stdinbpl.515:15|
 :skolemid |39|
 :pattern ( (inhaleExpression2_1 Heap@@28 this@@27))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12389) (this@@28 T@Ref) ) (!  (and (= (inhaleExpression3_1 Heap@@29 this@@28) (|inhaleExpression3'| Heap@@29 this@@28)) (dummyFunction_1382 (|inhaleExpression3#triggerStateless| this@@28)))
 :qid |stdinbpl.607:15|
 :skolemid |44|
 :pattern ( (inhaleExpression3_1 Heap@@29 this@@28))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12389) (this@@29 T@Ref) ) (!  (and (= (exhaleTrue1_1 Heap@@30 this@@29) (|exhaleTrue1'| Heap@@30 this@@29)) (dummyFunction_1382 (|exhaleTrue1#triggerStateless| this@@29)))
 :qid |stdinbpl.701:15|
 :skolemid |49|
 :pattern ( (exhaleTrue1_1 Heap@@30 this@@29))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_12389) (this@@30 T@Ref) ) (!  (and (= (exhaleTrue2_1 Heap@@31 this@@30) (|exhaleTrue2'| Heap@@31 this@@30)) (dummyFunction_1382 (|exhaleTrue2#triggerStateless| this@@30)))
 :qid |stdinbpl.785:15|
 :skolemid |54|
 :pattern ( (exhaleTrue2_1 Heap@@31 this@@30))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_12389) (this@@31 T@Ref) ) (!  (and (= (exhaleTrue3_1 Heap@@32 this@@31) (|exhaleTrue3'| Heap@@32 this@@31)) (dummyFunction_1382 (|exhaleTrue3#triggerStateless| this@@31)))
 :qid |stdinbpl.870:15|
 :skolemid |59|
 :pattern ( (exhaleTrue3_1 Heap@@32 this@@31))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_12389) (this@@32 T@Ref) ) (!  (and (= (exhaleExpression1WithRequires_1 Heap@@33 this@@32) (|exhaleExpression1WithRequires'| Heap@@33 this@@32)) (dummyFunction_1382 (|exhaleExpression1WithRequires#triggerStateless| this@@32)))
 :qid |stdinbpl.960:15|
 :skolemid |65|
 :pattern ( (exhaleExpression1WithRequires_1 Heap@@33 this@@32))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_12389) (this@@33 T@Ref) ) (!  (and (= (exhaleExpression2WithRequires_1 Heap@@34 this@@33) (|exhaleExpression2WithRequires'| Heap@@34 this@@33)) (dummyFunction_1382 (|exhaleExpression2WithRequires#triggerStateless| this@@33)))
 :qid |stdinbpl.1053:15|
 :skolemid |69|
 :pattern ( (exhaleExpression2WithRequires_1 Heap@@34 this@@33))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_12389) (this@@34 T@Ref) ) (!  (and (= (exhaleExpression3WithRequires_1 Heap@@35 this@@34) (|exhaleExpression3WithRequires'| Heap@@35 this@@34)) (dummyFunction_1382 (|exhaleExpression3WithRequires#triggerStateless| this@@34)))
 :qid |stdinbpl.1148:15|
 :skolemid |73|
 :pattern ( (exhaleExpression3WithRequires_1 Heap@@35 this@@34))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_12389) (ExhaleHeap T@PolymorphicMapType_12389) (Mask@@12 T@PolymorphicMapType_12410) (pm_f T@Field_6386_35524) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap Mask@@12) (=> (and (HasDirectPerm_6386_35588 Mask@@12 null pm_f) (IsPredicateField_6386_35615 pm_f)) (= (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@36) null (PredicateMaskField_6386 pm_f)) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap) null (PredicateMaskField_6386 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap Mask@@12) (IsPredicateField_6386_35615 pm_f) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap) null (PredicateMaskField_6386 pm_f)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_12389) (ExhaleHeap@@0 T@PolymorphicMapType_12389) (Mask@@13 T@PolymorphicMapType_12410) (pm_f@@0 T@Field_6386_35524) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@0 Mask@@13) (=> (and (HasDirectPerm_6386_35588 Mask@@13 null pm_f@@0) (IsWandField_6386_37362 pm_f@@0)) (= (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@37) null (WandMaskField_6386 pm_f@@0)) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@0) null (WandMaskField_6386 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@0 Mask@@13) (IsWandField_6386_37362 pm_f@@0) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@0) null (WandMaskField_6386 pm_f@@0)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_12389) (Mask@@14 T@PolymorphicMapType_12410) (this@@35 T@Ref) ) (!  (=> (and (state Heap@@38 Mask@@14) (or (< AssumeFunctionsAbove 11) (|exhaleTrue2#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@38) this@@35 x_42)) this@@35))) (and (not (= this@@35 null)) (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@38) this@@35 x_42) 1)))
 :qid |stdinbpl.808:15|
 :skolemid |58|
 :pattern ( (state Heap@@38 Mask@@14) (|exhaleTrue2'| Heap@@38 this@@35))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@39 T@PolymorphicMapType_12389) (ExhaleHeap@@1 T@PolymorphicMapType_12389) (Mask@@15 T@PolymorphicMapType_12410) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@1 Mask@@15) (=> (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@39) o_1 $allocated) (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@1 Mask@@15) (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_6386_35524) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12449_12449 p v_1 p w))
 :qid |stdinbpl.185:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12449_12449 p v_1 p w))
)))
(assert  (not (IsPredicateField_6386_1189 x_42)))
(assert  (not (IsWandField_6386_1189 x_42)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_12389) (ExhaleHeap@@2 T@PolymorphicMapType_12389) (Mask@@16 T@PolymorphicMapType_12410) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@2 Mask@@16) (succHeap Heap@@40 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@2 Mask@@16))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_12410) (o_2@@4 T@Ref) (f_4@@4 T@Field_6386_35657) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| Mask@@17) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6386_40908 f_4@@4))) (not (IsWandField_6386_40924 f_4@@4))) (<= (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| Mask@@17) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| Mask@@17) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_12410) (o_2@@5 T@Ref) (f_4@@5 T@Field_6386_35524) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| Mask@@18) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6386_35615 f_4@@5))) (not (IsWandField_6386_37362 f_4@@5))) (<= (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| Mask@@18) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| Mask@@18) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_12410) (o_2@@6 T@Ref) (f_4@@6 T@Field_12462_12463) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| Mask@@19) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6386_12463 f_4@@6))) (not (IsWandField_6386_12463 f_4@@6))) (<= (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| Mask@@19) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| Mask@@19) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_12410) (o_2@@7 T@Ref) (f_4@@7 T@Field_12449_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| Mask@@20) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_6386_53 f_4@@7))) (not (IsWandField_6386_53 f_4@@7))) (<= (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| Mask@@20) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| Mask@@20) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_12410) (o_2@@8 T@Ref) (f_4@@8 T@Field_15776_1189) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| Mask@@21) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_6386_1189 f_4@@8))) (not (IsWandField_6386_1189 f_4@@8))) (<= (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| Mask@@21) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| Mask@@21) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_12410) (o_2@@9 T@Ref) (f_4@@9 T@Field_6386_35657) ) (! (= (HasDirectPerm_6386_41362 Mask@@22 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| Mask@@22) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6386_41362 Mask@@22 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_12410) (o_2@@10 T@Ref) (f_4@@10 T@Field_6386_35524) ) (! (= (HasDirectPerm_6386_35588 Mask@@23 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| Mask@@23) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6386_35588 Mask@@23 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_12410) (o_2@@11 T@Ref) (f_4@@11 T@Field_12462_12463) ) (! (= (HasDirectPerm_6386_12463 Mask@@24 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| Mask@@24) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6386_12463 Mask@@24 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_12410) (o_2@@12 T@Ref) (f_4@@12 T@Field_12449_53) ) (! (= (HasDirectPerm_6386_53 Mask@@25 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| Mask@@25) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6386_53 Mask@@25 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_12410) (o_2@@13 T@Ref) (f_4@@13 T@Field_15776_1189) ) (! (= (HasDirectPerm_6386_1189 Mask@@26 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| Mask@@26) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6386_1189 Mask@@26 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_12389) (ExhaleHeap@@3 T@PolymorphicMapType_12389) (Mask@@27 T@PolymorphicMapType_12410) (pm_f@@1 T@Field_6386_35524) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@3 Mask@@27) (=> (and (HasDirectPerm_6386_35588 Mask@@27 null pm_f@@1) (IsPredicateField_6386_35615 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_12449_53) ) (!  (=> (select (|PolymorphicMapType_12938_12449_53#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@41) null (PredicateMaskField_6386 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@41) o2 f_2) (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_12462_12463) ) (!  (=> (select (|PolymorphicMapType_12938_12449_12463#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@41) null (PredicateMaskField_6386 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@41) o2@@0 f_2@@0) (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_15776_1189) ) (!  (=> (select (|PolymorphicMapType_12938_12449_1189#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@41) null (PredicateMaskField_6386 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@41) o2@@1 f_2@@1) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6386_35524) ) (!  (=> (select (|PolymorphicMapType_12938_12449_35524#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@41) null (PredicateMaskField_6386 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@41) o2@@2 f_2@@2) (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6386_35657) ) (!  (=> (select (|PolymorphicMapType_12938_12449_36835#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@41) null (PredicateMaskField_6386 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@41) o2@@3 f_2@@3) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@3 Mask@@27) (IsPredicateField_6386_35615 pm_f@@1))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_12389) (ExhaleHeap@@4 T@PolymorphicMapType_12389) (Mask@@28 T@PolymorphicMapType_12410) (pm_f@@2 T@Field_6386_35524) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@4 Mask@@28) (=> (and (HasDirectPerm_6386_35588 Mask@@28 null pm_f@@2) (IsWandField_6386_37362 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_12449_53) ) (!  (=> (select (|PolymorphicMapType_12938_12449_53#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@42) null (WandMaskField_6386 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@42) o2@@4 f_2@@4) (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_12462_12463) ) (!  (=> (select (|PolymorphicMapType_12938_12449_12463#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@42) null (WandMaskField_6386 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@42) o2@@5 f_2@@5) (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_15776_1189) ) (!  (=> (select (|PolymorphicMapType_12938_12449_1189#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@42) null (WandMaskField_6386 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@42) o2@@6 f_2@@6) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_6386_35524) ) (!  (=> (select (|PolymorphicMapType_12938_12449_35524#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@42) null (WandMaskField_6386 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@42) o2@@7 f_2@@7) (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_6386_35657) ) (!  (=> (select (|PolymorphicMapType_12938_12449_36835#PolymorphicMapType_12938| (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@42) null (WandMaskField_6386 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@42) o2@@8 f_2@@8) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@4 Mask@@28) (IsWandField_6386_37362 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.173:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_12389) (ExhaleHeap@@5 T@PolymorphicMapType_12389) (Mask@@29 T@PolymorphicMapType_12410) (o_1@@0 T@Ref) (f_2@@9 T@Field_6386_35657) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@5 Mask@@29) (=> (HasDirectPerm_6386_41362 Mask@@29 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@43) o_1@@0 f_2@@9) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@5 Mask@@29) (select (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_12389) (ExhaleHeap@@6 T@PolymorphicMapType_12389) (Mask@@30 T@PolymorphicMapType_12410) (o_1@@1 T@Ref) (f_2@@10 T@Field_6386_35524) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@6 Mask@@30) (=> (HasDirectPerm_6386_35588 Mask@@30 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@44) o_1@@1 f_2@@10) (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@6 Mask@@30) (select (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_12389) (ExhaleHeap@@7 T@PolymorphicMapType_12389) (Mask@@31 T@PolymorphicMapType_12410) (o_1@@2 T@Ref) (f_2@@11 T@Field_12462_12463) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@7 Mask@@31) (=> (HasDirectPerm_6386_12463 Mask@@31 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@45) o_1@@2 f_2@@11) (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@7 Mask@@31) (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_12389) (ExhaleHeap@@8 T@PolymorphicMapType_12389) (Mask@@32 T@PolymorphicMapType_12410) (o_1@@3 T@Ref) (f_2@@12 T@Field_12449_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@8 Mask@@32) (=> (HasDirectPerm_6386_53 Mask@@32 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@46) o_1@@3 f_2@@12) (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@8 Mask@@32) (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_12389) (ExhaleHeap@@9 T@PolymorphicMapType_12389) (Mask@@33 T@PolymorphicMapType_12410) (o_1@@4 T@Ref) (f_2@@13 T@Field_15776_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@9 Mask@@33) (=> (HasDirectPerm_6386_1189 Mask@@33 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@47) o_1@@4 f_2@@13) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@9 Mask@@33) (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6386_35657) ) (! (= (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6386_35524) ) (! (= (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_12462_12463) ) (! (= (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12449_53) ) (! (= (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_15776_1189) ) (! (= (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12410) (SummandMask1 T@PolymorphicMapType_12410) (SummandMask2 T@PolymorphicMapType_12410) (o_2@@19 T@Ref) (f_4@@19 T@Field_6386_35657) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12410_6386_39779#PolymorphicMapType_12410| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12410) (SummandMask1@@0 T@PolymorphicMapType_12410) (SummandMask2@@0 T@PolymorphicMapType_12410) (o_2@@20 T@Ref) (f_4@@20 T@Field_6386_35524) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12410_6386_35524#PolymorphicMapType_12410| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12410) (SummandMask1@@1 T@PolymorphicMapType_12410) (SummandMask2@@1 T@PolymorphicMapType_12410) (o_2@@21 T@Ref) (f_4@@21 T@Field_12462_12463) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12410_6386_12463#PolymorphicMapType_12410| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12410) (SummandMask1@@2 T@PolymorphicMapType_12410) (SummandMask2@@2 T@PolymorphicMapType_12410) (o_2@@22 T@Ref) (f_4@@22 T@Field_12449_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12410_6386_53#PolymorphicMapType_12410| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12410) (SummandMask1@@3 T@PolymorphicMapType_12410) (SummandMask2@@3 T@PolymorphicMapType_12410) (o_2@@23 T@Ref) (f_4@@23 T@Field_15776_1189) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12410_6386_1189#PolymorphicMapType_12410| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_12389) (Mask@@34 T@PolymorphicMapType_12410) (this@@36 T@Ref) ) (!  (=> (and (state Heap@@48 Mask@@34) (or (< AssumeFunctionsAbove 3) (|exhaleTrue1#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@48) this@@36 x_42)) this@@36))) (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@48) this@@36 x_42) 1))
 :qid |stdinbpl.724:15|
 :skolemid |53|
 :pattern ( (state Heap@@48 Mask@@34) (|exhaleTrue1'| Heap@@48 this@@36))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_12389) (Mask@@35 T@PolymorphicMapType_12410) (this@@37 T@Ref) ) (!  (=> (and (state Heap@@49 Mask@@35) (or (< AssumeFunctionsAbove 9) (|exhaleTrue3#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@49) this@@37 x_42)) this@@37))) (= (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@49) this@@37 x_42) 1))
 :qid |stdinbpl.897:15|
 :skolemid |64|
 :pattern ( (state Heap@@49 Mask@@35) (|exhaleTrue3'| Heap@@49 this@@37))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_12389) (Mask@@36 T@PolymorphicMapType_12410) (this@@38 T@Ref) ) (!  (=> (state Heap@@50 Mask@@36) (= (|inhaleTrue1'| Heap@@50 this@@38) (|inhaleTrue1#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@50) this@@38 x_42)) this@@38)))
 :qid |stdinbpl.222:15|
 :skolemid |25|
 :pattern ( (state Heap@@50 Mask@@36) (|inhaleTrue1'| Heap@@50 this@@38))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_12389) (Mask@@37 T@PolymorphicMapType_12410) (this@@39 T@Ref) ) (!  (=> (state Heap@@51 Mask@@37) (= (|inhaleTrue2'| Heap@@51 this@@39) (|inhaleTrue2#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@51) this@@39 x_42)) this@@39)))
 :qid |stdinbpl.294:15|
 :skolemid |29|
 :pattern ( (state Heap@@51 Mask@@37) (|inhaleTrue2'| Heap@@51 this@@39))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_12389) (Mask@@38 T@PolymorphicMapType_12410) (this@@40 T@Ref) ) (!  (=> (state Heap@@52 Mask@@38) (= (|inhaleTrue3'| Heap@@52 this@@40) (|inhaleTrue3#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@52) this@@40 x_42)) this@@40)))
 :qid |stdinbpl.366:15|
 :skolemid |33|
 :pattern ( (state Heap@@52 Mask@@38) (|inhaleTrue3'| Heap@@52 this@@40))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_12389) (Mask@@39 T@PolymorphicMapType_12410) (this@@41 T@Ref) ) (!  (=> (state Heap@@53 Mask@@39) (= (|exhaleTrue1'| Heap@@53 this@@41) (|exhaleTrue1#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@53) this@@41 x_42)) this@@41)))
 :qid |stdinbpl.718:15|
 :skolemid |52|
 :pattern ( (state Heap@@53 Mask@@39) (|exhaleTrue1'| Heap@@53 this@@41))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_12389) (Mask@@40 T@PolymorphicMapType_12410) (this@@42 T@Ref) ) (!  (=> (state Heap@@54 Mask@@40) (= (|exhaleTrue2'| Heap@@54 this@@42) (|exhaleTrue2#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@54) this@@42 x_42)) this@@42)))
 :qid |stdinbpl.802:15|
 :skolemid |57|
 :pattern ( (state Heap@@54 Mask@@40) (|exhaleTrue2'| Heap@@54 this@@42))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_12389) (Mask@@41 T@PolymorphicMapType_12410) (this@@43 T@Ref) ) (!  (=> (state Heap@@55 Mask@@41) (= (|exhaleTrue3'| Heap@@55 this@@43) (|exhaleTrue3#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@55) this@@43 x_42)) this@@43)))
 :qid |stdinbpl.887:15|
 :skolemid |62|
 :pattern ( (state Heap@@55 Mask@@41) (|exhaleTrue3'| Heap@@55 this@@43))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_12389) (Mask@@42 T@PolymorphicMapType_12410) (this@@44 T@Ref) ) (!  (=> (state Heap@@56 Mask@@42) (= (|exhaleExpression1WithRequires'| Heap@@56 this@@44) (|exhaleExpression1WithRequires#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@56) this@@44 x_42)) this@@44)))
 :qid |stdinbpl.977:15|
 :skolemid |68|
 :pattern ( (state Heap@@56 Mask@@42) (|exhaleExpression1WithRequires'| Heap@@56 this@@44))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_12389) (Mask@@43 T@PolymorphicMapType_12410) (this@@45 T@Ref) ) (!  (=> (state Heap@@57 Mask@@43) (= (|exhaleExpression2WithRequires'| Heap@@57 this@@45) (|exhaleExpression2WithRequires#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@57) this@@45 x_42)) this@@45)))
 :qid |stdinbpl.1070:15|
 :skolemid |72|
 :pattern ( (state Heap@@57 Mask@@43) (|exhaleExpression2WithRequires'| Heap@@57 this@@45))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_12389) (Mask@@44 T@PolymorphicMapType_12410) (this@@46 T@Ref) ) (!  (=> (state Heap@@58 Mask@@44) (= (|exhaleExpression3WithRequires'| Heap@@58 this@@46) (|exhaleExpression3WithRequires#frame| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@58) this@@46 x_42)) this@@46)))
 :qid |stdinbpl.1165:15|
 :skolemid |76|
 :pattern ( (state Heap@@58 Mask@@44) (|exhaleExpression3WithRequires'| Heap@@58 this@@46))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_12389) (Mask@@45 T@PolymorphicMapType_12410) (this@@47 T@Ref) ) (!  (=> (state Heap@@59 Mask@@45) (= (|inhaleExpression1'| Heap@@59 this@@47) (|inhaleExpression1#frame| EmptyFrame this@@47)))
 :qid |stdinbpl.440:15|
 :skolemid |37|
 :pattern ( (state Heap@@59 Mask@@45) (|inhaleExpression1'| Heap@@59 this@@47))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_12389) (Mask@@46 T@PolymorphicMapType_12410) (this@@48 T@Ref) ) (!  (=> (state Heap@@60 Mask@@46) (= (|inhaleExpression2'| Heap@@60 this@@48) (|inhaleExpression2#frame| EmptyFrame this@@48)))
 :qid |stdinbpl.532:15|
 :skolemid |42|
 :pattern ( (state Heap@@60 Mask@@46) (|inhaleExpression2'| Heap@@60 this@@48))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_12389) (Mask@@47 T@PolymorphicMapType_12410) (this@@49 T@Ref) ) (!  (=> (state Heap@@61 Mask@@47) (= (|inhaleExpression3'| Heap@@61 this@@49) (|inhaleExpression3#frame| EmptyFrame this@@49)))
 :qid |stdinbpl.624:15|
 :skolemid |47|
 :pattern ( (state Heap@@61 Mask@@47) (|inhaleExpression3'| Heap@@61 this@@49))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_12389) (Mask@@48 T@PolymorphicMapType_12410) (this@@50 T@Ref) ) (!  (=> (and (state Heap@@62 Mask@@48) (or (< AssumeFunctionsAbove 9) (|exhaleTrue3#trigger| (FrameFragment_1189 (select (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@62) this@@50 x_42)) this@@50))) (not (= this@@50 null)))
 :qid |stdinbpl.893:15|
 :skolemid |63|
 :pattern ( (state Heap@@62 Mask@@48) (|exhaleTrue3'| Heap@@62 this@@50))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_12389) (o T@Ref) (f_3 T@Field_6386_35524) (v T@FrameType) ) (! (succHeap Heap@@63 (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@63) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@63) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@63) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@63) (store (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@63) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@63) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@63) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@63) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@63) (store (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@63) o f_3 v)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_12389) (o@@0 T@Ref) (f_3@@0 T@Field_6386_35657) (v@@0 T@PolymorphicMapType_12938) ) (! (succHeap Heap@@64 (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@64) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@64) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@64) (store (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@64) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@64) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@64) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@64) (store (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@64) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@64)))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_12389) (o@@1 T@Ref) (f_3@@1 T@Field_15776_1189) (v@@1 Int) ) (! (succHeap Heap@@65 (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@65) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@65) (store (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@65) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@65) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@65)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@65) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@65) (store (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@65) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@65) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@65)))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_12389) (o@@2 T@Ref) (f_3@@2 T@Field_12462_12463) (v@@2 T@Ref) ) (! (succHeap Heap@@66 (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@66) (store (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@66) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@66) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@66) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@66)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12389 (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@66) (store (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@66) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@66) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@66) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@66)))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_12389) (o@@3 T@Ref) (f_3@@3 T@Field_12449_53) (v@@3 Bool) ) (! (succHeap Heap@@67 (PolymorphicMapType_12389 (store (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@67) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@67) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@67) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@67) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@67)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12389 (store (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@67) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@67) (|PolymorphicMapType_12389_6386_1189#PolymorphicMapType_12389| Heap@@67) (|PolymorphicMapType_12389_6386_35701#PolymorphicMapType_12389| Heap@@67) (|PolymorphicMapType_12389_12449_35524#PolymorphicMapType_12389| Heap@@67)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_12462_12463) (Heap@@68 T@PolymorphicMapType_12389) ) (!  (=> (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@68) o@@4 $allocated) (select (|PolymorphicMapType_12389_6258_53#PolymorphicMapType_12389| Heap@@68) (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@68) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12389_6261_6262#PolymorphicMapType_12389| Heap@@68) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_6386_35524) (v_1@@0 T@FrameType) (q T@Field_6386_35524) (w@@0 T@FrameType) (r T@Field_6386_35524) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12449_12449 p@@1 v_1@@0 q w@@0) (InsidePredicate_12449_12449 q w@@0 r u)) (InsidePredicate_12449_12449 p@@1 v_1@@0 r u))
 :qid |stdinbpl.180:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12449_12449 p@@1 v_1@@0 q w@@0) (InsidePredicate_12449_12449 q w@@0 r u))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_12389) (Mask@@49 T@PolymorphicMapType_12410) (this@@51 T@Ref) ) (!  (=> (and (state Heap@@69 Mask@@49) (< AssumeFunctionsAbove 3)) (= (exhaleTrue1_1 Heap@@69 this@@51) 0))
 :qid |stdinbpl.711:15|
 :skolemid |51|
 :pattern ( (state Heap@@69 Mask@@49) (exhaleTrue1_1 Heap@@69 this@@51))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_12389) (Mask@@50 T@PolymorphicMapType_12410) (this@@52 T@Ref) ) (!  (=> (and (state Heap@@70 Mask@@50) (< AssumeFunctionsAbove 9)) (= (exhaleTrue3_1 Heap@@70 this@@52) 0))
 :qid |stdinbpl.880:15|
 :skolemid |61|
 :pattern ( (state Heap@@70 Mask@@50) (exhaleTrue3_1 Heap@@70 this@@52))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_12389) (Mask@@51 T@PolymorphicMapType_12410) (this@@53 T@Ref) ) (!  (=> (and (state Heap@@71 Mask@@51) (< AssumeFunctionsAbove 11)) (= (exhaleTrue2_1 Heap@@71 this@@53) 0))
 :qid |stdinbpl.795:15|
 :skolemid |56|
 :pattern ( (state Heap@@71 Mask@@51) (exhaleTrue2_1 Heap@@71 this@@53))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

